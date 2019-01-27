	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_divide_power2          ## -- Begin function divide_power2
	.p2align	4, 0x90
_divide_power2:                         ## @divide_power2
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	and	esi, -2147483648
	cmp	esi, -2147483648
	sete	al
	and	al, 1
	movzx	esi, al
	mov	dword ptr [rbp - 12], esi
	mov	ecx, dword ptr [rbp - 8]
                                        ## kill: def $cl killed $ecx
	mov	esi, 1
	shl	esi, cl
	sub	esi, 1
	mov	dword ptr [rbp - 16], esi
	mov	esi, dword ptr [rbp - 16]
	cmp	dword ptr [rbp - 12], 0
	setne	al
	xor	al, -1
	and	al, 1
	movzx	edi, al
	add	esi, edi
	and	esi, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 20], esi
	mov	esi, dword ptr [rbp - 4]
	add	esi, dword ptr [rbp - 20]
	mov	ecx, dword ptr [rbp - 8]
                                        ## kill: def $cl killed $ecx
	sar	esi, cl
	mov	eax, esi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
