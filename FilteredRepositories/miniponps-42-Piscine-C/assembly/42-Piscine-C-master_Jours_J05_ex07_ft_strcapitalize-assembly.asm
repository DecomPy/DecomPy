	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ft_strcapitalize       ## -- Begin function ft_strcapitalize
	.p2align	4, 0x90
_ft_strcapitalize:                      ## @ft_strcapitalize
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 12]
	movsx	edx, byte ptr [rax + rcx]
	cmp	edx, 0
	je	LBB0_22
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	dword ptr [rbp - 20], 1
	cmp	dword ptr [rbp - 12], 0
	jne	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	byte ptr [rbp - 13], 59
	jmp	LBB0_5
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 12]
	sub	ecx, 1
	movsxd	rdx, ecx
	mov	sil, byte ptr [rax + rdx]
	mov	byte ptr [rbp - 13], sil
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	movsx	eax, byte ptr [rbp - 13]
	cmp	eax, 65
	jl	LBB0_7
## %bb.6:                               ##   in Loop: Header=BB0_1 Depth=1
	movsx	eax, byte ptr [rbp - 13]
	cmp	eax, 90
	jle	LBB0_9
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	movsx	eax, byte ptr [rbp - 13]
	cmp	eax, 97
	jl	LBB0_10
## %bb.8:                               ##   in Loop: Header=BB0_1 Depth=1
	movsx	eax, byte ptr [rbp - 13]
	cmp	eax, 122
	jg	LBB0_10
LBB0_9:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	dword ptr [rbp - 20], 0
LBB0_10:                                ##   in Loop: Header=BB0_1 Depth=1
	movsx	eax, byte ptr [rbp - 13]
	cmp	eax, 48
	jl	LBB0_13
## %bb.11:                              ##   in Loop: Header=BB0_1 Depth=1
	movsx	eax, byte ptr [rbp - 13]
	cmp	eax, 57
	jg	LBB0_13
## %bb.12:                              ##   in Loop: Header=BB0_1 Depth=1
	mov	dword ptr [rbp - 20], 0
LBB0_13:                                ##   in Loop: Header=BB0_1 Depth=1
	cmp	dword ptr [rbp - 20], 1
	jne	LBB0_17
## %bb.14:                              ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 12]
	movsx	edx, byte ptr [rax + rcx]
	cmp	edx, 97
	jl	LBB0_17
## %bb.15:                              ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 12]
	movsx	edx, byte ptr [rax + rcx]
	cmp	edx, 122
	jg	LBB0_17
## %bb.16:                              ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 12]
	movsx	edx, byte ptr [rax + rcx]
	sub	edx, 32
	mov	sil, dl
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 12]
	mov	byte ptr [rax + rcx], sil
LBB0_17:                                ##   in Loop: Header=BB0_1 Depth=1
	cmp	dword ptr [rbp - 20], 0
	jne	LBB0_21
## %bb.18:                              ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 12]
	movsx	edx, byte ptr [rax + rcx]
	cmp	edx, 65
	jl	LBB0_21
## %bb.19:                              ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 12]
	movsx	edx, byte ptr [rax + rcx]
	cmp	edx, 90
	jg	LBB0_21
## %bb.20:                              ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 12]
	movsx	edx, byte ptr [rax + rcx]
	add	edx, 32
	mov	sil, dl
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 12]
	mov	byte ptr [rax + rcx], sil
LBB0_21:                                ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	LBB0_1
LBB0_22:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
