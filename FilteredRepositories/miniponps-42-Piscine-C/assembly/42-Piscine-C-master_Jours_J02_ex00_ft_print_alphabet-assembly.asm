	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ft_print_alphabet      ## -- Begin function ft_print_alphabet
	.p2align	4, 0x90
_ft_print_alphabet:                     ## @ft_print_alphabet
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	byte ptr [rbp - 1], 97
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movsx	eax, byte ptr [rbp - 1]
	cmp	eax, 122
	jg	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movsx	edi, byte ptr [rbp - 1]
	call	_ft_putchar
	mov	cl, byte ptr [rbp - 1]
	add	cl, 1
	mov	byte ptr [rbp - 1], cl
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
	jmp	LBB0_1
LBB0_3:
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
