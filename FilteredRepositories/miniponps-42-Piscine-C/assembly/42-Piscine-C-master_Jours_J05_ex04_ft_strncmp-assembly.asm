	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ft_strncmp             ## -- Begin function ft_strncmp
	.p2align	4, 0x90
_ft_strncmp:                            ## @ft_strncmp
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	dword ptr [rbp - 28], edx
	mov	dword ptr [rbp - 32], 1
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
	jne	LBB0_8
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 32]
	cmp	eax, dword ptr [rbp - 28]
	jb	LBB0_4
## %bb.3:
	mov	dword ptr [rbp - 4], 0
	jmp	LBB0_9
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	LBB0_7
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 24]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	LBB0_7
## %bb.6:
	mov	dword ptr [rbp - 4], 0
	jmp	LBB0_9
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 32]
	add	eax, 1
	mov	dword ptr [rbp - 32], eax
	jmp	LBB0_1
LBB0_8:
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
LBB0_9:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
