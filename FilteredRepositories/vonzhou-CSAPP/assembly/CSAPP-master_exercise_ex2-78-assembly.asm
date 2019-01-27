	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_mul5div8               ## -- Begin function mul5div8
	.p2align	4, 0x90
_mul5div8:                              ## @mul5div8
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	and	edi, -2147483648
	cmp	edi, -2147483648
	sete	al
	and	al, 1
	movzx	edi, al
	mov	dword ptr [rbp - 8], edi
	cmp	dword ptr [rbp - 8], 0
	setne	al
	xor	al, -1
	and	al, 1
	movzx	edi, al
	add	edi, 7
	and	edi, 7
	mov	dword ptr [rbp - 12], edi
	mov	edi, dword ptr [rbp - 4]
	shl	edi, 2
	add	edi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 16], edi
	mov	edi, dword ptr [rbp - 16]
	add	edi, dword ptr [rbp - 12]
	sar	edi, 3
	mov	eax, edi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
