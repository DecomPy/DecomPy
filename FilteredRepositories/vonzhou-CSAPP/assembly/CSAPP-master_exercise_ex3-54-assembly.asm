	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_decode2                ## -- Begin function decode2
	.p2align	4, 0x90
_decode2:                               ## @decode2
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 12], edx
	mov	edx, dword ptr [rbp - 12]
	sub	edx, dword ptr [rbp - 8]
	and	edx, 32767
	mov	dword ptr [rbp - 16], edx
	mov	edx, dword ptr [rbp - 4]
	xor	edx, dword ptr [rbp - 16]
	imul	edx, dword ptr [rbp - 16]
	mov	eax, edx
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
