	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2               ## -- Begin function main
LCPI0_0:
	.long	1095069860              ## float 12.3400002
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
	movss	xmm0, dword ptr [rip + LCPI0_0] ## xmm0 = mem[0],zero,zero,zero
	mov	dword ptr [rbp - 4], 0
	movss	dword ptr [rbp - 8], xmm0
	lea	rax, [rbp - 8]
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 16]
	movss	xmm0, dword ptr [rax]   ## xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 20], xmm0
	movss	xmm0, dword ptr [rbp - 20] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	lea	rdi, [rip + L_.str]
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
	.asciz	"%f"


.subsections_via_symbols
