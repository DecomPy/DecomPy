	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ft_iterative_factorial ## -- Begin function ft_iterative_factorial
	.p2align	4, 0x90
_ft_iterative_factorial:                ## @ft_iterative_factorial
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 8], edi
	cmp	dword ptr [rbp - 8], 12
	jg	LBB0_2
## %bb.1:
	cmp	dword ptr [rbp - 8], 0
	jge	LBB0_3
LBB0_2:
	mov	dword ptr [rbp - 4], 0
	jmp	LBB0_7
LBB0_3:
	mov	dword ptr [rbp - 12], 1
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 8], 0
	jle	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_4 Depth=1
	mov	eax, dword ptr [rbp - 12]
	imul	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 12], eax
	mov	eax, dword ptr [rbp - 8]
	add	eax, -1
	mov	dword ptr [rbp - 8], eax
	jmp	LBB0_4
LBB0_6:
	mov	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 4], eax
LBB0_7:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
