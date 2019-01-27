	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ft_putnbr              ## -- Begin function ft_putnbr
	.p2align	4, 0x90
_ft_putnbr:                             ## @ft_putnbr
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 10
	jl	LBB0_2
## %bb.1:
	mov	eax, dword ptr [rbp - 4]
	cdq
	mov	ecx, 10
	idiv	ecx
	mov	edi, eax
	call	_ft_putnbr
	mov	eax, dword ptr [rbp - 4]
	cdq
	mov	ecx, 10
	idiv	ecx
	mov	edi, edx
	call	_ft_putnbr
	jmp	LBB0_3
LBB0_2:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 48
	mov	cl, al
	movsx	edi, cl
	call	_ft_putchar
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
LBB0_3:
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
