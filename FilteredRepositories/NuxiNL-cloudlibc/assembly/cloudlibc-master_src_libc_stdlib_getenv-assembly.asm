	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_getenv                 ## -- Begin function getenv
	.p2align	4, 0x90
_getenv:                                ## @getenv
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	rax, qword ptr [rip + _environ@GOTPCREL]
	mov	qword ptr [rbp - 16], rdi
	mov	rdi, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 40], rax ## 8-byte Spill
	call	_strlen
	mov	qword ptr [rbp - 24], rax
	mov	rax, qword ptr [rbp - 40] ## 8-byte Reload
	mov	rdi, qword ptr [rax]
	mov	qword ptr [rbp - 32], rdi
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 32]
	cmp	qword ptr [rax], 0
	je	LBB0_7
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 32]
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 16]
	mov	rdx, qword ptr [rbp - 24]
	call	_memcmp
	cmp	eax, 0
	jne	LBB0_5
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 32]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 24]
	movsx	edx, byte ptr [rax + rcx]
	cmp	edx, 61
	jne	LBB0_5
## %bb.4:
	mov	rax, qword ptr [rbp - 32]
	mov	rax, qword ptr [rax]
	add	rax, qword ptr [rbp - 24]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	LBB0_8
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_6
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 32]
	add	rax, 8
	mov	qword ptr [rbp - 32], rax
	jmp	LBB0_1
LBB0_7:
	mov	qword ptr [rbp - 8], 0
LBB0_8:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
