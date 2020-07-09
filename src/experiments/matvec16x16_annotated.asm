1b540:	62 e1 ff 48 6f 4f 01 	vmovdqu16 zmm17,ZMMWORD PTR [rdi+0x40]
1b547:	62 e1 ff 48 6f 07    	vmovdqu16 zmm16,ZMMWORD PTR [rdi]
; only operates on d_broad
1b54d:	62 f2 7d 48 79 46 01 	vpbroadcastw zmm0,WORD PTR [rsi+0x2]
1b554:	62 f2 7d 48 79 4e 03 	vpbroadcastw zmm1,WORD PTR [rsi+0x6]
1b55b:	62 71 ff 48 6f 7f 02 	vmovdqu16 zmm15,ZMMWORD PTR [rdi+0x80]
1b562:	62 b1 7d 48 d5 c0    	vpmullw zmm0,zmm0,zmm16
1b568:	62 b1 75 48 d5 c9    	vpmullw zmm1,zmm1,zmm17
1b56e:	62 f1 7d 48 fd c1    	vpaddw zmm0,zmm0,zmm1
1b574:	62 f2 7d 48 79 4e 05 	vpbroadcastw zmm1,WORD PTR [rsi+0xa]
1b57b:	62 71 ff 48 6f 77 03 	vmovdqu16 zmm14,ZMMWORD PTR [rdi+0xc0]
1b582:	62 d1 75 48 d5 cf    	vpmullw zmm1,zmm1,zmm15
1b588:	62 f1 7d 48 fd c1    	vpaddw zmm0,zmm0,zmm1
1b58e:	62 f2 7d 48 79 4e 07 	vpbroadcastw zmm1,WORD PTR [rsi+0xe]
1b595:	62 71 ff 48 6f 6f 04 	vmovdqu16 zmm13,ZMMWORD PTR [rdi+0x100]
1b59c:	62 d1 75 48 d5 ce    	vpmullw zmm1,zmm1,zmm14
1b5a2:	62 f1 7d 48 fd c1    	vpaddw zmm0,zmm0,zmm1
1b5a8:	62 f2 7d 48 79 4e 09 	vpbroadcastw zmm1,WORD PTR [rsi+0x12]
1b5af:	62 71 ff 48 6f 67 05 	vmovdqu16 zmm12,ZMMWORD PTR [rdi+0x140]
1b5b6:	62 d1 75 48 d5 cd    	vpmullw zmm1,zmm1,zmm13
1b5bc:	62 f1 7d 48 fd c1    	vpaddw zmm0,zmm0,zmm1
1b5c2:	62 f2 7d 48 79 4e 0b 	vpbroadcastw zmm1,WORD PTR [rsi+0x16]
1b5c9:	62 71 ff 48 6f 5f 06 	vmovdqu16 zmm11,ZMMWORD PTR [rdi+0x180]
1b5d0:	62 d1 75 48 d5 cc    	vpmullw zmm1,zmm1,zmm12
1b5d6:	62 f1 7d 48 fd c1    	vpaddw zmm0,zmm0,zmm1
1b5dc:	62 f2 7d 48 79 4e 0d 	vpbroadcastw zmm1,WORD PTR [rsi+0x1a]
1b5e3:	62 71 ff 48 6f 57 07 	vmovdqu16 zmm10,ZMMWORD PTR [rdi+0x1c0]
1b5ea:	62 d1 75 48 d5 cb    	vpmullw zmm1,zmm1,zmm11
1b5f0:	62 f1 7d 48 fd c1    	vpaddw zmm0,zmm0,zmm1
1b5f6:	62 f2 7d 48 79 4e 0f 	vpbroadcastw zmm1,WORD PTR [rsi+0x1e]
1b5fd:	62 71 ff 48 6f 4f 08 	vmovdqu16 zmm9,ZMMWORD PTR [rdi+0x200]
1b604:	62 d1 75 48 d5 ca    	vpmullw zmm1,zmm1,zmm10
1b60a:	62 f1 7d 48 fd c1    	vpaddw zmm0,zmm0,zmm1
1b610:	62 f2 7d 48 79 4e 11 	vpbroadcastw zmm1,WORD PTR [rsi+0x22]
1b617:	62 71 ff 48 6f 47 09 	vmovdqu16 zmm8,ZMMWORD PTR [rdi+0x240]
1b61e:	62 d1 75 48 d5 c9    	vpmullw zmm1,zmm1,zmm9
1b624:	62 f1 7d 48 fd c1    	vpaddw zmm0,zmm0,zmm1
1b62a:	62 f2 7d 48 79 4e 13 	vpbroadcastw zmm1,WORD PTR [rsi+0x26]
1b631:	62 f1 ff 48 6f 7f 0a 	vmovdqu16 zmm7,ZMMWORD PTR [rdi+0x280]
1b638:	62 d1 75 48 d5 c8    	vpmullw zmm1,zmm1,zmm8
1b63e:	62 f1 7d 48 fd c1    	vpaddw zmm0,zmm0,zmm1
1b644:	62 f2 7d 48 79 4e 15 	vpbroadcastw zmm1,WORD PTR [rsi+0x2a]
1b64b:	62 f1 ff 48 6f 77 0b 	vmovdqu16 zmm6,ZMMWORD PTR [rdi+0x2c0]
1b652:	62 f1 75 48 d5 cf    	vpmullw zmm1,zmm1,zmm7
1b658:	62 f1 7d 48 fd c1    	vpaddw zmm0,zmm0,zmm1
1b65e:	62 f2 7d 48 79 4e 17 	vpbroadcastw zmm1,WORD PTR [rsi+0x2e]
1b665:	62 f1 ff 48 6f 6f 0c 	vmovdqu16 zmm5,ZMMWORD PTR [rdi+0x300]
1b66c:	62 f1 75 48 d5 ce    	vpmullw zmm1,zmm1,zmm6
1b672:	62 f1 7d 48 fd c1    	vpaddw zmm0,zmm0,zmm1
1b678:	62 f2 7d 48 79 4e 19 	vpbroadcastw zmm1,WORD PTR [rsi+0x32]
1b67f:	62 f1 ff 48 6f 67 0d 	vmovdqu16 zmm4,ZMMWORD PTR [rdi+0x340]
1b686:	62 f1 75 48 d5 cd    	vpmullw zmm1,zmm1,zmm5
1b68c:	62 f1 7d 48 fd c1    	vpaddw zmm0,zmm0,zmm1
1b692:	62 f2 7d 48 79 4e 1b 	vpbroadcastw zmm1,WORD PTR [rsi+0x36]
1b699:	62 f1 ff 48 6f 5f 0e 	vmovdqu16 zmm3,ZMMWORD PTR [rdi+0x380]
1b6a0:	62 f1 75 48 d5 cc    	vpmullw zmm1,zmm1,zmm4
1b6a6:	62 f1 7d 48 fd c1    	vpaddw zmm0,zmm0,zmm1
1b6ac:	62 f2 7d 48 79 4e 1d 	vpbroadcastw zmm1,WORD PTR [rsi+0x3a]
1b6b3:	62 f1 ff 48 6f 57 0f 	vmovdqu16 zmm2,ZMMWORD PTR [rdi+0x3c0]
1b6ba:	62 f1 75 48 d5 cb    	vpmullw zmm1,zmm1,zmm3
1b6c0:	62 f1 7d 48 fd c1    	vpaddw zmm0,zmm0,zmm1
1b6c6:	62 f2 7d 48 79 4e 1f 	vpbroadcastw zmm1,WORD PTR [rsi+0x3e]
1b6cd:	62 f1 75 48 d5 ca    	vpmullw zmm1,zmm1,zmm2
1b6d3:	62 f1 7d 48 fd c1    	vpaddw zmm0,zmm0,zmm1
1b6d9:	62 f2 7d 48 00 05 1d 	vpshufb zmm0,zmm0,ZMMWORD PTR [rip+0xc09b1d]        # c25200 <_ZL9swapPairs>
1b6e0:	9b c0 00 

; Now operate on c_broad?
1b6e3:	62 f2 7d 48 79 4e 02 	vpbroadcastw zmm1,WORD PTR [rsi+0x4]
1b6ea:	62 b1 75 48 d5 c9    	vpmullw zmm1,zmm1,zmm17
1b6f0:	62 e2 7d 48 79 0e    	vpbroadcastw zmm17,WORD PTR [rsi]
1b6f6:	62 f1 7d 48 d5 05 c0 	vpmullw zmm0,zmm0,ZMMWORD PTR [rip+0xc09ac0]        # c251c0 <_ZL6subAdd>
1b6fd:	9a c0 00 
1b700:	62 a1 75 40 d5 c0    	vpmullw zmm16,zmm17,zmm16
1b706:	62 b1 75 48 fd c8    	vpaddw zmm1,zmm1,zmm16
1b70c:	62 e2 7d 48 79 46 04 	vpbroadcastw zmm16,WORD PTR [rsi+0x8]
1b713:	62 51 7d 40 d5 ff    	vpmullw zmm15,zmm16,zmm15
1b719:	62 d1 75 48 fd cf    	vpaddw zmm1,zmm1,zmm15
1b71f:	62 72 7d 48 79 7e 06 	vpbroadcastw zmm15,WORD PTR [rsi+0xc]
1b726:	62 51 05 48 d5 f6    	vpmullw zmm14,zmm15,zmm14
1b72c:	62 d1 75 48 fd ce    	vpaddw zmm1,zmm1,zmm14
1b732:	62 72 7d 48 79 76 08 	vpbroadcastw zmm14,WORD PTR [rsi+0x10]
1b739:	62 51 0d 48 d5 ed    	vpmullw zmm13,zmm14,zmm13
1b73f:	62 d1 75 48 fd cd    	vpaddw zmm1,zmm1,zmm13
1b745:	62 72 7d 48 79 6e 0a 	vpbroadcastw zmm13,WORD PTR [rsi+0x14]
1b74c:	62 51 15 48 d5 e4    	vpmullw zmm12,zmm13,zmm12
1b752:	62 d1 75 48 fd cc    	vpaddw zmm1,zmm1,zmm12
1b758:	62 72 7d 48 79 66 0c 	vpbroadcastw zmm12,WORD PTR [rsi+0x18]
1b75f:	62 51 1d 48 d5 db    	vpmullw zmm11,zmm12,zmm11
1b765:	62 d1 75 48 fd cb    	vpaddw zmm1,zmm1,zmm11
1b76b:	62 72 7d 48 79 5e 0e 	vpbroadcastw zmm11,WORD PTR [rsi+0x1c]
1b772:	62 51 25 48 d5 d2    	vpmullw zmm10,zmm11,zmm10
1b778:	62 d1 75 48 fd ca    	vpaddw zmm1,zmm1,zmm10
1b77e:	62 72 7d 48 79 56 10 	vpbroadcastw zmm10,WORD PTR [rsi+0x20]
1b785:	62 51 2d 48 d5 c9    	vpmullw zmm9,zmm10,zmm9
1b78b:	62 d1 75 48 fd c9    	vpaddw zmm1,zmm1,zmm9
1b791:	62 72 7d 48 79 4e 12 	vpbroadcastw zmm9,WORD PTR [rsi+0x24]
1b798:	62 51 35 48 d5 c0    	vpmullw zmm8,zmm9,zmm8
1b79e:	62 d1 75 48 fd c8    	vpaddw zmm1,zmm1,zmm8
1b7a4:	62 72 7d 48 79 46 14 	vpbroadcastw zmm8,WORD PTR [rsi+0x28]
1b7ab:	62 f1 3d 48 d5 ff    	vpmullw zmm7,zmm8,zmm7
1b7b1:	62 f1 75 48 fd cf    	vpaddw zmm1,zmm1,zmm7
1b7b7:	62 f2 7d 48 79 7e 16 	vpbroadcastw zmm7,WORD PTR [rsi+0x2c]
1b7be:	62 f1 45 48 d5 f6    	vpmullw zmm6,zmm7,zmm6
1b7c4:	62 f1 75 48 fd ce    	vpaddw zmm1,zmm1,zmm6
1b7ca:	62 f2 7d 48 79 76 18 	vpbroadcastw zmm6,WORD PTR [rsi+0x30]
1b7d1:	62 f1 4d 48 d5 ed    	vpmullw zmm5,zmm6,zmm5
1b7d7:	62 f1 75 48 fd cd    	vpaddw zmm1,zmm1,zmm5
1b7dd:	62 f2 7d 48 79 6e 1a 	vpbroadcastw zmm5,WORD PTR [rsi+0x34]
1b7e4:	62 f1 55 48 d5 e4    	vpmullw zmm4,zmm5,zmm4
1b7ea:	62 f1 75 48 fd cc    	vpaddw zmm1,zmm1,zmm4
1b7f0:	62 f2 7d 48 79 66 1c 	vpbroadcastw zmm4,WORD PTR [rsi+0x38]
1b7f7:	62 f1 5d 48 d5 db    	vpmullw zmm3,zmm4,zmm3
1b7fd:	62 f1 75 48 fd cb    	vpaddw zmm1,zmm1,zmm3
1b803:	62 f2 7d 48 79 5e 1e 	vpbroadcastw zmm3,WORD PTR [rsi+0x3c]
1b80a:	62 f1 65 48 d5 d2    	vpmullw zmm2,zmm3,zmm2
1b810:	62 f1 75 48 fd ca    	vpaddw zmm1,zmm1,zmm2
1b816:	62 f1 75 48 fd c0    	vpaddw zmm0,zmm1,zmm0
1b81c:	62 f1 fe 48 7f 02    	vmovdqu64 ZMMWORD PTR [rdx],zmm0
1b822:	c5 f8 77             	vzeroupper 
1b825:	c3                   	ret    