	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ft_recursive_factorial ## -- Begin function ft_recursive_factorial
	.p2align	4, 0x90
_ft_recursive_factorial:                ## @ft_recursive_factorial
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 8], edi
	cmp	dword ptr [rbp - 8], 0
	jl	LBB0_2
## %bb.1:
	cmp	dword ptr [rbp - 8], 12
	jle	LBB0_3
LBB0_2:
	mov	dword ptr [rbp - 4], 0
	jmp	LBB0_6
LBB0_3:
	cmp	dword ptr [rbp - 8], 1
	jg	LBB0_5
## %bb.4:
	mov	dword ptr [rbp - 4], 1
	jmp	LBB0_6
LBB0_5:
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 8]
	sub	ecx, 1
	mov	edi, ecx
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	call	_ft_recursive_factorial
	mov	ecx, dword ptr [rbp - 12] ## 4-byte Reload
	imul	ecx, eax
	mov	dword ptr [rbp - 4], ecx
LBB0_6:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
