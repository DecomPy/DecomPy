	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2               ## -- Begin function main
LCPI0_0:
	.long	1095657062              ## float 12.8999996
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3
LCPI0_1:
	.quad	4517319276138492611     ## double 9.979E-7
LCPI0_2:
	.quad	4635552422440172782     ## double 83.162000000000006
LCPI0_3:
	.quad	4629208680152556372     ## double 30.253
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
	sub	rsp, 48
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	mov	esi, 86
	mov	edx, 1040
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	movsd	xmm0, qword ptr [rip + LCPI0_3] ## xmm0 = mem[0],zero
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	movsd	xmm0, qword ptr [rip + LCPI0_2] ## xmm0 = mem[0],zero
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	movsd	xmm0, qword ptr [rip + LCPI0_1] ## xmm0 = mem[0],zero
	lea	rdi, [rip + L_.str.4]
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	lea	rdi, [rip + L_.str.5]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	movss	xmm0, dword ptr [rip + LCPI0_0] ## xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 8], xmm0
	movss	xmm0, dword ptr [rbp - 8] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	movss	xmm1, dword ptr [rbp - 8] ## xmm1 = mem[0],zero,zero,zero
	cvtss2sd	xmm1, xmm1
	movss	xmm2, dword ptr [rbp - 8] ## xmm2 = mem[0],zero,zero,zero
	cvtss2sd	xmm2, xmm2
	movss	xmm3, dword ptr [rbp - 8] ## xmm3 = mem[0],zero,zero,zero
	cvtss2sd	xmm3, xmm3
	lea	rdi, [rip + L_.str.6]
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	mov	al, 4
	call	_printf
	xor	edx, edx
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	mov	eax, edx
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Exercise 3.1.1\n"

L_.str.1:                               ## @.str.1
	.asciz	"%6d, %4d\n"

L_.str.2:                               ## @.str.2
	.asciz	"%12.5e\n"

L_.str.3:                               ## @.str.3
	.asciz	"%.4f\n"

L_.str.4:                               ## @.str.4
	.asciz	"%-6.2g\n"

L_.str.5:                               ## @.str.5
	.asciz	"\nExercise 3.1.2\n"

L_.str.6:                               ## @.str.6
	.asciz	"|%-8.1e|%10.6e|%-8.3f|%6.0f|\n"


.subsections_via_symbols
