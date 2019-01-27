	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function DoTest
LCPI0_0:
	.quad	-4616189618054758400    ## double -1
LCPI0_1:
	.quad	4607182418800017408     ## double 1
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2
LCPI0_2:
	.long	3212836864              ## float -1
LCPI0_3:
	.long	1065353216              ## float 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_DoTest
	.p2align	4, 0x90
_DoTest:                                ## @DoTest
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 160
	mov	eax, dword ptr [rip + _sa]
	or	eax, dword ptr [rip + _sb]
	mov	dword ptr [rip + _sc], eax
	mov	esi, dword ptr [rip + _sc]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rip + _sa]
	and	esi, dword ptr [rip + _sb]
	mov	dword ptr [rip + _sc], esi
	mov	esi, dword ptr [rip + _sc]
	lea	rdi, [rip + L_.str]
	mov	dword ptr [rbp - 4], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rip + _sa]
	xor	esi, dword ptr [rip + _sb]
	mov	dword ptr [rip + _sc], esi
	mov	esi, dword ptr [rip + _sc]
	lea	rdi, [rip + L_.str]
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rip + _sa]
	shl	esi, 2
	mov	dword ptr [rip + _sc], esi
	mov	esi, dword ptr [rip + _sc]
	lea	rdi, [rip + L_.str]
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rip + _sa]
	sar	esi, 2
	mov	dword ptr [rip + _sc], esi
	mov	esi, dword ptr [rip + _sc]
	lea	rdi, [rip + L_.str]
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rip + _sa]
	add	esi, dword ptr [rip + _sb]
	mov	dword ptr [rip + _sc], esi
	mov	esi, dword ptr [rip + _sc]
	lea	rdi, [rip + L_.str]
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rip + _sa]
	sub	esi, dword ptr [rip + _sb]
	mov	dword ptr [rip + _sc], esi
	mov	esi, dword ptr [rip + _sc]
	lea	rdi, [rip + L_.str]
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rip + _sa]
	imul	esi, dword ptr [rip + _sb]
	mov	dword ptr [rip + _sc], esi
	mov	esi, dword ptr [rip + _sc]
	lea	rdi, [rip + L_.str]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rip + _sa]
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	mov	eax, esi
	cdq
	idiv	dword ptr [rip + _sb]
	mov	dword ptr [rip + _sc], eax
	mov	esi, dword ptr [rip + _sc]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rip + _sc]
	add	esi, 1
	mov	dword ptr [rip + _sc], esi
	mov	esi, dword ptr [rip + _sc]
	lea	rdi, [rip + L_.str]
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rip + _sc]
	add	esi, -1
	mov	dword ptr [rip + _sc], esi
	mov	esi, dword ptr [rip + _sc]
	mov	ecx, esi
	add	ecx, -1
	mov	dword ptr [rip + _sc], ecx
	lea	rdi, [rip + L_.str]
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rip + _sa]
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	mov	eax, ecx
	cdq
	idiv	dword ptr [rip + _sb]
	mov	dword ptr [rip + _sc], edx
	mov	esi, dword ptr [rip + _sc]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	sub	ecx, dword ptr [rip + _sa]
	mov	dword ptr [rip + _sc], ecx
	mov	esi, dword ptr [rip + _sc]
	lea	rdi, [rip + L_.str]
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rip + _sa]
	xor	ecx, -1
	mov	dword ptr [rip + _sc], ecx
	mov	esi, dword ptr [rip + _sc]
	lea	rdi, [rip + L_.str]
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rip + _ua]
	or	ecx, dword ptr [rip + _ub]
	mov	dword ptr [rip + _uc], ecx
	mov	esi, dword ptr [rip + _uc]
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rip + _ua]
	and	ecx, dword ptr [rip + _ub]
	mov	dword ptr [rip + _uc], ecx
	mov	esi, dword ptr [rip + _uc]
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 60], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rip + _ua]
	xor	ecx, dword ptr [rip + _ub]
	mov	dword ptr [rip + _uc], ecx
	mov	esi, dword ptr [rip + _uc]
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 64], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rip + _ua]
	shl	ecx, 2
	mov	dword ptr [rip + _uc], ecx
	mov	esi, dword ptr [rip + _uc]
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rip + _ua]
	shr	ecx, 2
	mov	dword ptr [rip + _uc], ecx
	mov	esi, dword ptr [rip + _uc]
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 72], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rip + _ua]
	add	ecx, dword ptr [rip + _ub]
	mov	dword ptr [rip + _uc], ecx
	mov	esi, dword ptr [rip + _uc]
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 76], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rip + _ua]
	sub	ecx, dword ptr [rip + _ub]
	mov	dword ptr [rip + _uc], ecx
	mov	esi, dword ptr [rip + _uc]
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 80], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rip + _ua]
	imul	ecx, dword ptr [rip + _ub]
	mov	dword ptr [rip + _uc], ecx
	mov	esi, dword ptr [rip + _uc]
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 84], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rip + _ua]
	mov	dword ptr [rbp - 88], eax ## 4-byte Spill
	mov	eax, ecx
	xor	edx, edx
	div	dword ptr [rip + _ub]
	mov	dword ptr [rip + _uc], eax
	mov	esi, dword ptr [rip + _uc]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rip + _uc]
	add	ecx, 1
	mov	dword ptr [rip + _uc], ecx
	mov	esi, dword ptr [rip + _uc]
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 92], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rip + _uc]
	add	ecx, -1
	mov	dword ptr [rip + _uc], ecx
	mov	ecx, dword ptr [rip + _uc]
	mov	esi, ecx
	add	esi, -1
	mov	dword ptr [rip + _uc], esi
	lea	rdi, [rip + L_.str.1]
	mov	esi, ecx
	mov	dword ptr [rbp - 96], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rip + _ua]
	mov	dword ptr [rbp - 100], eax ## 4-byte Spill
	mov	eax, ecx
	xor	ecx, ecx
	mov	edx, ecx
	div	dword ptr [rip + _ub]
	mov	dword ptr [rip + _uc], edx
	mov	esi, dword ptr [rip + _uc]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	sub	ecx, dword ptr [rip + _ua]
	mov	dword ptr [rip + _uc], ecx
	mov	esi, dword ptr [rip + _uc]
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 104], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rip + _ua]
	xor	ecx, -1
	mov	dword ptr [rip + _uc], ecx
	mov	esi, dword ptr [rip + _uc]
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 108], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	movss	xmm0, dword ptr [rip + _fa] ## xmm0 = mem[0],zero,zero,zero
	addss	xmm0, dword ptr [rip + _fb]
	movss	dword ptr [rip + _fc], xmm0
	movss	xmm0, dword ptr [rip + _fc] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 112], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	movss	xmm0, dword ptr [rip + _fa] ## xmm0 = mem[0],zero,zero,zero
	subss	xmm0, dword ptr [rip + _fb]
	movss	dword ptr [rip + _fc], xmm0
	movss	xmm0, dword ptr [rip + _fc] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 116], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	movss	xmm0, dword ptr [rip + _fa] ## xmm0 = mem[0],zero,zero,zero
	mulss	xmm0, dword ptr [rip + _fb]
	movss	dword ptr [rip + _fc], xmm0
	movss	xmm0, dword ptr [rip + _fc] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 120], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	movss	xmm0, dword ptr [rip + _fa] ## xmm0 = mem[0],zero,zero,zero
	divss	xmm0, dword ptr [rip + _fb]
	movss	dword ptr [rip + _fc], xmm0
	movss	xmm0, dword ptr [rip + _fc] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 124], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	movss	xmm0, dword ptr [rip + LCPI0_3] ## xmm0 = mem[0],zero,zero,zero
	addss	xmm0, dword ptr [rip + _fc]
	movss	dword ptr [rip + _fc], xmm0
	movss	xmm0, dword ptr [rip + _fc] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 128], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	movss	xmm0, dword ptr [rip + LCPI0_2] ## xmm0 = mem[0],zero,zero,zero
	movaps	xmm1, xmm0
	addss	xmm1, dword ptr [rip + _fc]
	movss	dword ptr [rip + _fc], xmm1
	movss	xmm1, dword ptr [rip + _fc] ## xmm1 = mem[0],zero,zero,zero
	movaps	xmm2, xmm1
	addss	xmm2, xmm0
	movss	dword ptr [rip + _fc], xmm2
	cvtss2sd	xmm0, xmm1
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 132], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	movsd	xmm0, qword ptr [rip + _da] ## xmm0 = mem[0],zero
	addsd	xmm0, qword ptr [rip + _db]
	movsd	qword ptr [rip + _dc], xmm0
	movsd	xmm0, qword ptr [rip + _dc] ## xmm0 = mem[0],zero
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 136], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	movsd	xmm0, qword ptr [rip + _da] ## xmm0 = mem[0],zero
	subsd	xmm0, qword ptr [rip + _db]
	movsd	qword ptr [rip + _dc], xmm0
	movsd	xmm0, qword ptr [rip + _dc] ## xmm0 = mem[0],zero
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 140], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	movsd	xmm0, qword ptr [rip + _da] ## xmm0 = mem[0],zero
	mulsd	xmm0, qword ptr [rip + _db]
	movsd	qword ptr [rip + _dc], xmm0
	movsd	xmm0, qword ptr [rip + _dc] ## xmm0 = mem[0],zero
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 144], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	movsd	xmm0, qword ptr [rip + _da] ## xmm0 = mem[0],zero
	divsd	xmm0, qword ptr [rip + _db]
	movsd	qword ptr [rip + _dc], xmm0
	movsd	xmm0, qword ptr [rip + _dc] ## xmm0 = mem[0],zero
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 148], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	movsd	xmm0, qword ptr [rip + LCPI0_1] ## xmm0 = mem[0],zero
	addsd	xmm0, qword ptr [rip + _dc]
	movsd	qword ptr [rip + _dc], xmm0
	movsd	xmm0, qword ptr [rip + _dc] ## xmm0 = mem[0],zero
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 152], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	movsd	xmm0, qword ptr [rip + LCPI0_0] ## xmm0 = mem[0],zero
	movaps	xmm1, xmm0
	addsd	xmm1, qword ptr [rip + _dc]
	movsd	qword ptr [rip + _dc], xmm1
	movsd	xmm1, qword ptr [rip + _dc] ## xmm1 = mem[0],zero
	movaps	xmm2, xmm1
	addsd	xmm2, xmm0
	movsd	qword ptr [rip + _dc], xmm2
	lea	rdi, [rip + L_.str.3]
	movaps	xmm0, xmm1
	mov	dword ptr [rbp - 156], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	mov	dword ptr [rbp - 160], eax ## 4-byte Spill
	add	rsp, 160
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
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
	call	_DoTest
	xor	eax, eax
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_sa                     ## @sa
	.p2align	2
_sa:
	.long	1                       ## 0x1

	.globl	_sb                     ## @sb
	.p2align	2
_sb:
	.long	2                       ## 0x2

	.globl	_sc                     ## @sc
	.p2align	2
_sc:
	.long	3                       ## 0x3

	.globl	_ua                     ## @ua
	.p2align	2
_ua:
	.long	1                       ## 0x1

	.globl	_ub                     ## @ub
	.p2align	2
_ub:
	.long	2                       ## 0x2

	.globl	_uc                     ## @uc
	.p2align	2
_uc:
	.long	3                       ## 0x3

	.globl	_fa                     ## @fa
	.p2align	2
_fa:
	.long	1065353216              ## float 1

	.globl	_fb                     ## @fb
	.p2align	2
_fb:
	.long	1073741824              ## float 2

	.globl	_fc                     ## @fc
	.p2align	2
_fc:
	.long	1077936128              ## float 3

	.globl	_da                     ## @da
	.p2align	3
_da:
	.quad	4607182418800017408     ## double 1

	.globl	_db                     ## @db
	.p2align	3
_db:
	.quad	4611686018427387904     ## double 2

	.globl	_dc                     ## @dc
	.p2align	3
_dc:
	.quad	4613937818241073152     ## double 3

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"sc = %x \n"

L_.str.1:                               ## @.str.1
	.asciz	"uc = %x \n"

L_.str.2:                               ## @.str.2
	.asciz	"fc = %f \n"

L_.str.3:                               ## @.str.3
	.asciz	"dc = %f \n"


.subsections_via_symbols
