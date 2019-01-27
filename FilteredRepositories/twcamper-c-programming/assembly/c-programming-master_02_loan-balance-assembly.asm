	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI0_0:
	.quad	4622945017495814144     ## double 12
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2
LCPI0_1:
	.long	1008981770              ## float 0.00999999977
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
	sub	rsp, 64
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 8]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 12]
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 24]
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	movsd	xmm0, qword ptr [rip + LCPI0_0] ## xmm0 = mem[0],zero
	movss	xmm1, dword ptr [rip + LCPI0_1] ## xmm1 = mem[0],zero,zero,zero
	mulss	xmm1, dword ptr [rbp - 12]
	cvtss2sd	xmm1, xmm1
	divsd	xmm1, xmm0
	cvtsd2ss	xmm0, xmm1
	movss	dword ptr [rbp - 16], xmm0
	movss	xmm0, dword ptr [rbp - 8] ## xmm0 = mem[0],zero,zero,zero
	mulss	xmm0, dword ptr [rbp - 16]
	movss	dword ptr [rbp - 20], xmm0
	movss	xmm0, dword ptr [rbp - 20] ## xmm0 = mem[0],zero,zero,zero
	addss	xmm0, dword ptr [rbp - 8]
	movss	dword ptr [rbp - 8], xmm0
	movss	xmm0, dword ptr [rbp - 8] ## xmm0 = mem[0],zero,zero,zero
	subss	xmm0, dword ptr [rbp - 24]
	movss	dword ptr [rbp - 8], xmm0
	movss	xmm0, dword ptr [rbp - 8] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	lea	rdi, [rip + L_.str.4]
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	movss	xmm0, dword ptr [rbp - 8] ## xmm0 = mem[0],zero,zero,zero
	mulss	xmm0, dword ptr [rbp - 16]
	movss	dword ptr [rbp - 20], xmm0
	movss	xmm0, dword ptr [rbp - 20] ## xmm0 = mem[0],zero,zero,zero
	addss	xmm0, dword ptr [rbp - 8]
	movss	dword ptr [rbp - 8], xmm0
	movss	xmm0, dword ptr [rbp - 8] ## xmm0 = mem[0],zero,zero,zero
	subss	xmm0, dword ptr [rbp - 24]
	movss	dword ptr [rbp - 8], xmm0
	movss	xmm0, dword ptr [rbp - 8] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	lea	rdi, [rip + L_.str.5]
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	movss	xmm0, dword ptr [rbp - 8] ## xmm0 = mem[0],zero,zero,zero
	mulss	xmm0, dword ptr [rbp - 16]
	movss	dword ptr [rbp - 20], xmm0
	movss	xmm0, dword ptr [rbp - 20] ## xmm0 = mem[0],zero,zero,zero
	addss	xmm0, dword ptr [rbp - 8]
	movss	dword ptr [rbp - 8], xmm0
	movss	xmm0, dword ptr [rbp - 8] ## xmm0 = mem[0],zero,zero,zero
	subss	xmm0, dword ptr [rbp - 24]
	movss	dword ptr [rbp - 8], xmm0
	movss	xmm0, dword ptr [rbp - 8] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	lea	rdi, [rip + L_.str.6]
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 60], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 64
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter amount of loan: "

L_.str.1:                               ## @.str.1
	.asciz	"%f"

L_.str.2:                               ## @.str.2
	.asciz	"Enter interest rate: "

L_.str.3:                               ## @.str.3
	.asciz	"Enter monthly payment: "

L_.str.4:                               ## @.str.4
	.asciz	"Balance after payment 1: $%.2f\n"

L_.str.5:                               ## @.str.5
	.asciz	"Balance after payment 2: $%.2f\n"

L_.str.6:                               ## @.str.6
	.asciz	"Balance after payment 3: $%.2f\n"


.subsections_via_symbols
