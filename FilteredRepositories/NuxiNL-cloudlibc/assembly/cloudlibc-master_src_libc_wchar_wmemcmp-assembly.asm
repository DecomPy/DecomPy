	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_wmemcmp                ## -- Begin function wmemcmp
	.p2align	4, 0x90
_wmemcmp:                               ## @wmemcmp
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
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 32]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 32], rcx
	cmp	rax, 0
	jbe	LBB0_7
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 24]
	cmp	ecx, dword ptr [rax]
	jge	LBB0_4
## %bb.3:
	mov	dword ptr [rbp - 4], -1
	jmp	LBB0_8
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 24]
	cmp	ecx, dword ptr [rax]
	jle	LBB0_6
## %bb.5:
	mov	dword ptr [rbp - 4], 1
	jmp	LBB0_8
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	add	rax, 4
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 24]
	add	rax, 4
	mov	qword ptr [rbp - 24], rax
	jmp	LBB0_1
LBB0_7:
	mov	dword ptr [rbp - 4], 0
LBB0_8:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
