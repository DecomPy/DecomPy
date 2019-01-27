	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ft_sqrt                ## -- Begin function ft_sqrt
	.p2align	4, 0x90
_ft_sqrt:                               ## @ft_sqrt
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 12], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 12]
	imul	eax, dword ptr [rbp - 12]
	cmp	eax, dword ptr [rbp - 8]
	jge	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	LBB0_1
LBB0_3:
	mov	eax, dword ptr [rbp - 12]
	imul	eax, dword ptr [rbp - 12]
	cmp	eax, dword ptr [rbp - 8]
	jne	LBB0_5
## %bb.4:
	mov	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_6
LBB0_5:
	mov	dword ptr [rbp - 4], 0
LBB0_6:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
