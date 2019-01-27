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
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rbp - 8]
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	imul	ecx, dword ptr [rbp - 8], 3
	mov	dword ptr [rbp - 12], ecx
	mov	ecx, dword ptr [rbp - 12]
	imul	ecx, dword ptr [rbp - 12]
	imul	ecx, dword ptr [rbp - 12]
	imul	ecx, dword ptr [rbp - 12]
	imul	ecx, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 20], ecx
	mov	ecx, dword ptr [rbp - 8]
	shl	ecx, 1
	mov	dword ptr [rbp - 12], ecx
	mov	ecx, dword ptr [rbp - 12]
	imul	ecx, dword ptr [rbp - 12]
	imul	ecx, dword ptr [rbp - 12]
	imul	ecx, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 24], ecx
	imul	ecx, dword ptr [rbp - 8], 5
	mov	dword ptr [rbp - 12], ecx
	mov	ecx, dword ptr [rbp - 12]
	imul	ecx, dword ptr [rbp - 12]
	imul	ecx, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 28], ecx
	mov	ecx, dword ptr [rbp - 8]
	imul	ecx, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 32], ecx
	imul	ecx, dword ptr [rbp - 8], 7
	mov	dword ptr [rbp - 36], ecx
	mov	dword ptr [rbp - 40], 6
	mov	ecx, dword ptr [rbp - 20]
	add	ecx, dword ptr [rbp - 24]
	sub	ecx, dword ptr [rbp - 28]
	sub	ecx, dword ptr [rbp - 32]
	add	ecx, dword ptr [rbp - 36]
	sub	ecx, dword ptr [rbp - 40]
	lea	rdi, [rip + L_.str.3]
	mov	esi, ecx
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.4]
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	imul	ecx, dword ptr [rbp - 8], 3
	add	ecx, 2
	imul	ecx, dword ptr [rbp - 8]
	sub	ecx, 5
	imul	ecx, dword ptr [rbp - 8]
	sub	ecx, 1
	imul	ecx, dword ptr [rbp - 8]
	add	ecx, 7
	imul	ecx, dword ptr [rbp - 8]
	sub	ecx, 6
	mov	dword ptr [rbp - 16], ecx
	mov	esi, dword ptr [rbp - 16]
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 60], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 64], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 64
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"3x^5 + 2x^4 - 5x^3 - x^2 + x7 - 6\n"

L_.str.1:                               ## @.str.1
	.asciz	"Enter a value for x: "

L_.str.2:                               ## @.str.2
	.asciz	"%d"

L_.str.3:                               ## @.str.3
	.asciz	"result: %d\n"

L_.str.4:                               ## @.str.4
	.asciz	"Horner's rule: ((((3x + 2)x - 5)x - 1)x + 7)x - 6\n"


.subsections_via_symbols
