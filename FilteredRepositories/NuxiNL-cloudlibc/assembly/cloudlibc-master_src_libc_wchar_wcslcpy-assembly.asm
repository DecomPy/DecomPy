	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_wcslcpy                ## -- Begin function wcslcpy
	.p2align	4, 0x90
_wcslcpy:                               ## @wcslcpy
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	qword ptr [rbp - 32], rdx
	mov	rdx, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 40], rdx
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rbp - 32], 1
	jbe	LBB0_5
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 16]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 24]
	cmp	dword ptr [rax], 0
	jne	LBB0_4
## %bb.3:
	mov	rax, qword ptr [rbp - 24]
	mov	rcx, qword ptr [rbp - 40]
	sub	rax, rcx
	sar	rax, 2
	mov	qword ptr [rbp - 8], rax
	jmp	LBB0_11
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	add	rax, 4
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 24]
	add	rax, 4
	mov	qword ptr [rbp - 24], rax
	mov	rax, qword ptr [rbp - 32]
	add	rax, -1
	mov	qword ptr [rbp - 32], rax
	jmp	LBB0_1
LBB0_5:
	cmp	qword ptr [rbp - 32], 0
	jbe	LBB0_7
## %bb.6:
	mov	rax, qword ptr [rbp - 16]
	mov	dword ptr [rax], 0
LBB0_7:
	jmp	LBB0_8
LBB0_8:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 24]
	cmp	dword ptr [rax], 0
	je	LBB0_10
## %bb.9:                               ##   in Loop: Header=BB0_8 Depth=1
	mov	rax, qword ptr [rbp - 24]
	add	rax, 4
	mov	qword ptr [rbp - 24], rax
	jmp	LBB0_8
LBB0_10:
	mov	rax, qword ptr [rbp - 24]
	mov	rcx, qword ptr [rbp - 40]
	sub	rax, rcx
	sar	rax, 2
	mov	qword ptr [rbp - 8], rax
LBB0_11:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
