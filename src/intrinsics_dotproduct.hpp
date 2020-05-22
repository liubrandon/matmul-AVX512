#ifndef INTRINSICS_DOTPRODUCT_HPP
#define INTRINSICS_DOTPRODUCT_HPP
#include "immintrin.h"

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
// Adapted Peter Cordes' 2/20/2020 horizontal sum implementation
// https://stackoverflow.com/questions/60108658/fastest-method-to-calculate-sum-of-all-packed-32-bit-integers-using-avx512-or-av

// Sums the eight 16 bit integers packed into v
int16_t hsum_8x16(__m128i v);

// Sums the low half with the high half of v to reduce into __m128i
int16_t hsum16x16(__m256i v);

// Sums the low half with the high half of v to reduce into __m256i
int16_t hsum32x16(__m512i v);

// a dot b, where a and b are vectors with 32 elements, each 16 bit integers 
int16_t dotProduct32x16(__m512i a, __m512i b);

// returns vec1 * vec2, where each vector contains 8 Complex numbers (int16 real + int16 image = 32 bits each)
__m256i _mm256_myComplexMult_epi16(__m256i vec1, __m256i vec2);
#endif