	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_fib_recursive          ## -- Begin function fib_recursive
	.p2align	4, 0x90
_fib_recursive:                         ## @fib_recursive
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 8], edi
	cmp	dword ptr [rbp - 8], 1
	jg	LBB0_2
## %bb.1:
	mov	dword ptr [rbp - 4], 1
	jmp	LBB0_3
LBB0_2:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 1
	mov	edi, eax
	call	_fib_recursive
	mov	edi, dword ptr [rbp - 8]
	sub	edi, 2
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	call	_fib_recursive
	mov	edi, dword ptr [rbp - 12] ## 4-byte Reload
	add	edi, eax
	mov	dword ptr [rbp - 4], edi
LBB0_3:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_fib_nor                ## -- Begin function fib_nor
	.p2align	4, 0x90
_fib_nor:                               ## @fib_nor
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 8], edi
	cmp	dword ptr [rbp - 8], 1
	jg	LBB1_2
## %bb.1:
	mov	dword ptr [rbp - 4], 1
	jmp	LBB1_7
LBB1_2:
	mov	dword ptr [rbp - 16], 1
	mov	dword ptr [rbp - 12], 1
	mov	dword ptr [rbp - 20], 0
	mov	dword ptr [rbp - 24], 2
LBB1_3:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 8]
	jg	LBB1_6
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=1
	mov	eax, dword ptr [rbp - 12]
	add	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 20], eax
	mov	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 12], eax
	mov	eax, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 16], eax
## %bb.5:                               ##   in Loop: Header=BB1_3 Depth=1
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB1_3
LBB1_6:
	mov	eax, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 4], eax
LBB1_7:
	mov	eax, dword ptr [rbp - 4]
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
	sub	rsp, 32
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rbp - 20]
	mov	al, 0
	call	_scanf
	cmp	eax, 0
	je	LBB2_3
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	edi, dword ptr [rbp - 20]
	call	_fib_recursive
	lea	rdi, [rip + L_.str.1]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	edi, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	call	_fib_nor
	lea	rdi, [rip + L_.str.1]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	jmp	LBB2_1
LBB2_3:
	xor	eax, eax
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d"

L_.str.1:                               ## @.str.1
	.asciz	"%d\n"


.subsections_via_symbols
