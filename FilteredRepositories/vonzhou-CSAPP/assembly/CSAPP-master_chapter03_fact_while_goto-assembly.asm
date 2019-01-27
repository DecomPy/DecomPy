	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_fact_while_goto        ## -- Begin function fact_while_goto
	.p2align	4, 0x90
_fact_while_goto:                       ## @fact_while_goto
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], 1
	cmp	dword ptr [rbp - 4], 1
	jg	LBB0_2
## %bb.1:
	jmp	LBB0_6
LBB0_2:
	jmp	LBB0_3
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 4]
	imul	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 1
	mov	dword ptr [rbp - 4], eax
	cmp	dword ptr [rbp - 4], 1
	jle	LBB0_5
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=1
	jmp	LBB0_3
LBB0_5:
	jmp	LBB0_6
LBB0_6:
	mov	eax, dword ptr [rbp - 8]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
