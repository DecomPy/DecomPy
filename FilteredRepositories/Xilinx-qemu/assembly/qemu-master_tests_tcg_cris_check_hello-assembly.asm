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
	sub	rsp, 16
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rip + L_.str]
	xor	eax, eax
	mov	cl, al
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
	mov	al, cl
	call	_printf
	mov	edi, dword ptr [rbp - 8] ## 4-byte Reload
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	call	_exit
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"pass\n"


.subsections_via_symbols
