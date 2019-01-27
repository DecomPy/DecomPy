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
	sub	rsp, 48
	lea	rdi, [rip + L_.str]
	mov	esi, 4294967295
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rip + L_.str.2]
	mov	dword ptr [rbp - 4], eax ## 4-byte Spill
	call	_ft_strcmp
	lea	rdi, [rip + L_.str]
	mov	esi, eax
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.3]
	mov	esi, 4294967295
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rip + L_.str.2]
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	call	_ft_strcmp
	lea	rdi, [rip + L_.str.3]
	mov	esi, eax
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.4]
	mov	esi, 4294967295
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.5]
	lea	rsi, [rip + L_.str.6]
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	call	_ft_strcmp
	lea	rdi, [rip + L_.str.4]
	mov	esi, eax
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.7]
	mov	esi, 4294967295
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.8]
	lea	rsi, [rip + L_.str.6]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	call	_ft_strcmp
	lea	rdi, [rip + L_.str.7]
	mov	esi, eax
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.9]
	mov	esi, 1
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.5]
	lea	rsi, [rip + L_.str.8]
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	call	_ft_strcmp
	lea	rdi, [rip + L_.str.9]
	mov	esi, eax
	mov	al, 0
	call	_printf
	xor	esi, esi
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	mov	eax, esi
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"1 la repond : %d\n"

L_.str.1:                               ## @.str.1
	.asciz	"dsfwer"

L_.str.2:                               ## @.str.2
	.asciz	"sdfdsf"

L_.str.3:                               ## @.str.3
	.asciz	"2 la repond : %d\n"

L_.str.4:                               ## @.str.4
	.asciz	"3 la repond : %d\n"

L_.str.5:                               ## @.str.5
	.asciz	"asdfg"

L_.str.6:                               ## @.str.6
	.asciz	"asf"

L_.str.7:                               ## @.str.7
	.asciz	"4 la repond : %d\n"

L_.str.8:                               ## @.str.8
	.space	1

L_.str.9:                               ## @.str.9
	.asciz	"5 la repond : %d\n"


.subsections_via_symbols
