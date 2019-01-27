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
	mov	dword ptr [rbp - 8], -1985229329
	mov	dword ptr [rbp - 12], 1985229328
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	call	_combine_word
	mov	dword ptr [rbp - 16], eax
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 12]
	mov	ecx, dword ptr [rbp - 16]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"x=0x%X, y=0x%X, combine_word=0x%X\n"


.subsections_via_symbols
