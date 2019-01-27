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
	mov	edi, 1
	mov	esi, 2
	mov	edx, 3
	call	_ft_bouton
	lea	rdi, [rip + L_.str]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	edi, 2
	mov	esi, 1
	mov	edx, 3
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
	call	_ft_bouton
	lea	rdi, [rip + L_.str]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	edi, 3
	mov	esi, 1
	mov	edx, 2
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	call	_ft_bouton
	lea	rdi, [rip + L_.str]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	edx, 2
	mov	edi, edx
	mov	esi, edx
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	call	_ft_bouton
	lea	rdi, [rip + L_.str]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	edx, 2
	mov	edi, edx
	mov	esi, edx
	mov	edx, 1
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	call	_ft_bouton
	lea	rdi, [rip + L_.str]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	edi, 3
	mov	edx, 2
	mov	esi, edx
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	call	_ft_bouton
	lea	rdi, [rip + L_.str]
	mov	esi, eax
	mov	al, 0
	call	_printf
	xor	edx, edx
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	eax, edx
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d"


.subsections_via_symbols
