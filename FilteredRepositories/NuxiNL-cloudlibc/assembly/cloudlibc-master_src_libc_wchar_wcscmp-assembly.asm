	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_wcscmp                 ## -- Begin function wcscmp
	.p2align	4, 0x90
_wcscmp:                                ## @wcscmp
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, rax
	add	rcx, 4
	mov	qword ptr [rbp - 16], rcx
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 28], edx
	mov	rax, qword ptr [rbp - 24]
	mov	rcx, rax
	add	rcx, 4
	mov	qword ptr [rbp - 24], rcx
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 32], edx
	mov	edx, dword ptr [rbp - 28]
	cmp	edx, dword ptr [rbp - 32]
	jge	LBB0_3
## %bb.2:
	mov	dword ptr [rbp - 4], -1
	jmp	LBB0_8
LBB0_3:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 28]
	cmp	eax, dword ptr [rbp - 32]
	jle	LBB0_5
## %bb.4:
	mov	dword ptr [rbp - 4], 1
	jmp	LBB0_8
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	cmp	dword ptr [rbp - 28], 0
	jne	LBB0_7
## %bb.6:
	mov	dword ptr [rbp - 4], 0
	jmp	LBB0_8
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_1
LBB0_8:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
