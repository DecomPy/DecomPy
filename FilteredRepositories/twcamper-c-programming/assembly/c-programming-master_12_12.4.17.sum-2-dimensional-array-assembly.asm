	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 1024
	lea	rax, [rbp - 1008]
	lea	rcx, [rip + l_main.table]
	mov	edx, 1000
                                        ## kill: def $rdx killed $edx
	mov	rsi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	dword ptr [rbp - 1012], 0
	mov	rsi, rax
	mov	rdi, rsi
	mov	rsi, rcx
	mov	qword ptr [rbp - 1024], rax ## 8-byte Spill
	call	_memcpy
	mov	rax, qword ptr [rbp - 1024] ## 8-byte Reload
	mov	edi, 25
	mov	rsi, rax
	mov	edx, 10
	call	_sum_two_dimensional_array
	mov	dword ptr [rbp - 1016], eax
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rcx, rsi
	jne	LBB0_2
## %bb.1:
	xor	eax, eax
	add	rsp, 1024
	pop	rbp
	ret
LBB0_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_sum_two_dimensional_array ## -- Begin function sum_two_dimensional_array
	.p2align	4, 0x90
_sum_two_dimensional_array:             ## @sum_two_dimensional_array
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], edx
	mov	edx, dword ptr [rbp - 4]
	mov	esi, edx
	mov	dword ptr [rbp - 24], 0
	mov	rax, qword ptr [rbp - 16]
	imul	rcx, rsi, 0
	shl	rcx, 2
	add	rax, rcx
	mov	qword ptr [rbp - 32], rax
	mov	qword ptr [rbp - 40], rsi ## 8-byte Spill
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 32]
	mov	rcx, qword ptr [rbp - 16]
	mov	edx, dword ptr [rbp - 20]
	sub	edx, 1
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 40] ## 8-byte Reload
	imul	rsi, rdi
	shl	rsi, 2
	add	rcx, rsi
	mov	edx, dword ptr [rbp - 4]
	sub	edx, 1
	movsxd	rsi, edx
	shl	rsi, 2
	add	rcx, rsi
	cmp	rax, rcx
	ja	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 32]
	mov	ecx, dword ptr [rax]
	add	ecx, dword ptr [rbp - 24]
	mov	dword ptr [rbp - 24], ecx
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 32]
	add	rax, 4
	mov	qword ptr [rbp - 32], rax
	jmp	LBB1_1
LBB1_4:
	mov	eax, dword ptr [rbp - 24]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @main.table
l_main.table:
	.long	207                     ## 0xcf
	.long	455                     ## 0x1c7
	.long	849                     ## 0x351
	.long	180                     ## 0xb4
	.long	286                     ## 0x11e
	.long	398                     ## 0x18e
	.long	1011                    ## 0x3f3
	.long	482                     ## 0x1e2
	.long	174                     ## 0xae
	.long	499                     ## 0x1f3
	.long	577                     ## 0x241
	.long	312                     ## 0x138
	.long	161                     ## 0xa1
	.long	297                     ## 0x129
	.long	578                     ## 0x242
	.long	1021                    ## 0x3fd
	.long	494                     ## 0x1ee
	.long	842                     ## 0x34a
	.long	280                     ## 0x118
	.long	308                     ## 0x134
	.long	210                     ## 0xd2
	.long	154                     ## 0x9a
	.long	981                     ## 0x3d5
	.long	169                     ## 0xa9
	.long	139                     ## 0x8b
	.long	930                     ## 0x3a2
	.long	122                     ## 0x7a
	.long	426                     ## 0x1aa
	.long	190                     ## 0xbe
	.long	404                     ## 0x194
	.long	181                     ## 0xb5
	.long	288                     ## 0x120
	.long	762                     ## 0x2fa
	.long	265                     ## 0x109
	.long	555                     ## 0x22b
	.long	594                     ## 0x252
	.long	1002                    ## 0x3ea
	.long	1018                    ## 0x3fa
	.long	434                     ## 0x1b2
	.long	599                     ## 0x257
	.long	489                     ## 0x1e9
	.long	788                     ## 0x314
	.long	225                     ## 0xe1
	.long	216                     ## 0xd8
	.long	961                     ## 0x3c1
	.long	577                     ## 0x241
	.long	578                     ## 0x242
	.long	581                     ## 0x245
	.long	394                     ## 0x18a
	.long	635                     ## 0x27b
	.long	96                      ## 0x60
	.long	490                     ## 0x1ea
	.long	46                      ## 0x2e
	.long	254                     ## 0xfe
	.long	22                      ## 0x16
	.long	387                     ## 0x183
	.long	936                     ## 0x3a8
	.long	411                     ## 0x19b
	.long	511                     ## 0x1ff
	.long	528                     ## 0x210
	.long	13                      ## 0xd
	.long	363                     ## 0x16b
	.long	105                     ## 0x69
	.long	417                     ## 0x1a1
	.long	740                     ## 0x2e4
	.long	652                     ## 0x28c
	.long	142                     ## 0x8e
	.long	716                     ## 0x2cc
	.long	902                     ## 0x386
	.long	72                      ## 0x48
	.long	347                     ## 0x15b
	.long	662                     ## 0x296
	.long	180                     ## 0xb4
	.long	753                     ## 0x2f1
	.long	833                     ## 0x341
	.long	417                     ## 0x1a1
	.long	619                     ## 0x26b
	.long	402                     ## 0x192
	.long	15                      ## 0xf
	.long	958                     ## 0x3be
	.long	459                     ## 0x1cb
	.long	784                     ## 0x310
	.long	758                     ## 0x2f6
	.long	4                       ## 0x4
	.long	136                     ## 0x88
	.long	167                     ## 0xa7
	.long	424                     ## 0x1a8
	.long	230                     ## 0xe6
	.long	89                      ## 0x59
	.long	760                     ## 0x2f8
	.long	1021                    ## 0x3fd
	.long	648                     ## 0x288
	.long	942                     ## 0x3ae
	.long	431                     ## 0x1af
	.long	679                     ## 0x2a7
	.long	531                     ## 0x213
	.long	269                     ## 0x10d
	.long	833                     ## 0x341
	.long	244                     ## 0xf4
	.long	648                     ## 0x288
	.long	83                      ## 0x53
	.long	63                      ## 0x3f
	.long	945                     ## 0x3b1
	.long	372                     ## 0x174
	.long	456                     ## 0x1c8
	.long	223                     ## 0xdf
	.long	389                     ## 0x185
	.long	45                      ## 0x2d
	.long	655                     ## 0x28f
	.long	803                     ## 0x323
	.long	79                      ## 0x4f
	.long	488                     ## 0x1e8
	.long	930                     ## 0x3a2
	.long	229                     ## 0xe5
	.long	426                     ## 0x1aa
	.long	910                     ## 0x38e
	.long	126                     ## 0x7e
	.long	793                     ## 0x319
	.long	990                     ## 0x3de
	.long	560                     ## 0x230
	.long	534                     ## 0x216
	.long	532                     ## 0x214
	.long	210                     ## 0xd2
	.long	192                     ## 0xc0
	.long	802                     ## 0x322
	.long	479                     ## 0x1df
	.long	396                     ## 0x18c
	.long	451                     ## 0x1c3
	.long	958                     ## 0x3be
	.long	772                     ## 0x304
	.long	292                     ## 0x124
	.long	396                     ## 0x18c
	.long	273                     ## 0x111
	.long	323                     ## 0x143
	.long	702                     ## 0x2be
	.long	262                     ## 0x106
	.long	64                      ## 0x40
	.long	208                     ## 0xd0
	.long	562                     ## 0x232
	.long	898                     ## 0x382
	.long	250                     ## 0xfa
	.long	769                     ## 0x301
	.long	160                     ## 0xa0
	.long	667                     ## 0x29b
	.long	274                     ## 0x112
	.long	540                     ## 0x21c
	.long	105                     ## 0x69
	.long	421                     ## 0x1a5
	.long	1014                    ## 0x3f6
	.long	856                     ## 0x358
	.long	788                     ## 0x314
	.long	304                     ## 0x130
	.long	1008                    ## 0x3f0
	.long	88                      ## 0x58
	.long	196                     ## 0xc4
	.long	712                     ## 0x2c8
	.long	555                     ## 0x22b
	.long	148                     ## 0x94
	.long	955                     ## 0x3bb
	.long	196                     ## 0xc4
	.long	328                     ## 0x148
	.long	252                     ## 0xfc
	.long	379                     ## 0x17b
	.long	76                      ## 0x4c
	.long	352                     ## 0x160
	.long	199                     ## 0xc7
	.long	202                     ## 0xca
	.long	156                     ## 0x9c
	.long	449                     ## 0x1c1
	.long	80                      ## 0x50
	.long	56                      ## 0x38
	.long	190                     ## 0xbe
	.long	715                     ## 0x2cb
	.long	383                     ## 0x17f
	.long	796                     ## 0x31c
	.long	613                     ## 0x265
	.long	867                     ## 0x363
	.long	681                     ## 0x2a9
	.long	133                     ## 0x85
	.long	939                     ## 0x3ab
	.long	575                     ## 0x23f
	.long	362                     ## 0x16a
	.long	980                     ## 0x3d4
	.long	271                     ## 0x10f
	.long	348                     ## 0x15c
	.long	724                     ## 0x2d4
	.long	996                     ## 0x3e4
	.long	1001                    ## 0x3e9
	.long	819                     ## 0x333
	.long	752                     ## 0x2f0
	.long	378                     ## 0x17a
	.long	689                     ## 0x2b1
	.long	877                     ## 0x36d
	.long	500                     ## 0x1f4
	.long	966                     ## 0x3c6
	.long	171                     ## 0xab
	.long	324                     ## 0x144
	.long	561                     ## 0x231
	.long	127                     ## 0x7f
	.long	691                     ## 0x2b3
	.long	865                     ## 0x361
	.long	177                     ## 0xb1
	.long	950                     ## 0x3b6
	.long	28                      ## 0x1c
	.long	866                     ## 0x362
	.long	707                     ## 0x2c3
	.long	688                     ## 0x2b0
	.long	255                     ## 0xff
	.long	244                     ## 0xf4
	.long	960                     ## 0x3c0
	.long	71                      ## 0x47
	.long	506                     ## 0x1fa
	.long	128                     ## 0x80
	.long	26                      ## 0x1a
	.long	443                     ## 0x1bb
	.long	695                     ## 0x2b7
	.long	887                     ## 0x377
	.long	322                     ## 0x142
	.long	1017                    ## 0x3f9
	.long	548                     ## 0x224
	.long	700                     ## 0x2bc
	.long	174                     ## 0xae
	.long	327                     ## 0x147
	.long	35                      ## 0x23
	.long	804                     ## 0x324
	.long	432                     ## 0x1b0
	.long	268                     ## 0x10c
	.long	225                     ## 0xe1
	.long	299                     ## 0x12b
	.long	783                     ## 0x30f
	.long	356                     ## 0x164
	.long	222                     ## 0xde
	.long	540                     ## 0x21c
	.long	729                     ## 0x2d9
	.long	570                     ## 0x23a
	.long	778                     ## 0x30a
	.long	615                     ## 0x267
	.long	284                     ## 0x11c
	.long	305                     ## 0x131
	.long	399                     ## 0x18f
	.long	474                     ## 0x1da
	.long	895                     ## 0x37f
	.long	268                     ## 0x10c
	.long	593                     ## 0x251
	.long	992                     ## 0x3e0
	.long	863                     ## 0x35f
	.long	559                     ## 0x22f
	.long	457                     ## 0x1c9
	.long	657                     ## 0x291
	.long	420                     ## 0x1a4


.subsections_via_symbols
