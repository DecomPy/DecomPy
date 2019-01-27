	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ft_str_is_alpha        ## -- Begin function ft_str_is_alpha
	.p2align	4, 0x90
_ft_str_is_alpha:                       ## @ft_str_is_alpha
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	dword ptr [rbp - 20], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	movsx	edx, byte ptr [rax + rcx]
	cmp	edx, 0
	je	LBB0_8
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	dl, byte ptr [rax + rcx]
	mov	byte ptr [rbp - 21], dl
	movsx	esi, byte ptr [rbp - 21]
	cmp	esi, 65
	jl	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movsx	eax, byte ptr [rbp - 21]
	cmp	eax, 90
	jle	LBB0_7
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	movsx	eax, byte ptr [rbp - 21]
	cmp	eax, 97
	jl	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	movsx	eax, byte ptr [rbp - 21]
	cmp	eax, 122
	jle	LBB0_7
LBB0_6:
	mov	dword ptr [rbp - 4], 0
	jmp	LBB0_9
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB0_1
LBB0_8:
	mov	dword ptr [rbp - 4], 1
LBB0_9:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
