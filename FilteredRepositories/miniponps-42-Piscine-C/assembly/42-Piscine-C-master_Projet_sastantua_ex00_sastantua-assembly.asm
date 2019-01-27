	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_build_line             ## -- Begin function build_line
	.p2align	4, 0x90
_build_line:                            ## @build_line
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 12], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 12]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [rbp - 12], ecx
	cmp	eax, dword ptr [rbp - 4]
	jge	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	edi, 32
	call	_ft_putchar
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	jmp	LBB0_1
LBB0_3:
	mov	dword ptr [rbp - 12], 0
	mov	edi, 47
	call	_ft_putchar
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 12]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [rbp - 12], ecx
	cmp	eax, dword ptr [rbp - 8]
	jge	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_4 Depth=1
	mov	edi, 42
	call	_ft_putchar
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	jmp	LBB0_4
LBB0_6:
	mov	edi, 92
	call	_ft_putchar
	mov	edi, 10
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	call	_ft_putchar
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_build_line_door        ## -- Begin function build_line_door
	.p2align	4, 0x90
_build_line_door:                       ## @build_line_door
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 64
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 12], edx
	mov	dword ptr [rbp - 16], 0
	mov	edx, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 20], edx
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 16]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [rbp - 16], ecx
	cmp	eax, dword ptr [rbp - 4]
	jge	LBB1_3
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	edi, 32
	call	_ft_putchar
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	jmp	LBB1_1
LBB1_3:
	mov	dword ptr [rbp - 16], 0
	mov	edi, 47
	call	_ft_putchar
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
LBB1_4:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 16]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [rbp - 16], ecx
	cmp	eax, dword ptr [rbp - 8]
	jge	LBB1_6
## %bb.5:                               ##   in Loop: Header=BB1_4 Depth=1
	mov	edi, 42
	call	_ft_putchar
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	jmp	LBB1_4
LBB1_6:
	mov	dword ptr [rbp - 16], 0
LBB1_7:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 20]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 20], ecx
	cmp	eax, 0
	je	LBB1_14
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=1
	cmp	dword ptr [rbp - 20], 1
	jne	LBB1_12
## %bb.9:                               ##   in Loop: Header=BB1_7 Depth=1
	mov	eax, dword ptr [rbp - 12]
	cdq
	mov	ecx, 2
	idiv	ecx
	cmp	eax, dword ptr [rbp - 4]
	jne	LBB1_12
## %bb.10:                              ##   in Loop: Header=BB1_7 Depth=1
	cmp	dword ptr [rbp - 12], 3
	jle	LBB1_12
## %bb.11:                              ##   in Loop: Header=BB1_7 Depth=1
	mov	edi, 36
	call	_ft_putchar
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	jmp	LBB1_13
LBB1_12:                                ##   in Loop: Header=BB1_7 Depth=1
	mov	edi, 124
	call	_ft_putchar
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
LBB1_13:                                ##   in Loop: Header=BB1_7 Depth=1
	jmp	LBB1_7
LBB1_14:
	jmp	LBB1_15
LBB1_15:                                ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 16]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [rbp - 16], ecx
	cmp	eax, dword ptr [rbp - 8]
	jge	LBB1_17
## %bb.16:                              ##   in Loop: Header=BB1_15 Depth=1
	mov	edi, 42
	call	_ft_putchar
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	jmp	LBB1_15
LBB1_17:
	mov	edi, 92
	call	_ft_putchar
	mov	edi, 10
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
	call	_ft_putchar
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	add	rsp, 64
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_build_sastantua        ## -- Begin function build_sastantua
	.p2align	4, 0x90
_build_sastantua:                       ## @build_sastantua
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 12], edx
	mov	dword ptr [rbp - 16], 0
	mov	dword ptr [rbp - 24], -1
	mov	dword ptr [rbp - 28], 2
LBB2_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_3 Depth 2
	mov	eax, dword ptr [rbp - 16]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [rbp - 16], ecx
	cmp	eax, dword ptr [rbp - 8]
	jge	LBB2_13
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	dword ptr [rbp - 20], 1
LBB2_3:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	eax, dword ptr [rbp - 20]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [rbp - 20], ecx
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 2
	cmp	eax, ecx
	jg	LBB2_9
## %bb.4:                               ##   in Loop: Header=BB2_3 Depth=2
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	mov	eax, dword ptr [rbp - 4]
	cdq
	mov	ecx, 2
	idiv	ecx
	sub	eax, dword ptr [rbp - 24]
	sub	eax, 1
	mov	dword ptr [rbp - 32], eax
	mov	eax, dword ptr [rbp - 16]
	cmp	eax, dword ptr [rbp - 8]
	jne	LBB2_7
## %bb.5:                               ##   in Loop: Header=BB2_3 Depth=2
	mov	eax, dword ptr [rbp - 20]
	mov	ecx, dword ptr [rbp - 8]
	add	ecx, 3
	sub	ecx, dword ptr [rbp - 12]
	cmp	eax, ecx
	jle	LBB2_7
## %bb.6:                               ##   in Loop: Header=BB2_3 Depth=2
	mov	edi, dword ptr [rbp - 32]
	mov	eax, dword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	mov	eax, ecx
	cdq
	mov	ecx, 2
	idiv	ecx
	mov	ecx, dword ptr [rbp - 36] ## 4-byte Reload
	sub	ecx, eax
	mov	eax, dword ptr [rbp - 12]
	mov	esi, ecx
	mov	edx, eax
	call	_build_line_door
	jmp	LBB2_8
LBB2_7:                                 ##   in Loop: Header=BB2_3 Depth=2
	mov	edi, dword ptr [rbp - 32]
	mov	eax, dword ptr [rbp - 24]
	shl	eax, 1
	add	eax, 1
	mov	esi, eax
	call	_build_line
LBB2_8:                                 ##   in Loop: Header=BB2_3 Depth=2
	jmp	LBB2_3
LBB2_9:                                 ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 16]
	cdq
	mov	ecx, 2
	idiv	ecx
	cmp	edx, 0
	je	LBB2_12
## %bb.10:                              ##   in Loop: Header=BB2_1 Depth=1
	cmp	dword ptr [rbp - 16], 1
	jle	LBB2_12
## %bb.11:                              ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	dword ptr [rbp - 28], eax
LBB2_12:                                ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 28]
	add	eax, dword ptr [rbp - 24]
	mov	dword ptr [rbp - 24], eax
	jmp	LBB2_1
LBB2_13:
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_sastantua              ## -- Begin function sastantua
	.p2align	4, 0x90
_sastantua:                             ## @sastantua
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 16], -1
	mov	dword ptr [rbp - 20], 2
LBB3_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_3 Depth 2
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [rbp - 8], ecx
	cmp	eax, dword ptr [rbp - 4]
	jge	LBB3_9
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	mov	dword ptr [rbp - 12], 1
LBB3_3:                                 ##   Parent Loop BB3_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	eax, dword ptr [rbp - 12]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [rbp - 12], ecx
	mov	ecx, dword ptr [rbp - 8]
	add	ecx, 2
	cmp	eax, ecx
	jg	LBB3_5
## %bb.4:                               ##   in Loop: Header=BB3_3 Depth=2
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB3_3
LBB3_5:                                 ##   in Loop: Header=BB3_1 Depth=1
	mov	eax, dword ptr [rbp - 8]
	cdq
	mov	ecx, 2
	idiv	ecx
	cmp	edx, 0
	je	LBB3_8
## %bb.6:                               ##   in Loop: Header=BB3_1 Depth=1
	cmp	dword ptr [rbp - 8], 1
	jle	LBB3_8
## %bb.7:                               ##   in Loop: Header=BB3_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
LBB3_8:                                 ##   in Loop: Header=BB3_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 16], eax
	jmp	LBB3_1
LBB3_9:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 1
	mov	dword ptr [rbp - 24], eax
	mov	eax, dword ptr [rbp - 4]
	cdq
	mov	ecx, 2
	idiv	ecx
	cmp	edx, 0
	je	LBB3_11
## %bb.10:
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
LBB3_11:
	mov	eax, dword ptr [rbp - 16]
	sub	eax, dword ptr [rbp - 20]
	shl	eax, 1
	add	eax, 3
	mov	esi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 24]
	mov	edi, eax
	call	_build_sastantua
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
