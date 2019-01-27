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
	mov	dword ptr [rbp - 8], 10
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 12]
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	xor	esi, esi
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	eax, esi
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"I am %d years old.\n"

L_.str.1:                               ## @.str.1
	.asciz	"I am %d inches tall.\n"


.subsections_via_symbols
