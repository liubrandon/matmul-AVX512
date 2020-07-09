{(1 2) (2 3)
 (3 4) (4 5)}  matrix (col major)

{(2 1) (3 2)}  vector

0xFFE63D1208FF6162   vmovddup xmm31, [0xFFE63D1208FF6152]
                    ;xmm31 = {1, -1, 1, -1} // multiply and add for an add/sub effect
0xFFE63D1208FF616C   vmovups xmm30, xmmword ptr [rsi]
                    ;xmm30 = {1, 2, 2, 3} // col1
0xFFE63D1208FF6172   vmovups xmm29, xmmword ptr [rsi+0x10]
                    ;xmm29 = {3, 4, 4, 5} // col2
0xFFE63D1208FF6179   vmulps xmm28, xmm30, [rdx] {1to4}
                    ;xmm28 = {2, 4, 4, 6} // col1 * vec[0]
0xFFE63D1208FF617F   vmulps xmm27, xmm30, [rdx+0x04] {1to4}
                    ;xmm27 = {1, 2, 2, 3} // col1 * vec[1]
0xFFE63D1208FF6186   vfmadd231ps xmm28, xmm29, [rdx+0x08] {1to4}
                    ;xmm28 = {11, 16, 16, 21} // xmm28 + (col2 * vec[2])
0xFFE63D1208FF618D   vfmadd231ps xmm27, xmm29, [rdx+0x0C] {1to4}
                    ;xmm27 = {7, 10, 10, 13} // xmm27 + (col2 * vec[3])
0xFFE63D1208FF6194   vpermilps xmm27, xmm27, 0xB1
                    ;xmm27 = {10, 7, 13, 10} // swap real and imag
0xFFE63D1208FF619B   vfnmadd231ps xmm28, xmm27, xmm31
                    ;xmm28 = {1, 29, 3, 31} // xmm28 - (xmm27 * xmm31)
0xFFE63D1208FF61A1   vmovups xmmword ptr [rcx], xmm28
0xFFE63D1208FF61A7   ret


/* Algorithm in English
multiply col1 by corresponding real and imag element in vector
accumulate with col2 multiplied by corresponding real and imag element in vector


*/