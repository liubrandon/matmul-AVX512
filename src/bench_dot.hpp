#ifndef BENCH_DOT_HPP
#define BENCH_DOT_HPP
#include "complex_dotproduct.hpp"
#include "timer.hpp"
// Armadillo wrapper for Intel MKL
#include <armadillo>
// Provides Intel Intrinsics
#include "immintrin.h"
// Agner Fog's Vector Class Library
#include "vectorclass.h"
#include "complexvec1.h"

// testing complex dot product
static inline double runArmaDotBench(int numIter) {
    arma::cx_fvec test(16);
    test.fill(arma::cx_float(6, 3));
    double start = getTime();
    arma::cx_float testDot;
    for(int i = 0; i < numIter; i++) {
        testDot = dot(test, test);
    }
    std::cout << "Arma result: " << testDot << std::endl;
    return timeSince(start);
}

static inline double runMyDotBench(int numIter) {
    Complex_int16 test[16] __attribute__((aligned(64)));
    //Complex_int16 test1[16] __attribute__((aligned(64)));
    for (int i = 0; i < 16; i++) {
        Complex_int16 num = {6, 3};
        test[i] = num;
        //test1[i] = num;
    }
    Complex_int16 res;
    //__m512i mul;
    double start = getTime();
    for(int i = 0; i < numIter; i++) {
        __m512i a = _mm512_load_si512((const void*)test);
        res = dotProduct16x32(a, a);
        
        //mul = _mm512_myComplexMult_epi16(a, a);
    }
    double time = timeSince(start);
    std::cout << "My result: " << "(" << res.real << "," << res.imag << ")" << std::endl;
    return time;
}

static inline double runVCLDotBench(int numIter) {
    Complex8f a(6,3);
    Complex8f b(6,3);
    //__m512 c = _mm512_set_ps(6,3,6,3,6,3,6,3,6,3,6,3,6,3,6,3);
    Complex8f d;
    Complex1f res;
    double start = getTime();
    for(int i = 0; i < numIter; i++) {
        res = chorizontal_add(a*a)
            + chorizontal_add(b*b);
    }
    double time = timeSince(start);
    std::cout << "VLC result: " << "(" << res.real() << "," << res.imag() << ")" << std::endl;
    return time;
}

static inline void runDotBenchmarks(int numIter) {
    // Run benchmarks for AVX, Armadillo and VCL
    double avxTime = runMyDotBench(numIter);
    double armaTime = runArmaDotBench(numIter);
    double vclTime = runVCLDotBench(numIter);
    std::cout << armaTime << ", " << avxTime << ", " << vclTime << std::endl;
    // Output results
    double avgArma = armaTime / (double)numIter;
    double avgAVX = avxTime / (double)numIter;
    double avgVCL = vclTime / (double)numIter;
    printf("Dot product executed %d times.\n", numIter);
    printf("MKL/Armadillo:   %10.6f µs per iteration\n", avgArma);
    printf("Intrinsics   :   %10.6f µs per iteration\n", avgAVX);
    printf("%2.2fx MKL/Arma float dot\n\n", armaTime / avxTime);
    printf("Agner Fog VCL:   %10.6f µs per iteration\n", avgVCL);
    printf("%2.2fx MKL/Arma float dot\n", armaTime / vclTime);
}

#endif