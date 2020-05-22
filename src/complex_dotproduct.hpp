#ifndef COMPLEX_DOTPRODUCT_HPP
#define COMPLEX_DOTPRODUCT_HPP

#include "immintrin.h"

struct Complex {
    int16_t real;
    int16_t imag;
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

#endif