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
	movss	xmm0, dword ptr [rbp - 8] ## xmm0 = mem[0],zero,zero,zero
	movss	xmm1, dword ptr [rbp - 12] ## xmm1 = mem[0],zero,zero,zero
	lea	rdi, [rbp - 16]
	lea	rsi, [rbp - 20]
	lea	rdx, [rbp - 24]
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	call	_cylinder
	movss	xmm0, dword ptr [rbp - 16] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	lea	rdi, [rip + L_.str.3]
	mov	al, 1
	call	_printf
	movss	xmm0, dword ptr [rbp - 20] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	lea	rdi, [rip + L_.str.4]
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	movss	xmm0, dword ptr [rbp - 24] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	lea	rdi, [rip + L_.str.5]
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 64
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2               ## -- Begin function cylinder
LCPI1_0:
	.long	1088421888              ## float 7
LCPI1_1:
	.long	1102053376              ## float 22
LCPI1_2:
	.long	1073741824              ## float 2
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_cylinder
	.p2align	4, 0x90
_cylinder:                              ## @cylinder
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movss	xmm2, dword ptr [rip + LCPI1_0] ## xmm2 = mem[0],zero,zero,zero
	movss	xmm3, dword ptr [rip + LCPI1_1] ## xmm3 = mem[0],zero,zero,zero
	movss	xmm4, dword ptr [rip + LCPI1_2] ## xmm4 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 4], xmm0
	movss	dword ptr [rbp - 8], xmm1
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	qword ptr [rbp - 32], rdx
	movaps	xmm0, xmm4
	mulss	xmm0, dword ptr [rbp - 4]
	mulss	xmm0, dword ptr [rbp - 8]
	mulss	xmm0, xmm3
	divss	xmm0, xmm2
	mov	rdx, qword ptr [rbp - 16]
	movss	dword ptr [rdx], xmm0
	mulss	xmm4, dword ptr [rbp - 4]
	movss	xmm0, dword ptr [rbp - 8] ## xmm0 = mem[0],zero,zero,zero
	addss	xmm0, dword ptr [rbp - 4]
	mulss	xmm4, xmm0
	mulss	xmm4, xmm3
	divss	xmm4, xmm2
	mov	rdx, qword ptr [rbp - 24]
	movss	dword ptr [rdx], xmm4
	movss	xmm0, dword ptr [rbp - 4] ## xmm0 = mem[0],zero,zero,zero
	mulss	xmm0, dword ptr [rbp - 4]
	mulss	xmm0, dword ptr [rbp - 8]
	mulss	xmm0, xmm3
	divss	xmm0, xmm2
	mov	rdx, qword ptr [rbp - 32]
	movss	dword ptr [rdx], xmm0
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter radius: "

L_.str.1:                               ## @.str.1
	.asciz	"%f"

L_.str.2:                               ## @.str.2
	.asciz	"Enter height: "

L_.str.3:                               ## @.str.3
	.asciz	"Curved surface area: %f\n"

L_.str.4:                               ## @.str.4
	.asciz	"Total surface area: %f\n"

L_.str.5:                               ## @.str.5
	.asciz	"Volume: %f\n"


.subsections_via_symbols
