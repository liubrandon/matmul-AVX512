; zmm31 = {1, -1, 1, -1, ...}
0xFFE63D1948FD6262   vbroadcastsd zmm31, [0xFFE63D1948FD6252]

; first half of Col 1 (32 complex numbers)
; multiply by corresponding real/imag value broadcast into zmm14
; and accumulate in zmm15-zmm22
0xFFE63D1948FD626C   vmovups zmm30, zmmword ptr [rsi]
0xFFE63D1948FD6272   vmovups zmm29, zmmword ptr [rsi+0x40]
0xFFE63D1948FD6279   vmovups zmm28, zmmword ptr [rsi+0x80]
0xFFE63D1948FD6280   vmovups zmm27, zmmword ptr [rsi+0xC0]
0xFFE63D1948FD62A3   vbroadcastss zmm14, dword ptr [rdx]
0xFFE63D1948FD62A9   vmulps zmm22, zmm30, zmm14
0xFFE63D1948FD62AF   vmulps zmm21, zmm29, zmm14
0xFFE63D1948FD62B5   vmulps zmm20, zmm28, zmm14
0xFFE63D1948FD62BB   vmulps zmm19, zmm27, zmm14
0xFFE63D1948FD62C1   vbroadcastss zmm14, dword ptr [rdx+0x04]
0xFFE63D1948FD62C8   vmulps zmm18, zmm30, zmm14
0xFFE63D1948FD62CE   vmulps zmm17, zmm29, zmm14
0xFFE63D1948FD62D4   vmulps zmm16, zmm28, zmm14
0xFFE63D1948FD62DA   vmulps zmm15, zmm27, zmm14

; first half of Col 2 (32 complex numbers)? skipped second half of col 1
0xFFE63D1948FD6287   vmovups zmm26, zmmword ptr [rsi+0x200]
0xFFE63D1948FD628E   vmovups zmm25, zmmword ptr [rsi+0x240]
0xFFE63D1948FD6295   vmovups zmm24, zmmword ptr [rsi+0x280]
0xFFE63D1948FD629C   vmovups zmm23, zmmword ptr [rsi+0x2C0]
0xFFE63D1948FD62FC   vbroadcastss zmm14, dword ptr [rdx+0x08]
0xFFE63D1948FD6303   vfmadd231ps zmm22, zmm26, zmm14
0xFFE63D1948FD6309   vfmadd231ps zmm21, zmm25, zmm14
0xFFE63D1948FD630F   vfmadd231ps zmm20, zmm24, zmm14
0xFFE63D1948FD6315   vfmadd231ps zmm19, zmm23, zmm14
0xFFE63D1948FD631B   vbroadcastss zmm14, dword ptr [rdx+0x0C]
0xFFE63D1948FD6322   vfmadd231ps zmm18, zmm26, zmm14
0xFFE63D1948FD6328   vfmadd231ps zmm17, zmm25, zmm14
0xFFE63D1948FD632E   vfmadd231ps zmm16, zmm24, zmm14
0xFFE63D1948FD6334   vfmadd231ps zmm15, zmm23, zmm14

; keep accumulating in zmm15-zmm22

0xFFE63D1948FD62E0   vmovups zmm30, zmmword ptr [rsi+0x400]
0xFFE63D1948FD62E7   vmovups zmm29, zmmword ptr [rsi+0x440]
0xFFE63D1948FD62EE   vmovups zmm28, zmmword ptr [rsi+0x480]
0xFFE63D1948FD62F5   vmovups zmm27, zmmword ptr [rsi+0x4C0]
0xFFE63D1948FD6356   vbroadcastss zmm14, dword ptr [rdx+0x10]
0xFFE63D1948FD635D   vfmadd231ps zmm22, zmm30, zmm14
0xFFE63D1948FD6363   vfmadd231ps zmm21, zmm29, zmm14
0xFFE63D1948FD6369   vfmadd231ps zmm20, zmm28, zmm14
0xFFE63D1948FD636F   vfmadd231ps zmm19, zmm27, zmm14
0xFFE63D1948FD6375   vbroadcastss zmm14, dword ptr [rdx+0x14]
0xFFE63D1948FD637C   vfmadd231ps zmm18, zmm30, zmm14
0xFFE63D1948FD6382   vfmadd231ps zmm17, zmm29, zmm14
0xFFE63D1948FD6388   vfmadd231ps zmm16, zmm28, zmm14
0xFFE63D1948FD638E   vfmadd231ps zmm15, zmm27, zmm14
;
0xFFE63D1948FD633A   vmovups zmm26, zmmword ptr [rsi+0x600]
0xFFE63D1948FD6341   vmovups zmm25, zmmword ptr [rsi+0x640]
0xFFE63D1948FD6348   vmovups zmm24, zmmword ptr [rsi+0x680]
0xFFE63D1948FD634F   vmovups zmm23, zmmword ptr [rsi+0x6C0]
0xFFE63D1948FD63B0   vbroadcastss zmm14, dword ptr [rdx+0x18]
0xFFE63D1948FD63B7   vfmadd231ps zmm22, zmm26, zmm14
0xFFE63D1948FD63BD   vfmadd231ps zmm21, zmm25, zmm14
0xFFE63D1948FD63C3   vfmadd231ps zmm20, zmm24, zmm14
0xFFE63D1948FD63C9   vfmadd231ps zmm19, zmm23, zmm14
0xFFE63D1948FD63CF   vbroadcastss zmm14, dword ptr [rdx+0x1C]
0xFFE63D1948FD63D6   vfmadd231ps zmm18, zmm26, zmm14
0xFFE63D1948FD63DC   vfmadd231ps zmm17, zmm25, zmm14
0xFFE63D1948FD63E2   vfmadd231ps zmm16, zmm24, zmm14
0xFFE63D1948FD63E8   vfmadd231ps zmm15, zmm23, zmm14

0xFFE63D1948FD6394   vmovups zmm30, zmmword ptr [rsi+0x800]
0xFFE63D1948FD639B   vmovups zmm29, zmmword ptr [rsi+0x840]
0xFFE63D1948FD63A2   vmovups zmm28, zmmword ptr [rsi+0x880]
0xFFE63D1948FD63A9   vmovups zmm27, zmmword ptr [rsi+0x8C0]
0xFFE63D1948FD640A   vbroadcastss zmm14, dword ptr [rdx+0x20]
0xFFE63D1948FD6411   vfmadd231ps zmm22, zmm30, zmm14
0xFFE63D1948FD6417   vfmadd231ps zmm21, zmm29, zmm14
0xFFE63D1948FD641D   vfmadd231ps zmm20, zmm28, zmm14
0xFFE63D1948FD6423   vfmadd231ps zmm19, zmm27, zmm14
0xFFE63D1948FD6429   vbroadcastss zmm14, dword ptr [rdx+0x24]
0xFFE63D1948FD6430   vfmadd231ps zmm18, zmm30, zmm14
0xFFE63D1948FD6436   vfmadd231ps zmm17, zmm29, zmm14
0xFFE63D1948FD643C   vfmadd231ps zmm16, zmm28, zmm14
0xFFE63D1948FD6442   vfmadd231ps zmm15, zmm27, zmm14
;
0xFFE63D1948FD63EE   vmovups zmm26, zmmword ptr [rsi+0xA00]
0xFFE63D1948FD63F5   vmovups zmm25, zmmword ptr [rsi+0xA40]
0xFFE63D1948FD63FC   vmovups zmm24, zmmword ptr [rsi+0xA80]
0xFFE63D1948FD6403   vmovups zmm23, zmmword ptr [rsi+0xAC0]
0xFFE63D1948FD6464   vbroadcastss zmm14, dword ptr [rdx+0x28]
0xFFE63D1948FD646B   vfmadd231ps zmm22, zmm26, zmm14
0xFFE63D1948FD6471   vfmadd231ps zmm21, zmm25, zmm14
0xFFE63D1948FD6477   vfmadd231ps zmm20, zmm24, zmm14
0xFFE63D1948FD647D   vfmadd231ps zmm19, zmm23, zmm14
0xFFE63D1948FD6483   vbroadcastss zmm14, dword ptr [rdx+0x2C]
0xFFE63D1948FD648A   vfmadd231ps zmm18, zmm26, zmm14
0xFFE63D1948FD6490   vfmadd231ps zmm17, zmm25, zmm14
0xFFE63D1948FD6496   vfmadd231ps zmm16, zmm24, zmm14
0xFFE63D1948FD649C   vfmadd231ps zmm15, zmm23, zmm14

0xFFE63D1948FD6448   vmovups zmm30, zmmword ptr [rsi+0xC00]
0xFFE63D1948FD644F   vmovups zmm29, zmmword ptr [rsi+0xC40]
0xFFE63D1948FD6456   vmovups zmm28, zmmword ptr [rsi+0xC80]
0xFFE63D1948FD645D   vmovups zmm27, zmmword ptr [rsi+0xCC0]
0xFFE63D1948FD64BE   vbroadcastss zmm14, dword ptr [rdx+0x30]
0xFFE63D1948FD64C5   vfmadd231ps zmm22, zmm30, zmm14
0xFFE63D1948FD64CB   vfmadd231ps zmm21, zmm29, zmm14
0xFFE63D1948FD64D1   vfmadd231ps zmm20, zmm28, zmm14
0xFFE63D1948FD64D7   vfmadd231ps zmm19, zmm27, zmm14
0xFFE63D1948FD64DD   vbroadcastss zmm14, dword ptr [rdx+0x34]
0xFFE63D1948FD64E4   vfmadd231ps zmm18, zmm30, zmm14
0xFFE63D1948FD64EA   vfmadd231ps zmm17, zmm29, zmm14
0xFFE63D1948FD64F0   vfmadd231ps zmm16, zmm28, zmm14
0xFFE63D1948FD64F6   vfmadd231ps zmm15, zmm27, zmm14

0xFFE63D1948FD64A2   vmovups zmm26, zmmword ptr [rsi+0xE00]
0xFFE63D1948FD64A9   vmovups zmm25, zmmword ptr [rsi+0xE40]
0xFFE63D1948FD64B0   vmovups zmm24, zmmword ptr [rsi+0xE80]
0xFFE63D1948FD64B7   vmovups zmm23, zmmword ptr [rsi+0xEC0]
0xFFE63D1948FD6518   vbroadcastss zmm14, dword ptr [rdx+0x38]
0xFFE63D1948FD651F   vfmadd231ps zmm22, zmm26, zmm14
0xFFE63D1948FD6525   vfmadd231ps zmm21, zmm25, zmm14
0xFFE63D1948FD652B   vfmadd231ps zmm20, zmm24, zmm14
0xFFE63D1948FD6531   vfmadd231ps zmm19, zmm23, zmm14
0xFFE63D1948FD6537   vbroadcastss zmm14, dword ptr [rdx+0x3C]
0xFFE63D1948FD653E   vfmadd231ps zmm18, zmm26, zmm14
0xFFE63D1948FD6544   vfmadd231ps zmm17, zmm25, zmm14
0xFFE63D1948FD654A   vfmadd231ps zmm16, zmm24, zmm14
0xFFE63D1948FD6550   vfmadd231ps zmm15, zmm23, zmm14

0xFFE63D1948FD64FC   vmovups zmm30, zmmword ptr [rsi+0x1000]
0xFFE63D1948FD6503   vmovups zmm29, zmmword ptr [rsi+0x1040]
0xFFE63D1948FD650A   vmovups zmm28, zmmword ptr [rsi+0x1080]
0xFFE63D1948FD6511   vmovups zmm27, zmmword ptr [rsi+0x10C0]
0xFFE63D1948FD6572   vbroadcastss zmm14, dword ptr [rdx+0x40]
0xFFE63D1948FD6579   vfmadd231ps zmm22, zmm30, zmm14
0xFFE63D1948FD657F   vfmadd231ps zmm21, zmm29, zmm14
0xFFE63D1948FD6585   vfmadd231ps zmm20, zmm28, zmm14
0xFFE63D1948FD658B   vfmadd231ps zmm19, zmm27, zmm14
0xFFE63D1948FD6591   vbroadcastss zmm14, dword ptr [rdx+0x44]
0xFFE63D1948FD6598   vfmadd231ps zmm18, zmm30, zmm14
0xFFE63D1948FD659E   vfmadd231ps zmm17, zmm29, zmm14
0xFFE63D1948FD65A4   vfmadd231ps zmm16, zmm28, zmm14
0xFFE63D1948FD65AA   vfmadd231ps zmm15, zmm27, zmm14

0xFFE63D1948FD6556   vmovups zmm26, zmmword ptr [rsi+0x1200]
0xFFE63D1948FD655D   vmovups zmm25, zmmword ptr [rsi+0x1240]
0xFFE63D1948FD6564   vmovups zmm24, zmmword ptr [rsi+0x1280]
0xFFE63D1948FD656B   vmovups zmm23, zmmword ptr [rsi+0x12C0]
0xFFE63D1948FD65CC   vbroadcastss zmm14, dword ptr [rdx+0x48]
0xFFE63D1948FD65D3   vfmadd231ps zmm22, zmm26, zmm14
0xFFE63D1948FD65D9   vfmadd231ps zmm21, zmm25, zmm14
0xFFE63D1948FD65DF   vfmadd231ps zmm20, zmm24, zmm14
0xFFE63D1948FD65E5   vfmadd231ps zmm19, zmm23, zmm14
0xFFE63D1948FD65EB   vbroadcastss zmm14, dword ptr [rdx+0x4C]
0xFFE63D1948FD65F2   vfmadd231ps zmm18, zmm26, zmm14
0xFFE63D1948FD65F8   vfmadd231ps zmm17, zmm25, zmm14
0xFFE63D1948FD65FE   vfmadd231ps zmm16, zmm24, zmm14
0xFFE63D1948FD6604   vfmadd231ps zmm15, zmm23, zmm14

0xFFE63D1948FD65B0   vmovups zmm30, zmmword ptr [rsi+0x1400]
0xFFE63D1948FD65B7   vmovups zmm29, zmmword ptr [rsi+0x1440]
0xFFE63D1948FD65BE   vmovups zmm28, zmmword ptr [rsi+0x1480]
0xFFE63D1948FD65C5   vmovups zmm27, zmmword ptr [rsi+0x14C0]
0xFFE63D1948FD6626   vbroadcastss zmm14, dword ptr [rdx+0x50]
0xFFE63D1948FD662D   vfmadd231ps zmm22, zmm30, zmm14
0xFFE63D1948FD6633   vfmadd231ps zmm21, zmm29, zmm14
0xFFE63D1948FD6639   vfmadd231ps zmm20, zmm28, zmm14
0xFFE63D1948FD663F   vfmadd231ps zmm19, zmm27, zmm14
0xFFE63D1948FD6645   vbroadcastss zmm14, dword ptr [rdx+0x54]
0xFFE63D1948FD664C   vfmadd231ps zmm18, zmm30, zmm14
0xFFE63D1948FD6652   vfmadd231ps zmm17, zmm29, zmm14
0xFFE63D1948FD6658   vfmadd231ps zmm16, zmm28, zmm14
0xFFE63D1948FD665E   vfmadd231ps zmm15, zmm27, zmm14

0xFFE63D1948FD660A   vmovups zmm26, zmmword ptr [rsi+0x1600]
0xFFE63D1948FD6611   vmovups zmm25, zmmword ptr [rsi+0x1640]
0xFFE63D1948FD6618   vmovups zmm24, zmmword ptr [rsi+0x1680]
0xFFE63D1948FD661F   vmovups zmm23, zmmword ptr [rsi+0x16C0]
0xFFE63D1948FD6680   vbroadcastss zmm14, dword ptr [rdx+0x58]
0xFFE63D1948FD6687   vfmadd231ps zmm22, zmm26, zmm14
0xFFE63D1948FD668D   vfmadd231ps zmm21, zmm25, zmm14
0xFFE63D1948FD6693   vfmadd231ps zmm20, zmm24, zmm14
0xFFE63D1948FD6699   vfmadd231ps zmm19, zmm23, zmm14
0xFFE63D1948FD669F   vbroadcastss zmm14, dword ptr [rdx+0x5C]
0xFFE63D1948FD66A6   vfmadd231ps zmm18, zmm26, zmm14
0xFFE63D1948FD66AC   vfmadd231ps zmm17, zmm25, zmm14
0xFFE63D1948FD66B2   vfmadd231ps zmm16, zmm24, zmm14
0xFFE63D1948FD66B8   vfmadd231ps zmm15, zmm23, zmm14

0xFFE63D1948FD6664   vmovups zmm30, zmmword ptr [rsi+0x1800]
0xFFE63D1948FD666B   vmovups zmm29, zmmword ptr [rsi+0x1840]
0xFFE63D1948FD6672   vmovups zmm28, zmmword ptr [rsi+0x1880]
0xFFE63D1948FD6679   vmovups zmm27, zmmword ptr [rsi+0x18C0]
0xFFE63D1948FD66DA   vbroadcastss zmm14, dword ptr [rdx+0x60]
0xFFE63D1948FD66E1   vfmadd231ps zmm22, zmm30, zmm14
0xFFE63D1948FD66E7   vfmadd231ps zmm21, zmm29, zmm14
0xFFE63D1948FD66ED   vfmadd231ps zmm20, zmm28, zmm14
0xFFE63D1948FD66F3   vfmadd231ps zmm19, zmm27, zmm14
0xFFE63D1948FD66F9   vbroadcastss zmm14, dword ptr [rdx+0x64]
0xFFE63D1948FD6700   vfmadd231ps zmm18, zmm30, zmm14
0xFFE63D1948FD6706   vfmadd231ps zmm17, zmm29, zmm14
0xFFE63D1948FD670C   vfmadd231ps zmm16, zmm28, zmm14
0xFFE63D1948FD6712   vfmadd231ps zmm15, zmm27, zmm14

0xFFE63D1948FD66BE   vmovups zmm26, zmmword ptr [rsi+0x1A00]
0xFFE63D1948FD66C5   vmovups zmm25, zmmword ptr [rsi+0x1A40]
0xFFE63D1948FD66CC   vmovups zmm24, zmmword ptr [rsi+0x1A80]
0xFFE63D1948FD66D3   vmovups zmm23, zmmword ptr [rsi+0x1AC0]
0xFFE63D1948FD6734   vbroadcastss zmm14, dword ptr [rdx+0x68]
0xFFE63D1948FD673B   vfmadd231ps zmm22, zmm26, zmm14
0xFFE63D1948FD6741   vfmadd231ps zmm21, zmm25, zmm14
0xFFE63D1948FD6747   vfmadd231ps zmm20, zmm24, zmm14
0xFFE63D1948FD674D   vfmadd231ps zmm19, zmm23, zmm14
0xFFE63D1948FD6753   vbroadcastss zmm14, dword ptr [rdx+0x6C]
0xFFE63D1948FD675A   vfmadd231ps zmm18, zmm26, zmm14
0xFFE63D1948FD6760   vfmadd231ps zmm17, zmm25, zmm14
0xFFE63D1948FD6766   vfmadd231ps zmm16, zmm24, zmm14
0xFFE63D1948FD676C   vfmadd231ps zmm15, zmm23, zmm14

0xFFE63D1948FD6718   vmovups zmm30, zmmword ptr [rsi+0x1C00]
0xFFE63D1948FD671F   vmovups zmm29, zmmword ptr [rsi+0x1C40]
0xFFE63D1948FD6726   vmovups zmm28, zmmword ptr [rsi+0x1C80]
0xFFE63D1948FD672D   vmovups zmm27, zmmword ptr [rsi+0x1CC0]
0xFFE63D1948FD678E   vbroadcastss zmm14, dword ptr [rdx+0x70]
0xFFE63D1948FD6795   vfmadd231ps zmm22, zmm30, zmm14
0xFFE63D1948FD679B   vfmadd231ps zmm21, zmm29, zmm14
0xFFE63D1948FD67A1   vfmadd231ps zmm20, zmm28, zmm14
0xFFE63D1948FD67A7   vfmadd231ps zmm19, zmm27, zmm14
0xFFE63D1948FD67AD   vbroadcastss zmm14, dword ptr [rdx+0x74]
0xFFE63D1948FD67B4   vfmadd231ps zmm18, zmm30, zmm14
0xFFE63D1948FD67BA   vfmadd231ps zmm17, zmm29, zmm14
0xFFE63D1948FD67C0   vfmadd231ps zmm16, zmm28, zmm14
0xFFE63D1948FD67C6   vfmadd231ps zmm15, zmm27, zmm14

0xFFE63D1948FD6772   vmovups zmm26, zmmword ptr [rsi+0x1E00]
0xFFE63D1948FD6779   vmovups zmm25, zmmword ptr [rsi+0x1E40]
0xFFE63D1948FD6780   vmovups zmm24, zmmword ptr [rsi+0x1E80]
0xFFE63D1948FD6787   vmovups zmm23, zmmword ptr [rsi+0x1EC0]
0xFFE63D1948FD67CC   vbroadcastss zmm14, dword ptr [rdx+0x78]
0xFFE63D1948FD67D3   vfmadd231ps zmm22, zmm26, zmm14
0xFFE63D1948FD67D9   vfmadd231ps zmm21, zmm25, zmm14
0xFFE63D1948FD67DF   vfmadd231ps zmm20, zmm24, zmm14
0xFFE63D1948FD67E5   vfmadd231ps zmm19, zmm23, zmm14
0xFFE63D1948FD67EB   vbroadcastss zmm14, dword ptr [rdx+0x7C]
0xFFE63D1948FD67F2   vfmadd231ps zmm18, zmm26, zmm14
0xFFE63D1948FD67F8   vfmadd231ps zmm17, zmm25, zmm14
0xFFE63D1948FD67FE   vfmadd231ps zmm16, zmm24, zmm14
0xFFE63D1948FD6804   vfmadd231ps zmm15, zmm23, zmm14

; swap real and imag and fused neg multiply add with {1, -1, 1...}
0xFFE63D1948FD680A   vpermilps zmm18, zmm18, 0xB1
0xFFE63D1948FD6811   vfnmadd231ps zmm22, zmm18, zmm31
0xFFE63D1948FD6817   vpermilps zmm17, zmm17, 0xB1
0xFFE63D1948FD681E   vfnmadd231ps zmm21, zmm17, zmm31
0xFFE63D1948FD6824   vpermilps zmm16, zmm16, 0xB1
0xFFE63D1948FD682B   vfnmadd231ps zmm20, zmm16, zmm31
0xFFE63D1948FD6831   vpermilps zmm15, zmm15, 0xB1
0xFFE63D1948FD6838   vfnmadd231ps zmm19, zmm15, zmm31

; storing 32 complex numbers in the result in memory? (first half)
0xFFE63D1948FD683E   vmovups zmmword ptr [rcx], zmm22
0xFFE63D1948FD6844   vmovups zmmword ptr [rcx+0x40], zmm21
0xFFE63D1948FD684B   vmovups zmmword ptr [rcx+0x80], zmm20
0xFFE63D1948FD6852   vmovups zmmword ptr [rcx+0xC0], zmm19

0xFFE63D1948FD6859   vmovups zmm30, zmmword ptr [rsi+0x100]
0xFFE63D1948FD6860   vmovups zmm29, zmmword ptr [rsi+0x140]
0xFFE63D1948FD6867   vmovups zmm28, zmmword ptr [rsi+0x180]
0xFFE63D1948FD686E   vmovups zmm27, zmmword ptr [rsi+0x1C0]
0xFFE63D1948FD6875   vmovups zmm26, zmmword ptr [rsi+0x300]
0xFFE63D1948FD687C   vmovups zmm25, zmmword ptr [rsi+0x340]
0xFFE63D1948FD6883   vmovups zmm24, zmmword ptr [rsi+0x380]
0xFFE63D1948FD688A   vmovups zmm23, zmmword ptr [rsi+0x3C0]
0xFFE63D1948FD6891   vbroadcastss zmm14, dword ptr [rdx]
0xFFE63D1948FD6897   vmulps zmm22, zmm30, zmm14
0xFFE63D1948FD689D   vmulps zmm21, zmm29, zmm14
0xFFE63D1948FD68A3   vmulps zmm20, zmm28, zmm14
0xFFE63D1948FD68A9   vmulps zmm19, zmm27, zmm14
0xFFE63D1948FD68AF   vbroadcastss zmm14, dword ptr [rdx+0x04]
0xFFE63D1948FD68B6   vmulps zmm18, zmm30, zmm14
0xFFE63D1948FD68BC   vmulps zmm17, zmm29, zmm14
0xFFE63D1948FD68C2   vmulps zmm16, zmm28, zmm14
0xFFE63D1948FD68C8   vmulps zmm15, zmm27, zmm14
0xFFE63D1948FD68CE   vmovups zmm30, zmmword ptr [rsi+0x500]
0xFFE63D1948FD68D5   vmovups zmm29, zmmword ptr [rsi+0x540]
0xFFE63D1948FD68DC   vmovups zmm28, zmmword ptr [rsi+0x580]
0xFFE63D1948FD68E3   vmovups zmm27, zmmword ptr [rsi+0x5C0]
0xFFE63D1948FD68EA   vbroadcastss zmm14, dword ptr [rdx+0x08]
0xFFE63D1948FD68F1   vfmadd231ps zmm22, zmm26, zmm14
0xFFE63D1948FD68F7   vfmadd231ps zmm21, zmm25, zmm14
0xFFE63D1948FD68FD   vfmadd231ps zmm20, zmm24, zmm14
0xFFE63D1948FD6903   vfmadd231ps zmm19, zmm23, zmm14
0xFFE63D1948FD6909   vbroadcastss zmm14, dword ptr [rdx+0x0C]
0xFFE63D1948FD6910   vfmadd231ps zmm18, zmm26, zmm14
0xFFE63D1948FD6916   vfmadd231ps zmm17, zmm25, zmm14
0xFFE63D1948FD691C   vfmadd231ps zmm16, zmm24, zmm14
0xFFE63D1948FD6922   vfmadd231ps zmm15, zmm23, zmm14
0xFFE63D1948FD6928   vmovups zmm26, zmmword ptr [rsi+0x700]
0xFFE63D1948FD692F   vmovups zmm25, zmmword ptr [rsi+0x740]
0xFFE63D1948FD6936   vmovups zmm24, zmmword ptr [rsi+0x780]
0xFFE63D1948FD693D   vmovups zmm23, zmmword ptr [rsi+0x7C0]
0xFFE63D1948FD6944   vbroadcastss zmm14, dword ptr [rdx+0x10]
0xFFE63D1948FD694B   vfmadd231ps zmm22, zmm30, zmm14
0xFFE63D1948FD6951   vfmadd231ps zmm21, zmm29, zmm14
0xFFE63D1948FD6957   vfmadd231ps zmm20, zmm28, zmm14
0xFFE63D1948FD695D   vfmadd231ps zmm19, zmm27, zmm14
0xFFE63D1948FD6963   vbroadcastss zmm14, dword ptr [rdx+0x14]
0xFFE63D1948FD696A   vfmadd231ps zmm18, zmm30, zmm14
0xFFE63D1948FD6970   vfmadd231ps zmm17, zmm29, zmm14
0xFFE63D1948FD6976   vfmadd231ps zmm16, zmm28, zmm14
0xFFE63D1948FD697C   vfmadd231ps zmm15, zmm27, zmm14
0xFFE63D1948FD6982   vmovups zmm30, zmmword ptr [rsi+0x900]
0xFFE63D1948FD6989   vmovups zmm29, zmmword ptr [rsi+0x940]
0xFFE63D1948FD6990   vmovups zmm28, zmmword ptr [rsi+0x980]
0xFFE63D1948FD6997   vmovups zmm27, zmmword ptr [rsi+0x9C0]
0xFFE63D1948FD699E   vbroadcastss zmm14, dword ptr [rdx+0x18]
0xFFE63D1948FD69A5   vfmadd231ps zmm22, zmm26, zmm14
0xFFE63D1948FD69AB   vfmadd231ps zmm21, zmm25, zmm14
0xFFE63D1948FD69B1   vfmadd231ps zmm20, zmm24, zmm14
0xFFE63D1948FD69B7   vfmadd231ps zmm19, zmm23, zmm14
0xFFE63D1948FD69BD   vbroadcastss zmm14, dword ptr [rdx+0x1C]
0xFFE63D1948FD69C4   vfmadd231ps zmm18, zmm26, zmm14
0xFFE63D1948FD69CA   vfmadd231ps zmm17, zmm25, zmm14
0xFFE63D1948FD69D0   vfmadd231ps zmm16, zmm24, zmm14
0xFFE63D1948FD69D6   vfmadd231ps zmm15, zmm23, zmm14
0xFFE63D1948FD69DC   vmovups zmm26, zmmword ptr [rsi+0xB00]
0xFFE63D1948FD69E3   vmovups zmm25, zmmword ptr [rsi+0xB40]
0xFFE63D1948FD69EA   vmovups zmm24, zmmword ptr [rsi+0xB80]
0xFFE63D1948FD69F1   vmovups zmm23, zmmword ptr [rsi+0xBC0]
0xFFE63D1948FD69F8   vbroadcastss zmm14, dword ptr [rdx+0x20]
0xFFE63D1948FD69FF   vfmadd231ps zmm22, zmm30, zmm14
0xFFE63D1948FD6A05   vfmadd231ps zmm21, zmm29, zmm14
0xFFE63D1948FD6A0B   vfmadd231ps zmm20, zmm28, zmm14
0xFFE63D1948FD6A11   vfmadd231ps zmm19, zmm27, zmm14
0xFFE63D1948FD6A17   vbroadcastss zmm14, dword ptr [rdx+0x24]
0xFFE63D1948FD6A1E   vfmadd231ps zmm18, zmm30, zmm14
0xFFE63D1948FD6A24   vfmadd231ps zmm17, zmm29, zmm14
0xFFE63D1948FD6A2A   vfmadd231ps zmm16, zmm28, zmm14
0xFFE63D1948FD6A30   vfmadd231ps zmm15, zmm27, zmm14
0xFFE63D1948FD6A36   vmovups zmm30, zmmword ptr [rsi+0xD00]
0xFFE63D1948FD6A3D   vmovups zmm29, zmmword ptr [rsi+0xD40]
0xFFE63D1948FD6A44   vmovups zmm28, zmmword ptr [rsi+0xD80]
0xFFE63D1948FD6A4B   vmovups zmm27, zmmword ptr [rsi+0xDC0]
0xFFE63D1948FD6A52   vbroadcastss zmm14, dword ptr [rdx+0x28]
0xFFE63D1948FD6A59   vfmadd231ps zmm22, zmm26, zmm14
0xFFE63D1948FD6A5F   vfmadd231ps zmm21, zmm25, zmm14
0xFFE63D1948FD6A65   vfmadd231ps zmm20, zmm24, zmm14
0xFFE63D1948FD6A6B   vfmadd231ps zmm19, zmm23, zmm14
0xFFE63D1948FD6A71   vbroadcastss zmm14, dword ptr [rdx+0x2C]
0xFFE63D1948FD6A78   vfmadd231ps zmm18, zmm26, zmm14
0xFFE63D1948FD6A7E   vfmadd231ps zmm17, zmm25, zmm14
0xFFE63D1948FD6A84   vfmadd231ps zmm16, zmm24, zmm14
0xFFE63D1948FD6A8A   vfmadd231ps zmm15, zmm23, zmm14
0xFFE63D1948FD6A90   vmovups zmm26, zmmword ptr [rsi+0xF00]
0xFFE63D1948FD6A97   vmovups zmm25, zmmword ptr [rsi+0xF40]
0xFFE63D1948FD6A9E   vmovups zmm24, zmmword ptr [rsi+0xF80]
0xFFE63D1948FD6AA5   vmovups zmm23, zmmword ptr [rsi+0xFC0]
0xFFE63D1948FD6AAC   vbroadcastss zmm14, dword ptr [rdx+0x30]
0xFFE63D1948FD6AB3   vfmadd231ps zmm22, zmm30, zmm14
0xFFE63D1948FD6AB9   vfmadd231ps zmm21, zmm29, zmm14
0xFFE63D1948FD6ABF   vfmadd231ps zmm20, zmm28, zmm14
0xFFE63D1948FD6AC5   vfmadd231ps zmm19, zmm27, zmm14
0xFFE63D1948FD6ACB   vbroadcastss zmm14, dword ptr [rdx+0x34]
0xFFE63D1948FD6AD2   vfmadd231ps zmm18, zmm30, zmm14
0xFFE63D1948FD6AD8   vfmadd231ps zmm17, zmm29, zmm14
0xFFE63D1948FD6ADE   vfmadd231ps zmm16, zmm28, zmm14
0xFFE63D1948FD6AE4   vfmadd231ps zmm15, zmm27, zmm14
0xFFE63D1948FD6AEA   vmovups zmm30, zmmword ptr [rsi+0x1100]
0xFFE63D1948FD6AF1   vmovups zmm29, zmmword ptr [rsi+0x1140]
0xFFE63D1948FD6AF8   vmovups zmm28, zmmword ptr [rsi+0x1180]
0xFFE63D1948FD6AFF   vmovups zmm27, zmmword ptr [rsi+0x11C0]
0xFFE63D1948FD6B06   vbroadcastss zmm14, dword ptr [rdx+0x38]
0xFFE63D1948FD6B0D   vfmadd231ps zmm22, zmm26, zmm14
0xFFE63D1948FD6B13   vfmadd231ps zmm21, zmm25, zmm14
0xFFE63D1948FD6B19   vfmadd231ps zmm20, zmm24, zmm14
0xFFE63D1948FD6B1F   vfmadd231ps zmm19, zmm23, zmm14
0xFFE63D1948FD6B25   vbroadcastss zmm14, dword ptr [rdx+0x3C]
0xFFE63D1948FD6B2C   vfmadd231ps zmm18, zmm26, zmm14
0xFFE63D1948FD6B32   vfmadd231ps zmm17, zmm25, zmm14
0xFFE63D1948FD6B38   vfmadd231ps zmm16, zmm24, zmm14
0xFFE63D1948FD6B3E   vfmadd231ps zmm15, zmm23, zmm14
0xFFE63D1948FD6B44   vmovups zmm26, zmmword ptr [rsi+0x1300]
0xFFE63D1948FD6B4B   vmovups zmm25, zmmword ptr [rsi+0x1340]
0xFFE63D1948FD6B52   vmovups zmm24, zmmword ptr [rsi+0x1380]
0xFFE63D1948FD6B59   vmovups zmm23, zmmword ptr [rsi+0x13C0]
0xFFE63D1948FD6B60   vbroadcastss zmm14, dword ptr [rdx+0x40]
0xFFE63D1948FD6B67   vfmadd231ps zmm22, zmm30, zmm14
0xFFE63D1948FD6B6D   vfmadd231ps zmm21, zmm29, zmm14
0xFFE63D1948FD6B73   vfmadd231ps zmm20, zmm28, zmm14
0xFFE63D1948FD6B79   vfmadd231ps zmm19, zmm27, zmm14
0xFFE63D1948FD6B7F   vbroadcastss zmm14, dword ptr [rdx+0x44]
0xFFE63D1948FD6B86   vfmadd231ps zmm18, zmm30, zmm14
0xFFE63D1948FD6B8C   vfmadd231ps zmm17, zmm29, zmm14
0xFFE63D1948FD6B92   vfmadd231ps zmm16, zmm28, zmm14
0xFFE63D1948FD6B98   vfmadd231ps zmm15, zmm27, zmm14
0xFFE63D1948FD6B9E   vmovups zmm30, zmmword ptr [rsi+0x1500]
0xFFE63D1948FD6BA5   vmovups zmm29, zmmword ptr [rsi+0x1540]
0xFFE63D1948FD6BAC   vmovups zmm28, zmmword ptr [rsi+0x1580]
0xFFE63D1948FD6BB3   vmovups zmm27, zmmword ptr [rsi+0x15C0]
0xFFE63D1948FD6BBA   vbroadcastss zmm14, dword ptr [rdx+0x48]
0xFFE63D1948FD6BC1   vfmadd231ps zmm22, zmm26, zmm14
0xFFE63D1948FD6BC7   vfmadd231ps zmm21, zmm25, zmm14
0xFFE63D1948FD6BCD   vfmadd231ps zmm20, zmm24, zmm14
0xFFE63D1948FD6BD3   vfmadd231ps zmm19, zmm23, zmm14
0xFFE63D1948FD6BD9   vbroadcastss zmm14, dword ptr [rdx+0x4C]
0xFFE63D1948FD6BE0   vfmadd231ps zmm18, zmm26, zmm14
0xFFE63D1948FD6BE6   vfmadd231ps zmm17, zmm25, zmm14
0xFFE63D1948FD6BEC   vfmadd231ps zmm16, zmm24, zmm14
0xFFE63D1948FD6BF2   vfmadd231ps zmm15, zmm23, zmm14
0xFFE63D1948FD6BF8   vmovups zmm26, zmmword ptr [rsi+0x1700]
0xFFE63D1948FD6BFF   vmovups zmm25, zmmword ptr [rsi+0x1740]
0xFFE63D1948FD6C06   vmovups zmm24, zmmword ptr [rsi+0x1780]
0xFFE63D1948FD6C0D   vmovups zmm23, zmmword ptr [rsi+0x17C0]
0xFFE63D1948FD6C14   vbroadcastss zmm14, dword ptr [rdx+0x50]
0xFFE63D1948FD6C1B   vfmadd231ps zmm22, zmm30, zmm14
0xFFE63D1948FD6C21   vfmadd231ps zmm21, zmm29, zmm14
0xFFE63D1948FD6C27   vfmadd231ps zmm20, zmm28, zmm14
0xFFE63D1948FD6C2D   vfmadd231ps zmm19, zmm27, zmm14
0xFFE63D1948FD6C33   vbroadcastss zmm14, dword ptr [rdx+0x54]
0xFFE63D1948FD6C3A   vfmadd231ps zmm18, zmm30, zmm14
0xFFE63D1948FD6C40   vfmadd231ps zmm17, zmm29, zmm14
0xFFE63D1948FD6C46   vfmadd231ps zmm16, zmm28, zmm14
0xFFE63D1948FD6C4C   vfmadd231ps zmm15, zmm27, zmm14
0xFFE63D1948FD6C52   vmovups zmm30, zmmword ptr [rsi+0x1900]
0xFFE63D1948FD6C59   vmovups zmm29, zmmword ptr [rsi+0x1940]
0xFFE63D1948FD6C60   vmovups zmm28, zmmword ptr [rsi+0x1980]
0xFFE63D1948FD6C67   vmovups zmm27, zmmword ptr [rsi+0x19C0]
0xFFE63D1948FD6C6E   vbroadcastss zmm14, dword ptr [rdx+0x58]
0xFFE63D1948FD6C75   vfmadd231ps zmm22, zmm26, zmm14
0xFFE63D1948FD6C7B   vfmadd231ps zmm21, zmm25, zmm14
0xFFE63D1948FD6C81   vfmadd231ps zmm20, zmm24, zmm14
0xFFE63D1948FD6C87   vfmadd231ps zmm19, zmm23, zmm14
0xFFE63D1948FD6C8D   vbroadcastss zmm14, dword ptr [rdx+0x5C]
0xFFE63D1948FD6C94   vfmadd231ps zmm18, zmm26, zmm14
0xFFE63D1948FD6C9A   vfmadd231ps zmm17, zmm25, zmm14
0xFFE63D1948FD6CA0   vfmadd231ps zmm16, zmm24, zmm14
0xFFE63D1948FD6CA6   vfmadd231ps zmm15, zmm23, zmm14
0xFFE63D1948FD6CAC   vmovups zmm26, zmmword ptr [rsi+0x1B00]
0xFFE63D1948FD6CB3   vmovups zmm25, zmmword ptr [rsi+0x1B40]
0xFFE63D1948FD6CBA   vmovups zmm24, zmmword ptr [rsi+0x1B80]
0xFFE63D1948FD6CC1   vmovups zmm23, zmmword ptr [rsi+0x1BC0]
0xFFE63D1948FD6CC8   vbroadcastss zmm14, dword ptr [rdx+0x60]
0xFFE63D1948FD6CCF   vfmadd231ps zmm22, zmm30, zmm14
0xFFE63D1948FD6CD5   vfmadd231ps zmm21, zmm29, zmm14
0xFFE63D1948FD6CDB   vfmadd231ps zmm20, zmm28, zmm14
0xFFE63D1948FD6CE1   vfmadd231ps zmm19, zmm27, zmm14
0xFFE63D1948FD6CE7   vbroadcastss zmm14, dword ptr [rdx+0x64]
0xFFE63D1948FD6CEE   vfmadd231ps zmm18, zmm30, zmm14
0xFFE63D1948FD6CF4   vfmadd231ps zmm17, zmm29, zmm14
0xFFE63D1948FD6CFA   vfmadd231ps zmm16, zmm28, zmm14
0xFFE63D1948FD6D00   vfmadd231ps zmm15, zmm27, zmm14
0xFFE63D1948FD6D06   vmovups zmm30, zmmword ptr [rsi+0x1D00]
0xFFE63D1948FD6D0D   vmovups zmm29, zmmword ptr [rsi+0x1D40]
0xFFE63D1948FD6D14   vmovups zmm28, zmmword ptr [rsi+0x1D80]
0xFFE63D1948FD6D1B   vmovups zmm27, zmmword ptr [rsi+0x1DC0]
0xFFE63D1948FD6D22   vbroadcastss zmm14, dword ptr [rdx+0x68]
0xFFE63D1948FD6D29   vfmadd231ps zmm22, zmm26, zmm14
0xFFE63D1948FD6D2F   vfmadd231ps zmm21, zmm25, zmm14
0xFFE63D1948FD6D35   vfmadd231ps zmm20, zmm24, zmm14
0xFFE63D1948FD6D3B   vfmadd231ps zmm19, zmm23, zmm14
0xFFE63D1948FD6D41   vbroadcastss zmm14, dword ptr [rdx+0x6C]
0xFFE63D1948FD6D48   vfmadd231ps zmm18, zmm26, zmm14
0xFFE63D1948FD6D4E   vfmadd231ps zmm17, zmm25, zmm14
0xFFE63D1948FD6D54   vfmadd231ps zmm16, zmm24, zmm14
0xFFE63D1948FD6D5A   vfmadd231ps zmm15, zmm23, zmm14
0xFFE63D1948FD6D60   vmovups zmm26, zmmword ptr [rsi+0x1F00]
0xFFE63D1948FD6D67   vmovups zmm25, zmmword ptr [rsi+0x1F40]
0xFFE63D1948FD6D6E   vmovups zmm24, zmmword ptr [rsi+0x1F80]
0xFFE63D1948FD6D75   vmovups zmm23, zmmword ptr [rsi+0x1FC0]
0xFFE63D1948FD6D7C   vbroadcastss zmm14, dword ptr [rdx+0x70]
0xFFE63D1948FD6D83   vfmadd231ps zmm22, zmm30, zmm14
0xFFE63D1948FD6D89   vfmadd231ps zmm21, zmm29, zmm14
0xFFE63D1948FD6D8F   vfmadd231ps zmm20, zmm28, zmm14
0xFFE63D1948FD6D95   vfmadd231ps zmm19, zmm27, zmm14
0xFFE63D1948FD6D9B   vbroadcastss zmm14, dword ptr [rdx+0x74]
0xFFE63D1948FD6DA2   vfmadd231ps zmm18, zmm30, zmm14
0xFFE63D1948FD6DA8   vfmadd231ps zmm17, zmm29, zmm14
0xFFE63D1948FD6DAE   vfmadd231ps zmm16, zmm28, zmm14
0xFFE63D1948FD6DB4   vfmadd231ps zmm15, zmm27, zmm14
0xFFE63D1948FD6DBA   vbroadcastss zmm14, dword ptr [rdx+0x78]
0xFFE63D1948FD6DC1   vfmadd231ps zmm22, zmm26, zmm14
0xFFE63D1948FD6DC7   vfmadd231ps zmm21, zmm25, zmm14
0xFFE63D1948FD6DCD   vfmadd231ps zmm20, zmm24, zmm14
0xFFE63D1948FD6DD3   vfmadd231ps zmm19, zmm23, zmm14
0xFFE63D1948FD6DD9   vbroadcastss zmm14, dword ptr [rdx+0x7C]
0xFFE63D1948FD6DE0   vfmadd231ps zmm18, zmm26, zmm14
0xFFE63D1948FD6DE6   vfmadd231ps zmm17, zmm25, zmm14
0xFFE63D1948FD6DEC   vfmadd231ps zmm16, zmm24, zmm14
0xFFE63D1948FD6DF2   vfmadd231ps zmm15, zmm23, zmm14
0xFFE63D1948FD6DF8   vpermilps zmm18, zmm18, 0xB1
0xFFE63D1948FD6DFF   vfnmadd231ps zmm22, zmm18, zmm31
0xFFE63D1948FD6E05   vpermilps zmm17, zmm17, 0xB1
0xFFE63D1948FD6E0C   vfnmadd231ps zmm21, zmm17, zmm31
0xFFE63D1948FD6E12   vpermilps zmm16, zmm16, 0xB1
0xFFE63D1948FD6E19   vfnmadd231ps zmm20, zmm16, zmm31
0xFFE63D1948FD6E1F   vpermilps zmm15, zmm15, 0xB1
0xFFE63D1948FD6E26   vfnmadd231ps zmm19, zmm15, zmm31
0xFFE63D1948FD6E2C   vmovups zmmword ptr [rcx+0x100], zmm22
0xFFE63D1948FD6E33   vmovups zmmword ptr [rcx+0x140], zmm21
0xFFE63D1948FD6E3A   vmovups zmmword ptr [rcx+0x180], zmm20
0xFFE63D1948FD6E41   vmovups zmmword ptr [rcx+0x1C0], zmm19
0xFFE63D1948FD6E48   vzeroupper
0xFFE63D1948FD6E4B   ret
