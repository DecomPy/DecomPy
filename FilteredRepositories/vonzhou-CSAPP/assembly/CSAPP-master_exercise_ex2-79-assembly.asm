	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_fiveeighths            ## -- Begin function fiveeighths
	.p2align	4, 0x90
_fiveeighths:                           ## @fiveeighths
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
	mov	edi, dword ptr [rbp - 4]
	and	edi, 1
	mov	dword ptr [rbp - 12], edi
	mov	edi, dword ptr [rbp - 4]
	and	edi, 7
	cmp	edi, 0
	setne	al
	xor	al, -1
	xor	al, -1
	and	al, 1
	movzx	edi, al
	mov	dword ptr [rbp - 16], edi
	mov	edi, dword ptr [rbp - 8]
	and	edi, dword ptr [rbp - 12]
	shl	edi, 3
	sub	edi, 1
	xor	edi, -1
	and	edi, -8
	mov	dword ptr [rbp - 20], edi
	mov	edi, dword ptr [rbp - 8]
	and	edi, dword ptr [rbp - 16]
	shl	edi, 3
	sub	edi, 1
	xor	edi, -1
	and	edi, -8
	mov	dword ptr [rbp - 24], edi
	mov	edi, dword ptr [rbp - 4]
	and	edi, 1
	shl	edi, 2
	add	edi, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 28], edi
	mov	edi, dword ptr [rbp - 4]
	and	edi, 7
	add	edi, dword ptr [rbp - 24]
	mov	dword ptr [rbp - 32], edi
	cmp	dword ptr [rbp - 8], 0
	setne	al
	xor	al, -1
	and	al, 1
	movzx	edi, al
	add	edi, 1
	and	edi, 1
	mov	dword ptr [rbp - 36], edi
	cmp	dword ptr [rbp - 8], 0
	setne	al
	xor	al, -1
	and	al, 1
	movzx	edi, al
	add	edi, 7
	and	edi, 7
	mov	dword ptr [rbp - 40], edi
	mov	edi, dword ptr [rbp - 28]
	add	edi, dword ptr [rbp - 32]
	add	edi, dword ptr [rbp - 40]
	sar	edi, 3
	mov	dword ptr [rbp - 44], edi
	mov	edi, dword ptr [rbp - 4]
	add	edi, dword ptr [rbp - 36]
	sar	edi, 1
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, dword ptr [rbp - 40]
	sar	ecx, 3
	add	edi, ecx
	add	edi, dword ptr [rbp - 44]
	mov	eax, edi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
