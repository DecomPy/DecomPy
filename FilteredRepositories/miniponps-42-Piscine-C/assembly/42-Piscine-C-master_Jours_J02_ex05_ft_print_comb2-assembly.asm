	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ft_print_comb2         ## -- Begin function ft_print_comb2
	.p2align	4, 0x90
_ft_print_comb2:                        ## @ft_print_comb2
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
	movsx	eax, byte ptr [rbp - 1]
	cmp	eax, 57
	jg	LBB0_6
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	byte ptr [rbp - 2], 48
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsx	eax, byte ptr [rbp - 2]
	cmp	eax, 57
	jg	LBB0_5
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	mov	al, byte ptr [rbp - 1]
	movsx	edi, al
	movsx	esi, byte ptr [rbp - 2]
	call	_ad_last_block
	mov	al, byte ptr [rbp - 2]
	add	al, 1
	mov	byte ptr [rbp - 2], al
	jmp	LBB0_3
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	al, byte ptr [rbp - 1]
	add	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	LBB0_1
LBB0_6:
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_ad_last_block          ## -- Begin function ad_last_block
	.p2align	4, 0x90
_ad_last_block:                         ## @ad_last_block
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	al, sil
	mov	cl, dil
	mov	byte ptr [rbp - 1], cl
	mov	byte ptr [rbp - 2], al
	mov	al, byte ptr [rbp - 1]
	mov	byte ptr [rbp - 3], al
LBB1_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_3 Depth 2
	movsx	eax, byte ptr [rbp - 3]
	cmp	eax, 57
	jg	LBB1_11
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movsx	eax, byte ptr [rbp - 2]
	add	eax, 1
	mov	cl, al
	mov	byte ptr [rbp - 4], cl
LBB1_3:                                 ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsx	eax, byte ptr [rbp - 4]
	cmp	eax, 57
	jg	LBB1_10
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=2
	mov	al, byte ptr [rbp - 1]
	mov	cl, byte ptr [rbp - 2]
	mov	dl, byte ptr [rbp - 3]
	movsx	edi, al
	movsx	esi, cl
	movsx	edx, dl
	movsx	ecx, byte ptr [rbp - 4]
	call	_ad_print_numbers
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 57
	jne	LBB1_8
## %bb.5:                               ##   in Loop: Header=BB1_3 Depth=2
	movsx	eax, byte ptr [rbp - 2]
	cmp	eax, 56
	jne	LBB1_8
## %bb.6:                               ##   in Loop: Header=BB1_3 Depth=2
	movsx	eax, byte ptr [rbp - 3]
	cmp	eax, 57
	jne	LBB1_8
## %bb.7:                               ##   in Loop: Header=BB1_3 Depth=2
	movsx	eax, byte ptr [rbp - 4]
	cmp	eax, 57
	je	LBB1_9
LBB1_8:                                 ##   in Loop: Header=BB1_3 Depth=2
	mov	edi, 44
	call	_ft_putchar
	mov	edi, 32
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
	call	_ft_putchar
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
LBB1_9:                                 ##   in Loop: Header=BB1_3 Depth=2
	mov	al, byte ptr [rbp - 4]
	add	al, 1
	mov	byte ptr [rbp - 4], al
	jmp	LBB1_3
LBB1_10:                                ##   in Loop: Header=BB1_1 Depth=1
	mov	al, byte ptr [rbp - 3]
	add	al, 1
	mov	byte ptr [rbp - 3], al
	jmp	LBB1_1
LBB1_11:
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
	sub	rsp, 32
	mov	al, cl
	mov	r8b, dl
	mov	r9b, sil
	mov	r10b, dil
	mov	byte ptr [rbp - 1], r10b
	mov	byte ptr [rbp - 2], r9b
	mov	byte ptr [rbp - 3], r8b
	mov	byte ptr [rbp - 4], al
	movsx	edi, byte ptr [rbp - 1]
	call	_ft_putchar
	movsx	edi, byte ptr [rbp - 2]
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
	call	_ft_putchar
	mov	edi, 32
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	call	_ft_putchar
	movsx	edi, byte ptr [rbp - 3]
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	call	_ft_putchar
	movsx	edi, byte ptr [rbp - 4]
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	call	_ft_putchar
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
