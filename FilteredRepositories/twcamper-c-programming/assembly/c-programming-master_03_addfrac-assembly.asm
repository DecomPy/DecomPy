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
	lea	rdx, [rbp - 16]
	lea	rcx, [rbp - 12]
	lea	r8, [rbp - 20]
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	mov	r9d, dword ptr [rbp - 8]
	imul	r9d, dword ptr [rbp - 20]
	mov	r10d, dword ptr [rbp - 12]
	imul	r10d, dword ptr [rbp - 16]
	add	r9d, r10d
	mov	dword ptr [rbp - 24], r9d
	mov	r9d, dword ptr [rbp - 16]
	imul	r9d, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 28], r9d
	mov	esi, dword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 28]
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	xor	edx, edx
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	mov	eax, edx
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter two fractions separated by a plus sign: "

L_.str.1:                               ## @.str.1
	.asciz	"%d / %d + %d / %d"

L_.str.2:                               ## @.str.2
	.asciz	"The sum is %d/%d\n"


.subsections_via_symbols
