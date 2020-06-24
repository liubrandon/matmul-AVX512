#include <mkl.h>

int main() {
    MKL_INT m = 64;
    MKL_INT n = 16;
    MKL_Complex8 *a, *x, *y;
    // cgemv
    a = (MKL_Complex8*)mkl_calloc(m*n, sizeof(MKL_Complex8), 64);
    x = (MKL_Complex8*)mkl_calloc(n, sizeof(MKL_Complex8), 64);
    y = (MKL_Complex8*)mkl_calloc(m, sizeof(MKL_Complex8), 64);
    // Generate the same random matrix and vector for multiplication for all benchmarks
    for(int i = 0; i < m*n; i++) {
        a[i] = {static_cast<float>(rand()/static_cast<float>(RAND_MAX)), static_cast<float>(rand()/static_cast<float>(RAND_MAX))};
    }
    for(int i = 0; i < n; i++) {
        x[i] = {static_cast<float>(rand()/static_cast<float>(RAND_MAX)), static_cast<float>(rand()/static_cast<float>(RAND_MAX))};
    }
    MKL_Complex8 alpha = {1, 0};
    MKL_Complex8 beta = {0, 0};
    MKL_INT lda = m;
    cblas_cgemv(CblasColMajor, CblasNoTrans, m, n, &alpha, a, lda, x, 1, &beta, y, 1);
}