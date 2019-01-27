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
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 8]
	lea	rdx, [rbp - 12]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	mov	ecx, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	mov	eax, ecx
	cdq
	idiv	dword ptr [rbp - 12]
	mov	dword ptr [rbp - 20], eax
	mov	eax, dword ptr [rbp - 20]
	imul	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 16], eax
	mov	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 24], eax
	mov	esi, dword ptr [rbp - 24]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter x and n: "

L_.str.1:                               ## @.str.1
	.asciz	"%d%d"

L_.str.2:                               ## @.str.2
	.asciz	"Modulus: %d\n"


.subsections_via_symbols
