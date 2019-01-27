	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_wcsncat                ## -- Begin function wcsncat
	.p2align	4, 0x90
_wcsncat:                               ## @wcsncat
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
	cmp	qword ptr [rbp - 24], 0
	jbe	LBB0_10
## %bb.1:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 32], rax
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 32]
	cmp	dword ptr [rax], 0
	je	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_2 Depth=1
	mov	rax, qword ptr [rbp - 32]
	add	rax, 4
	mov	qword ptr [rbp - 32], rax
	jmp	LBB0_2
LBB0_4:
	jmp	LBB0_5
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 16]
	cmp	dword ptr [rax], 0
	jne	LBB0_7
## %bb.6:
	jmp	LBB0_9
LBB0_7:                                 ##   in Loop: Header=BB0_5 Depth=1
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, rax
	add	rcx, 4
	mov	qword ptr [rbp - 16], rcx
	mov	edx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 32]
	mov	rcx, rax
	add	rcx, 4
	mov	qword ptr [rbp - 32], rcx
	mov	dword ptr [rax], edx
## %bb.8:                               ##   in Loop: Header=BB0_5 Depth=1
	mov	rax, qword ptr [rbp - 24]
	add	rax, -1
	mov	qword ptr [rbp - 24], rax
	cmp	rax, 0
	ja	LBB0_5
LBB0_9:
	mov	rax, qword ptr [rbp - 32]
	mov	dword ptr [rax], 0
LBB0_10:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
