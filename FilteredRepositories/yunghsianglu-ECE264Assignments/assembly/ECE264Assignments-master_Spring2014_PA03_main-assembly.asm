	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_swapString             ## -- Begin function swapString
	.p2align	4, 0x90
_swapString:                            ## @swapString
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rsi
	mov	rsi, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 16], rsi
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 8]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rbp - 16]
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.3]
	lea	rsi, [rbp - 24]
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
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
	sub	rsp, 80
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	lea	rdi, [rip + L_.str.4]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.5]
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.6]
	lea	rsi, [rbp - 8]
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.7]
	lea	rsi, [rbp - 16]
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rbp - 16]
	lea	rdi, [rip + L_.str.8]
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rbp - 16]
	mov	rsi, qword ptr [rsi]
	lea	rdi, [rip + L_.str.9]
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rbp - 16]
	mov	rsi, qword ptr [rsi]
	lea	rdi, [rip + L_.str.10]
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rbp - 16]
	mov	rsi, qword ptr [rsi]
	movsx	esi, byte ptr [rsi]
	lea	rdi, [rip + L_.str.11]
	mov	dword ptr [rbp - 60], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.12]
	mov	dword ptr [rbp - 64], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.13]
	mov	qword ptr [rbp - 24], rdi
	lea	rdi, [rip + L_.str.14]
	mov	qword ptr [rbp - 32], rdi
	mov	rsi, qword ptr [rbp - 24]
	mov	rdx, qword ptr [rbp - 24]
	mov	rcx, qword ptr [rbp - 32]
	mov	r8, qword ptr [rbp - 32]
	lea	rdi, [rip + L_.str.15]
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rbp - 24]
	mov	rsi, qword ptr [rbp - 32]
	mov	dword ptr [rbp - 72], eax ## 4-byte Spill
	call	_swapString
	mov	rsi, qword ptr [rbp - 24]
	mov	rdx, qword ptr [rbp - 24]
	mov	rcx, qword ptr [rbp - 32]
	mov	r8, qword ptr [rbp - 32]
	lea	rdi, [rip + L_.str.16]
	mov	al, 0
	call	_printf
	xor	r9d, r9d
	mov	dword ptr [rbp - 76], eax ## 4-byte Spill
	mov	eax, r9d
	add	rsp, 80
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Calling swapString(...)\n"

L_.str.1:                               ## @.str.1
	.asciz	"&a = %p\n"

L_.str.2:                               ## @.str.2
	.asciz	"&b = %p\n"

L_.str.3:                               ## @.str.3
	.asciz	"&tmp = %p\n"

L_.str.4:                               ## @.str.4
	.asciz	"Welcome to PA03.\n\nPlease make sure that the swapString(...) function works\n\n"

L_.str.5:                               ## @.str.5
	.asciz	"Print out some memory addresses for argc, argv...\nto illustrate how memory is laid out.\n"

L_.str.6:                               ## @.str.6
	.asciz	"&argc = %p\n"

L_.str.7:                               ## @.str.7
	.asciz	"&argv = %p\n"

L_.str.8:                               ## @.str.8
	.asciz	"argv = %p\n"

L_.str.9:                               ## @.str.9
	.asciz	"*argv = %p\n"

L_.str.10:                              ## @.str.10
	.asciz	"*argv = %s\n"

L_.str.11:                              ## @.str.11
	.asciz	"**argv = %c\n"

L_.str.12:                              ## @.str.12
	.asciz	"\nTesting swapString(...)\n"

L_.str.13:                              ## @.str.13
	.asciz	"one"

L_.str.14:                              ## @.str.14
	.asciz	"two"

L_.str.15:                              ## @.str.15
	.asciz	"Before swap, str1 == %p (i.e., '%s'), str2 == %p (i.e., '%s')\n"

L_.str.16:                              ## @.str.16
	.asciz	"After swap, str1 == %p (i.e., '%s'), str2 == %p (i.e., '%s')\n"


.subsections_via_symbols
