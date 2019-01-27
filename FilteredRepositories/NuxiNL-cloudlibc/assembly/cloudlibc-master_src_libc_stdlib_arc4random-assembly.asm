	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_arc4random             ## -- Begin function arc4random
	.p2align	4, 0x90
_arc4random:                            ## @arc4random
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	eax, 4
	mov	esi, eax
	lea	rcx, [rbp - 4]
	mov	rdi, rcx
	call	_arc4random_buf
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
