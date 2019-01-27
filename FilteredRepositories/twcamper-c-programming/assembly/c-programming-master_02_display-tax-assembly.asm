	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2               ## -- Begin function main
LCPI0_0:
	.long	1028443341              ## float 0.0500000007
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
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
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 8]
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	movss	xmm0, dword ptr [rip + LCPI0_0] ## xmm0 = mem[0],zero,zero,zero
	mulss	xmm0, dword ptr [rbp - 8]
	movss	dword ptr [rbp - 12], xmm0
	movss	xmm0, dword ptr [rbp - 8] ## xmm0 = mem[0],zero,zero,zero
	addss	xmm0, dword ptr [rbp - 12]
	cvtss2sd	xmm0, xmm0
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter a dollar amount: "

L_.str.1:                               ## @.str.1
	.asciz	"%f"

L_.str.2:                               ## @.str.2
	.asciz	"With tax added: $%.2f\n"


.subsections_via_symbols
