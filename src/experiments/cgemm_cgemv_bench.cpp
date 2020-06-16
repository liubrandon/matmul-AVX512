#include <mkl.h>

double bench_cgemv() {
    MKL_INT         m, n, lda, incx, incy;
    MKL_INT         rmaxa, cmaxa;
    MKL_Complex8    alpha, beta;
    CBLAS_LAYOUT    Layout = CblasColMajor;
    CBLAS_TRANSPOSE trans;
    MKL_INT         nx, ny, len_x, len_y;
    
    // y := alpha*A*x + beta*y,
    cblas_cgemv(Layout, trans, m, n, &alpha, a, lda, x, incx, &beta, y, incy);
}

int main() {
     MKL_Complex8   *a, *x, *y;
}