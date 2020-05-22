#include "immintrin.h"
#include <iostream>
#include <iomanip>
#include <stdio.h>

struct Complex {
    int16_t real;
    int16_t image;
    Complex& operator+(const Complex& rhs){ 
            real += rhs.real;
            image += rhs.image;
            return *this;
    }
};

// Functions to print Intel vector types to help with debugging 

// Takes the 512 bit vector of integers v (__m512i ) and
// prints the 32 short ints (16 bits each) stored inside
void print_m512i(__m512i v) {
    int16_t* val = (int16_t*)&v;
    std::cout << "__m512i: ";
    for(int i = 0; i < 32; i++) {
        std::cout << std::setw(4) << val[i];
    }
    std::cout << std::endl;
}

// Takes the 256 bit vector of integers v (__m256i ) and
// prints the 16 short ints (16 bits each) stored inside
void print_m256i(__m256i v) {
    int16_t* val = (int16_t*)&v;
    std::cout << "__m256i: ";
    for(int i = 0; i < 16; i++) {
        std::cout << std::setw(5) << val[i];
    }
    std::cout << std::endl;
}

// Takes the 128 bit vector of integers v (__m128i ) and
// prints the 8 short ints (16 bits each) stored inside
void print_m128i(__m128i v) {
    int16_t* val = (int16_t*)&v;
    std::cout << "__m128i: ";
    for(int i = 0; i < 8; i++) {
        std::cout << std::setw(7) << val[i];
    }
    std::cout << std::endl;
}

// dotProduct32x16() helper functions below
// Adapted Peter Cordes' 2/20/2020 horizontal sum but for int16 instead of int32
// https://stackoverflow.com/questions/60108658/fastest-method-to-calculate-sum-of-all-packed-32-bit-integers-using-avx512-or-av

// Sums the 4 Complex numbers packed into v
Complex hsum4x32(__m128i v) {
    //    (c1    c2 c3 c4) v 
    // +  (c3    c4  0  0) _mm_permutexvar_epi16(_mm_setr_epi16(2,3,0,0,0,0,0,0), v)
    //  ------------------
    //  (real image c3 c4) last two values here are ignored
    __m128i sum128 = _mm_add_epi16(v, _mm_permutexvar_epi16(_mm_setr_epi16(2,3,0,0,0,0,0,0), v));
    int16_t real = _mm_extract_epi32(sum128, 0);
    int16_t image = _mm_extract_epi32(sum128, 1);
    Complex ret = {real, image};
    return ret;
    // Old code for hsum of non complex int16
    // __m128i zeros = _mm_setzero_si128();
    // __m128i four = _mm_hadd_epi16(v, zeros);
    // __m128i two = _mm_hadd_epi16(four, zeros);
    // __m128i one = _mm_hadd_epi16(two, zeros);
    // return _mm_cvtsi128_si32(one); //_mm_mask_cvtepi16_epi32 if it is signed?
}

// Sums the low half with the high half of v to reduce into __m128i
Complex hsum8x32(__m256i v) {
    __m128i sum128 = _mm_add_epi16( 
        _mm256_castsi256_si128(v), // low half
        _mm256_extracti128_si256(v, 1)); // high half
    return hsum4x32(sum128);
}

// Sums the low half with the high half of v to reduce into __m256i
// Unused for now
Complex hsum16x32(__m512i v) {
    __m256i sum256 = _mm256_add_epi16( 
        _mm512_castsi512_si256(v),  // low half
        _mm512_extracti64x4_epi64(v, 1)); // high half (supposed to be for 64 bit ints but still work fine for copying purpose)
    return hsum8x32(sum256);
}

// returns vec1 * vec2, where each vector contains 8 Complex numbers (int16 real + int16 image = 32 bits each)
// Adapted Matt Scarpino's approach but for int16 instead of float
// https://www.codeproject.com/Articles/874396/Crunching-Numbers-with-AVX-and-AVX
__m256i _mm256_myComplexMult_epi16(__m256i vec1, __m256i vec2) {
    /* Step 1: Multiply vec1 and vec2 */
    __m256i vec3 = _mm256_mullo_epi16(vec1, vec2);
    /* Step 2: Switch the real and imaginary elements of vec2 */
    __m256i index2 = _mm256_setr_epi16(1, 0, 3, 2, 5, 4, 7, 6, 9, 8, 11, 10, 13, 12, 15, 14); // These numbers correspond to the permuted indexes of vec2
    vec2 = _mm256_permutexvar_epi16(index2, vec2);
    /* Step 3: Negate the imaginary elements of vec2 */
    __m256i neg = _mm256_setr_epi16(1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1);
    vec2 = _mm256_mullo_epi16(vec2, neg);
    /* Step 4: Multiply vec1 and the modified vec2 */
    __m256i vec4 = _mm256_mullo_epi16(vec1, vec2);
    /* Step 5: Horizontally subtract the elements in vec3 and vec4 */
    vec1 = _mm256_hsub_epi16(vec3, vec4);
    /* Step 6: Swap into correct spots */
    __m256i index6 = _mm256_setr_epi16(0, 4, 1, 5, 2, 6, 3, 7, 8, 12, 9, 13, 10, 14, 11, 15);
    vec1 = _mm256_permutexvar_epi16(index6, vec1);
    return vec1;
}

// a dot b, where a and b are vectors with 16 elements, each a 32 bit complex number {int16 real, int16 image}
Complex dotProduct16x32(__m512i a, __m512i b) {
    // Split a and b into front and back halves
    __m256i aFront = _mm512_castsi512_si256(a);
    __m256i aBack = _mm512_extracti64x4_epi64(a, 1);
    __m256i bFront = _mm512_castsi512_si256(b);
    __m256i bBack = _mm512_extracti64x4_epi64(b, 1);
    // (aFront dot bFront) + (aBack dot bBack) is the same as a dot b
    __m256i frontMul = _mm256_myComplexMult_epi16(aFront, bFront);
    __m256i backMul = _mm256_myComplexMult_epi16(aBack, bBack);
    return (hsum8x32(frontMul) + hsum8x32(backMul));
    // Old code for dot product of non complex int16
    // __m512i mul = _mm512_mullo_epi16(a, b); // multiplies ints in each of the two vectors and saves the low bits in dp
    // return hsum32x16(mul); // sums the vector up to get dot product
}
