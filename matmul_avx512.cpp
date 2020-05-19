#include "immintrin.h"
#include <cstdio>
#include <iostream>
#include <iomanip>
#include <cassert>
#include <armadillo>

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
        std::cout << std::setw(7) << val[i];
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
// Adapted Peter Cordes' 2/20/2020 horizontal sum implementation
// https://stackoverflow.com/questions/60108658/fastest-method-to-calculate-sum-of-all-packed-32-bit-integers-using-avx512-or-av

// Sums the eight 16 bit integers packed into v
int16_t hsum_8x16(__m128i v) {
    __m128i zeros = _mm_setzero_si128();
    __m128i four = _mm_hadd_epi16(v, zeros);
    __m128i two = _mm_hadd_epi16(four, zeros);
    __m128i one = _mm_hadd_epi16(two, zeros);
    return _mm_cvtsi128_si32(one); //_mm_mask_cvtepi16_epi32 if it is signed?
}

// Sums the low half with the high half of v to reduce into __m128i
int16_t hsum16x16(__m256i v) {
    __m128i sum128 = _mm_add_epi16( 
        _mm256_castsi256_si128(v), // low half
        _mm256_extracti128_si256(v, 1)); // high half
    return hsum_8x16(sum128);
}

// Sums the low half with the high half of v to reduce into __m256i
int16_t hsum32x16(__m512i v) {
    __m256i sum256 = _mm256_add_epi16( 
        _mm512_castsi512_si256(v),  // low half
        _mm512_extracti64x4_epi64(v, 1)); // high half
    return hsum16x16(sum256);
}

// a dot b, where a and b are vectors with 32 elements, each 16 bit integers 
int16_t dotProduct32x16(__m512i a, __m512i b) {
    __m512i mul = _mm512_mullo_epi16(a, b); // multiplies ints in each of the two vectors and saves the low bits in dp
    return hsum32x16(mul); // sums the vector up to get dot product
}

// Matrix multiplication C = AB
// where A has dimensions r1 x c1, B has dimensions c1 x 1 (B is a vector)
void matmulAVX512(const int16_t* A, int r1, int c1, const int16_t* B, int c2, int16_t* C) {
    __m512i* a_row = (__m512i*)A; // Should I use _mm512_loadu_epi16?
    __m512i* b_col = (__m512i*)B;
    for(int i = 0; i < r1*c1; i+=32) { // treat i as the index of the int16_t value inside A where A is row major
        int16_t dp = dotProduct32x16(*(__m512i*)(A+i), *(__m512i*)(B));
        // Should I use _mm512_mask_compress_epi16 to load into a __m512i buffer then
        // call _mm_mask_compressstoreu_epi16 when its full to store it to memory?
        // Or is the cache already batching these writes
        *C = dp;
        C+=1;
    }
}

// Prints matrix in row major order
void printMatrix(const int16_t* mat, int rows, int cols) {
    for(int i = 0; i < rows; i++) {
        for(int j = 0; j < cols; j++) {
            std::cout << std::setw(5) << mat[i*cols+j];
        }
        std::cout << std::endl;
    }
}

// Checks if arma::Mat<short> and int16_t* matrices are equal
bool matricesEqual(const int16_t* C, arma::Mat<short>& armaC) {
    arma::Mat<short>::iterator it = armaC.begin();
    arma::Mat<short>::iterator itEnd = armaC.end();
    for(int i = 0; it != itEnd; it++, i++) {
        if((*it) != C[i])
            return false;
    }
    return true;
}

// Initializes matrix incrementally from 0 to size (% mod)
// where size = # rows * # columns
// if mod is 0 then fill with zeros
void generateMatrix(int16_t* mat, int size, int mod=30) {
    for(int i = 0; i < size; i++) {
        mat[i] = mod ? (i%mod) : 0;
    }
}

// Returns current monotonic time in seconds
static double getTime(void) {
    struct timespec tv;
    clock_gettime(CLOCK_MONOTONIC, &tv);
    return tv.tv_sec + (tv.tv_nsec / 1e+9); // nanoseconds to seconds conversion
}

// Takes in a time value produced from getTime()
// and returns # of microseconds (μs) since then
static double timeSince(double time) {
    return ((getTime()-time) * 1e+6); // seconds to microseconds conversion
}

// Runs matmulAVX512() numIter times and and returns execution time in μs
double runAVXBenchmark(int16_t* A, int r1, int c1, int16_t* B, int16_t* C, int numIter) {
    double start = getTime();
    for(int i = 0; i < numIter; i++) {
        matmulAVX512(A, r1, c1, B, 1, C);
    }
    return timeSince(start);
}

// Runs Armadillo matrix multiply numIter times and returns execution time in μs
// Pass in Armadillo matrices by reference to avoid copying them
double runArmaBenchmark(arma::Mat<short>& armaA, arma::Mat<short>& armaB, arma::Mat<short>& armaC, int numIter) {
    double start = getTime();
    for(int i = 0; i < numIter; i++) {
        armaC = armaA*armaB;
    }
    return timeSince(start);
}

// Initialize test matrices and run benchmarks using my code vs Armadillo's library
void runBenchmarks(int numIter=10000) {
    int r1 = 32;  // Treat A as a 32 x 32 matrix
    int c1 = 32; 
    int16_t A[r1*c1]__attribute__( ( aligned (64) ) ); // What to align it to?
    int16_t B[c1]__attribute__( ( aligned (64) ) ); // B is a 32 x 1 matrix (vector)
    int16_t C[c1]__attribute__( ( aligned (64) ) ); // C is the 32 x 1 resulting matrix
    // Initialize matrices for AVX
    generateMatrix(A, r1*c1);
    generateMatrix(B, c1);
    generateMatrix(C, c1, 0); // initialize C to all 0s
    // Initialize matrices for Armadillo
    arma::Mat<short> armaA(A, r1, c1, 40);
    arma::Mat<short> armaB(B, c1, 1, 40);
    arma::Mat<short> armaC(r1, 1);
    armaA = armaA.t(); // Armadillo copies the matrices column major (?), so transpose A
    // Run benchmarks for both AVX and Armadillo
    double avxTime = runAVXBenchmark(A, r1, c1, B, C, numIter);
    double armaTime = runArmaBenchmark(armaA, armaB, armaC, numIter);
    // Assert the resulting matrices are the same
    assert(matricesEqual(C, armaC));
    // Output results
    double avgAVX = avxTime/(double)numIter;
    double avgArma = armaTime/(double)numIter;
    printf("C = AB executed %ld times.\n", numIter);
    printf("Dimensions:       (%u x %u) * (%u x 1)\n", r1, c1, c1);
    printf("Armadillo: %10.3f µs per iteration\n", avgArma);
    printf("My code:   %10.3f µs per iteration\n", avgAVX);
    if(avgAVX < avgArma) {
        printf("%2.2fx faster than Armadillo\n", avgArma/avgAVX);
    } else {
        printf("%2.2fx slower than Armadillo\n", avgArma/avgAVX);
    }
}

int main(int argc, char** argv) {
    if(argc > 2) {
        std::cerr << "Usage: " << argv[0] << " [iterations]" << std::endl;
        return 1;
    }
    if(argc == 1) {
        runBenchmarks();
    }
    else if(argc == 2) {
        unsigned long iterations = strtoul(argv[1], NULL, 0);
        runBenchmarks(iterations);
    }
    return 0;
}