	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ft_atoi                ## -- Begin function ft_atoi
	.p2align	4, 0x90
_ft_atoi:                               ## @ft_atoi
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], 0
	mov	dword ptr [rbp - 16], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 32
	jne	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	LBB0_1
LBB0_3:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 43
	jne	LBB0_5
## %bb.4:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	LBB0_8
LBB0_5:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 45
	jne	LBB0_7
## %bb.6:
	mov	dword ptr [rbp - 12], 1
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
LBB0_7:
	jmp	LBB0_8
LBB0_8:
	jmp	LBB0_9
LBB0_9:                                 ## =>This Inner Loop Header: Depth=1
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 57
	mov	byte ptr [rbp - 17], cl ## 1-byte Spill
	jg	LBB0_11
## %bb.10:                              ##   in Loop: Header=BB0_9 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 48
	setge	dl
	mov	byte ptr [rbp - 17], dl ## 1-byte Spill
LBB0_11:                                ##   in Loop: Header=BB0_9 Depth=1
	mov	al, byte ptr [rbp - 17] ## 1-byte Reload
	test	al, 1
	jne	LBB0_12
	jmp	LBB0_13
LBB0_12:                                ##   in Loop: Header=BB0_9 Depth=1
	imul	eax, dword ptr [rbp - 16], 10
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx]
	sub	edx, 48
	sub	eax, edx
	mov	dword ptr [rbp - 16], eax
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	jmp	LBB0_9
LBB0_13:
	cmp	dword ptr [rbp - 12], 0
	jne	LBB0_15
## %bb.14:
	xor	eax, eax
	sub	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 16], eax
LBB0_15:
	mov	eax, dword ptr [rbp - 16]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
