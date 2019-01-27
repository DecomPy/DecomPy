	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_fits_bits              ## -- Begin function fits_bits
	.p2align	4, 0x90
_fits_bits:                             ## @fits_bits
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 8]
	sub	esi, 1
	mov	ecx, esi
                                        ## kill: def $cl killed $ecx
	mov	esi, 1
	shl	esi, cl
	sub	esi, 1
	xor	esi, -1
	mov	dword ptr [rbp - 12], esi
	mov	esi, dword ptr [rbp - 12]
	and	esi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 4], esi
	cmp	dword ptr [rbp - 4], 0
	mov	cl, 1
	mov	byte ptr [rbp - 13], cl ## 1-byte Spill
	je	LBB0_2
## %bb.1:
	mov	eax, dword ptr [rbp - 4]
	cmp	eax, dword ptr [rbp - 12]
	sete	cl
	mov	byte ptr [rbp - 13], cl ## 1-byte Spill
LBB0_2:
	mov	al, byte ptr [rbp - 13] ## 1-byte Reload
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
