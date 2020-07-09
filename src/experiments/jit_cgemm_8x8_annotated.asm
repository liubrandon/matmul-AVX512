0xFFE63D1948FD6262   vbroadcastsd zmm31, [0xFFE63D1948FD6252]

; Col 1
0xFFE63D1948FD626C   vmovups zmm30, zmmword ptr [rsi]
0xFFE63D1948FD6279   vmulps realAccu1, zmm30, [rdx] {1to16}
0xFFE63D1948FD627F   vmulps imagAccu1, zmm30, [rdx+0x04] {1to16}

; 2
0xFFE63D1948FD6272   vmovups zmm29, zmmword ptr [rsi+0x40]
0xFFE63D1948FD628D   vmulps realAccu2, zmm29, [rdx+0x08] {1to16}
0xFFE63D1948FD6294   vmulps imagAccu2, zmm29, [rdx+0x0C] {1to16}

; 3
0xFFE63D1948FD6286   vmovups zmm30, zmmword ptr [rsi+0x80]
0xFFE63D1948FD62A2   vmulps realAccu3, zmm30, [rdx+0x10] {1to16}
0xFFE63D1948FD62A9   vmulps imagAccu3, zmm30, [rdx+0x14] {1to16}

; 4
0xFFE63D1948FD629B   vmovups zmm29, zmmword ptr [rsi+0xC0]
0xFFE63D1948FD62B7   vmulps realAccu4, zmm29, [rdx+0x18] {1to16}
0xFFE63D1948FD62BE   vmulps imagAccu4, zmm29, [rdx+0x1C] {1to16}

; 5
0xFFE63D1948FD62B0   vmovups zmm30, zmmword ptr [rsi+0x100]
0xFFE63D1948FD62CC   vmulps realAccu5, zmm30, [rdx+0x20] {1to16}
0xFFE63D1948FD62D3   vmulps imagAccu5, zmm30, [rdx+0x24] {1to16}

; 6
0xFFE63D1948FD62C5   vmovups zmm29, zmmword ptr [rsi+0x140]
0xFFE63D1948FD62E1   vfmadd231ps realAccu1, zmm29, [rdx+0x28] {1to16}
0xFFE63D1948FD62E8   vfmadd231ps imagAccu1, zmm29, [rdx+0x2C] {1to16}

; 7
0xFFE63D1948FD62DA   vmovups zmm30, zmmword ptr [rsi+0x180]
0xFFE63D1948FD62F6   vfmadd231ps realAccu2, zmm30, [rdx+0x30] {1to16}
0xFFE63D1948FD62FD   vfmadd231ps imagAccu2, zmm30, [rdx+0x34] {1to16}

; 8
0xFFE63D1948FD62EF   vmovups zmm29, zmmword ptr [rsi+0x1C0]
0xFFE63D1948FD6304   vfmadd231ps realAccu3, zmm29, [rdx+0x38] {1to16}
0xFFE63D1948FD630B   vfmadd231ps imagAccu3, zmm29, [rdx+0x3C] {1to16}

0xFFE63D1948FD6312   vaddps realAccu1, realAccu1, realAccu5
0xFFE63D1948FD6318   vaddps imagAccu1, imagAccu1, imagAccu5
0xFFE63D1948FD631E   vaddps realAccu1, realAccu1, realAccu3
0xFFE63D1948FD6324   vaddps imagAccu1, imagAccu1, imagAccu3
0xFFE63D1948FD632A   vaddps realAccu2, realAccu2, realAccu4
0xFFE63D1948FD6330   vaddps imagAccu2, imagAccu2, imagAccu4
0xFFE63D1948FD6336   vaddps realAccu1, realAccu1, realAccu2
0xFFE63D1948FD633C   vaddps imagAccu1, imagAccu1, imagAccu2
0xFFE63D1948FD6342   vpermilps imagAccu1, imagAccu1, 0xB1
0xFFE63D1948FD6349   vfnmadd231ps realAccu1, imagAccu1, zmm31
0xFFE63D1948FD634F   vmovups zmmword ptr [rcx], realAccu1
0xFFE63D1948FD6355   vzeroupper
0xFFE63D1948FD6358   ret
