#include "../bench_matmul.hpp"


void runBench(int numIter = DEFAULT_ITER) {
    int nrows = 64;
    int ncols = 16;
    int mod = 50;
    Complex_int16 A[nrows * ncols] __attribute__((aligned(64))); 
    Complex_int16 B[ncols] __attribute__((aligned(64)));         // B is a vector
    Complex_int16 C[nrows] __attribute__((aligned(64)));         // C is the resulting vector        
    // Initialize matrices for AVX
    generateMatrix(A, nrows * ncols, mod);
    generateMatrix(B, ncols, mod);
    generateMatrix(C, nrows, 0); // initialize C to all 0s
    // Initialize matrices for Armadillo (Copy from A, B, C)
    arma::cx_fmat armaA = int16MatrixToArma(A, nrows, ncols);
    arma::cx_fmat armaB = int16MatrixToArma(B, ncols, 1);
    arma::cx_fmat armaC = int16MatrixToArma(C, nrows, 1);
    double armaTime = runArmaBenchmark(armaA, armaB, armaC, numIter);
    printf("%.7f µs per iteration\n", armaTime/(double)numIter);
}

int main() {
    runBench();
    return 0;
}

