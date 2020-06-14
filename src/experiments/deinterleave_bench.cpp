#include <iostream>
#include "timer.h"
#include "../complex_dotproduct.hpp"
#include "../deinterleave.hpp"
double freq_ghz;

static inline void volk_16ic_deinterleave_16i_x2_a_avx2(int16_t* iBuffer,
                                                        int16_t* qBuffer,
                                                        const Complex_int16* complexVector,
                                                        unsigned int num_points)
{
    unsigned int number = 0;
    const int8_t* complexVectorPtr = (int8_t*)complexVector;
    int16_t* iBufferPtr = iBuffer;
    int16_t* qBufferPtr = qBuffer;

    __m256i MoveMask = _mm256_set_epi8(15,
                                       14,
                                       11,
                                       10,
                                       7,
                                       6,
                                       3,
                                       2,
                                       13,
                                       12,
                                       9,
                                       8,
                                       5,
                                       4,
                                       1,
                                       0,
                                       15,
                                       14,
                                       11,
                                       10,
                                       7,
                                       6,
                                       3,
                                       2,
                                       13,
                                       12,
                                       9,
                                       8,
                                       5,
                                       4,
                                       1,
                                       0);

    __m256i iMove2, iMove1;
    __m256i complexVal1, complexVal2, iOutputVal, qOutputVal;

    unsigned int sixteenthPoints = num_points / 16;

    for (number = 0; number < sixteenthPoints; number++) {
        complexVal1 = _mm256_load_si256((__m256i*)complexVectorPtr);
        complexVectorPtr += 32;
        complexVal2 = _mm256_load_si256((__m256i*)complexVectorPtr);
        complexVectorPtr += 32;

        iMove2 = _mm256_shuffle_epi8(complexVal2, MoveMask);
        iMove1 = _mm256_shuffle_epi8(complexVal1, MoveMask);

        iOutputVal = _mm256_permute2x128_si256(_mm256_permute4x64_epi64(iMove1, 0x08),
                                               _mm256_permute4x64_epi64(iMove2, 0x80),
                                               0x30);
        qOutputVal = _mm256_permute2x128_si256(_mm256_permute4x64_epi64(iMove1, 0x0d),
                                               _mm256_permute4x64_epi64(iMove2, 0xd0),
                                               0x30);

        _mm256_store_si256((__m256i*)iBufferPtr, iOutputVal);
        _mm256_store_si256((__m256i*)qBufferPtr, qOutputVal);

        iBufferPtr += 16;
        qBufferPtr += 16;
    }

    number = sixteenthPoints * 16;
    int16_t* int16ComplexVectorPtr = (int16_t*)complexVectorPtr;
    for (; number < num_points; number++) {
        *iBufferPtr++ = *int16ComplexVectorPtr++;
        *qBufferPtr++ = *int16ComplexVectorPtr++;
    }
}

int accum(int16_t* src, int size) {
    int sum = 0;
    for(int i = 0; i < size; i++) sum += src[i];
    return sum;
}

void printIntMatrix(const int16_t* A, int nrows, int ncols) {
    for(int i = 0; i < nrows; i++) {
        for(int j = 0; j < ncols; j++) {
            std::cout << A[i*ncols+j] << ", ";
        }
        std::cout << std::endl;
    }
}

double runAVX512Bench(Complex_int16* src, int nrows, int ncols, int numIter) {
    int16_t real[nrows*ncols] __attribute__((aligned(64)));
    int16_t imag[nrows*ncols] __attribute__((aligned(64)));
    TscTimer timer;
    timer.start();
    for(int i = 0; i < numIter; i++) {
        deinterleaveMatrix(src, nrows*ncols, real, imag);
        src[0].real = src[0].real;
    }
    timer.stop();
    // printIntMatrix(real, nrows, ncols);
    // printIntMatrix(imag, nrows, ncols);
    std::cout << accum(real, nrows*ncols) << ", " << accum(imag, nrows*ncols) << std::endl;
    return timer.avg_usec(freq_ghz);
}

double runVolkBench(Complex_int16* src, int nrows, int ncols, int numIter) {
    int16_t real[nrows*ncols] __attribute__((aligned(64)));
    int16_t imag[nrows*ncols] __attribute__((aligned(64)));
    TscTimer timer;
    timer.start();
    for(int i = 0; i < numIter; i++) {
        volk_16ic_deinterleave_16i_x2_a_avx2(real, imag, src, nrows*ncols);
        src[0].real = src[0].real;
    }
    timer.stop();
    // printIntMatrix(real, nrows, ncols);
    // printIntMatrix(imag, nrows, ncols);
    std::cout << accum(real, nrows*ncols) << ", " << accum(imag, nrows*ncols) << std::endl;
    return timer.avg_usec(freq_ghz);
}

double runNaiveBench(Complex_int16* src, int nrows, int ncols, int numIter) {
    int16_t real[nrows*ncols] __attribute__((aligned(64)));
    int16_t imag[nrows*ncols] __attribute__((aligned(64)));
    TscTimer timer;
    timer.start();
    for(int i = 0; i < numIter; i++) {
        for(int i = 0; i < nrows*ncols; i++) {
            real[i] = src[i].real;
            imag[i] = src[i].imag;
        }
        src[0].real = src[0].real;
    }
    timer.stop();
    // printIntMatrix(real, nrows, ncols);
    // printIntMatrix(imag, nrows, ncols);
    std::cout << accum(real, nrows*ncols) << ", " << accum(imag, nrows*ncols) << std::endl;
    return timer.avg_usec(freq_ghz);
}

#define nRows 16
#define nCols 64 
void runDeinterleaveBench(int numIter) {
    //srand(time(0));
    freq_ghz = measure_rdtsc_freq();
    Complex_int16 A[nRows*nCols] __attribute__((aligned(64)));
    for(int i = 0; i < nRows*nCols; i++) {
        A[i] = {static_cast<int16_t>(rand()), static_cast<int16_t>(rand())};
    }
    double avx2Time, naiveTime, avx512Time, avgAVX2, avgNaive, avgAVX512;
    avx512Time = runAVX512Bench(A, nRows, nCols, numIter);
    naiveTime = runNaiveBench(A, nRows, nCols, numIter);
    avx2Time = runVolkBench(A, nRows, nCols, numIter);
    avgAVX2 = avx2Time/(double)numIter;
    avgNaive = naiveTime/(double)numIter;
    avgAVX512 = avx512Time/(double)numIter;
    printf("Naive  average time to deinterleave: %.16f\n", avgNaive);
    printf("AVX-2  average time to deinterleave: %.16f\n", avgAVX2);
    printf("AVX512 average time to deinterleave: %.16f\n", avgAVX512);
}

int main() {
    runDeinterleaveBench(1000);
    return 0;
}