	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_toUpper                ## -- Begin function toUpper
	.p2align	4, 0x90
_toUpper:                               ## @toUpper
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	al, dil
	mov	byte ptr [rbp - 5], al
	movsx	edi, byte ptr [rbp - 5]
	cmp	edi, 97
	jl	LBB0_3
## %bb.1:
	movsx	eax, byte ptr [rbp - 5]
	cmp	eax, 122
	jg	LBB0_3
## %bb.2:
	movsx	eax, byte ptr [rbp - 5]
	add	eax, -32
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_4
LBB0_3:
	movsx	eax, byte ptr [rbp - 5]
	mov	dword ptr [rbp - 4], eax
LBB0_4:
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
	mov	edi, 103
	call	_toUpper
	lea	rdi, [rip + L_.str]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	edi, 61
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	call	_toUpper
	lea	rdi, [rip + L_.str]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	edi, 90
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	call	_toUpper
	lea	rdi, [rip + L_.str]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	edi, 120
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	call	_toUpper
	lea	rdi, [rip + L_.str]
	mov	esi, eax
	mov	al, 0
	call	_printf
	xor	esi, esi
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	mov	eax, esi
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%c\n"


.subsections_via_symbols
