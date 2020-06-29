#include "immintrin.h"
#include <iostream>
#include <mkl.h>
#include <string.h>
#include <iomanip>
#include "../timer.hpp"
void print_m512i(__m512i v) {
    int16_t* val = (int16_t*)&v;
    std::cout << "__m512i: ";
    for(int i = 0; i < 32; i+=2) {
        std::cout << "(" << std::setw(2) << val[i] << "," << std::setw(2) << val[i+1] << "), ";
    }
    std::cout << std::endl;
}

struct Complex_int16 {
    int16_t real;
    int16_t imag;
    Complex_int16& operator+(const Complex_int16& rhs){ 
        real += rhs.real;
        imag += rhs.imag;
        return *this;
    }
    Complex_int16& operator+=(const Complex_int16& rhs){ 
        return (*this + rhs);
    }
    bool operator==(const Complex_int16& rhs) const { 
        return ((real != rhs.real) | (imag != rhs.imag)) ? false : true;
    }
    bool operator!=(const Complex_int16& rhs) const { 
        return !(*this == rhs);
    }
    friend std::ostream& operator<<(std::ostream& os, const Complex_int16& c) {
        os << "(" << c.real << "," << c.imag << ")";
        return os;
    }
};

// hsum
typedef short __v8hi __attribute__ ((__vector_size__ (16)));
#define __DEFAULT_FN_ATTRS512 __attribute__((__always_inline__, __nodebug__, __target__("avx512f"), __min_vector_width__(512)))
#define _mm512_my_mask_reduce_operator_complex(op) \
  __v16hi __t1 = (__v16hi)_mm512_extracti64x4_epi64(__W, 0); \
  __v16hi __t2 = (__v16hi)_mm512_extracti64x4_epi64(__W, 1); \
  __m256i __t3 = (__m256i)(__t1 op __t2); \
  __m128i __t4 = _mm256_extracti128_si256(__t3, 0); \
  __m128i __t5 = _mm256_extracti128_si256(__t3, 1); \
  __m128i __t6 = _mm_add_epi16(__t4, __t5); \
  __m128i idx = _mm_setr_epi16(4,5,6,7,0,1,2,3);\
  __m128i __t7 = _mm_permutexvar_epi16(idx, __t6); \
  __m128i __t8 = _mm_add_epi16(__t6, __t7); \
  __m128i idx1 = _mm_setr_epi16(2,3,0,1,4,5,6,7);\
  __m128i __t9 = _mm_permutexvar_epi16(idx1, __t8); \
  __m128i __t10 = _mm_add_epi16(__t8, __t9); \
  int16_t real = _mm_cvtsi128_si32(__t10); \
  int16_t imag = _mm_extract_epi16(__t10, 1); \
  Complex_int16 result = {real, imag}; \
  return result;

static Complex_int16 _mm512_reduce_add_epi16_complex(__m512i __W) {
  _mm512_my_mask_reduce_operator_complex(+);
}

static const int16_t temp0[32] = {1, 0, 3, 2, 5, 4, 7, 6, 9, 8, 11, 10, 13, 12, 15, 14, 17, 16, 19, 18, 21, 20, 23, 22, 25, 24, 27, 26, 29, 28, 31, 30};
static const int16_t temp1[32] = {1, 1, 3, 3, 5, 5, 7, 7, 9, 9, 11, 11, 13, 13, 15, 15, 17, 17, 19, 19, 21, 21, 23, 23, 25, 25, 27, 27, 29, 29, 31, 31};
static const int16_t temp2[32] = {0, 0, 2, 2, 4, 4, 6, 6, 8, 8, 10, 10, 12, 12, 14, 14, 16, 16, 18, 18, 20, 20, 22, 22, 24, 24, 26, 26, 28, 28, 30, 30};
static const int16_t temp3[32] = {-1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1};
const __m512i idx0 = _mm512_loadu_si512((const void*)temp0);
const __m512i idx1 = _mm512_loadu_si512((const void*)temp1);
const __m512i idx2 = _mm512_loadu_si512((const void*)temp2);
const __m512i addsub = _mm512_loadu_si512((const void*)temp3);
static __m512i _mm512_myComplexMult_epi16(__m512i a, __m512i b) {
    // Not sure why _mm512_set_epi16 throws an error but the below array to vector conversion should be equivalent
    // idx0 corresponds to indices to swap real and imag, idx1 sets both component to imag, idx2 sets both components to real
    const __m512i b_flip = _mm512_permutexvar_epi16(idx0, b); // Swap b.re and b.im
    const __m512i a_im = _mm512_permutexvar_epi16(idx1, a); // Imag part of a in both
    const __m512i a_re = _mm512_permutexvar_epi16(idx2, a); // Real part of a in both
    const __m512i aib = _mm512_mullo_epi16(a_im, b_flip);   // (a.im*b.im, a.im*b.re)
    const __m512i areb = _mm512_mullo_epi16(a_re, b);   // a_re * b
    const __m512i aib_addsub = _mm512_mullo_epi16(aib, addsub); // flips sign of even index values
    return _mm512_add_epi16(areb, aib_addsub);   // areb +/- aib
}

// dot product
// a dot b, where a and b are vectors with 16 elements, each a 32 bit complex number {int16 real, int16 imag}
static inline Complex_int16 dot512(__m512i a, __m512i b) {
    return _mm512_reduce_add_epi16_complex(_mm512_myComplexMult_epi16(a, b));
}

// int16_cgemv
void int16_cgemv(const Complex_int16* mat, int16_t nrows, int16_t ncols, const Complex_int16* vec, Complex_int16* res) {
    for(int16_t row = 0; row < nrows; row++) {
        Complex_int16 accumulator = {0,0};
        int counter = 0;
        for(int16_t col = 0; col < ncols; col+=16) {
            // std::cout << "Mat slice and vec slice: " << std::endl;
            // print_m512i(*(__m512i*)(&mat[row*nrows+col]));
            // print_m512i(*(__m512i*)(&vec[col]));
            accumulator += dot512(*(__m512i*)(&mat[row*nrows+col]), *(__m512i*)(&vec[col]));
        }
        res[row] = accumulator;
    }
}

// m x n matrix
double benchCGEMV(MKL_Complex8* mkl_mat, MKL_Complex8* mkl_vec, MKL_Complex8* mkl_res, MKL_INT nrows, MKL_INT ncols, int numIter) {
    MKL_Complex8 alpha = {1, 0};
    MKL_Complex8 beta = {0, 0};
    MKL_INT lda = nrows;
    double start = getTime();
    for(int i = 0; i < numIter; i++)
        cblas_cgemv(CblasRowMajor, CblasNoTrans, nrows, ncols, &alpha, mkl_mat, lda, mkl_vec, 1, &beta, mkl_res, 1);
    return timeSince(start);
}

double benchInt16(Complex_int16* mat, Complex_int16* vec, Complex_int16* res, int16_t nrows, int16_t ncols) {
    
}

int main() {
    MKL_Complex8 *mkl_mat, *mkl_vec, *mkl_res;
    int16_t nrows = 16;
    int16_t ncols = 16;
    Complex_int16 mat[nrows * ncols] __attribute__((aligned(64))); 
    Complex_int16 vec[ncols] __attribute__((aligned(64)));         // B is a vector
    Complex_int16 res[nrows] __attribute__((aligned(64)));         // C is the resulting vector
    memset(res, 0, ncols*sizeof(Complex_int16));
    mkl_mat = (MKL_Complex8*)mkl_calloc(nrows*ncols, sizeof(MKL_Complex8), 64);
    mkl_vec = (MKL_Complex8*)mkl_calloc(ncols, sizeof(MKL_Complex8), 64);
    mkl_res = (MKL_Complex8*)mkl_calloc(nrows, sizeof(MKL_Complex8), 64);
    for(int16_t i = 0; i < nrows*ncols; i++) {
        mat[i] = {static_cast<int16_t>((rand()%30)+1), static_cast<int16_t>((rand()%30)+1)};
        mkl_mat[i] = {static_cast<float>(mat[i].real),static_cast<float>(mat[i].imag)};
    }
    for(int16_t i = 0; i < ncols; i++) {
        vec[i] = {static_cast<int16_t>((rand()%30)+1), static_cast<int16_t>((rand()%30)+1)};
        mkl_vec[i] = {static_cast<float>(vec[i].real), static_cast<float>(vec[i].imag)};
    }
    MKL_Complex8 alpha = {1, 0};
    MKL_Complex8 beta = {0, 0};
    MKL_INT lda = nrows;
    cblas_cgemv(CblasRowMajor, CblasNoTrans, nrows, ncols, &alpha, mkl_mat, lda, mkl_vec, 1, &beta, mkl_res, 1);
    int16_cgemv(mat, nrows, ncols, vec, res);
    for(int i = 0; i < nrows; i++) std::cout << res[i];
    std::cout << std::endl;
    for(int i = 0; i < nrows; i++) std::cout << "(" << mkl_res[i].real << "," << mkl_res[i].imag << ")";
    std::cout << std::endl;
    return 0;
}
