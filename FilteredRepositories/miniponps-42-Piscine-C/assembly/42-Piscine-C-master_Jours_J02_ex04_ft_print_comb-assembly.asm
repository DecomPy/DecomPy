	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ft_print_comb          ## -- Begin function ft_print_comb
	.p2align	4, 0x90
_ft_print_comb:                         ## @ft_print_comb
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	byte ptr [rbp - 1], 48
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
                                        ##       Child Loop BB0_5 Depth 3
	movsx	eax, byte ptr [rbp - 1]
	cmp	eax, 57
	jg	LBB0_13
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movsx	eax, byte ptr [rbp - 1]
	add	eax, 1
	mov	cl, al
	mov	byte ptr [rbp - 2], cl
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB0_5 Depth 3
	movsx	eax, byte ptr [rbp - 2]
	cmp	eax, 57
	jg	LBB0_12
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	movsx	eax, byte ptr [rbp - 2]
	add	eax, 1
	mov	cl, al
	mov	byte ptr [rbp - 3], cl
LBB0_5:                                 ##   Parent Loop BB0_1 Depth=1
                                        ##     Parent Loop BB0_3 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movsx	eax, byte ptr [rbp - 3]
	cmp	eax, 57
	jg	LBB0_11
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=3
	mov	al, byte ptr [rbp - 1]
	mov	cl, byte ptr [rbp - 2]
	movsx	edi, al
	movsx	esi, cl
	movsx	edx, byte ptr [rbp - 3]
	call	_ad_print_numbers
	movsx	edx, byte ptr [rbp - 1]
	cmp	edx, 55
	jne	LBB0_9
## %bb.7:                               ##   in Loop: Header=BB0_5 Depth=3
	movsx	eax, byte ptr [rbp - 2]
	cmp	eax, 56
	jne	LBB0_9
## %bb.8:                               ##   in Loop: Header=BB0_5 Depth=3
	movsx	eax, byte ptr [rbp - 3]
	cmp	eax, 57
	je	LBB0_10
LBB0_9:                                 ##   in Loop: Header=BB0_5 Depth=3
	call	_ad_print_space
LBB0_10:                                ##   in Loop: Header=BB0_5 Depth=3
	mov	al, byte ptr [rbp - 3]
	add	al, 1
	mov	byte ptr [rbp - 3], al
	jmp	LBB0_5
LBB0_11:                                ##   in Loop: Header=BB0_3 Depth=2
	mov	al, byte ptr [rbp - 2]
	add	al, 1
	mov	byte ptr [rbp - 2], al
	jmp	LBB0_3
LBB0_12:                                ##   in Loop: Header=BB0_1 Depth=1
	mov	al, byte ptr [rbp - 1]
	add	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	LBB0_1
LBB0_13:
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_ad_print_numbers       ## -- Begin function ad_print_numbers
	.p2align	4, 0x90
_ad_print_numbers:                      ## @ad_print_numbers
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	al, dl
	mov	cl, sil
	mov	r8b, dil
	mov	byte ptr [rbp - 1], r8b
	mov	byte ptr [rbp - 2], cl
	mov	byte ptr [rbp - 3], al
	movsx	edi, byte ptr [rbp - 1]
	call	_ft_putchar
	movsx	edi, byte ptr [rbp - 2]
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
	call	_ft_putchar
	movsx	edi, byte ptr [rbp - 3]
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	call	_ft_putchar
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_ad_print_space         ## -- Begin function ad_print_space
	.p2align	4, 0x90
_ad_print_space:                        ## @ad_print_space
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	edi, 44
	call	_ft_putchar
	mov	edi, 32
	mov	dword ptr [rbp - 4], eax ## 4-byte Spill
	call	_ft_putchar
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
