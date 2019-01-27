	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_f                      ## -- Begin function f
	.p2align	4, 0x90
_f:                                     ## @f
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	cvtsd2ss	xmm0, xmm0
	cvtsd2ss	xmm1, xmm1
	cvtsd2ss	xmm2, xmm2
	movss	dword ptr [rbp - 4], xmm0
	movss	dword ptr [rbp - 8], xmm1
	movss	dword ptr [rbp - 12], xmm2
	movss	xmm0, dword ptr [rbp - 4] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	movss	xmm1, dword ptr [rbp - 8] ## xmm1 = mem[0],zero,zero,zero
	cvtss2sd	xmm1, xmm1
	movss	xmm2, dword ptr [rbp - 12] ## xmm2 = mem[0],zero,zero,zero
	cvtss2sd	xmm2, xmm2
	lea	rdi, [rip + L_.str]
	mov	al, 3
	call	_printf
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_g                      ## -- Begin function g
	.p2align	4, 0x90
_g:                                     ## @g
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	movss	dword ptr [rbp - 4], xmm0
	movss	dword ptr [rbp - 8], xmm1
	movss	dword ptr [rbp - 12], xmm2
	movss	xmm0, dword ptr [rbp - 4] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	movss	xmm1, dword ptr [rbp - 8] ## xmm1 = mem[0],zero,zero,zero
	cvtss2sd	xmm1, xmm1
	movss	xmm2, dword ptr [rbp - 12] ## xmm2 = mem[0],zero,zero,zero
	cvtss2sd	xmm2, xmm2
	lea	rdi, [rip + L_.str]
	mov	al, 3
	call	_printf
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI2_0:
	.quad	4607182418800017408     ## double 1
LCPI2_1:
	.quad	4611686018427387904     ## double 2
LCPI2_2:
	.quad	4613937818241073152     ## double 3
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
	lea	rax, [rip + _arr]
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rax
	mov	rax, qword ptr [rbp - 24]
	mov	edi, dword ptr [rax]
	cvtsi2sd	xmm0, edi
	mov	rax, qword ptr [rbp - 24]
	mov	edi, dword ptr [rax + 4]
	cvtsi2sd	xmm1, edi
	mov	rax, qword ptr [rbp - 24]
	mov	edi, dword ptr [rax + 8]
	cvtsi2sd	xmm2, edi
	call	_f
	movsd	xmm0, qword ptr [rip + LCPI2_0] ## xmm0 = mem[0],zero
	movsd	xmm1, qword ptr [rip + LCPI2_1] ## xmm1 = mem[0],zero
	movsd	xmm2, qword ptr [rip + LCPI2_2] ## xmm2 = mem[0],zero
	call	_f
	xor	eax, eax
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%f %f %f\n"

	.section	__DATA,__data
	.globl	_arr                    ## @arr
	.p2align	2
_arr:
	.long	1065353216              ## float 1
	.long	1073741824              ## float 2
	.long	1077936128              ## float 3


.subsections_via_symbols
