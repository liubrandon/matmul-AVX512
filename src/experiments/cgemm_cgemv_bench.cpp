#include <mkl.h>
#include <cstdio>
#include <iostream>
#include <iomanip>
#include <armadillo>
#include <cassert>
#include "../timer.hpp"

#define WARMUP 100
#define NITER 1000000

// m x n matrix
double benchArma(arma::cx_fmat& a1, arma::cx_fmat& x1, arma::cx_fmat& y1, int m, int n, int numIter) {
    double start = getTime();
    for(int i = 0; i < numIter; i++) {
        y1 = a1 * x1;
    }
    return timeSince(start);
}

// m x n matrix
double benchCGEMV(MKL_Complex8* a, MKL_Complex8* x, MKL_Complex8* y, MKL_INT m, MKL_INT n, int numIter) {
    MKL_Complex8 alpha = {1, 0};
    MKL_Complex8 beta = {0, 0};
    MKL_INT lda = m;
    double start = getTime();
    for(int i = 0; i < numIter; i++) {
        cblas_cgemv(CblasColMajor, CblasNoTrans, m, n, &alpha, a, lda, x, 1, &beta, y, 1);
    }
    return timeSince(start);
}

// m x k matrix
double benchCGEMM(MKL_Complex8* a, MKL_Complex8* b, MKL_Complex8* c, MKL_INT m, MKL_INT k, int numIter) {
    MKL_Complex8 alpha = {1, 0};
    MKL_Complex8 beta = {0, 0};
    MKL_INT lda = m;
    MKL_INT ldb = k;
    MKL_INT ldc = m;
    double start = getTime();
    for(int i = 0; i < numIter; i++) {
        // a is m x k, b is k x n, c is m x n
        cblas_cgemm(CblasColMajor, CblasNoTrans, CblasNoTrans, m, 1, k, &alpha, a, lda, b, ldb, &beta, c, ldc);
    }
    return timeSince(start);
}

double benchJITCGEMM(MKL_Complex8* a, MKL_Complex8* b, MKL_Complex8* c, MKL_INT m, MKL_INT k, int numIter) {
    if(numIter == 0) return 0.0;
    MKL_Complex8 alpha = {1, 0};
    MKL_Complex8 beta = {0, 0};
    MKL_INT lda = m;
    MKL_INT ldb = k;
    MKL_INT ldc = m;
    void* jitter;
    double start = getTime();
    mkl_jit_status_t status = mkl_jit_create_cgemm(&jitter, MKL_COL_MAJOR, MKL_NOTRANS, MKL_NOTRANS, m, 1, k, &alpha, lda, ldb, &beta, ldc);
    if (MKL_JIT_ERROR == status) {
        fprintf(stderr, "Error: insufficient memory to JIT and store the DGEMM kernel\n");
        exit(1);
    }
    cgemm_jit_kernel_t my_cgemm = mkl_jit_get_cgemm_ptr(jitter);
    for(int i = 0; i < numIter; i++) {
        my_cgemm(jitter, a, b, c);
    }
    return timeSince(start);
}

MKL_Complex8 accum(MKL_Complex8* a, int size) {
    MKL_Complex8 ret = {0.0, 0.0};
    for(int i = 0; i < size; i++) {
        ret.real += a[i].real;
        ret.imag += a[i].imag;
    }
    return ret;
}
bool cmpf(arma::cx_float a, MKL_Complex8 b, float epsilon = 0.0001f) {
    return (fabs(a.real() - b.real) < epsilon) && (fabs(a.imag() - b.imag) < epsilon);
}

bool vectorsEqual(arma::cx_fmat& src, MKL_Complex8* a, MKL_Complex8* b, MKL_Complex8* c) {
    for(int i = 0; i < src.size(); i++) {
        if(!(cmpf(src[i], a[i]) && cmpf(src[i], b[i]) && cmpf(src[i], c[i])))
            return false;
    }
    return true;
}

int main(int argc, char *argv[]) {
    srand(time(0));
    int warmup = WARMUP;
    int numIter = NITER;
    if(argc == 2) {
        if(strcmp(argv[1], "-v") == 0) {
            warmup = 0;
            numIter = 1;
            setenv("MKL_VERBOSE", "1", 1);
        } else {
            fprintf(stderr, "first argument must be -v for MKL verbose mode\n");
            return 1;
        }
    }
    MKL_Complex8 *a, *x, *y, *a2, *b2, *c2, *a3, *b3, *c3;
    MKL_INT m, n;
    m = 16;
    n = 64;
    arma::cx_fmat a1(m, n);
    arma::cx_fmat x1(n, 1);
    arma::cx_fmat y1(m, 1);
    // cgemv
    a = (MKL_Complex8*)mkl_calloc(m*n, sizeof(MKL_Complex8), 64);
    x = (MKL_Complex8*)mkl_calloc(n, sizeof(MKL_Complex8), 64);
    y = (MKL_Complex8*)mkl_calloc(m, sizeof(MKL_Complex8), 64);
    // cgemm
    a2 = (MKL_Complex8*)mkl_calloc(m*n, sizeof(MKL_Complex8), 64);
    b2 = (MKL_Complex8*)mkl_calloc(n, sizeof(MKL_Complex8), 64);
    c2 = (MKL_Complex8*)mkl_calloc(m, sizeof(MKL_Complex8), 64);
    // jit_cgemm
    a3 = (MKL_Complex8*)mkl_calloc(m*n, sizeof(MKL_Complex8), 64);
    b3 = (MKL_Complex8*)mkl_calloc(n, sizeof(MKL_Complex8), 64);
    c3 = (MKL_Complex8*)mkl_calloc(m, sizeof(MKL_Complex8), 64);
    assert((a!=NULL)&&(x!=NULL)&&(y!=NULL)&&
           (a2!=NULL)&&(b2!=NULL)&&(c2!=NULL)&&
           (a3!=NULL)&&(b3!=NULL)&&(c3!=NULL)); // make sure mkl_calloc didn't fail
    
    // Generate the same random matrix and vector for multiplication for all benchmarks
    for(int i = 0; i < m*n; i++) {
        a[i] = {static_cast<float>(rand()/static_cast<float>(RAND_MAX)), static_cast<float>(rand()/static_cast<float>(RAND_MAX))};
        a1[i] = {a[i].real, a[i].imag};
        a2[i] = {a[i].real, a[i].imag};
        a3[i] = {a[i].real, a[i].imag};
    }
    for(int i = 0; i < n; i++) {
        x[i] = {static_cast<float>(rand()/static_cast<float>(RAND_MAX)), static_cast<float>(rand()/static_cast<float>(RAND_MAX))};
        x1[i] = {x[i].real, x[i].imag};
        b2[i] = {x[i].real, x[i].imag};
        b3[i] = {x[i].real, x[i].imag};
    }
    benchArma(a1, x1, y1, m, n, warmup);
    benchCGEMV(a, x, y, m, n, warmup);
    benchCGEMM(a, x, y, m, n, warmup);
    benchJITCGEMM(a, x, y, m, n, warmup);
    double armaTime = benchArma(a1, x1, y1, m, n, numIter);
    double cgemvTime = benchCGEMV(a, x, y, m, n, numIter);
    double cgemmTime = benchCGEMM(a2, b2, c2, m, n, numIter);
    double jitcgemmTime = benchJITCGEMM(a3, b3, c3, m, n, numIter);
    printf("%d iterations, (%dx%d) * (%dx%d)\n", numIter, m, n, n, 1);
    printf("Armadillo cgemv: %.5f µs per iteration\n", armaTime/(double)numIter);
    printf("    cblas_cgemv: %.5f µs per iteration\n", cgemvTime/(double)numIter);
    printf("    cblas_cgemm: %.5f µs per iteration\n", cgemmTime/(double)numIter);
    printf("  mkl_jit_cgemm: %.5f µs per iteration\n", jitcgemmTime/(double)numIter);
    assert(vectorsEqual(y1, y, c2, c3));
    // Output sums of resulting vectors to make sure they're the same
    printf("(%.4f,%.4f)\n", arma::accu(y1).real(), arma::accu(y1).imag());
    printf("(%.4f,%.4f)\n",accum(y, m).real, accum(y, m).imag);
    printf("(%.4f,%.4f)\n", accum(c2, m).real, accum(c2, m).imag);
    printf("(%.4f,%.4f)\n", accum(c3, m).real, accum(c3, m).imag);

    mkl_free(a); mkl_free(x); mkl_free(y);
    mkl_free(a2); mkl_free(b2); mkl_free(c2);
    mkl_free(a3); mkl_free(b3); mkl_free(c3);
}