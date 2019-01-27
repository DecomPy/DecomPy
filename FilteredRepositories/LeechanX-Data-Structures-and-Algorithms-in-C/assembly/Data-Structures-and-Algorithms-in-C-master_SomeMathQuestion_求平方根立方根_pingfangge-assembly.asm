	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function myabs
LCPI0_0:
	.quad	-4616189618054758400    ## double -1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_myabs
	.p2align	4, 0x90
_myabs:                                 ## @myabs
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movsd	qword ptr [rbp - 16], xmm0
	movsd	xmm0, qword ptr [rbp - 16] ## xmm0 = mem[0],zero
	xorps	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jb	LBB0_2
## %bb.1:
	movsd	xmm0, qword ptr [rbp - 16] ## xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 8], xmm0
	jmp	LBB0_3
LBB0_2:
	movsd	xmm0, qword ptr [rip + LCPI0_0] ## xmm0 = mem[0],zero
	mulsd	xmm0, qword ptr [rbp - 16]
	movsd	qword ptr [rbp - 8], xmm0
LBB0_3:
	movsd	xmm0, qword ptr [rbp - 8] ## xmm0 = mem[0],zero
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function squareroot
LCPI1_0:
	.quad	4611686018427387904     ## double 2
LCPI1_1:
	.quad	4607182418800017408     ## double 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_squareroot
	.p2align	4, 0x90
_squareroot:                            ## @squareroot
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	dword ptr [rbp - 4], edi
	movsd	qword ptr [rbp - 16], xmm0
	mov	edi, dword ptr [rbp - 4]
	cvtsi2sd	xmm0, edi
	movsd	qword ptr [rbp - 24], xmm0
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movsd	xmm0, qword ptr [rbp - 24] ## xmm0 = mem[0],zero
	mulsd	xmm0, qword ptr [rbp - 24]
	mov	eax, dword ptr [rbp - 4]
	cvtsi2sd	xmm1, eax
	subsd	xmm0, xmm1
	call	_myabs
	ucomisd	xmm0, qword ptr [rbp - 16]
	jbe	LBB1_3
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movsd	xmm0, qword ptr [rip + LCPI1_0] ## xmm0 = mem[0],zero
	movsd	xmm1, qword ptr [rip + LCPI1_1] ## xmm1 = mem[0],zero
	movsd	xmm2, qword ptr [rbp - 24] ## xmm2 = mem[0],zero
	mov	eax, dword ptr [rbp - 4]
	cvtsi2sd	xmm3, eax
	mulsd	xmm3, xmm1
	divsd	xmm3, qword ptr [rbp - 24]
	addsd	xmm2, xmm3
	divsd	xmm2, xmm0
	movsd	qword ptr [rbp - 24], xmm2
	jmp	LBB1_1
LBB1_3:
	movsd	xmm0, qword ptr [rbp - 24] ## xmm0 = mem[0],zero
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI2_0:
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
	sub	rsp, 48
	movsd	xmm0, qword ptr [rip + LCPI2_0] ## xmm0 = mem[0],zero
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	movsd	qword ptr [rbp - 32], xmm0
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rbp - 20]
	mov	al, 0
	call	_scanf
	cmp	eax, 1
	jne	LBB2_3
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	esi, dword ptr [rbp - 20]
	mov	edi, dword ptr [rbp - 20]
	movsd	xmm0, qword ptr [rbp - 32] ## xmm0 = mem[0],zero
	mov	dword ptr [rbp - 36], esi ## 4-byte Spill
	call	_squareroot
	lea	rdi, [rip + L_.str.1]
	mov	esi, dword ptr [rbp - 36] ## 4-byte Reload
	mov	al, 1
	call	_printf
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	jmp	LBB2_1
LBB2_3:
	xor	eax, eax
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d"

L_.str.1:                               ## @.str.1
	.asciz	"%d\345\271\263\346\226\271\346\240\271=%f\n"


.subsections_via_symbols
