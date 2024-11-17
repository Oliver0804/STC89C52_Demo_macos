                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (Mac OS X ppc)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _delay_ms
                                     13 	.globl _uart_send_string
                                     14 	.globl _uart_init
                                     15 	.globl _CY
                                     16 	.globl _AC
                                     17 	.globl _F0
                                     18 	.globl _RS1
                                     19 	.globl _RS0
                                     20 	.globl _OV
                                     21 	.globl _F1
                                     22 	.globl _P
                                     23 	.globl _PS
                                     24 	.globl _PT1
                                     25 	.globl _PX1
                                     26 	.globl _PT0
                                     27 	.globl _PX0
                                     28 	.globl _RD
                                     29 	.globl _WR
                                     30 	.globl _T1
                                     31 	.globl _T0
                                     32 	.globl _INT1
                                     33 	.globl _INT0
                                     34 	.globl _TXD
                                     35 	.globl _RXD
                                     36 	.globl _P3_7
                                     37 	.globl _P3_6
                                     38 	.globl _P3_5
                                     39 	.globl _P3_4
                                     40 	.globl _P3_3
                                     41 	.globl _P3_2
                                     42 	.globl _P3_1
                                     43 	.globl _P3_0
                                     44 	.globl _EA
                                     45 	.globl _ES
                                     46 	.globl _ET1
                                     47 	.globl _EX1
                                     48 	.globl _ET0
                                     49 	.globl _EX0
                                     50 	.globl _P2_7
                                     51 	.globl _P2_6
                                     52 	.globl _P2_5
                                     53 	.globl _P2_4
                                     54 	.globl _P2_3
                                     55 	.globl _P2_2
                                     56 	.globl _P2_1
                                     57 	.globl _P2_0
                                     58 	.globl _SM0
                                     59 	.globl _SM1
                                     60 	.globl _SM2
                                     61 	.globl _REN
                                     62 	.globl _TB8
                                     63 	.globl _RB8
                                     64 	.globl _TI
                                     65 	.globl _RI
                                     66 	.globl _P1_7
                                     67 	.globl _P1_6
                                     68 	.globl _P1_5
                                     69 	.globl _P1_4
                                     70 	.globl _P1_3
                                     71 	.globl _P1_2
                                     72 	.globl _P1_1
                                     73 	.globl _P1_0
                                     74 	.globl _TF1
                                     75 	.globl _TR1
                                     76 	.globl _TF0
                                     77 	.globl _TR0
                                     78 	.globl _IE1
                                     79 	.globl _IT1
                                     80 	.globl _IE0
                                     81 	.globl _IT0
                                     82 	.globl _P0_7
                                     83 	.globl _P0_6
                                     84 	.globl _P0_5
                                     85 	.globl _P0_4
                                     86 	.globl _P0_3
                                     87 	.globl _P0_2
                                     88 	.globl _P0_1
                                     89 	.globl _P0_0
                                     90 	.globl _B
                                     91 	.globl _ACC
                                     92 	.globl _PSW
                                     93 	.globl _IP
                                     94 	.globl _P3
                                     95 	.globl _IE
                                     96 	.globl _P2
                                     97 	.globl _SBUF
                                     98 	.globl _SCON
                                     99 	.globl _P1
                                    100 	.globl _TH1
                                    101 	.globl _TH0
                                    102 	.globl _TL1
                                    103 	.globl _TL0
                                    104 	.globl _TMOD
                                    105 	.globl _TCON
                                    106 	.globl _PCON
                                    107 	.globl _DPH
                                    108 	.globl _DPL
                                    109 	.globl _SP
                                    110 	.globl _P0
                                    111 ;--------------------------------------------------------
                                    112 ; special function registers
                                    113 ;--------------------------------------------------------
                                    114 	.area RSEG    (ABS,DATA)
      000000                        115 	.org 0x0000
                           000080   116 _P0	=	0x0080
                           000081   117 _SP	=	0x0081
                           000082   118 _DPL	=	0x0082
                           000083   119 _DPH	=	0x0083
                           000087   120 _PCON	=	0x0087
                           000088   121 _TCON	=	0x0088
                           000089   122 _TMOD	=	0x0089
                           00008A   123 _TL0	=	0x008a
                           00008B   124 _TL1	=	0x008b
                           00008C   125 _TH0	=	0x008c
                           00008D   126 _TH1	=	0x008d
                           000090   127 _P1	=	0x0090
                           000098   128 _SCON	=	0x0098
                           000099   129 _SBUF	=	0x0099
                           0000A0   130 _P2	=	0x00a0
                           0000A8   131 _IE	=	0x00a8
                           0000B0   132 _P3	=	0x00b0
                           0000B8   133 _IP	=	0x00b8
                           0000D0   134 _PSW	=	0x00d0
                           0000E0   135 _ACC	=	0x00e0
                           0000F0   136 _B	=	0x00f0
                                    137 ;--------------------------------------------------------
                                    138 ; special function bits
                                    139 ;--------------------------------------------------------
                                    140 	.area RSEG    (ABS,DATA)
      000000                        141 	.org 0x0000
                           000080   142 _P0_0	=	0x0080
                           000081   143 _P0_1	=	0x0081
                           000082   144 _P0_2	=	0x0082
                           000083   145 _P0_3	=	0x0083
                           000084   146 _P0_4	=	0x0084
                           000085   147 _P0_5	=	0x0085
                           000086   148 _P0_6	=	0x0086
                           000087   149 _P0_7	=	0x0087
                           000088   150 _IT0	=	0x0088
                           000089   151 _IE0	=	0x0089
                           00008A   152 _IT1	=	0x008a
                           00008B   153 _IE1	=	0x008b
                           00008C   154 _TR0	=	0x008c
                           00008D   155 _TF0	=	0x008d
                           00008E   156 _TR1	=	0x008e
                           00008F   157 _TF1	=	0x008f
                           000090   158 _P1_0	=	0x0090
                           000091   159 _P1_1	=	0x0091
                           000092   160 _P1_2	=	0x0092
                           000093   161 _P1_3	=	0x0093
                           000094   162 _P1_4	=	0x0094
                           000095   163 _P1_5	=	0x0095
                           000096   164 _P1_6	=	0x0096
                           000097   165 _P1_7	=	0x0097
                           000098   166 _RI	=	0x0098
                           000099   167 _TI	=	0x0099
                           00009A   168 _RB8	=	0x009a
                           00009B   169 _TB8	=	0x009b
                           00009C   170 _REN	=	0x009c
                           00009D   171 _SM2	=	0x009d
                           00009E   172 _SM1	=	0x009e
                           00009F   173 _SM0	=	0x009f
                           0000A0   174 _P2_0	=	0x00a0
                           0000A1   175 _P2_1	=	0x00a1
                           0000A2   176 _P2_2	=	0x00a2
                           0000A3   177 _P2_3	=	0x00a3
                           0000A4   178 _P2_4	=	0x00a4
                           0000A5   179 _P2_5	=	0x00a5
                           0000A6   180 _P2_6	=	0x00a6
                           0000A7   181 _P2_7	=	0x00a7
                           0000A8   182 _EX0	=	0x00a8
                           0000A9   183 _ET0	=	0x00a9
                           0000AA   184 _EX1	=	0x00aa
                           0000AB   185 _ET1	=	0x00ab
                           0000AC   186 _ES	=	0x00ac
                           0000AF   187 _EA	=	0x00af
                           0000B0   188 _P3_0	=	0x00b0
                           0000B1   189 _P3_1	=	0x00b1
                           0000B2   190 _P3_2	=	0x00b2
                           0000B3   191 _P3_3	=	0x00b3
                           0000B4   192 _P3_4	=	0x00b4
                           0000B5   193 _P3_5	=	0x00b5
                           0000B6   194 _P3_6	=	0x00b6
                           0000B7   195 _P3_7	=	0x00b7
                           0000B0   196 _RXD	=	0x00b0
                           0000B1   197 _TXD	=	0x00b1
                           0000B2   198 _INT0	=	0x00b2
                           0000B3   199 _INT1	=	0x00b3
                           0000B4   200 _T0	=	0x00b4
                           0000B5   201 _T1	=	0x00b5
                           0000B6   202 _WR	=	0x00b6
                           0000B7   203 _RD	=	0x00b7
                           0000B8   204 _PX0	=	0x00b8
                           0000B9   205 _PT0	=	0x00b9
                           0000BA   206 _PX1	=	0x00ba
                           0000BB   207 _PT1	=	0x00bb
                           0000BC   208 _PS	=	0x00bc
                           0000D0   209 _P	=	0x00d0
                           0000D1   210 _F1	=	0x00d1
                           0000D2   211 _OV	=	0x00d2
                           0000D3   212 _RS0	=	0x00d3
                           0000D4   213 _RS1	=	0x00d4
                           0000D5   214 _F0	=	0x00d5
                           0000D6   215 _AC	=	0x00d6
                           0000D7   216 _CY	=	0x00d7
                                    217 ;--------------------------------------------------------
                                    218 ; overlayable register banks
                                    219 ;--------------------------------------------------------
                                    220 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        221 	.ds 8
                                    222 ;--------------------------------------------------------
                                    223 ; internal ram data
                                    224 ;--------------------------------------------------------
                                    225 	.area DSEG    (DATA)
                                    226 ;--------------------------------------------------------
                                    227 ; overlayable items in internal ram
                                    228 ;--------------------------------------------------------
                                    229 	.area	OSEG    (OVR,DATA)
                                    230 	.area	OSEG    (OVR,DATA)
                                    231 ;--------------------------------------------------------
                                    232 ; Stack segment in internal ram
                                    233 ;--------------------------------------------------------
                                    234 	.area SSEG
      000008                        235 __start__stack:
      000008                        236 	.ds	1
                                    237 
                                    238 ;--------------------------------------------------------
                                    239 ; indirectly addressable internal ram data
                                    240 ;--------------------------------------------------------
                                    241 	.area ISEG    (DATA)
                                    242 ;--------------------------------------------------------
                                    243 ; absolute internal ram data
                                    244 ;--------------------------------------------------------
                                    245 	.area IABS    (ABS,DATA)
                                    246 	.area IABS    (ABS,DATA)
                                    247 ;--------------------------------------------------------
                                    248 ; bit data
                                    249 ;--------------------------------------------------------
                                    250 	.area BSEG    (BIT)
                                    251 ;--------------------------------------------------------
                                    252 ; paged external ram data
                                    253 ;--------------------------------------------------------
                                    254 	.area PSEG    (PAG,XDATA)
                                    255 ;--------------------------------------------------------
                                    256 ; uninitialized external ram data
                                    257 ;--------------------------------------------------------
                                    258 	.area XSEG    (XDATA)
                                    259 ;--------------------------------------------------------
                                    260 ; absolute external ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area XABS    (ABS,XDATA)
                                    263 ;--------------------------------------------------------
                                    264 ; initialized external ram data
                                    265 ;--------------------------------------------------------
                                    266 	.area XISEG   (XDATA)
                                    267 	.area HOME    (CODE)
                                    268 	.area GSINIT0 (CODE)
                                    269 	.area GSINIT1 (CODE)
                                    270 	.area GSINIT2 (CODE)
                                    271 	.area GSINIT3 (CODE)
                                    272 	.area GSINIT4 (CODE)
                                    273 	.area GSINIT5 (CODE)
                                    274 	.area GSINIT  (CODE)
                                    275 	.area GSFINAL (CODE)
                                    276 	.area CSEG    (CODE)
                                    277 ;--------------------------------------------------------
                                    278 ; interrupt vector
                                    279 ;--------------------------------------------------------
                                    280 	.area HOME    (CODE)
      000000                        281 __interrupt_vect:
      000000 02 00 06         [24]  282 	ljmp	__sdcc_gsinit_startup
                                    283 ;--------------------------------------------------------
                                    284 ; global & static initialisations
                                    285 ;--------------------------------------------------------
                                    286 	.area HOME    (CODE)
                                    287 	.area GSINIT  (CODE)
                                    288 	.area GSFINAL (CODE)
                                    289 	.area GSINIT  (CODE)
                                    290 	.globl __sdcc_gsinit_startup
                                    291 	.globl __sdcc_program_startup
                                    292 	.globl __start__stack
                                    293 	.globl __mcs51_genXINIT
                                    294 	.globl __mcs51_genXRAMCLEAR
                                    295 	.globl __mcs51_genRAMCLEAR
                                    296 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  297 	ljmp	__sdcc_program_startup
                                    298 ;--------------------------------------------------------
                                    299 ; Home
                                    300 ;--------------------------------------------------------
                                    301 	.area HOME    (CODE)
                                    302 	.area HOME    (CODE)
      000003                        303 __sdcc_program_startup:
      000003 02 00 B6         [24]  304 	ljmp	_main
                                    305 ;	return from main will return to caller
                                    306 ;--------------------------------------------------------
                                    307 ; code
                                    308 ;--------------------------------------------------------
                                    309 	.area CSEG    (CODE)
                                    310 ;------------------------------------------------------------
                                    311 ;Allocation info for local variables in function 'uart_init'
                                    312 ;------------------------------------------------------------
                                    313 ;	main.c:7: void uart_init() {
                                    314 ;	-----------------------------------------
                                    315 ;	 function uart_init
                                    316 ;	-----------------------------------------
      000062                        317 _uart_init:
                           000007   318 	ar7 = 0x07
                           000006   319 	ar6 = 0x06
                           000005   320 	ar5 = 0x05
                           000004   321 	ar4 = 0x04
                           000003   322 	ar3 = 0x03
                           000002   323 	ar2 = 0x02
                           000001   324 	ar1 = 0x01
                           000000   325 	ar0 = 0x00
                                    326 ;	main.c:8: TMOD = 0x20;   // 設置 Timer1 為模式2 (自動重載)
      000062 75 89 20         [24]  327 	mov	_TMOD,#0x20
                                    328 ;	main.c:9: TH1 = 0xFD;    // 波特率 9600bps
      000065 75 8D FD         [24]  329 	mov	_TH1,#0xfd
                                    330 ;	main.c:10: TL1 = 0xFD;
      000068 75 8B FD         [24]  331 	mov	_TL1,#0xfd
                                    332 ;	main.c:11: TR1 = 1;       // 啟動 Timer1
                                    333 ;	assignBit
      00006B D2 8E            [12]  334 	setb	_TR1
                                    335 ;	main.c:12: SCON = 0x50;   // 設置串口為模式1（8位UART，波特率可變）
      00006D 75 98 50         [24]  336 	mov	_SCON,#0x50
                                    337 ;	main.c:13: TI = 1;        // 傳輸準備完成
                                    338 ;	assignBit
      000070 D2 99            [12]  339 	setb	_TI
                                    340 ;	main.c:14: }
      000072 22               [24]  341 	ret
                                    342 ;------------------------------------------------------------
                                    343 ;Allocation info for local variables in function 'uart_send_string'
                                    344 ;------------------------------------------------------------
                                    345 ;str                       Allocated to registers 
                                    346 ;------------------------------------------------------------
                                    347 ;	main.c:17: void uart_send_string(char *str) {
                                    348 ;	-----------------------------------------
                                    349 ;	 function uart_send_string
                                    350 ;	-----------------------------------------
      000073                        351 _uart_send_string:
      000073 AD 82            [24]  352 	mov	r5, dpl
      000075 AE 83            [24]  353 	mov	r6, dph
      000077 AF F0            [24]  354 	mov	r7, b
                                    355 ;	main.c:18: while (*str) {
      000079                        356 00104$:
      000079 8D 82            [24]  357 	mov	dpl,r5
      00007B 8E 83            [24]  358 	mov	dph,r6
      00007D 8F F0            [24]  359 	mov	b,r7
      00007F 12 00 E7         [24]  360 	lcall	__gptrget
      000082 FC               [12]  361 	mov	r4,a
      000083 60 0C            [24]  362 	jz	00107$
                                    363 ;	main.c:19: SBUF = *str++;
      000085 8C 99            [24]  364 	mov	_SBUF,r4
      000087 0D               [12]  365 	inc	r5
      000088 BD 00 01         [24]  366 	cjne	r5,#0x00,00135$
      00008B 0E               [12]  367 	inc	r6
      00008C                        368 00135$:
                                    369 ;	main.c:20: while (!TI);
      00008C                        370 00101$:
                                    371 ;	main.c:21: TI = 0;
                                    372 ;	assignBit
      00008C 10 99 EA         [24]  373 	jbc	_TI,00104$
      00008F 80 FB            [24]  374 	sjmp	00101$
      000091                        375 00107$:
                                    376 ;	main.c:23: }
      000091 22               [24]  377 	ret
                                    378 ;------------------------------------------------------------
                                    379 ;Allocation info for local variables in function 'delay_ms'
                                    380 ;------------------------------------------------------------
                                    381 ;ms                        Allocated to registers r6 r7 
                                    382 ;i                         Allocated to registers r4 r5 
                                    383 ;j                         Allocated to registers r2 r3 
                                    384 ;------------------------------------------------------------
                                    385 ;	main.c:26: void delay_ms(unsigned int ms) {
                                    386 ;	-----------------------------------------
                                    387 ;	 function delay_ms
                                    388 ;	-----------------------------------------
      000092                        389 _delay_ms:
      000092 AE 82            [24]  390 	mov	r6, dpl
      000094 AF 83            [24]  391 	mov	r7, dph
                                    392 ;	main.c:28: for (i = 0; i < ms; i++) {
      000096 7C 00            [12]  393 	mov	r4,#0x00
      000098 7D 00            [12]  394 	mov	r5,#0x00
      00009A                        395 00107$:
      00009A C3               [12]  396 	clr	c
      00009B EC               [12]  397 	mov	a,r4
      00009C 9E               [12]  398 	subb	a,r6
      00009D ED               [12]  399 	mov	a,r5
      00009E 9F               [12]  400 	subb	a,r7
      00009F 50 14            [24]  401 	jnc	00109$
                                    402 ;	main.c:29: for (j = 0; j < 120; j++) {
      0000A1 7A 78            [12]  403 	mov	r2,#0x78
      0000A3 7B 00            [12]  404 	mov	r3,#0x00
      0000A5                        405 00105$:
      0000A5 1A               [12]  406 	dec	r2
      0000A6 BA FF 01         [24]  407 	cjne	r2,#0xff,00138$
      0000A9 1B               [12]  408 	dec	r3
      0000AA                        409 00138$:
      0000AA EA               [12]  410 	mov	a,r2
      0000AB 4B               [12]  411 	orl	a,r3
      0000AC 70 F7            [24]  412 	jnz	00105$
                                    413 ;	main.c:28: for (i = 0; i < ms; i++) {
      0000AE 0C               [12]  414 	inc	r4
      0000AF BC 00 E8         [24]  415 	cjne	r4,#0x00,00107$
      0000B2 0D               [12]  416 	inc	r5
      0000B3 80 E5            [24]  417 	sjmp	00107$
      0000B5                        418 00109$:
                                    419 ;	main.c:33: }
      0000B5 22               [24]  420 	ret
                                    421 ;------------------------------------------------------------
                                    422 ;Allocation info for local variables in function 'main'
                                    423 ;------------------------------------------------------------
                                    424 ;	main.c:35: void main() {
                                    425 ;	-----------------------------------------
                                    426 ;	 function main
                                    427 ;	-----------------------------------------
      0000B6                        428 _main:
                                    429 ;	main.c:36: uart_init();  // 初始化 UART
      0000B6 12 00 62         [24]  430 	lcall	_uart_init
                                    431 ;	main.c:37: LED = 0;      // 初始化 LED 為關閉
                                    432 ;	assignBit
      0000B9 C2 A0            [12]  433 	clr	_P2_0
                                    434 ;	main.c:39: uart_send_string("System Initialized\r\n");
      0000BB 90 01 07         [24]  435 	mov	dptr,#___str_0
      0000BE 75 F0 80         [24]  436 	mov	b, #0x80
      0000C1 12 00 73         [24]  437 	lcall	_uart_send_string
                                    438 ;	main.c:41: while (1) {
      0000C4                        439 00105$:
                                    440 ;	main.c:43: if (LED == 0) {
      0000C4 20 A0 0D         [24]  441 	jb	_P2_0,00102$
                                    442 ;	main.c:44: LED = 1; // 打開 LED
                                    443 ;	assignBit
      0000C7 D2 A0            [12]  444 	setb	_P2_0
                                    445 ;	main.c:45: uart_send_string("LED ON\r\n");
      0000C9 90 01 1C         [24]  446 	mov	dptr,#___str_1
      0000CC 75 F0 80         [24]  447 	mov	b, #0x80
      0000CF 12 00 73         [24]  448 	lcall	_uart_send_string
      0000D2 80 0B            [24]  449 	sjmp	00103$
      0000D4                        450 00102$:
                                    451 ;	main.c:47: LED = 0; // 關閉 LED
                                    452 ;	assignBit
      0000D4 C2 A0            [12]  453 	clr	_P2_0
                                    454 ;	main.c:48: uart_send_string("LED OFF\r\n");
      0000D6 90 01 25         [24]  455 	mov	dptr,#___str_2
      0000D9 75 F0 80         [24]  456 	mov	b, #0x80
      0000DC 12 00 73         [24]  457 	lcall	_uart_send_string
      0000DF                        458 00103$:
                                    459 ;	main.c:51: delay_ms(1000); // 延時 1000ms
      0000DF 90 03 E8         [24]  460 	mov	dptr,#0x03e8
      0000E2 12 00 92         [24]  461 	lcall	_delay_ms
                                    462 ;	main.c:53: }
      0000E5 80 DD            [24]  463 	sjmp	00105$
                                    464 	.area CSEG    (CODE)
                                    465 	.area CONST   (CODE)
                                    466 	.area CONST   (CODE)
      000107                        467 ___str_0:
      000107 53 79 73 74 65 6D 20   468 	.ascii "System Initialized"
             49 6E 69 74 69 61 6C
             69 7A 65 64
      000119 0D                     469 	.db 0x0d
      00011A 0A                     470 	.db 0x0a
      00011B 00                     471 	.db 0x00
                                    472 	.area CSEG    (CODE)
                                    473 	.area CONST   (CODE)
      00011C                        474 ___str_1:
      00011C 4C 45 44 20 4F 4E      475 	.ascii "LED ON"
      000122 0D                     476 	.db 0x0d
      000123 0A                     477 	.db 0x0a
      000124 00                     478 	.db 0x00
                                    479 	.area CSEG    (CODE)
                                    480 	.area CONST   (CODE)
      000125                        481 ___str_2:
      000125 4C 45 44 20 4F 46 46   482 	.ascii "LED OFF"
      00012C 0D                     483 	.db 0x0d
      00012D 0A                     484 	.db 0x0a
      00012E 00                     485 	.db 0x00
                                    486 	.area CSEG    (CODE)
                                    487 	.area XINIT   (CODE)
                                    488 	.area CABS    (ABS,CODE)
