	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_saturating_add         ## -- Begin function saturating_add
	.p2align	4, 0x90
_saturating_add:                        ## @saturating_add
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	xor	eax, eax
	mov	cl, al
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	eax, dword ptr [rbp - 4]
	add	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 12], eax
	mov	eax, dword ptr [rbp - 4]
	and	eax, -2147483648
	cmp	eax, 0
	mov	byte ptr [rbp - 33], cl ## 1-byte Spill
	jne	LBB0_3
## %bb.1:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 8]
	and	eax, -2147483648
	cmp	eax, 0
	mov	byte ptr [rbp - 33], cl ## 1-byte Spill
	jne	LBB0_3
## %bb.2:
	mov	eax, dword ptr [rbp - 12]
	and	eax, -2147483648
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 33], cl ## 1-byte Spill
LBB0_3:
	mov	al, byte ptr [rbp - 33] ## 1-byte Reload
	xor	ecx, ecx
	mov	dl, cl
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 16], ecx
	mov	ecx, dword ptr [rbp - 4]
	and	ecx, -2147483648
	cmp	ecx, 0
	mov	byte ptr [rbp - 34], dl ## 1-byte Spill
	je	LBB0_6
## %bb.4:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 8]
	and	eax, -2147483648
	cmp	eax, 0
	mov	byte ptr [rbp - 34], cl ## 1-byte Spill
	je	LBB0_6
## %bb.5:
	mov	eax, dword ptr [rbp - 12]
	and	eax, -2147483648
	cmp	eax, 0
	setne	cl
	xor	cl, -1
	mov	byte ptr [rbp - 34], cl ## 1-byte Spill
LBB0_6:
	mov	al, byte ptr [rbp - 34] ## 1-byte Reload
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 20], ecx
	mov	ecx, dword ptr [rbp - 16]
	or	ecx, dword ptr [rbp - 20]
	mov	edx, 2147483648
	mov	esi, edx
	sub	esi, ecx
	and	esi, 2147483647
	mov	dword ptr [rbp - 24], esi
	cmp	dword ptr [rbp - 16], 0
	setne	al
	xor	al, -1
	and	al, 1
	movzx	ecx, al
	sub	edx, ecx
	and	edx, 2147483647
	mov	dword ptr [rbp - 28], edx
	mov	ecx, dword ptr [rbp - 28]
	add	ecx, 2147483648
	cmp	dword ptr [rbp - 16], 0
	setne	al
	xor	al, -1
	and	al, 1
	movzx	edx, al
	add	ecx, edx
	add	ecx, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 32], ecx
	mov	ecx, dword ptr [rbp - 12]
	or	ecx, dword ptr [rbp - 24]
	add	ecx, dword ptr [rbp - 32]
	mov	eax, ecx
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
