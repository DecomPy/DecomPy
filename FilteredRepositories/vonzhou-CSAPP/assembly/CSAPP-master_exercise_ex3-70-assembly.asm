	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_traverse               ## -- Begin function traverse
	.p2align	4, 0x90
_traverse:                              ## @traverse
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	qword ptr [rbp - 16], rdi
	cmp	qword ptr [rbp - 16], 0
	jne	LBB0_2
## %bb.1:
	mov	qword ptr [rbp - 8], -1
	jmp	LBB0_7
LBB0_2:
	mov	rax, qword ptr [rbp - 16]
	mov	rax, qword ptr [rax + 16]
	mov	qword ptr [rbp - 24], rax
	mov	rax, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rax]
	call	_traverse
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rax + 8]
	call	_traverse
	mov	qword ptr [rbp - 40], rax
	mov	rax, qword ptr [rbp - 40]
	cmp	rax, qword ptr [rbp - 32]
	jle	LBB0_4
## %bb.3:
	mov	rax, qword ptr [rbp - 32]
	mov	qword ptr [rbp - 40], rax
LBB0_4:
	mov	rax, qword ptr [rbp - 24]
	cmp	rax, qword ptr [rbp - 40]
	jle	LBB0_6
## %bb.5:
	mov	rax, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 24], rax
LBB0_6:
	mov	rax, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 8], rax
LBB0_7:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
