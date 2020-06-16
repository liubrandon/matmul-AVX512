#include "../bench_matmul.hpp"

double runMyBenchmark(const Complex_int16* A, int r1, int c1, const Complex_int16* B, Complex_int16* C, int numIter) {
    double start = getTime();
    for (int i = 0; i < numIter; i++) {
        // seperate A into real and imag and transpose to make column major
        Complex_int16 Atrans[r1*c1] __attribute__((aligned(64)));
        for(int i = 0; i < r1; i++) {
            for(int j = 0; j < c1; j++) {
                Atrans[j*r1+i] = A[i*c1+j];
            }
        }
        int16_t Areal[r1*c1] __attribute__((aligned(64)));
        int16_t Aimag[r1*c1] __attribute__((aligned(64)));
        for(int i = 0; i < r1*c1; i++) {
            Areal[i] = A[i].real;
            Aimag[i] = A[i].imag;
        }
        matmulAVX512_colmajor(Areal, Aimag, r1, c1, B, C);
    }
    return timeSince(start);
}

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
    double time = runMyBenchmark(A, nrows, ncols, B, C, numIter);
    printf("%.7f µs per iteration\n", time/(double)numIter);
}

int main() {
    runBench();
    return 0;
}

