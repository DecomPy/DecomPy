	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ft_strcmp              ## -- Begin function ft_strcmp
	.p2align	4, 0x90
_ft_strcmp:                             ## @ft_strcmp
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
	add	rcx, 1
	mov	qword ptr [rbp - 16], rcx
	movsx	edx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 24]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 24], rcx
	movsx	esi, byte ptr [rax]
	cmp	edx, esi
	jne	LBB0_6
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	LBB0_5
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 24]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	LBB0_5
## %bb.4:
	mov	dword ptr [rbp - 4], 0
	jmp	LBB0_7
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_1
LBB0_6:
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 16], rcx
	movsx	edx, byte ptr [rax - 1]
	mov	rax, qword ptr [rbp - 24]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 24], rcx
	movsx	esi, byte ptr [rax - 1]
	sub	edx, esi
	mov	dword ptr [rbp - 4], edx
LBB0_7:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
