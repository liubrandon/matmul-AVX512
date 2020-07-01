#include <mkl.h>
#include <stdio.h>
#include <iostream>
void runJITCGEMM(MKL_Complex8* a, MKL_Complex8* b, MKL_Complex8* c, MKL_INT m, MKL_INT k) {
    MKL_Complex8 alpha = {1, 0};
    MKL_Complex8 beta = {0, 0};
    MKL_INT lda = m;
    MKL_INT ldb = k;
    MKL_INT ldc = m;
    // Create a handle and generate GEMM kernel
    void* jitter;
    mkl_jit_status_t status = mkl_jit_create_cgemm(&jitter, MKL_COL_MAJOR, MKL_NOTRANS, MKL_NOTRANS, m, 1, k, &alpha, lda, ldb, &beta, ldc);
    if (MKL_JIT_ERROR == status) {
        fprintf(stderr, "Error: insufficient memory to JIT and store the DGEMM kernel\n");
        exit(1);
    }
    // Get kernel associated with handle
    cgemm_jit_kernel_t my_cgemm = mkl_jit_get_cgemm_ptr(jitter);
    my_cgemm(jitter, a, b, c); // Repeatedly execute the GEMM kernel
    // Destroy the created handle/GEMM kernel
    mkl_jit_destroy((void*)my_cgemm);
}

int main() {
    int m, n;
    m = 64;
    n = 16;
    MKL_Complex8 *a3, *b3, *c3;
    a3 = (MKL_Complex8*)mkl_calloc(m*n, sizeof(MKL_Complex8), 64);
    b3 = (MKL_Complex8*)mkl_calloc(n, sizeof(MKL_Complex8), 64);
    c3 = (MKL_Complex8*)mkl_calloc(m, sizeof(MKL_Complex8), 64);
    for(int i = 0; i < m*n; i++)
        a3[i] = {static_cast<float>(rand()/static_cast<float>(RAND_MAX)), static_cast<float>(rand()/static_cast<float>(RAND_MAX))};
    for(int i = 0; i < n; i++)
        b3[i] = {static_cast<float>(rand()/static_cast<float>(RAND_MAX)), static_cast<float>(rand()/static_cast<float>(RAND_MAX))};
    runJITCGEMM(a3, b3, c3, m, n);
    for(int i = 0; i < m; i++)  std::cout << "(" << c3[i].real << "," << c3[i].imag << ")";
    std::cout << std::endl;
}