	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI0_0:
	.quad	4630752910647380154     ## double 39.478417604362633
LCPI0_1:
	.quad	4532020583610935537     ## double 1.0000000000000001E-5
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	push	rbx
	sub	rsp, 776
	.cfi_offset rbx, -24
	lea	rax, [rbp - 296]
	mov	ecx, 56
	mov	edx, ecx
	movsd	xmm0, qword ptr [rip + LCPI0_0] ## xmm0 = mem[0],zero
	xor	ecx, ecx
	lea	r8, [rip + l_main.neptune]
	lea	r9, [rip + l_main.uranus]
	lea	r10, [rip + l_main.saturn]
	lea	r11, [rip + l_main.jupiter]
	mov	rbx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rbx, qword ptr [rbx]
	mov	qword ptr [rbp - 16], rbx
	mov	dword ptr [rbp - 300], 0
	mov	dword ptr [rbp - 304], edi
	mov	qword ptr [rbp - 312], rsi
	lea	rsi, [rbp - 368]
	mov	rbx, rsi
	mov	rdi, rbx
	mov	qword ptr [rbp - 664], rsi ## 8-byte Spill
	mov	rsi, r11
	mov	qword ptr [rbp - 672], rdx ## 8-byte Spill
	mov	qword ptr [rbp - 680], r9 ## 8-byte Spill
	mov	qword ptr [rbp - 688], r10 ## 8-byte Spill
	mov	qword ptr [rbp - 696], rax ## 8-byte Spill
	mov	qword ptr [rbp - 704], r8 ## 8-byte Spill
	movsd	qword ptr [rbp - 712], xmm0 ## 8-byte Spill
	mov	dword ptr [rbp - 716], ecx ## 4-byte Spill
	call	_memcpy
	lea	rax, [rbp - 424]
	mov	rdx, rax
	mov	rdi, rdx
	mov	rsi, qword ptr [rbp - 688] ## 8-byte Reload
	mov	rdx, qword ptr [rbp - 672] ## 8-byte Reload
	mov	qword ptr [rbp - 728], rax ## 8-byte Spill
	call	_memcpy
	lea	rax, [rbp - 480]
	mov	rdx, rax
	mov	rdi, rdx
	mov	rsi, qword ptr [rbp - 680] ## 8-byte Reload
	mov	rdx, qword ptr [rbp - 672] ## 8-byte Reload
	mov	qword ptr [rbp - 736], rax ## 8-byte Spill
	call	_memcpy
	lea	rax, [rbp - 536]
	mov	rdx, rax
	mov	rdi, rdx
	mov	rsi, qword ptr [rbp - 704] ## 8-byte Reload
	mov	rdx, qword ptr [rbp - 672] ## 8-byte Reload
	mov	qword ptr [rbp - 744], rax ## 8-byte Spill
	call	_memcpy
	lea	rax, [rbp - 592]
	mov	rdx, rax
	mov	rdi, rdx
	mov	esi, dword ptr [rbp - 716] ## 4-byte Reload
	mov	rdx, qword ptr [rbp - 672] ## 8-byte Reload
	mov	qword ptr [rbp - 752], rax ## 8-byte Spill
	call	_memset
	movsd	xmm0, qword ptr [rbp - 712] ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 544], xmm0
	mov	qword ptr [rbp - 600], 5
	mov	rax, qword ptr [rbp - 696] ## 8-byte Reload
	mov	rdx, qword ptr [rbp - 664] ## 8-byte Reload
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdx, qword ptr [rbp - 672] ## 8-byte Reload
	call	_memcpy
	mov	rax, qword ptr [rbp - 696] ## 8-byte Reload
	add	rax, 56
	mov	rdx, rax
	mov	rsi, qword ptr [rbp - 728] ## 8-byte Reload
	mov	rdi, rdx
	mov	rdx, qword ptr [rbp - 672] ## 8-byte Reload
	mov	qword ptr [rbp - 760], rax ## 8-byte Spill
	call	_memcpy
	mov	rax, qword ptr [rbp - 760] ## 8-byte Reload
	add	rax, 56
	mov	rdx, rax
	mov	rsi, qword ptr [rbp - 736] ## 8-byte Reload
	mov	rdi, rdx
	mov	rdx, qword ptr [rbp - 672] ## 8-byte Reload
	mov	qword ptr [rbp - 768], rax ## 8-byte Spill
	call	_memcpy
	mov	rax, qword ptr [rbp - 768] ## 8-byte Reload
	add	rax, 56
	mov	rdx, rax
	mov	rsi, qword ptr [rbp - 744] ## 8-byte Reload
	mov	rdi, rdx
	mov	rdx, qword ptr [rbp - 672] ## 8-byte Reload
	mov	qword ptr [rbp - 776], rax ## 8-byte Spill
	call	_memcpy
	mov	rax, qword ptr [rbp - 776] ## 8-byte Reload
	add	rax, 56
	mov	rdx, qword ptr [rbp - 752] ## 8-byte Reload
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdx, qword ptr [rbp - 672] ## 8-byte Reload
	call	_memcpy
	mov	rax, qword ptr [rbp - 696] ## 8-byte Reload
	mov	qword ptr [rbp - 608], rax
	xorps	xmm0, xmm0
	movsd	qword ptr [rbp - 616], xmm0
	movsd	qword ptr [rbp - 624], xmm0
	movsd	qword ptr [rbp - 632], xmm0
	mov	qword ptr [rbp - 640], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 640]
	cmp	rax, qword ptr [rbp - 600]
	jae	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 608]
	imul	rcx, qword ptr [rbp - 640], 56
	add	rax, rcx
	mov	qword ptr [rbp - 648], rax
	mov	rax, qword ptr [rbp - 648]
	movsd	xmm0, qword ptr [rax + 24] ## xmm0 = mem[0],zero
	mov	rax, qword ptr [rbp - 648]
	mulsd	xmm0, qword ptr [rax + 48]
	addsd	xmm0, qword ptr [rbp - 616]
	movsd	qword ptr [rbp - 616], xmm0
	mov	rax, qword ptr [rbp - 648]
	movsd	xmm0, qword ptr [rax + 32] ## xmm0 = mem[0],zero
	mov	rax, qword ptr [rbp - 648]
	mulsd	xmm0, qword ptr [rax + 48]
	addsd	xmm0, qword ptr [rbp - 624]
	movsd	qword ptr [rbp - 624], xmm0
	mov	rax, qword ptr [rbp - 648]
	movsd	xmm0, qword ptr [rax + 40] ## xmm0 = mem[0],zero
	mov	rax, qword ptr [rbp - 648]
	mulsd	xmm0, qword ptr [rax + 48]
	addsd	xmm0, qword ptr [rbp - 632]
	movsd	qword ptr [rbp - 632], xmm0
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 640]
	add	rax, 1
	mov	qword ptr [rbp - 640], rax
	jmp	LBB0_1
LBB0_4:
	mov	rdi, qword ptr [rbp - 608]
	movsd	xmm0, qword ptr [rbp - 616] ## xmm0 = mem[0],zero
	movsd	xmm1, qword ptr [rbp - 624] ## xmm1 = mem[0],zero
	movsd	xmm2, qword ptr [rbp - 632] ## xmm2 = mem[0],zero
	call	_Body_Offset_Momentum
	mov	qword ptr [rbp - 656], 0
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rbp - 656], 100000
	jae	LBB0_8
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	movsd	xmm0, qword ptr [rip + LCPI0_1] ## xmm0 = mem[0],zero
	mov	rdi, qword ptr [rbp - 608]
	mov	rsi, qword ptr [rbp - 600]
	call	_Bodies_Advance
## %bb.7:                               ##   in Loop: Header=BB0_5 Depth=1
	mov	rax, qword ptr [rbp - 656]
	add	rax, 1
	mov	qword ptr [rbp - 656], rax
	jmp	LBB0_5
LBB0_8:
	mov	eax, dword ptr [rbp - 300]
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 16]
	cmp	rcx, rdx
	mov	dword ptr [rbp - 780], eax ## 4-byte Spill
	jne	LBB0_10
## %bb.9:
	mov	eax, dword ptr [rbp - 780] ## 4-byte Reload
	add	rsp, 776
	pop	rbx
	pop	rbp
	ret
LBB0_10:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function Body_Offset_Momentum
LCPI1_0:
	.quad	4630752910647380154     ## double 39.478417604362633
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90
_Body_Offset_Momentum:                  ## @Body_Offset_Momentum
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movsd	xmm3, qword ptr [rip + LCPI1_0] ## xmm3 = mem[0],zero
	mov	qword ptr [rbp - 8], rdi
	movsd	qword ptr [rbp - 16], xmm0
	movsd	qword ptr [rbp - 24], xmm1
	movsd	qword ptr [rbp - 32], xmm2
	movsd	xmm0, qword ptr [rbp - 16] ## xmm0 = mem[0],zero
	movq	rdi, xmm0
	movabs	rax, -9223372036854775808
	xor	rdi, rax
	movq	xmm0, rdi
	divsd	xmm0, xmm3
	mov	rdi, qword ptr [rbp - 8]
	movsd	qword ptr [rdi + 24], xmm0
	movsd	xmm0, qword ptr [rbp - 24] ## xmm0 = mem[0],zero
	movq	rdi, xmm0
	xor	rdi, rax
	movq	xmm0, rdi
	divsd	xmm0, xmm3
	mov	rdi, qword ptr [rbp - 8]
	movsd	qword ptr [rdi + 32], xmm0
	movsd	xmm0, qword ptr [rbp - 32] ## xmm0 = mem[0],zero
	movq	rdi, xmm0
	xor	rdi, rax
	movq	xmm0, rdi
	divsd	xmm0, xmm3
	mov	rax, qword ptr [rbp - 8]
	movsd	qword ptr [rax + 40], xmm0
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function Bodies_Advance
_Bodies_Advance:                        ## @Bodies_Advance
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	movsd	qword ptr [rbp - 24], xmm0
	mov	qword ptr [rbp - 32], 0
LBB2_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_3 Depth 2
	mov	rax, qword ptr [rbp - 32]
	cmp	rax, qword ptr [rbp - 16]
	jae	LBB2_8
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	imul	rcx, qword ptr [rbp - 32], 56
	add	rax, rcx
	mov	qword ptr [rbp - 40], rax
	mov	rax, qword ptr [rbp - 32]
	add	rax, 1
	mov	qword ptr [rbp - 48], rax
LBB2_3:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	rax, qword ptr [rbp - 48]
	cmp	rax, qword ptr [rbp - 16]
	jae	LBB2_6
## %bb.4:                               ##   in Loop: Header=BB2_3 Depth=2
	mov	rax, qword ptr [rbp - 8]
	imul	rcx, qword ptr [rbp - 48], 56
	add	rax, rcx
	mov	qword ptr [rbp - 56], rax
	mov	rax, qword ptr [rbp - 40]
	movsd	xmm0, qword ptr [rax]   ## xmm0 = mem[0],zero
	mov	rax, qword ptr [rbp - 56]
	subsd	xmm0, qword ptr [rax]
	movsd	qword ptr [rbp - 64], xmm0
	mov	rax, qword ptr [rbp - 40]
	movsd	xmm0, qword ptr [rax + 8] ## xmm0 = mem[0],zero
	mov	rax, qword ptr [rbp - 56]
	subsd	xmm0, qword ptr [rax + 8]
	movsd	qword ptr [rbp - 72], xmm0
	mov	rax, qword ptr [rbp - 40]
	movsd	xmm0, qword ptr [rax + 16] ## xmm0 = mem[0],zero
	mov	rax, qword ptr [rbp - 56]
	subsd	xmm0, qword ptr [rax + 16]
	movsd	qword ptr [rbp - 80], xmm0
	movsd	xmm0, qword ptr [rbp - 64] ## xmm0 = mem[0],zero
	mulsd	xmm0, qword ptr [rbp - 64]
	movsd	xmm1, qword ptr [rbp - 72] ## xmm1 = mem[0],zero
	mulsd	xmm1, qword ptr [rbp - 72]
	addsd	xmm0, xmm1
	movsd	xmm1, qword ptr [rbp - 80] ## xmm1 = mem[0],zero
	mulsd	xmm1, qword ptr [rbp - 80]
	addsd	xmm0, xmm1
	movsd	qword ptr [rbp - 88], xmm0
	movsd	xmm0, qword ptr [rbp - 88] ## xmm0 = mem[0],zero
	sqrtsd	xmm0, xmm0
	movsd	qword ptr [rbp - 96], xmm0
	movsd	xmm0, qword ptr [rbp - 24] ## xmm0 = mem[0],zero
	movsd	xmm1, qword ptr [rbp - 88] ## xmm1 = mem[0],zero
	mulsd	xmm1, qword ptr [rbp - 96]
	divsd	xmm0, xmm1
	movsd	qword ptr [rbp - 104], xmm0
	movsd	xmm0, qword ptr [rbp - 64] ## xmm0 = mem[0],zero
	mov	rax, qword ptr [rbp - 56]
	mulsd	xmm0, qword ptr [rax + 48]
	mulsd	xmm0, qword ptr [rbp - 104]
	mov	rax, qword ptr [rbp - 40]
	movsd	xmm1, qword ptr [rax + 24] ## xmm1 = mem[0],zero
	subsd	xmm1, xmm0
	movsd	qword ptr [rax + 24], xmm1
	movsd	xmm0, qword ptr [rbp - 72] ## xmm0 = mem[0],zero
	mov	rax, qword ptr [rbp - 56]
	mulsd	xmm0, qword ptr [rax + 48]
	mulsd	xmm0, qword ptr [rbp - 104]
	mov	rax, qword ptr [rbp - 40]
	movsd	xmm1, qword ptr [rax + 32] ## xmm1 = mem[0],zero
	subsd	xmm1, xmm0
	movsd	qword ptr [rax + 32], xmm1
	movsd	xmm0, qword ptr [rbp - 80] ## xmm0 = mem[0],zero
	mov	rax, qword ptr [rbp - 56]
	mulsd	xmm0, qword ptr [rax + 48]
	mulsd	xmm0, qword ptr [rbp - 104]
	mov	rax, qword ptr [rbp - 40]
	movsd	xmm1, qword ptr [rax + 40] ## xmm1 = mem[0],zero
	subsd	xmm1, xmm0
	movsd	qword ptr [rax + 40], xmm1
	movsd	xmm0, qword ptr [rbp - 64] ## xmm0 = mem[0],zero
	mov	rax, qword ptr [rbp - 40]
	mulsd	xmm0, qword ptr [rax + 48]
	mulsd	xmm0, qword ptr [rbp - 104]
	mov	rax, qword ptr [rbp - 56]
	addsd	xmm0, qword ptr [rax + 24]
	movsd	qword ptr [rax + 24], xmm0
	movsd	xmm0, qword ptr [rbp - 72] ## xmm0 = mem[0],zero
	mov	rax, qword ptr [rbp - 40]
	mulsd	xmm0, qword ptr [rax + 48]
	mulsd	xmm0, qword ptr [rbp - 104]
	mov	rax, qword ptr [rbp - 56]
	addsd	xmm0, qword ptr [rax + 32]
	movsd	qword ptr [rax + 32], xmm0
	movsd	xmm0, qword ptr [rbp - 80] ## xmm0 = mem[0],zero
	mov	rax, qword ptr [rbp - 40]
	mulsd	xmm0, qword ptr [rax + 48]
	mulsd	xmm0, qword ptr [rbp - 104]
	mov	rax, qword ptr [rbp - 56]
	addsd	xmm0, qword ptr [rax + 40]
	movsd	qword ptr [rax + 40], xmm0
## %bb.5:                               ##   in Loop: Header=BB2_3 Depth=2
	mov	rax, qword ptr [rbp - 48]
	add	rax, 1
	mov	qword ptr [rbp - 48], rax
	jmp	LBB2_3
LBB2_6:                                 ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_7
LBB2_7:                                 ##   in Loop: Header=BB2_1 Depth=1
	mov	rax, qword ptr [rbp - 32]
	add	rax, 1
	mov	qword ptr [rbp - 32], rax
	jmp	LBB2_1
LBB2_8:
	mov	qword ptr [rbp - 112], 0
LBB2_9:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 112]
	cmp	rax, qword ptr [rbp - 16]
	jae	LBB2_12
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	mov	rax, qword ptr [rbp - 8]
	imul	rcx, qword ptr [rbp - 112], 56
	add	rax, rcx
	mov	qword ptr [rbp - 120], rax
	movsd	xmm0, qword ptr [rbp - 24] ## xmm0 = mem[0],zero
	mov	rax, qword ptr [rbp - 120]
	mulsd	xmm0, qword ptr [rax + 24]
	mov	rax, qword ptr [rbp - 120]
	addsd	xmm0, qword ptr [rax]
	movsd	qword ptr [rax], xmm0
	movsd	xmm0, qword ptr [rbp - 24] ## xmm0 = mem[0],zero
	mov	rax, qword ptr [rbp - 120]
	mulsd	xmm0, qword ptr [rax + 32]
	mov	rax, qword ptr [rbp - 120]
	addsd	xmm0, qword ptr [rax + 8]
	movsd	qword ptr [rax + 8], xmm0
	movsd	xmm0, qword ptr [rbp - 24] ## xmm0 = mem[0],zero
	mov	rax, qword ptr [rbp - 120]
	mulsd	xmm0, qword ptr [rax + 40]
	mov	rax, qword ptr [rbp - 120]
	addsd	xmm0, qword ptr [rax + 16]
	movsd	qword ptr [rax + 16], xmm0
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	mov	rax, qword ptr [rbp - 112]
	add	rax, 1
	mov	qword ptr [rbp - 112], rax
	jmp	LBB2_9
LBB2_12:
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	3               ## @main.jupiter
l_main.jupiter:
	.quad	4617136985637443884     ## double 4.8414314424647209
	.quad	-4615467600764216452    ## double -1.1603200440274284
	.quad	-4616026495673453706    ## double -1.0362204447112311
	.quad	4603636522180398268     ## double 0.60632639299583202
	.quad	4613514450253485211     ## double 2.8119868449162602
	.quad	-4640446117579192555    ## double -0.025218361659887629
	.quad	4585593052079011492     ## double 0.037693674870394461

	.p2align	3               ## @main.saturn
l_main.saturn:
	.quad	4620886515960171111     ## double 8.3433667182445799
	.quad	4616330128746480048     ## double 4.1247985641243048
	.quad	-4622431185293064580    ## double -0.40352341711432138
	.quad	-4616141094713322430    ## double -1.0107743461787924
	.quad	4610900871547424531     ## double 1.8256623712304119
	.quad	4576004977915405236     ## double 0.0084157613765841535
	.quad	4577659745833830800     ## double 0.011286326131970253

	.p2align	3               ## @main.uranus
l_main.uranus:
	.quad	4623448502799161807     ## double 12.894369562139131
	.quad	-4598675596822288770    ## double -15.111151401698631
	.quad	-4626158513131520608    ## double -0.22330757889265573
	.quad	4607555276345777135     ## double 1.0827910064415354
	.quad	4605999890795117509     ## double 0.86871301816960822
	.quad	-4645973824767902084    ## double -0.010832637401363636
	.quad	4565592097032512202     ## double 0.0017237240570599382

	.p2align	3               ## @main.neptune
l_main.neptune:
	.quad	4624847617829197610     ## double 15.379697114850917
	.quad	-4595383180696444384    ## double -25.919314609987964
	.quad	4595626498235032896     ## double 0.17925877295037118
	.quad	4606994084859067466     ## double 0.97909073224389798
	.quad	4603531791922690979     ## double 0.59469899864767617
	.quad	-4638202354754755082    ## double -0.034755955504078104
	.quad	4566835785178258454     ## double 0.0020336868699248984


.subsections_via_symbols
