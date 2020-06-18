#ifndef MATVEC_HPP
#define MATVEC_HPP
// Project file headers
#include "complex_dotproduct.hpp"
#include "timer.hpp"
#include "bench_dot.hpp"
// Standard libraries
#include <cstdio>
#include <iostream>
#include <iomanip>
#include <cassert>
#include <cstdlib>
// Armadillo wrapper for Intel MKL
#include <armadillo>
// Provides Intel Intrinsics
#include "immintrin.h"
// Agner Fog's Vector Class Library
#include "vectorclass.h"
#include "complexvec1.h"

// A is a complex matrix stored in split format dimensions nrows x ncols and B is a complex vector stored in interleaved format with length ncols
static inline void matvecAVX512_colmajor(const int16_t* Areal, const int16_t* Aimag, const int nrows, const int ncols, const Complex_int16* B, Complex_int16* C) {
    int row = 0;
    if(nrows >= 32) { // If there are at least 32 rows, use as many 512 bit vectors of 32 elements as you can first
        for( ; row < nrows && nrows-row >=32 ; row+=32) { // Operate on a strip of data 32 rows wide at a time (__m512i)
            __m512i realResult = _mm512_set1_epi16(0); // zero out accumulators
            __m512i imagResult = _mm512_set1_epi16(0);
            for(int col = 0; col < ncols; col++) {
                // FOIL: (a+bi)*(c+di) = [ac-bd] + [bc+ad]i
                __m512i a = _mm512_loadu_si512((const void*)&Areal[col*nrows+row]);
                __m512i b = _mm512_loadu_si512((const void*)&Aimag[col*nrows+row]);
                __m512i c = _mm512_set1_epi16(B[col].real);
                __m512i d = _mm512_set1_epi16(B[col].imag);

                // Get partial real C vector (each element is partial ac-bd)
                __m512i ac = _mm512_mullo_epi16(a, c);
                __m512i bd = _mm512_mullo_epi16(b, d);
                __m512i partialReal = _mm512_sub_epi16(ac, bd);

                // Get partial imag C vector (each element is partial bc+ad)
                __m512i bc = _mm512_mullo_epi16(b, c);
                __m512i ad = _mm512_mullo_epi16(a, d);
                __m512i partialImag = _mm512_add_epi16(bc, ad); 

                // Accumulate in result
                realResult = _mm512_add_epi16(realResult, partialReal);
                imagResult = _mm512_add_epi16(imagResult, partialImag);
            }
            int16_t* realArray = (int16_t*)(&realResult);
            int16_t* imagArray = (int16_t*)(&imagResult);
            for(int i = 0; i < 32; i++) {
                C[row+i] = {realArray[i], imagArray[i]};
            } // extract with intrinsics?
        }
    }
    if(nrows-row >= 16) { // enough leftover rows to fill a 256 bit vector
        __m256i realResult = _mm256_set1_epi64x(0); // zero out accumulators
        __m256i imagResult = _mm256_set1_epi64x(0);
        for(int col = 0; col < ncols; col++) {
            // FOIL
            __m256i a = _mm256_loadu_si256((const __m256i*)&Areal[row+col*nrows]);
            __m256i b = _mm256_loadu_si256((const __m256i*)&Aimag[row+col*nrows]);
            __m256i c = _mm256_set1_epi16(B[col].real);
            __m256i d = _mm256_set1_epi16(B[col].imag);

            // Get partial real C vector
            __m256i ac = _mm256_mullo_epi16(a, c);
            __m256i bd = _mm256_mullo_epi16(b, d);
            __m256i partialReal = _mm256_sub_epi16(ac, bd);

            // Get partial imag C vector
            __m256i bc = _mm256_mullo_epi16(b, c);
            __m256i ad = _mm256_mullo_epi16(a, d);
            __m256i partialImag = _mm256_add_epi16(bc, ad); 

            // Accumulate in result (see if theres a fused instruction for sub-add and add-add)
            realResult = _mm256_add_epi16(realResult, partialReal);
            imagResult = _mm256_add_epi16(imagResult, partialImag);
        }
        int16_t* realArray = (int16_t*)(&realResult);
        int16_t* imagArray = (int16_t*)(&imagResult);
        for(int i = 0; i < 16; i++) {
            C[row+i] = {realArray[i], imagArray[i]};
        } // extract with intrinsics?
        row+=16;
    }
    if(nrows-row >= 8) { // enough leftover rows to fill a a 128 bit vector
        __m128i realResult = _mm_set1_epi64x(0); // zero out accumulators
        __m128i imagResult = _mm_set1_epi64x(0);
        for(int col = 0; col < ncols; col++) {
            // FOIL
            __m128i a = _mm_loadu_si128((const __m128i*)&Areal[col*nrows+row]);
            __m128i b = _mm_loadu_si128((const __m128i*)&Aimag[col*nrows+row]);
            __m128i c = _mm_set1_epi16(B[col].real);
            __m128i d = _mm_set1_epi16(B[col].imag);

            // Get partial real C vector
            __m128i ac = _mm_mullo_epi16(a, c);
            __m128i bd = _mm_mullo_epi16(b, d);
            __m128i partialReal = _mm_sub_epi16(ac, bd);

            // Get partial imag C vector
            __m128i bc = _mm_mullo_epi16(b, c);
            __m128i ad = _mm_mullo_epi16(a, d);
            __m128i partialImag = _mm_add_epi16(bc, ad); 

            // Accumulate in result (see if theres a fused instruction for sub-add and add-add)
            realResult = _mm_add_epi16(realResult, partialReal);
            imagResult = _mm_add_epi16(imagResult, partialImag);
        }
        int16_t* realArray = (int16_t*)(&realResult);
        int16_t* imagArray = (int16_t*)(&imagResult);
        for(int i = 0; i < 8; i++) {
            C[row+i] = {realArray[i], imagArray[i]};
        } // extract with intrinsics?
        row+=8;
    }
    int rowsLeft = nrows-row;
    if(rowsLeft == 1) {
        // perform one final row sequentially
        Complex_int16 dotResult = {0,0};
        for(int j = 0; j < ncols; j++) {
            // FOIL: (a+bi)*(c+di) = [ac-bd] + [bc+ad]i
            int16_t a = Areal[j*nrows+row];
            int16_t b = Aimag[j*nrows+row];
            int16_t c = B[j].real;
            int16_t d = B[j].imag;
            Complex_int16 partialDot = {static_cast<int16_t>(a*c-b*d), static_cast<int16_t>(b*c+a*d)};
            dotResult = dotResult + partialDot;
        }
        C[row] = dotResult;
    }
    else { // perform more than one final row with SIMD
        row = nrows-8;
        __m128i realResult = _mm_set1_epi64x(0); // zero out accumulators
        __m128i imagResult = _mm_set1_epi64x(0);
        for(int col = 0; col < ncols; col++) {
            // FOIL
            __m128i a = _mm_loadu_si128((const __m128i*)&Areal[col*nrows+row]);
            __m128i b = _mm_loadu_si128((const __m128i*)&Aimag[col*nrows+row]);
            __m128i c = _mm_set1_epi16(B[col].real);
            __m128i d = _mm_set1_epi16(B[col].imag);

            // Get partial real C vector
            __m128i ac = _mm_mullo_epi16(a, c);
            __m128i bd = _mm_mullo_epi16(b, d);
            __m128i partialReal = _mm_sub_epi16(ac, bd);

            // Get partial imag C vector
            __m128i bc = _mm_mullo_epi16(b, c);
            __m128i ad = _mm_mullo_epi16(a, d);
            __m128i partialImag = _mm_add_epi16(bc, ad); 

            // Accumulate in result (see if theres a fused instruction for sub-add and add-add)
            realResult = _mm_add_epi16(realResult, partialReal);
            imagResult = _mm_add_epi16(imagResult, partialImag);
        }
        int16_t* realArray = (int16_t*)(&realResult);
        int16_t* imagArray = (int16_t*)(&imagResult);
        for(int i = 8-rowsLeft; i < 8; i++) {
            C[row+i] = {realArray[i], imagArray[i]};
        } // extract with intrinsics?
    }
    
}

static inline void matvecAVXFloat_colmajor(const float* Areal, const float* Aimag, const int nrows, const int ncols, const Complex_float* B, Complex_float* C) {
    if(nrows == 16) {
        __m512 realResult = _mm512_set1_ps(0); // zero out accumulators
        __m512 imagResult = _mm512_set1_ps(0);
        for(int col = 0; col < ncols; col++) {
            // FOIL
            __m512 a = _mm512_load_ps((const __m512*)&Areal[col*16]);
            __m512 b = _mm512_load_ps((const __m512*)&Aimag[col*16]);
            __m512 c = _mm512_set1_ps(B[col].real);
            __m512 d = _mm512_set1_ps(B[col].imag);

            // Get partial real C vector
            __m512 ac = _mm512_mul_ps(a, c);
            __m512 bd = _mm512_mul_ps(b, d);
            __m512 partialReal = _mm512_sub_ps(ac, bd);

            // Get partial imag C vector
            __m512 bc = _mm512_mul_ps(b, c);
            __m512 ad = _mm512_mul_ps(a, d);
            __m512 partialImag = _mm512_add_ps(bc, ad); 

            // Accumulate in result (see if theres a fused instruction for sub-add and add-add)
            realResult = _mm512_add_ps(realResult, partialReal);
            imagResult = _mm512_add_ps(imagResult, partialImag);
        }
        float* realArray = (float*)(&realResult);
        float* imagArray = (float*)(&imagResult);
        for(int i = 0; i < 16; i++) {
            C[i] = {realArray[i], imagArray[i]};
        } // extract with intrinsics?
    }
    else if(nrows % 32 == 0) {
        for(int r = 0; r < nrows; r+=16) {
            __m512 realResult = _mm512_set1_ps(0); // zero out accumulators
            __m512 imagResult = _mm512_set1_ps(0);
            for(int col = 0; col < ncols; col++) {
                // FOIL
                __m512 a = _mm512_load_ps((const __m512*)&Areal[r+col*nrows]);
                __m512 b = _mm512_load_ps((const __m512*)&Aimag[r+col*nrows]);
                __m512 c = _mm512_set1_ps(B[col].real);
                __m512 d = _mm512_set1_ps(B[col].imag);

                // Get partial real C vector
                __m512 ac = _mm512_mul_ps(a, c);
                __m512 bd = _mm512_mul_ps(b, d);
                __m512 partialReal = _mm512_sub_ps(ac, bd);

                // Get partial imag C vector
                __m512 bc = _mm512_mul_ps(b, c);
                __m512 ad = _mm512_mul_ps(a, d);
                __m512 partialImag = _mm512_add_ps(bc, ad); 

                // Accumulate in result (see if theres a fused instruction for sub-add and add-add)
                realResult = _mm512_add_ps(realResult, partialReal);
                imagResult = _mm512_add_ps(imagResult, partialImag);
            }
            float* realArray = (float*)(&realResult);
            float* imagArray = (float*)(&imagResult);
            for(int i = 0; i < 16; i++) {
                C[r+i] = {realArray[i], imagArray[i]};
            } // extract with intrinsics?
        }
    }
    else {
        std::cerr << "Dimensions not supported" << std::endl;
        exit(1);
    }
}

// Areal and Aimag are the nrows x ncols real and imag component matrices stored in row major order
static inline void matvecAVX512_rowmajor(const int16_t* Areal, const int16_t* Aimag, const int nrows, const int ncols, const int16_t* Breal, const int16_t* Bimag, Complex_int16* C) {
    Complex_int16 tempC[64] __attribute__((aligned(64)));
    memset((void*)tempC, 0, 64*sizeof(tempC[0]));
    int cIdx = 0;
    int bIdx = 0;
    // (a+bi)*(c+di) = [ac-bd] + [bc+ad]i
    if(ncols == 16) { // One __m512i vector can hold exactly 32 int16_t
        for(int r = 0; r < nrows*ncols; r+=16, cIdx++) {
            __m256i a,b,c,d;
            a = _mm256_load_si256((const __m256i*)(&Areal[r]));
            b = _mm256_load_si256((const __m256i*)(&Aimag[r]));
            c = _mm256_load_si256((const __m256i*)(Breal));
            d = _mm256_load_si256((const __m256i*)(Bimag));
            __m256i ac,bd,bc,ad;
            ac = _mm256_mullo_epi16(a,c);
            bd = _mm256_mullo_epi16(b,d);
            bc = _mm256_mullo_epi16(b,c);
            ad = _mm256_mullo_epi16(a,d);
            __m256i real,complex; // real=ac-bd, complex=bc+ad
            real = _mm256_sub_epi16(ac,bd);
            complex = _mm256_add_epi16(bc,ad);
            int16_t realDot = int_hsum8x32(real); // I wrote this function based on the int32 version
            int16_t complexDot = int_hsum8x32(complex);
            Complex_int16 dot = {realDot, complexDot};
            tempC[cIdx] = dot;
        }
    }
    else if(ncols == 32) { // One __m512i vector can hold exactly 32 int16_t
        for(int r = 0; r < nrows*ncols; r+=32, cIdx++) {
            __m512i a,b,c,d;
            a = _mm512_load_si512((const void*)(&Areal[r]));
            b = _mm512_load_si512((const void*)(&Aimag[r]));
            c = _mm512_load_si512((const void*)(Breal));
            d = _mm512_load_si512((const void*)(Bimag));
            __m512i ac,bd,bc,ad;
            ac = _mm512_mullo_epi16(a,c);
            bd = _mm512_mullo_epi16(b,d);
            bc = _mm512_mullo_epi16(b,c);
            ad = _mm512_mullo_epi16(a,d);
            __m512i real,complex; // real=ac-bd, complex=bc+ad
            real = _mm512_sub_epi16(ac,bd);
            complex = _mm512_add_epi16(bc,ad);
            int16_t realDot = _mm512_reduce_add_epi16(real); // I wrote this function based on the int32 version
            int16_t complexDot = _mm512_reduce_add_epi16(complex);
            Complex_int16 dot = {realDot, complexDot};
            tempC[cIdx] = dot;
        }
    }
    else if(ncols == 64) {
        for(int r = 0; r < nrows*ncols; r+=64, cIdx++) {
            __m512i a,b,c,d;
            a = _mm512_load_si512((const void*)(&Areal[r]));
            b = _mm512_load_si512((const void*)(&Aimag[r]));
            c = _mm512_load_si512((const void*)(Breal));
            d = _mm512_load_si512((const void*)(Bimag));
            __m512i ac,bd,bc,ad;
            ac = _mm512_mullo_epi16(a,c);
            bd = _mm512_mullo_epi16(b,d);
            bc = _mm512_mullo_epi16(b,c);
            ad = _mm512_mullo_epi16(a,d);
            __m512i real,complex; // real=ac-bd, complex=bc+ad
            real = _mm512_sub_epi16(ac,bd);
            complex = _mm512_add_epi16(bc,ad);
            int16_t realDot = _mm512_reduce_add_epi16(real); // I wrote this function based on the int32 version
            int16_t complexDot = _mm512_reduce_add_epi16(complex);
            Complex_int16 dot = {realDot, complexDot};

            __m512i a1,b1,ncols,d1;
            a1 = _mm512_load_si512((const void*)(&Areal[r+32]));
            b1 = _mm512_load_si512((const void*)(&Aimag[r+32]));
            ncols = _mm512_load_si512((const void*)(&Breal[32]));
            d1 = _mm512_load_si512((const void*)(&Bimag[32]));
            __m512i ancols,bd1,bncols,ad1;
            ancols = _mm512_mullo_epi16(a1,ncols);
            bd1 = _mm512_mullo_epi16(b1,d1);
            bncols = _mm512_mullo_epi16(b1,ncols);
            ad1 = _mm512_mullo_epi16(a1,d1);
            __m512i real1,complex1; // real=ancols-bd1, complex=bncols+ad1
            real1 = _mm512_sub_epi16(ancols,bd1);
            complex1 = _mm512_add_epi16(bncols,ad1);
            int16_t realDot1 = _mm512_reduce_add_epi16(real1); // I wrote this function based on the int32 version
            int16_t complexDot1 = _mm512_reduce_add_epi16(complex1);
            Complex_int16 dot1 = {realDot1, complexDot1};

            tempC[cIdx] = dot + dot1;
        }
    }
    for(int r = 0; r < nrows; r+=16) {
        _mm512_storeu_si512((void*)(&C[r]), _mm512_loadu_si512((const void*)(&tempC[r])));
    }
}

static inline void matvecVCL(const Complex_float* A, const int nrows, const int ncols, const Complex_float* B, Complex_float* C) {
    static const Complex8f bSlice1 = *(Complex8f*)(B+(0*8));
    static const Complex8f bSlice2 = *(Complex8f*)(B+(1*8));
    static const Complex8f bSlice3 = *(Complex8f*)(B+(2*8));
    static const Complex8f bSlice4 = *(Complex8f*)(B+(3*8));
    if(ncols == 8) {
        for(int i = 0; i < nrows*ncols; i += 8) {
            const Complex1f dp = chorizontal_add(*(Complex8f*)(A+i) * bSlice1);
            const Complex_float res = {dp.real(), dp.imag()};
            *C = res;
            C += 1;
        }
    }
    else if(ncols == 16) {
        for(int i = 0; i < nrows*ncols; i += 16) {
            const Complex1f dp = chorizontal_add(*(Complex8f*)(A+i+(0*8)) * bSlice1)
                               + chorizontal_add(*(Complex8f*)(A+i+(1*8)) * bSlice2);
            const Complex_float res = {dp.real(), dp.imag()};
            *C = res;
            C += 1;
        }
    }
    else if(ncols == 32) {
        for(int i = 0; i < nrows*ncols; i += 32) {
            const Complex1f dp = chorizontal_add(*(Complex8f*)(A+i+(0*8)) * bSlice1)
                               + chorizontal_add(*(Complex8f*)(A+i+(1*8)) * bSlice2)
                               + chorizontal_add(*(Complex8f*)(A+i+(2*8)) * bSlice3)
                               + chorizontal_add(*(Complex8f*)(A+i+(3*8)) * bSlice4);
            const Complex_float res = {dp.real(), dp.imag()};
            *C = res;
            C += 1;
        }
    }
    else if(ncols == 64) {
        static const Complex8f bSlice5 = *(Complex8f*)(B+(4*8));
        static const Complex8f bSlice6 = *(Complex8f*)(B+(5*8));
        static const Complex8f bSlice7 = *(Complex8f*)(B+(6*8));
        static const Complex8f bSlice8 = *(Complex8f*)(B+(7*8));
        for(int i = 0; i < nrows*ncols; i += 64) {
            const Complex1f dp = chorizontal_add(*(Complex8f*)(A+i+(0*8)) * bSlice1)
                               + chorizontal_add(*(Complex8f*)(A+i+(1*8)) * bSlice2)
                               + chorizontal_add(*(Complex8f*)(A+i+(2*8)) * bSlice3)
                               + chorizontal_add(*(Complex8f*)(A+i+(3*8)) * bSlice4)
                               + chorizontal_add(*(Complex8f*)(A+i+(4*8)) * bSlice5)
                               + chorizontal_add(*(Complex8f*)(A+i+(5*8)) * bSlice6)
                               + chorizontal_add(*(Complex8f*)(A+i+(6*8)) * bSlice7)
                               + chorizontal_add(*(Complex8f*)(A+i+(7*8)) * bSlice8);
            const Complex_float res = {dp.real(), dp.imag()};
            *C = res;
            C += 1;
        }
    }
}
#endif
