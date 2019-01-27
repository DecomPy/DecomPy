	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_cmovdiff               ## -- Begin function cmovdiff
	.p2align	4, 0x90
_cmovdiff:                              ## @cmovdiff
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
	sub	esi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 12], esi
	mov	esi, dword ptr [rbp - 4]
	sub	esi, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 16], esi
	mov	esi, dword ptr [rbp - 4]
	cmp	esi, dword ptr [rbp - 8]
	setl	al
	and	al, 1
	movzx	esi, al
	mov	dword ptr [rbp - 20], esi
	cmp	dword ptr [rbp - 20], 0
	je	LBB0_2
## %bb.1:
	mov	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 16], eax
LBB0_2:
	mov	eax, dword ptr [rbp - 16]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
