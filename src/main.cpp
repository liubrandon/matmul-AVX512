#include "bench_matmul.hpp"
#include "bench_dot.hpp"
#include <cassert>
static int showUsage(char *prog) {
    fprintf(stderr, "Usage: %s [-v] [iterations]\n", prog);
    fprintf(stderr, "   -v: Sets the environmental variable MKL_VERBOSE=1 to see the Intel MKL function calls under the hood.\n");
    fprintf(stderr, "   iterations: number of iterations to run the tests. Default is %d.\n", DEFAULT_ITER);
    return 1;
}



int main(int argc, char **argv) {
    if (argc == 1) {
        runBenchmarks();
    }
    else if (argc == 2) {
        if (strcmp(argv[1], "-v") == 0) {
            setenv("MKL_VERBOSE", "1", 1);
            runBenchmarks();
        }
        else {
            unsigned long iterations = strtoul(argv[1], NULL, 0);
            runBenchmarks(iterations);
        }
    }
    else if (argc == 3) {
        if (strcmp(argv[1], "-v") == 0) {
            setenv("MKL_VERBOSE", "1", 1);
            unsigned long iterations = strtoul(argv[2], NULL, 0);
            runBenchmarks(iterations);
        }
        else {
            return showUsage(argv[0]);
        }
    }
    else {
        return showUsage(argv[0]);
    }
    return 0;
}