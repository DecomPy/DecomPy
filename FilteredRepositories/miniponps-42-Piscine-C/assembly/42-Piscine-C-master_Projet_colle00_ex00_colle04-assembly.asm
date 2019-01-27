	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_midline                ## -- Begin function midline
	.p2align	4, 0x90
_midline:                               ## @midline
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	cmp	dword ptr [rbp - 4], 1
	je	LBB0_2
## %bb.1:
	mov	eax, dword ptr [rbp - 4]
	cmp	eax, dword ptr [rbp - 8]
	jne	LBB0_3
LBB0_2:
	mov	edi, 66
	call	_ft_putchar
	jmp	LBB0_4
LBB0_3:
	mov	edi, 32
	call	_ft_putchar
LBB0_4:
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_lastline               ## -- Begin function lastline
	.p2align	4, 0x90
_lastline:                              ## @lastline
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	cmp	dword ptr [rbp - 4], 1
	jne	LBB1_2
## %bb.1:
	mov	edi, 67
	call	_ft_putchar
	jmp	LBB1_6
LBB1_2:
	mov	eax, dword ptr [rbp - 4]
	cmp	eax, dword ptr [rbp - 8]
	jne	LBB1_4
## %bb.3:
	mov	edi, 65
	call	_ft_putchar
	jmp	LBB1_5
LBB1_4:
	mov	edi, 66
	call	_ft_putchar
LBB1_5:
	jmp	LBB1_6
LBB1_6:
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_firstline              ## -- Begin function firstline
	.p2align	4, 0x90
_firstline:                             ## @firstline
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	cmp	dword ptr [rbp - 4], 1
	jne	LBB2_2
## %bb.1:
	mov	edi, 65
	call	_ft_putchar
	jmp	LBB2_6
LBB2_2:
	mov	eax, dword ptr [rbp - 4]
	cmp	eax, dword ptr [rbp - 8]
	jne	LBB2_4
## %bb.3:
	mov	edi, 67
	call	_ft_putchar
	jmp	LBB2_5
LBB2_4:
	mov	edi, 66
	call	_ft_putchar
LBB2_5:
	jmp	LBB2_6
LBB2_6:
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_colle                  ## -- Begin function colle
	.p2align	4, 0x90
_colle:                                 ## @colle
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 16], 1
LBB3_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_3 Depth 2
	mov	eax, dword ptr [rbp - 16]
	cmp	eax, dword ptr [rbp - 8]
	jg	LBB3_12
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	mov	dword ptr [rbp - 12], 1
LBB3_3:                                 ##   Parent Loop BB3_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	eax, dword ptr [rbp - 12]
	cmp	eax, dword ptr [rbp - 4]
	jg	LBB3_11
## %bb.4:                               ##   in Loop: Header=BB3_3 Depth=2
	cmp	dword ptr [rbp - 16], 1
	jne	LBB3_6
## %bb.5:                               ##   in Loop: Header=BB3_3 Depth=2
	mov	edi, dword ptr [rbp - 12]
	mov	esi, dword ptr [rbp - 4]
	call	_firstline
	jmp	LBB3_10
LBB3_6:                                 ##   in Loop: Header=BB3_3 Depth=2
	mov	eax, dword ptr [rbp - 16]
	cmp	eax, dword ptr [rbp - 8]
	jne	LBB3_8
## %bb.7:                               ##   in Loop: Header=BB3_3 Depth=2
	mov	edi, dword ptr [rbp - 12]
	mov	esi, dword ptr [rbp - 4]
	call	_lastline
	jmp	LBB3_9
LBB3_8:                                 ##   in Loop: Header=BB3_3 Depth=2
	mov	edi, dword ptr [rbp - 12]
	mov	esi, dword ptr [rbp - 4]
	call	_midline
LBB3_9:                                 ##   in Loop: Header=BB3_3 Depth=2
	jmp	LBB3_10
LBB3_10:                                ##   in Loop: Header=BB3_3 Depth=2
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	LBB3_3
LBB3_11:                                ##   in Loop: Header=BB3_1 Depth=1
	mov	edi, 10
	call	_ft_putchar
	mov	edi, dword ptr [rbp - 16]
	add	edi, 1
	mov	dword ptr [rbp - 16], edi
	jmp	LBB3_1
LBB3_12:
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
