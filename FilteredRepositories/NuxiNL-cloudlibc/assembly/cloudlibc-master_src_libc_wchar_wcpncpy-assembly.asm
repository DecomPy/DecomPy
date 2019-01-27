	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_wcpncpy                ## -- Begin function wcpncpy
	.p2align	4, 0x90
_wcpncpy:                               ## @wcpncpy
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 24], 0
	mov	byte ptr [rbp - 33], cl ## 1-byte Spill
	jbe	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	cmp	dword ptr [rax], 0
	setne	cl
	mov	byte ptr [rbp - 33], cl ## 1-byte Spill
LBB0_3:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	al, byte ptr [rbp - 33] ## 1-byte Reload
	test	al, 1
	jne	LBB0_4
	jmp	LBB0_5
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, rax
	add	rcx, 4
	mov	qword ptr [rbp - 16], rcx
	mov	edx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 4
	mov	qword ptr [rbp - 8], rcx
	mov	dword ptr [rax], edx
	mov	rax, qword ptr [rbp - 24]
	add	rax, -1
	mov	qword ptr [rbp - 24], rax
	jmp	LBB0_1
LBB0_5:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 32], rax
LBB0_6:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 24]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 24], rcx
	cmp	rax, 0
	jbe	LBB0_8
## %bb.7:                               ##   in Loop: Header=BB0_6 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 4
	mov	qword ptr [rbp - 8], rcx
	mov	dword ptr [rax], 0
	jmp	LBB0_6
LBB0_8:
	mov	rax, qword ptr [rbp - 32]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
