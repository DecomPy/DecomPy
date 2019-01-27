	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_check_line             ## -- Begin function check_line
	.p2align	4, 0x90
_check_line:                            ## @check_line
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	al, sil
	mov	qword ptr [rbp - 16], rdi
	mov	byte ptr [rbp - 17], al
	mov	dword ptr [rbp - 24], edx
	mov	dword ptr [rbp - 28], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 28], 9
	jge	LBB0_5
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 24]
	mov	rax, qword ptr [rax + 8*rcx]
	movsxd	rcx, dword ptr [rbp - 28]
	movsx	edx, byte ptr [rax + rcx]
	movsx	esi, byte ptr [rbp - 17]
	cmp	edx, esi
	jne	LBB0_4
## %bb.3:
	mov	dword ptr [rbp - 4], 0
	jmp	LBB0_6
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	dword ptr [rbp - 28], eax
	jmp	LBB0_1
LBB0_5:
	mov	dword ptr [rbp - 4], 1
LBB0_6:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_check_column           ## -- Begin function check_column
	.p2align	4, 0x90
_check_column:                          ## @check_column
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	al, sil
	mov	qword ptr [rbp - 16], rdi
	mov	byte ptr [rbp - 17], al
	mov	dword ptr [rbp - 24], edx
	mov	dword ptr [rbp - 28], 1
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 28], 9
	jg	LBB1_5
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 28]
	mov	rax, qword ptr [rax + 8*rcx]
	movsxd	rcx, dword ptr [rbp - 24]
	movsx	edx, byte ptr [rax + rcx]
	movsx	esi, byte ptr [rbp - 17]
	cmp	edx, esi
	jne	LBB1_4
## %bb.3:
	mov	dword ptr [rbp - 4], 0
	jmp	LBB1_6
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	dword ptr [rbp - 28], eax
	jmp	LBB1_1
LBB1_5:
	mov	dword ptr [rbp - 4], 1
LBB1_6:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_check_block            ## -- Begin function check_block
	.p2align	4, 0x90
_check_block:                           ## @check_block
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	al, cl
	mov	qword ptr [rbp - 16], rdi
	mov	dword ptr [rbp - 20], esi
	mov	dword ptr [rbp - 24], edx
	mov	byte ptr [rbp - 25], al
	mov	dword ptr [rbp - 32], -1
	cmp	dword ptr [rbp - 20], 3
	jg	LBB2_2
## %bb.1:
	mov	dword ptr [rbp - 20], 1
	jmp	LBB2_8
LBB2_2:
	cmp	dword ptr [rbp - 20], 6
	jg	LBB2_4
## %bb.3:
	mov	dword ptr [rbp - 20], 4
	jmp	LBB2_7
LBB2_4:
	cmp	dword ptr [rbp - 20], 9
	jg	LBB2_6
## %bb.5:
	mov	dword ptr [rbp - 20], 7
LBB2_6:
	jmp	LBB2_7
LBB2_7:
	jmp	LBB2_8
LBB2_8:
	mov	eax, dword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 24]
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	mov	eax, ecx
	cdq
	mov	ecx, 3
	idiv	ecx
	mov	ecx, dword ptr [rbp - 40] ## 4-byte Reload
	sub	ecx, edx
	mov	dword ptr [rbp - 24], ecx
LBB2_9:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_11 Depth 2
	mov	eax, dword ptr [rbp - 32]
	add	eax, 1
	mov	dword ptr [rbp - 32], eax
	cmp	eax, 3
	jge	LBB2_16
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	mov	dword ptr [rbp - 36], -1
LBB2_11:                                ##   Parent Loop BB2_9 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	eax, dword ptr [rbp - 36]
	add	eax, 1
	mov	dword ptr [rbp - 36], eax
	cmp	eax, 3
	jge	LBB2_15
## %bb.12:                              ##   in Loop: Header=BB2_11 Depth=2
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	rax, qword ptr [rax + 8*rcx]
	movsxd	rcx, dword ptr [rbp - 24]
	movsx	edx, byte ptr [rax + rcx]
	movsx	esi, byte ptr [rbp - 25]
	cmp	edx, esi
	jne	LBB2_14
## %bb.13:
	mov	dword ptr [rbp - 4], 0
	jmp	LBB2_17
LBB2_14:                                ##   in Loop: Header=BB2_11 Depth=2
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB2_11
LBB2_15:                                ##   in Loop: Header=BB2_9 Depth=1
	mov	eax, dword ptr [rbp - 24]
	sub	eax, 3
	mov	dword ptr [rbp - 24], eax
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB2_9
LBB2_16:
	mov	dword ptr [rbp - 4], 1
LBB2_17:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_check_grille           ## -- Begin function check_grille
	.p2align	4, 0x90
_check_grille:                          ## @check_grille
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	dword ptr [rbp - 20], esi
	mov	dword ptr [rbp - 24], 0
	cmp	dword ptr [rbp - 20], 10
	jne	LBB3_14
## %bb.1:
	jmp	LBB3_2
LBB3_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_4 Depth 2
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	cmp	eax, 9
	jg	LBB3_13
## %bb.3:                               ##   in Loop: Header=BB3_2 Depth=1
	mov	dword ptr [rbp - 28], 0
LBB3_4:                                 ##   Parent Loop BB3_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 24]
	mov	rax, qword ptr [rax + 8*rcx]
	movsxd	rcx, dword ptr [rbp - 28]
	cmp	byte ptr [rax + rcx], 0
	je	LBB3_10
## %bb.5:                               ##   in Loop: Header=BB3_4 Depth=2
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 24]
	mov	rax, qword ptr [rax + 8*rcx]
	movsxd	rcx, dword ptr [rbp - 28]
	movsx	edx, byte ptr [rax + rcx]
	cmp	edx, 48
	jl	LBB3_7
## %bb.6:                               ##   in Loop: Header=BB3_4 Depth=2
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 24]
	mov	rax, qword ptr [rax + 8*rcx]
	movsxd	rcx, dword ptr [rbp - 28]
	movsx	edx, byte ptr [rax + rcx]
	cmp	edx, 57
	jle	LBB3_9
LBB3_7:                                 ##   in Loop: Header=BB3_4 Depth=2
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 24]
	mov	rax, qword ptr [rax + 8*rcx]
	movsxd	rcx, dword ptr [rbp - 28]
	movsx	edx, byte ptr [rax + rcx]
	cmp	edx, 46
	je	LBB3_9
## %bb.8:
	mov	dword ptr [rbp - 4], 0
	jmp	LBB3_15
LBB3_9:                                 ##   in Loop: Header=BB3_4 Depth=2
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	dword ptr [rbp - 28], eax
	jmp	LBB3_4
LBB3_10:                                ##   in Loop: Header=BB3_2 Depth=1
	cmp	dword ptr [rbp - 28], 9
	je	LBB3_12
## %bb.11:
	mov	dword ptr [rbp - 4], 0
	jmp	LBB3_15
LBB3_12:                                ##   in Loop: Header=BB3_2 Depth=1
	jmp	LBB3_2
LBB3_13:
	mov	dword ptr [rbp - 4], 1
	jmp	LBB3_15
LBB3_14:
	mov	dword ptr [rbp - 4], 0
LBB3_15:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
