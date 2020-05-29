#include "complex_dotproduct.hpp"
#include "immintrin.h"
#include <iostream>
#include <iomanip>
#include <stdio.h>

// Functions to print Intel vector types to help with debugging 

// Takes the 512 bit vector of integers v (__m512i ) and
// prints the 32 short ints (16 bits each) stored inside
void print_m512i(__m512i v) {
    int16_t* val = (int16_t*)&v;
    std::cout << "__m512i: ";
    for(int i = 0; i < 32; i+=2) {
        std::cout << "(" << std::setw(2) << val[i] << "," << std::setw(2) << val[i+1] << "), ";
    }
    std::cout << std::endl;
}

// Takes the 256 bit vector of integers v (__m256i ) and
// prints the 16 short ints (16 bits each) stored inside
void print_m256i(__m256i v) {
    int16_t* val = (int16_t*)&v;
    std::cout << "__m256i: ";
    for(int i = 0; i < 16; i+=2) {
        std::cout << "(" << std::setw(2) << val[i] << "," << std::setw(2) << val[i+1] << "), ";
    }
    std::cout << std::endl;
}

// Takes the 128 bit vector of integers v (__m128i ) and
// prints the 8 short ints (16 bits each) stored inside
void print_m128i(__m128i v) {
    int16_t* val = (int16_t*)&v;
    std::cout << "__m128i: ";
    for(int i = 0; i < 8; i+=2) {
        std::cout << "(" << std::setw(2) << val[i] << "," << std::setw(2) << val[i+1] << "), ";
    }
    std::cout << std::endl;
}

void print_m512(__m512 v) {
    float* val = (float*)&v;
    std::cout << "__m512: ";
    for(int i = 0; i < 8; i+=2) {
        std::cout << "(" << std::setw(2) << val[i] << "," << std::setw(2) << val[i+1] << "), ";
    }
    std::cout << std::endl;
}


// // a dot b, where a and b are vectors with 16 elements, each a 32 bit complex number {int16 real, int16 imag}
// Complex_int16 old_dotProduct16x32(__m512i a, __m512i b) {
//     // Split a and b into front and back halves
//     __m256i aFront = _mm512_castsi512_si256(a);
//     __m256i aBack = _mm512_extracti64x4_epi64(a, 1);
//     __m256i bFront = _mm512_castsi512_si256(b);
//     __m256i bBack = _mm512_extracti64x4_epi64(b, 1);
//     // (aFront dot bFront) + (aBack dot bBack) is the same as a dot b
//     __m256i frontMul = _mm256_myComplexMult_epi16(aFront, bFront);
//     __m256i backMul = _mm256_myComplexMult_epi16(aBack, bBack);
//     return (hsum8x32(frontMul) + hsum8x32(backMul));
// }



