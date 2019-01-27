	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_even_ones              ## -- Begin function even_ones
	.p2align	4, 0x90
_even_ones:                             ## @even_ones
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	shr	edi, 16
	xor	edi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	shr	edi, 8
	xor	edi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	shr	edi, 4
	xor	edi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	shr	edi, 2
	xor	edi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	shr	edi, 1
	xor	edi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	and	edi, 1
	cmp	edi, 0
	setne	al
	xor	al, -1
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
