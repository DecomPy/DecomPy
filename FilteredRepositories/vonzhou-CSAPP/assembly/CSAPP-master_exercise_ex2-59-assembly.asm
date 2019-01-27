	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_combine_word           ## -- Begin function combine_word
	.p2align	4, 0x90
_combine_word:                          ## @combine_word
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
	and	esi, 255
	mov	edi, dword ptr [rbp - 8]
	and	edi, -256
	or	esi, edi
	mov	eax, esi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
