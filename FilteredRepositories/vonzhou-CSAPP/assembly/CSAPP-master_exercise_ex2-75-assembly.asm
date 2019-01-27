	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_unsigned_high_prod     ## -- Begin function unsigned_high_prod
	.p2align	4, 0x90
_unsigned_high_prod:                    ## @unsigned_high_prod
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	and	esi, -2147483648
	cmp	esi, -2147483648
	sete	al
	and	al, 1
	movzx	esi, al
	mov	dword ptr [rbp - 12], esi
	mov	esi, dword ptr [rbp - 8]
	and	esi, -2147483648
	cmp	esi, -2147483648
	sete	al
	and	al, 1
	movzx	esi, al
	mov	dword ptr [rbp - 16], esi
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, 0
	call	_signed_high_prod
	mov	esi, dword ptr [rbp - 4]
	imul	esi, dword ptr [rbp - 16]
	add	eax, esi
	mov	esi, dword ptr [rbp - 8]
	imul	esi, dword ptr [rbp - 12]
	add	eax, esi
	mov	dword ptr [rbp - 20], eax
	mov	eax, dword ptr [rbp - 20]
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
