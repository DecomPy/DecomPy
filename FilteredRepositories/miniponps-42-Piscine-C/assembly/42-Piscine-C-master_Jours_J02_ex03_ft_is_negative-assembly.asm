	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ft_is_negative         ## -- Begin function ft_is_negative
	.p2align	4, 0x90
_ft_is_negative:                        ## @ft_is_negative
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	jge	LBB0_2
## %bb.1:
	mov	edi, 78
	call	_ft_putchar
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
	jmp	LBB0_3
LBB0_2:
	mov	edi, 80
	call	_ft_putchar
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
LBB0_3:
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
