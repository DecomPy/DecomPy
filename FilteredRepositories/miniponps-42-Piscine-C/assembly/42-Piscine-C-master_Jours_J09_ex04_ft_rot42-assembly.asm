	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ft_rot42               ## -- Begin function ft_rot42
	.p2align	4, 0x90
_ft_rot42:                              ## @ft_rot42
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], 0
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 12]
	movsx	edx, byte ptr [rax + rcx]
	cmp	edx, 0
	je	LBB0_17
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	dword ptr [rbp - 16], 0
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	dword ptr [rbp - 16], 16
	jge	LBB0_16
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 12]
	mov	dl, byte ptr [rax + rcx]
	mov	byte ptr [rbp - 17], dl
	movsx	esi, byte ptr [rbp - 17]
	cmp	esi, 97
	jl	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=2
	movsx	eax, byte ptr [rbp - 17]
	cmp	eax, 122
	jle	LBB0_8
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=2
	movsx	eax, byte ptr [rbp - 17]
	cmp	eax, 65
	jl	LBB0_15
## %bb.7:                               ##   in Loop: Header=BB0_3 Depth=2
	movsx	eax, byte ptr [rbp - 17]
	cmp	eax, 90
	jg	LBB0_15
LBB0_8:                                 ##   in Loop: Header=BB0_3 Depth=2
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 12]
	movsx	edx, byte ptr [rax + rcx]
	cmp	edx, 122
	jne	LBB0_10
## %bb.9:                               ##   in Loop: Header=BB0_3 Depth=2
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 12]
	mov	byte ptr [rax + rcx], 97
	jmp	LBB0_14
LBB0_10:                                ##   in Loop: Header=BB0_3 Depth=2
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 12]
	movsx	edx, byte ptr [rax + rcx]
	cmp	edx, 90
	jne	LBB0_12
## %bb.11:                              ##   in Loop: Header=BB0_3 Depth=2
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 12]
	mov	byte ptr [rax + rcx], 65
	jmp	LBB0_13
LBB0_12:                                ##   in Loop: Header=BB0_3 Depth=2
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 12]
	mov	dl, byte ptr [rax + rcx]
	add	dl, 1
	mov	byte ptr [rax + rcx], dl
LBB0_13:                                ##   in Loop: Header=BB0_3 Depth=2
	jmp	LBB0_14
LBB0_14:                                ##   in Loop: Header=BB0_3 Depth=2
	jmp	LBB0_15
LBB0_15:                                ##   in Loop: Header=BB0_3 Depth=2
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB0_3
LBB0_16:                                ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	LBB0_1
LBB0_17:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
