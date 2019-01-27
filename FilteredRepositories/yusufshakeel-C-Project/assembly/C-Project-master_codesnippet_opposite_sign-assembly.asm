	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 12], 1
	mov	dword ptr [rbp - 8], 1
	mov	eax, dword ptr [rbp - 8]
	cmp	dword ptr [rbp - 12], 0
	setl	cl
	and	cl, 1
	movzx	edx, cl
	xor	eax, edx
	mov	dword ptr [rbp - 16], eax
	mov	esi, dword ptr [rbp - 16]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 8], 1
	mov	dword ptr [rbp - 12], -1
	mov	edx, dword ptr [rbp - 8]
	cmp	dword ptr [rbp - 12], 0
	setl	cl
	and	cl, 1
	movzx	esi, cl
	xor	edx, esi
	mov	dword ptr [rbp - 16], edx
	mov	esi, dword ptr [rbp - 16]
	lea	rdi, [rip + L_.str]
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 12], 1
	mov	edx, dword ptr [rbp - 8]
	cmp	dword ptr [rbp - 12], 0
	setl	cl
	and	cl, 1
	movzx	esi, cl
	xor	edx, esi
	mov	dword ptr [rbp - 16], edx
	mov	esi, dword ptr [rbp - 16]
	lea	rdi, [rip + L_.str]
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 12], -1
	mov	edx, dword ptr [rbp - 8]
	cmp	dword ptr [rbp - 12], 0
	setl	cl
	and	cl, 1
	movzx	esi, cl
	xor	edx, esi
	mov	dword ptr [rbp - 16], edx
	mov	esi, dword ptr [rbp - 16]
	lea	rdi, [rip + L_.str]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	xor	edx, edx
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	mov	eax, edx
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d\n"


.subsections_via_symbols
