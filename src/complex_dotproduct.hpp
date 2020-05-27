#ifndef COMPLEX_DOTPRODUCT_HPP
#define COMPLEX_DOTPRODUCT_HPP

#include "immintrin.h"

struct Complex {
    float real;
    float imag;
    Complex& operator+(const Complex& rhs){ 
            real += rhs.real;
            imag += rhs.imag;
            return *this;
    }
};

// Functions to print Intel vector types to help with debugging 

// Takes the 512 bit vector of integers v (__m512i ) and
// prints the 32 short ints (16 bits each) stored inside
void print_m512i(__m512i v);

// Takes the 256 bit vector of integers v (__m256i ) and
// prints the 16 short ints (16 bits each) stored inside
void print_m256i(__m256i v);

// Takes the 128 bit vector of integers v (__m128i ) and
// prints the 8 short ints (16 bits each) stored inside
void print_m128i(__m128i v);

// dotProduct32x16() helper functions below
// Adapted Peter Cordes' 2/20/2020 horizontal sum but for int16 instead of int32
// https://stackoverflow.com/questions/60108658/fastest-method-to-calculate-sum-of-all-packed-32-bit-integers-using-avx512-or-av

// Sums the 4 Complex numbers packed into v
Complex hsum4x32(__m128i v);

// Sums the low half with the high half of v to reduce into __m128i
Complex hsum8x32(__m256i v);

// Sums the low half with the high half of v to reduce into __m256i
// Unused for now
Complex hsum16x32(__m512i v);

// returns vec1 * vec2, where each vector contains 8 Complex numbers (int16 real + int16 imag = 32 bits each)
// Adapted Matt Scarpino's approach but for int16 instead of float
// https://www.codeproject.com/Articles/874396/Crunching-Numbers-with-AVX-and-AVX
__m256i _mm256_myComplexMult_epi16(__m256i vec1, __m256i vec2);

// a dot b, where a and b are vectors with 16 elements, each a 32 bit complex number {int16 real, int16 imag}
Complex dotProduct16x32(__m512i a, __m512i b);

struct Complex_int16 {
    int16_t real;
    int16_t imag;
};

// Definition of __v16hi in avxintrin.h
// typedef short __v16hi __attribute__ ((__vector_size__ (32)));
// below adapted from avx512fintrin.h
typedef short __v8hi __attribute__ ((__vector_size__ (16)));
#define __DEFAULT_FN_ATTRS512 __attribute__((__always_inline__, __nodebug__, __target__("avx512f"), __min_vector_width__(512)))
#define _mm512_my_mask_reduce_operator(op) \
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
//   __v4su __t9 = __builtin_shufflevector(__t8, __t8, 1, 0, 3, 2); \
//   __v4su __t10 = __t8 op __t9; \
//   return __t10[0]

static __inline__ Complex_int16 __DEFAULT_FN_ATTRS512 _mm512_reduce_add_epi16(__m512i __W) {
  _mm512_my_mask_reduce_operator(+);
}
__m512 _mm512_myComplexMult_ps(__m512 a, __m512 b);
__m512i _mm512_myComplexMult_epi16(__m512i a, __m512i b);
void print_m512(__m512 v);
#endif