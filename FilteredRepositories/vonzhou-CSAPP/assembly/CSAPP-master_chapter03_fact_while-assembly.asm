	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_fact_while             ## -- Begin function fact_while
	.p2align	4, 0x90
_fact_while:                            ## @fact_while
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], 1
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 4], 1
	jle	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 4]
	imul	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_1
LBB0_3:
	mov	eax, dword ptr [rbp - 8]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
