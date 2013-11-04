
	code for sm_35
		Function : mandelbrot_scanline
	.headerflags    @"EF_CUDA_SM35 EF_CUDA_PTX_SM(EF_CUDA_SM35)"
                                                                            /* 0x08a0b010a0a01000 */
        /*0008*/                MOV R1, c[0x0][0x44];                       /* 0x64c03c00089c0006 */
        /*0010*/                S2R R2, SR_CTAID.Y;                         /* 0x86400000131c000a */
        /*0018*/                MOV R3, c[0x0][0x15c];                      /* 0x64c03c002b9c000e */
        /*0020*/                IMAD R3, R2, c[0x0][0x15c], R3;             /* 0x51080c002b9c080e */
        /*0028*/                ISETP.LT.AND P0, PT, R3, c[0x0][0x154], PT; /* 0x5b181c002a9c0c1e */
        /*0030*/                IMUL R0, R2, c[0x0][0x15c];                 /* 0x61c018002b9c0802 */
        /*0038*/                SEL R3, R3, c[0x0][0x154], P0;              /* 0x650000002a9c0c0e */
                                                                            /* 0x089c8010a01000b0 */
        /*0048*/                ISETP.GE.AND P0, PT, R0, R3, PT;            /* 0xdb681c00019c001e */
        /*0050*/            @P0 EXIT ;                                      /* 0x180000000000003c */
        /*0058*/                IADD R2, R2, 0x1;                           /* 0xc0800000009c0809 */
        /*0060*/                MOV R3, c[0x0][0x158];                      /* 0x64c03c002b1c000e */
        /*0068*/                IMUL R5, R2, c[0x0][0x15c];                 /* 0x61c018002b9c0816 */
        /*0070*/                LOP.PASS_B R4, RZ, ~c[0x0][0x154];          /* 0x620038002a9ffc12 */
        /*0078*/                S2R R2, SR_CTAID.X;                         /* 0x86400000129c000a */
                                                                            /* 0x08ac80109c108010 */
        /*0088*/                LOP.PASS_B R7, RZ, ~R5;                     /* 0xe2003800029ffc1e */
        /*0090*/                LOP.PASS_B R6, RZ, ~c[0x0][0x154];          /* 0x620038002a9ffc1a */
        /*0098*/                LOP.PASS_B R5, RZ, ~R5;                     /* 0xe2003800029ffc16 */
        /*00a0*/                IMAD R3, R2, c[0x0][0x158], R3;             /* 0x51080c002b1c080e */
        /*00a8*/                ISETP.GT.AND P0, PT, R4, R7, PT;            /* 0xdb481c00039c101e */
        /*00b0*/                IMUL R2, R2, c[0x0][0x158];                 /* 0x61c018002b1c080a */
        /*00b8*/                ISETP.LT.AND P1, PT, R3, c[0x0][0x150], PT; /* 0x5b181c002a1c0c3e */
                                                                            /* 0x0800b010008010a0 */
        /*00c8*/                SEL R4, R5, R6, !P0;                        /* 0xe5002000031c1412 */
        /*00d0*/                ISETP.LT.AND P0, PT, RZ, c[0x0][0x160], PT; /* 0x5b181c002c1ffc1e */
        /*00d8*/                LOP.PASS_B R4, RZ, ~R4;                     /* 0xe2003800021ffc12 */
        /*00e0*/                SEL R3, R3, c[0x0][0x150], P1;              /* 0x650004002a1c0c0e */
        /*00e8*/                ISETP.GE.AND P1, PT, R2, R3, PT;            /* 0xdb681c00019c083e */
        /*00f0*/                SSY 0x368;                                  /* 0x1480000138000000 */
        /*00f8*/            @P1 BRA 0x360;                                  /* 0x120000013004003c */
                                                                            /* 0x089c108010001080 */
        /*0108*/                IMUL R5, R0, c[0x0][0x150];                 /* 0x61c018002a1c0016 */
        /*0110*/                MOV R8, R2;                                 /* 0xe4c03c00011c0022 */
        /*0118*/           @!P0 BRA 0x2d8;                                  /* 0x12000000dc20003c */
        /*0120*/                I2F.F32.S32 R6, R0;                         /* 0xe5c00000001ca81a */
        /*0128*/                MOV R7, c[0x0][0x148];                      /* 0x64c03c00291c001e */
        /*0130*/                MOV R14, R2;                                /* 0xe4c03c00011c003a */
        /*0138*/                MOV R16, c[0x0][0x140];                     /* 0x64c03c00281c0042 */
                                                                            /* 0x089c80a010a01000 */
        /*0148*/                FFMA R6, R6, c[0x0][0x14c], R7;             /* 0x4c001c00299c181a */
        /*0150*/                S2R R10, SR_TID.X;                          /* 0x86400000109c002a */
        /*0158*/                MOV R9, R6;                                 /* 0xe4c03c00031c0026 */
        /*0160*/                LOP.AND R7, R10, 0x1f;                      /* 0xc20000000f9c281d */
        /*0168*/                PSETP.AND.AND P2, PT, PT, PT, PT;           /* 0x84801c07001dc05e */
        /*0170*/                IADD R12, R7, R14;                          /* 0xe0800000071c1c32 */
        /*0178*/                PSETP.AND.AND P3, PT, P0, PT, PT;           /* 0x84801c07001c007e */
                                                                            /* 0x08a00010a010a010 */
        /*0188*/                I2F.F32.S32 R7, R12;                        /* 0xe5c00000061ca81e */
        /*0190*/                PSETP.AND.AND P1, PT, !PT, PT, PT;          /* 0x84801c07001fc03e */
        /*0198*/                FFMA R11, R7, c[0x0][0x144], R16;           /* 0x4c004000289c1c2e */
        /*01a0*/                SSY 0x260;                                  /* 0x148000005c000000 */
        /*01a8*/                MOV R7, RZ;                                 /* 0xe4c03c007f9c001e */
        /*01b0*/                MOV R8, R11;                                /* 0xe4c03c00059c0022 */
        /*01b8*/                FMUL R15, R8, R8;                           /* 0xe3400000041c203e */
                                                                            /* 0x08b0b0ac80b0a010 */
        /*01c8*/                PSETP.AND.AND P3, PT, P2, P3, PT;           /* 0x84801c03001c807e */
        /*01d0*/                FFMA R13, R9, R9, R15;                      /* 0xcc003c00049c2436 */
        /*01d8*/                FSETP.GTU.AND P2, PT, R13, 4, PT;           /* 0xb5e01e04001c345d */
        /*01e0*/                PSETP.AND.OR P1, PT, P3, P2, P1;            /* 0x84810402001cc03e */
        /*01e8*/                PSETP.AND.AND P2, PT, !PT, PT, PT;          /* 0x84801c07001fc05e */
        /*01f0*/                PSETP.XOR.AND P5, PT, P1, P3, PT;           /* 0x84801c03101c40be */
        /*01f8*/            @P5 PSETP.AND.AND P2, PT, P3, !P1, PT;          /* 0x84801c090014c05e */
                                                                            /* 0x08ac8010b09c1080 */
        /*0208*/            @P2 IADD R7, R7, 0x1;                           /* 0xc080000000881c1d */
        /*0210*/            @P5 FFMA R13, -R9, R9, R15;                     /* 0xcc083c0004942436 */
        /*0218*/            @P5 FADD R15, R8, R8;                           /* 0xe2c000000414203e */
        /*0220*/                ISETP.LT.AND P3, PT, R7, c[0x0][0x160], PT; /* 0x5b181c002c1c1c7e */
        /*0228*/            @P5 FADD R13, R11, R13;                         /* 0xe2c0000006942c36 */
        /*0230*/                PSETP.AND.AND P4, PT, P2, P3, PT;           /* 0x84801c03001c809e */
        /*0238*/            @P5 FFMA R9, R9, R15, R6;                       /* 0xcc00180007942426 */
                                                                            /* 0x08a0a0100000b810 */
        /*0248*/            @P5 MOV R8, R13;                                /* 0xe4c03c0006940022 */
        /*0250*/            @P4 BRA 0x1b8;                                  /* 0x12007fffb010003c */
        /*0258*/                ISETP.GE.AND.S P1, PT, R12, R3, PT;         /* 0xdb681c0001dc303e */
        /*0260*/            @P1 BRA.U 0x2b0;                                /* 0x120000002404023c */
        /*0268*/           @!P1 LOP32I.AND R9, R10, 0x4000001f;             /* 0x202000000fa42824 */
        /*0270*/           @!P1 IADD R8, R14, R5;                           /* 0xe080000002a43822 */
        /*0278*/           @!P1 IADD R8, R8, R9;                            /* 0xe080000004a42022 */
                                                                            /* 0x08b0a000a0b010a0 */
        /*0288*/           @!P1 SHF.L R8, RZ, 0x2, R8;                      /* 0xb7c020000127fc21 */
        /*0290*/           @!P1 BFE R9, R8, 0x11f;                          /* 0xc00800008fa42025 */
        /*0298*/           @!P1 IADD R8.CC, R8, c[0x0][0x168];              /* 0x608400002d242022 */
        /*02a0*/           @!P1 IADD.X R9, R9, c[0x0][0x16c];               /* 0x608040002da42426 */
        /*02a8*/           @!P1 ST.E [R8], R7;                              /* 0xe48000000024201c */
        /*02b0*/                IADD R14, R14, 0x20;                        /* 0xc0800000101c3839 */
        /*02b8*/                ISETP.LT.AND P1, PT, R14, R3, PT;           /* 0xdb181c00019c383e */
                                                                            /* 0x0880b0a0a0a0b8b8 */
        /*02c8*/            @P1 BRA 0x150;                                  /* 0x12007fff4004003c */
        /*02d0*/                BRA 0x360;                                  /* 0x12000000441c003c */
        /*02d8*/                S2R R7, SR_TID.X;                           /* 0x86400000109c001e */
        /*02e0*/                LOP.AND R6, R7, 0x1f;                       /* 0xc20000000f9c1c19 */
        /*02e8*/                IADD R6, R6, R8;                            /* 0xe0800000041c181a */
        /*02f0*/                ISETP.LT.AND P1, PT, R6, R3, PT;            /* 0xdb181c00019c183e */
        /*02f8*/            @P1 LOP32I.AND R7, R7, 0x4000001f;              /* 0x202000000f841c1c */
                                                                            /* 0x08a0b010a0a0a010 */
        /*0308*/            @P1 IADD R6, R8, R5;                            /* 0xe08000000284201a */
        /*0310*/                IADD R8, R8, 0x20;                          /* 0xc0800000101c2021 */
        /*0318*/            @P1 IADD R6, R6, R7;                            /* 0xe08000000384181a */
        /*0320*/            @P1 SHF.L R6, RZ, 0x2, R6;                      /* 0xb7c018000107fc19 */
        /*0328*/            @P1 BFE R7, R6, 0x11f;                          /* 0xc00800008f84181d */
        /*0330*/            @P1 IADD R6.CC, R6, c[0x0][0x168];              /* 0x608400002d04181a */
        /*0338*/            @P1 IADD.X R7, R7, c[0x0][0x16c];               /* 0x608040002d841c1e */
                                                                            /* 0x0880b8b000b8b0c8 */
        /*0348*/            @P1 ST.E [R6], RZ;                              /* 0xe480000000041bfc */
        /*0350*/                ISETP.LT.AND P1, PT, R8, R3, PT;            /* 0xdb181c00019c203e */
        /*0358*/            @P1 BRA 0x2d8;                                  /* 0x12007fffbc04003c */
        /*0360*/                IADD.S R0, R0, 0x1;                         /* 0xc080000000dc0001 */
        /*0368*/                ISETP.EQ.AND P1, PT, R0, R4, PT;            /* 0xdb281c00021c003e */
        /*0370*/           @!P1 BRA 0xe8;                                   /* 0x12007ffeb824003c */
        /*0378*/                MOV RZ, RZ;                                 /* 0xe4c03c007f9c03fe */
                                                                            /* 0x08000000000000b8 */
        /*0388*/                EXIT ;                                      /* 0x18000000001c003c */
        /*0390*/                BRA 0x390;                                  /* 0x12007ffffc1c003c */
        /*0398*/                NOP;                                        /* 0x85800000001c3c02 */
        /*03a0*/                NOP;                                        /* 0x85800000001c3c02 */
        /*03a8*/                NOP;                                        /* 0x85800000001c3c02 */
        /*03b0*/                NOP;                                        /* 0x85800000001c3c02 */
        /*03b8*/                NOP;                                        /* 0x85800000001c3c02 */
		....................................


