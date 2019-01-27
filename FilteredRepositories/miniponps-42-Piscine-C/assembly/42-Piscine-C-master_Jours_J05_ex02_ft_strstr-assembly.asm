	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ft_strstr              ## -- Begin function ft_strstr
	.p2align	4, 0x90
_ft_strstr:                             ## @ft_strstr
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	qword ptr [rbp - 40], 0
	mov	rsi, qword ptr [rbp - 24]
	movsx	eax, byte ptr [rsi]
	cmp	eax, 0
	jne	LBB0_2
## %bb.1:
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 8], rax
	jmp	LBB0_13
LBB0_2:
	mov	dword ptr [rbp - 28], 0
LBB0_3:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_6 Depth 2
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 28]
	movsx	edx, byte ptr [rax + rcx]
	cmp	edx, 0
	je	LBB0_12
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 28]
	movsx	edx, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 24]
	movsx	esi, byte ptr [rax]
	cmp	edx, esi
	jne	LBB0_11
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 28]
	add	rax, rcx
	mov	qword ptr [rbp - 40], rax
	mov	dword ptr [rbp - 32], 0
LBB0_6:                                 ##   Parent Loop BB0_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	rax, qword ptr [rbp - 16]
	mov	ecx, dword ptr [rbp - 28]
	add	ecx, dword ptr [rbp - 32]
	movsxd	rdx, ecx
	movsx	ecx, byte ptr [rax + rdx]
	mov	rax, qword ptr [rbp - 24]
	movsxd	rdx, dword ptr [rbp - 32]
	movsx	esi, byte ptr [rax + rdx]
	cmp	ecx, esi
	jne	LBB0_10
## %bb.7:                               ##   in Loop: Header=BB0_6 Depth=2
	mov	rax, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 32]
	add	ecx, 1
	movsxd	rdx, ecx
	movsx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 0
	jne	LBB0_9
## %bb.8:
	mov	rax, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 8], rax
	jmp	LBB0_13
LBB0_9:                                 ##   in Loop: Header=BB0_6 Depth=2
	mov	eax, dword ptr [rbp - 32]
	add	eax, 1
	mov	dword ptr [rbp - 32], eax
	jmp	LBB0_6
LBB0_10:                                ##   in Loop: Header=BB0_3 Depth=1
	mov	qword ptr [rbp - 40], 0
LBB0_11:                                ##   in Loop: Header=BB0_3 Depth=1
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	dword ptr [rbp - 28], eax
	jmp	LBB0_3
LBB0_12:
	mov	qword ptr [rbp - 8], 0
LBB0_13:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
