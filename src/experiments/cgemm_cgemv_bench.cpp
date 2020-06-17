#include <mkl.h>
#include <cstdio>
#include <iostream>
#include <fstream>
#include <iomanip>
#include <armadillo>
#include <cassert>
#include <string>
#include "../timer.hpp"

#define WARMUP 100
#define NITER 100000
#define TOLERANCE 0.0001f

#define RESET   "\033[0m" // Terminal color codes
#define BOLDGREEN   "\033[1m\033[32m" 

// m x n matrix
double benchArma(arma::cx_fmat& a1, arma::cx_fmat& x1, arma::cx_fmat& y1, int m, int n, int numIter) {
    double start = getTime();
    for(int i = 0; i < numIter; i++)
        y1 = a1 * x1;
    return timeSince(start);
}

// m x n matrix
double benchCGEMV(MKL_Complex8* a, MKL_Complex8* x, MKL_Complex8* y, MKL_INT m, MKL_INT n, int numIter) {
    MKL_Complex8 alpha = {1, 0};
    MKL_Complex8 beta = {0, 0};
    MKL_INT lda = m;
    double start = getTime();
    for(int i = 0; i < numIter; i++)
        cblas_cgemv(CblasColMajor, CblasNoTrans, m, n, &alpha, a, lda, x, 1, &beta, y, 1);
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
    for(int i = 0; i < numIter; i++) // a is m x k, b is k x n, c is m x n
        cblas_cgemm(CblasColMajor, CblasNoTrans, CblasNoTrans, m, 1, k, &alpha, a, lda, b, ldb, &beta, c, ldc);
    return timeSince(start);
}
// m x k matrix
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
    for(int i = 0; i < numIter; i++)
        my_cgemm(jitter, a, b, c);
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

bool cmpf(arma::cx_float a, MKL_Complex8 b, float epsilon = TOLERANCE) {
    return (fabs(a.real() - b.real) < epsilon) && (fabs(a.imag() - b.imag) < epsilon);
}

bool vectorsEqual(arma::cx_fmat& src, MKL_Complex8* a, MKL_Complex8* b, MKL_Complex8* c) {
    for(int i = 0; i < src.size(); i++) {
        if(!(cmpf(src[i], a[i]) && cmpf(src[i], b[i]) && cmpf(src[i], c[i])))
            return false;
    }
    return true;
}

void showUsageAndExit(char* progName) {
    fprintf(stderr, "Usage: %s [MxN] [-v] [numIter] [--uplink|--downlink]\n       "
                    "Benchmarks different implementations for matrix-vector multiply, running numIter times with an MxN matrix. (for MU-MIMO linear precoding)\n       "
                    "If you enable MKL verbose mode with -v numIter will be set to 1 and subsequent arguments will be ignored.\n       "
                    "--uplink runs tests on matrices from size M x N to 1 x N\n       "
                    "--downlink runs tests on matrices from size M x N to M x 1\n", progName);
    exit(1);
}

typedef enum {
    BENCH_SINGLE,
    BENCH_UPLINK,  // (N x 64) * (64 x 1)
    BENCH_DOWNLINK//  (64 x N) * (N x 1)
} BENCH_MODE;

std::vector<std::string> dimensions;
std::vector<double> armaTimes, cgemvTimes, cgemmTimes, jitcgemmTimes;
void outputCSV() {
    std::ofstream outFile;
    outFile.open("results.csv");
    outFile << "Dimensions,Armadillo cgemv,cgemv,cgemm,JIT cgemm,\n";
    for(int i = 0; i < dimensions.size(); i++)
        outFile << dimensions[i] << "," << armaTimes[i] << "," << cgemvTimes[i] << "," << cgemmTimes[i] << "," << jitcgemmTimes[i] << ",\n";
    outFile.close();
}


void runMKLBenchmarks(unsigned long warmup, unsigned long numIter, MKL_INT m, MKL_INT n, bool quiet = false) {
    MKL_Complex8 *a, *x, *y, *a2, *b2, *c2, *a3, *b3, *c3;
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
    // Warmup before benching
    benchArma(a1, x1, y1, m, n, warmup);
    benchCGEMV(a, x, y, m, n, warmup);
    benchCGEMM(a, x, y, m, n, warmup);
    benchJITCGEMM(a, x, y, m, n, warmup);

    // Bench MKL and output average time per iteration
    double armaTime = benchArma(a1, x1, y1, m, n, numIter);
    double cgemvTime = benchCGEMV(a, x, y, m, n, numIter);
    double cgemmTime = benchCGEMM(a2, b2, c2, m, n, numIter);
    double jitcgemmTime = benchJITCGEMM(a3, b3, c3, m, n, numIter);
    printf("\n        ---------- \n\n");
    printf("     %ld iterations, (%dx%d) * (%dx%d)\n", numIter, m, n, n, 1);
    printf("Armadillo cgemv: %.5f µs per iteration\n", armaTime/(double)numIter);
    printf("    cblas_cgemv: %.5f µs per iteration\n", cgemvTime/(double)numIter);
    printf("    cblas_cgemm: %.5f µs per iteration\n", cgemmTime/(double)numIter);
    printf("  mkl_jit_cgemm: %.5f µs per iteration\n", jitcgemmTime/(double)numIter);

    // Output JIT speed-up
    std::cout << "  " << BOLDGREEN << std::fixed << std::setprecision(2) << armaTime/jitcgemmTime << "x" << RESET << " Armadillo wrapped cgemv" << std::endl;
    std::cout << "  " << BOLDGREEN << std::fixed << std::setprecision(2) << cgemvTime/jitcgemmTime << "x" << RESET << " cgemv called directly" << std::endl;
    // Assert resulting values are within TOLERANCE of each other
    assert(vectorsEqual(y1, y, c2, c3));
    if(!quiet) {
        printf("Individual values are within %.4f of the results calculated by Armadillo\n", TOLERANCE);
        // Output sums of resulting vectors to make sure they're the same
        printf("\nAccumulation of resulting vectors\n");
        printf("Armadillo cgemv: (%.4f,%.4f)\n", arma::accu(y1).real(), arma::accu(y1).imag());
        printf("    cblas_cgemv: (%.4f,%.4f)\n", accum(y, m).real, accum(y, m).imag);
        printf("    cblas_cgemm: (%.4f,%.4f)\n", accum(c2, m).real, accum(c2, m).imag);
        printf("  mkl_jit_cgemm: (%.4f,%.4f)\n", accum(c3, m).real, accum(c3, m).imag);
    }

    // Save results in global vectors to later output as csv
    dimensions.push_back(std::to_string(m) + "x" + std::to_string(n));
    armaTimes.push_back(armaTime/(double)numIter);
    cgemvTimes.push_back(cgemvTime/(double)numIter);
    cgemmTimes.push_back(cgemmTime/(double)numIter);
    jitcgemmTimes.push_back(jitcgemmTime/(double)numIter);

    mkl_free(a); mkl_free(x); mkl_free(y);
    mkl_free(a2); mkl_free(b2); mkl_free(c2);
    mkl_free(a3); mkl_free(b3); mkl_free(c3);
}


int main(int argc, char *argv[]) {
    srand(time(0));
    unsigned long warmup = WARMUP;
    unsigned long numIter = NITER;
    MKL_INT m = 64;
    MKL_INT n = 64;
    BENCH_MODE mode = BENCH_SINGLE;
    bool dimSet = false;
    if(argc > 4 || argc == 1)
        showUsageAndExit(argv[0]);
    if(argc > 1) {
        for(int i = 1; i < argc; i++) {
            if(strcmp(argv[i], "-v") == 0) {
                warmup = 0;
                numIter = 1;
                setenv("MKL_VERBOSE", "1", 1);
                break;
            } else if(!dimSet && strtoul(argv[i], NULL, 0) != 0) {
                char* nPtr;
                m = strtoul(argv[i], &nPtr, 0);
                n = strtoul(nPtr+1, NULL, 0);
                dimSet = true;
            } else if(strtoul(argv[i], NULL, 0) != 0) {
                numIter = (strtoul(argv[i], NULL, 0));
            } else if(strcmp(argv[i], "--uplink") == 0) {
                mode = BENCH_UPLINK;
            } else if(strcmp(argv[i], "--downlink") == 0) {
                mode = BENCH_DOWNLINK;
            } else {
                showUsageAndExit(argv[0]);
            }
        }
    }
    switch (mode) {
        case BENCH_SINGLE:
            runMKLBenchmarks(warmup, numIter, m, n);
            break;
        case BENCH_UPLINK:
            for(int i = m; i > 0; i--)
                runMKLBenchmarks(warmup, numIter, i, n, 1);
            outputCSV();
            break;
        case BENCH_DOWNLINK:
            for(int i = n; i > 0; i--)
                runMKLBenchmarks(warmup, numIter, m, i, 1);
            outputCSV();
            break;
        default:
            fprintf(stderr, "Should not get here\n");
            break;
    }
}