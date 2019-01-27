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
	sub	rsp, 64
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 8]
	lea	rdx, [rbp - 12]
	lea	rcx, [rbp - 16]
	lea	r8, [rbp - 20]
	lea	r9, [rbp - 24]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	mov	esi, dword ptr [rbp - 8]
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 12]
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 16]
	lea	rdi, [rip + L_.str.4]
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 20]
	lea	rdi, [rip + L_.str.5]
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 24]
	lea	rdi, [rip + L_.str.6]
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	xor	esi, esi
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	mov	eax, esi
	add	rsp, 64
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter ISBN: "

L_.str.1:                               ## @.str.1
	.asciz	"%d-%d-%d-%d-%d"

L_.str.2:                               ## @.str.2
	.asciz	"GS1 prefix: %d\n"

L_.str.3:                               ## @.str.3
	.asciz	"Group Identifier: %d\n"

L_.str.4:                               ## @.str.4
	.asciz	"Publisher Code: %d\n"

L_.str.5:                               ## @.str.5
	.asciz	"Item Number: %d\n"

L_.str.6:                               ## @.str.6
	.asciz	"Check Digit: %d\n"


.subsections_via_symbols
