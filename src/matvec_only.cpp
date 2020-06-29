// #include "matvec.hpp"
#include "complex_dotproduct.hpp"
#include <iostream>
int main() {
    // int nrows = 64;
    // int ncols = 64;
    // Complex_int16 A[nrows * ncols] __attribute__((aligned(64))); 
    // int16_t Areal[nrows * ncols] __attribute__((aligned(64))); 
    // int16_t Aimag[nrows * ncols] __attribute__((aligned(64))); 
    // Complex_int16 B[ncols] __attribute__((aligned(64)));         // B is a vector
    // Complex_int16 C[nrows] __attribute__((aligned(64)));         // C is the resulting vector    
    // for(int16_t i = 0; i < nrows*ncols; i++) {
    //     A[i] = {i, i};
    //     Areal[i] = A[i].real;
    //     Aimag[i] = A[i].imag;
    // }
    // for(int16_t i = 0; i < ncols; i++) {
    //     B[i] = {i, i};
    // }
    // matvecAVX512_colmajor(Areal, Aimag, nrows, ncols, B, C);
    // for(int i = 0; i < nrows; i++) {
    //     std::cout << "(" << C[i].real << "," << C[i].imag << ") ";
    // }    
    int16_t temp9[32] = {-1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1};
    __m512i test = _mm512_loadu_si512((const void*)temp9);
    Complex_int16 res = _mm512_reduce_add_epi16_complex(test);
    std::cout << res.real << "," << res.imag << std::endl;
}