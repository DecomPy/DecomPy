	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI0_0:
	.quad	4616402177069292673     ## double 4.1887903296220665
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
	lea	rsi, [rbp - 12]
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	movsd	xmm0, qword ptr [rip + LCPI0_0] ## xmm0 = mem[0],zero
	movss	xmm1, dword ptr [rbp - 12] ## xmm1 = mem[0],zero,zero,zero
	cvtss2sd	xmm1, xmm1
	mulsd	xmm0, xmm1
	cvtsd2ss	xmm0, xmm0
	movss	dword ptr [rbp - 8], xmm0
	movss	xmm0, dword ptr [rbp - 12] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	movss	xmm1, dword ptr [rbp - 8] ## xmm1 = mem[0],zero,zero,zero
	cvtss2sd	xmm1, xmm1
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	al, 2
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
	.asciz	"Enter a radius: "

L_.str.1:                               ## @.str.1
	.asciz	"%f"

L_.str.2:                               ## @.str.2
	.asciz	"Volume of Sphere (radius %.2f): %.10f\n"


.subsections_via_symbols
