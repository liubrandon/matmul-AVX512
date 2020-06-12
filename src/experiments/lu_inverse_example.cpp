#include <stdio.h>
#include <stdlib.h>
// #include <omp.h>
#include "mkl.h"
//https://software.intel.com/content/www/us/en/develop/articles/intelr-math-kernel-library-introducing-vectorized-compact-routines.html
#define N                       22
#define NMAT                  2048

#define NITER_WARMUP            10

void test(double *t_compact) {
    MKL_INT i, j;

    MKL_LAYOUT layout = MKL_COL_MAJOR;
    MKL_INT m = N;
    MKL_INT n = N;
    MKL_INT lda = m;

    MKL_INT info;
    MKL_COMPACT_PACK format;
    MKL_INT nmat = NMAT;

    /* Set up standard arrays in P2P (pointer-to-pointer) format */
    MKL_INT a_size = lda * n;
    MKL_INT na = a_size * nmat;
    double *a = (double *)mkl_malloc(na * nmat * sizeof(double), 128);
    double *a_array[NMAT];
    double *a_compact;

    /* For random generation of matrices */
    MKL_INT idist = 1;
    MKL_INT iseed[] = { 0, 1, 2, 3 };
    double diag_offset = (double)n;

    /* For workspace calculation */
    MKL_INT imone = -1;
    MKL_INT lwork;
    double work_query[1];
    double *work_compact;

    /* For setting up compact arrays */
    MKL_INT a_buffer_size;
    MKL_INT ldap = lda;
    MKL_INT sdap = n;

    /* Random generation of matrices */
    dlarnv(&idist, iseed, &na, a);

    for (i = 0; i < nmat; i++) {
        /* Make matrix diagonal dominant to avoid accuracy issues
                 in the non-pivoted LU factorization */
        for (j = 0; j < m; j++) {
            a[i * a_size + j + j * lda] += diag_offset;
        }
        a_array[i] = &a[i * a_size];
    }

    /* -----Start Compact----- */

    /* Set up Compact arrays */
    format = mkl_get_format_compact();

    a_buffer_size = mkl_dget_size_compact(ldap, sdap, format, nmat);

    a_compact = (double *)mkl_malloc(a_buffer_size, 128);

    /* Workspace query */
    mkl_dgetrinp_compact(layout, n, a_compact, ldap, work_query, imone, &info, format, nmat);
    lwork = (MKL_INT)work_query[0];
    work_compact = (double *)mkl_malloc(sizeof(double) * lwork, 128);

    /* Start timing compact */
    *t_compact = dsecnd();

    /* Pack from P2P to Compact format */
    mkl_dgepack_compact(layout, n, n, a_array, lda, a_compact, ldap, format, nmat);

    /* Perform Compact LU Factorization */
    mkl_dgetrfnp_compact(layout, n, n, a_compact, ldap, &info, format, nmat);

    /* Perform Compact Inverse Calculation */
    mkl_dgetrinp_compact(layout, n, a_compact, ldap, work_compact, lwork, &info, format, nmat);

    /* Unpack from Compact to P2P format */
    mkl_dgeunpack_compact(layout, n, n, a_array, lda, a_compact, ldap, format, nmat);

    /* End timing compact */
    *t_compact = dsecnd() - *t_compact;
    /* -----End Compact----- */


    /* Workspace query */
    mkl_dgetrinp(&n, a_array[0], &lda, work_query, &imone, &info);
    // lwork = (MKL_INT)work_query[0] * nthr;
    // work_omp = (double *)mkl_malloc(sizeof(double) * lwork, 128);

    /* Deallocate arrays */
    mkl_free(a_compact);
    mkl_free(a);
    mkl_free(work_compact);
}

int main() {
    MKL_INT i = 0;
    double t_compact;
    //double t_omp;
    double flops = NMAT * ((2.0 / 3.0 + 4.0 / 3.0) * N * N * N);
    for (i = 0; i < NITER_WARMUP; i++) {
        test(&t_compact);
    }
    test(&t_compact);
    printf("N = %d, NMAT = %d\n", N, NMAT);
    printf("Compact time = %fs, GFlops = %f\n", t_compact, flops / t_compact / 1e9);
    return 0;
}
