	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_f                      ## -- Begin function f
	.p2align	4, 0x90
_f:                                     ## @f
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 8], edi
	cmp	dword ptr [rbp - 8], 0
	jne	LBB0_2
## %bb.1:
	mov	dword ptr [rbp - 4], 0
	jmp	LBB0_5
LBB0_2:
	cmp	dword ptr [rbp - 8], 1
	jne	LBB0_4
## %bb.3:
	mov	dword ptr [rbp - 4], 1
	jmp	LBB0_5
LBB0_4:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 2
	mov	edi, eax
	call	_f
	mov	edi, dword ptr [rbp - 8]
	sub	edi, 1
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	call	_f
	mov	edi, dword ptr [rbp - 12] ## 4-byte Reload
	add	edi, eax
	mov	dword ptr [rbp - 4], edi
LBB0_5:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 16
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
	sub	rsp, 64
	xor	eax, eax
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	edi, eax
	call	_f
	lea	rdi, [rip + L_.str]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	edi, 1
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	call	_f
	lea	rdi, [rip + L_.str.1]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	edi, 2
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	call	_f
	lea	rdi, [rip + L_.str.2]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	edi, 3
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	call	_f
	lea	rdi, [rip + L_.str.3]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	edi, 4
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	call	_f
	lea	rdi, [rip + L_.str.4]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	edi, 5
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	call	_f
	lea	rdi, [rip + L_.str.5]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	edi, 6
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	call	_f
	lea	rdi, [rip + L_.str.6]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	edi, 7
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	call	_f
	lea	rdi, [rip + L_.str.7]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	edi, 8
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
	call	_f
	lea	rdi, [rip + L_.str.8]
	mov	esi, eax
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
	.asciz	"f(0) == %d\n"

L_.str.1:                               ## @.str.1
	.asciz	"f(1) == %d\n"

L_.str.2:                               ## @.str.2
	.asciz	"f(2) == %d\n"

L_.str.3:                               ## @.str.3
	.asciz	"f(3) == %d\n"

L_.str.4:                               ## @.str.4
	.asciz	"f(4) == %d\n"

L_.str.5:                               ## @.str.5
	.asciz	"f(5) == %d\n"

L_.str.6:                               ## @.str.6
	.asciz	"f(6) == %d\n"

L_.str.7:                               ## @.str.7
	.asciz	"f(7) == %d\n"

L_.str.8:                               ## @.str.8
	.asciz	"f(8) == %d\n"


.subsections_via_symbols
