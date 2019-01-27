	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_leftmost_one           ## -- Begin function leftmost_one
	.p2align	4, 0x90
_leftmost_one:                          ## @leftmost_one
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	shr	edi, 1
	or	edi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	shr	edi, 2
	or	edi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	shr	edi, 4
	or	edi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	shr	edi, 8
	or	edi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	shr	edi, 16
	or	edi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	eax, dword ptr [rbp - 4]
	shr	eax, 1
	sub	edi, eax
	mov	eax, edi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_rightmost_one          ## -- Begin function rightmost_one
	.p2align	4, 0x90
_rightmost_one:                         ## @rightmost_one
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	xor	edi, -1
	add	edi, 1
	or	edi, dword ptr [rbp - 4]
	xor	edi, -1
	add	edi, 1
	mov	eax, edi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
