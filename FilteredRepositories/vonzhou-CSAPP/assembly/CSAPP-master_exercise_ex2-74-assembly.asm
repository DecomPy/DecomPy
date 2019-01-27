	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_tsub_ovf               ## -- Begin function tsub_ovf
	.p2align	4, 0x90
_tsub_ovf:                              ## @tsub_ovf
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
	sub	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 12], eax
	mov	eax, dword ptr [rbp - 4]
	and	eax, -2147483648
	cmp	eax, 0
	mov	byte ptr [rbp - 21], cl ## 1-byte Spill
	jne	LBB0_3
## %bb.1:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 8]
	and	eax, -2147483648
	cmp	eax, 0
	mov	byte ptr [rbp - 21], cl ## 1-byte Spill
	je	LBB0_3
## %bb.2:
	mov	eax, dword ptr [rbp - 12]
	and	eax, -2147483648
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 21], cl ## 1-byte Spill
LBB0_3:
	mov	al, byte ptr [rbp - 21] ## 1-byte Reload
	xor	ecx, ecx
	mov	dl, cl
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 16], ecx
	mov	ecx, dword ptr [rbp - 4]
	and	ecx, -2147483648
	cmp	ecx, 0
	mov	byte ptr [rbp - 22], dl ## 1-byte Spill
	je	LBB0_6
## %bb.4:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 8]
	and	eax, -2147483648
	cmp	eax, 0
	mov	byte ptr [rbp - 22], cl ## 1-byte Spill
	jne	LBB0_6
## %bb.5:
	mov	eax, dword ptr [rbp - 12]
	and	eax, -2147483648
	cmp	eax, 0
	setne	cl
	xor	cl, -1
	mov	byte ptr [rbp - 22], cl ## 1-byte Spill
LBB0_6:
	mov	al, byte ptr [rbp - 22] ## 1-byte Reload
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 20], ecx
	cmp	dword ptr [rbp - 16], 0
	mov	al, 1
	mov	byte ptr [rbp - 23], al ## 1-byte Spill
	jne	LBB0_8
## %bb.7:
	cmp	dword ptr [rbp - 20], 0
	setne	al
	mov	byte ptr [rbp - 23], al ## 1-byte Spill
LBB0_8:
	mov	al, byte ptr [rbp - 23] ## 1-byte Reload
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
