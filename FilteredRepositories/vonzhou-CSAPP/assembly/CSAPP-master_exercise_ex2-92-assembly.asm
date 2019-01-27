	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_float_negate           ## -- Begin function float_negate
	.p2align	4, 0x90
_float_negate:                          ## @float_negate
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 8], edi
	mov	edi, dword ptr [rbp - 8]
	shr	edi, 31
	mov	dword ptr [rbp - 12], edi
	mov	edi, dword ptr [rbp - 8]
	shr	edi, 23
	and	edi, 255
	mov	dword ptr [rbp - 16], edi
	mov	edi, dword ptr [rbp - 8]
	and	edi, 8388607
	mov	dword ptr [rbp - 20], edi
	cmp	dword ptr [rbp - 16], 255
	jne	LBB0_3
## %bb.1:
	cmp	dword ptr [rbp - 20], 0
	je	LBB0_3
## %bb.2:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_4
LBB0_3:
	mov	eax, dword ptr [rbp - 12]
	xor	eax, -1
	shl	eax, 31
	mov	ecx, dword ptr [rbp - 16]
	shl	ecx, 23
	or	eax, ecx
	or	eax, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 4], eax
LBB0_4:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
