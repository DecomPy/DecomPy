	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_a                      ## -- Begin function a
	.p2align	4, 0x90
_a:                                     ## @a
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	xor	eax, eax
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
