	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_wcsnlen                ## -- Begin function wcsnlen
	.p2align	4, 0x90
_wcsnlen:                               ## @wcsnlen
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rsi
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 16]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 16], rsi
	cmp	rdx, 0
	mov	byte ptr [rbp - 25], cl ## 1-byte Spill
	jbe	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 24]
	cmp	dword ptr [rax], 0
	setne	cl
	mov	byte ptr [rbp - 25], cl ## 1-byte Spill
LBB0_3:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	al, byte ptr [rbp - 25] ## 1-byte Reload
	test	al, 1
	jne	LBB0_4
	jmp	LBB0_5
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 24]
	add	rax, 4
	mov	qword ptr [rbp - 24], rax
	jmp	LBB0_1
LBB0_5:
	mov	rax, qword ptr [rbp - 24]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	sar	rax, 2
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
