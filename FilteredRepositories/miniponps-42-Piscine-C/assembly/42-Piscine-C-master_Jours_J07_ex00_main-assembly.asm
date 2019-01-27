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
	lea	rax, [rip + L_.str]
	mov	qword ptr [rbp - 16], rax
	mov	rdi, qword ptr [rbp - 16]
	call	_ft_strdup
	mov	qword ptr [rbp - 24], rax
	mov	rsi, qword ptr [rbp - 16]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rbp - 24]
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"SALUT cookie"

L_.str.1:                               ## @.str.1
	.asciz	"%s\n"


.subsections_via_symbols
