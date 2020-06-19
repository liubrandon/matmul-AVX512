# matvec-AVX512
Fixed point, int16 complex matrix-vector multiplication taking advantage of Intel's SIMD extension for operating on 512-bit vectors.

Usage: matvec [-v] [iterations]\
	-v: Sets the environmental variable MKL_VERBOSE=1 to see the Intel MKL function calls under the hood.\
	iterations: number of iterations to run the tests. Default is 1000000.
