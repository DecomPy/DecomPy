	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_dct_lock               ## -- Begin function dct_lock
	.p2align	4, 0x90
_dct_lock:                              ## @dct_lock
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_dct_unlock             ## -- Begin function dct_unlock
	.p2align	4, 0x90
_dct_unlock:                            ## @dct_unlock
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
