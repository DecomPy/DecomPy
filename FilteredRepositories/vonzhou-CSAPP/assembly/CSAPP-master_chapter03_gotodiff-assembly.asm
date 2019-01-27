	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_gotodiff               ## -- Begin function gotodiff
	.p2align	4, 0x90
_gotodiff:                              ## @gotodiff
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	cmp	esi, dword ptr [rbp - 8]
	jl	LBB0_2
## %bb.1:
	jmp	LBB0_3
LBB0_2:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 12], eax
	jmp	LBB0_4
LBB0_3:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 12], eax
LBB0_4:
	mov	eax, dword ptr [rbp - 12]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
