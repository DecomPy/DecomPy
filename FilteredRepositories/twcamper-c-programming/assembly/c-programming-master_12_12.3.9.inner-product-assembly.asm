	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_inner_product          ## -- Begin function inner_product
	.p2align	4, 0x90
_inner_product:                         ## @inner_product
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], edx
	xorps	xmm0, xmm0
	movsd	qword ptr [rbp - 48], xmm0
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 32], rsi
	mov	rsi, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 40], rsi
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 32]
	mov	rsi, qword ptr [rbp - 8]
	movsxd	rdi, dword ptr [rbp - 20]
	shl	rdi, 3
	add	rsi, rdi
	cmp	rdx, rsi
	mov	byte ptr [rbp - 49], cl ## 1-byte Spill
	jae	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 40]
	mov	rcx, qword ptr [rbp - 16]
	movsxd	rdx, dword ptr [rbp - 20]
	shl	rdx, 3
	add	rcx, rdx
	cmp	rax, rcx
	setb	sil
	mov	byte ptr [rbp - 49], sil ## 1-byte Spill
LBB0_3:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	al, byte ptr [rbp - 49] ## 1-byte Reload
	test	al, 1
	jne	LBB0_4
	jmp	LBB0_6
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 32]
	movsd	xmm0, qword ptr [rax]   ## xmm0 = mem[0],zero
	mov	rax, qword ptr [rbp - 40]
	mulsd	xmm0, qword ptr [rax]
	addsd	xmm0, qword ptr [rbp - 48]
	movsd	qword ptr [rbp - 48], xmm0
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 32]
	add	rax, 8
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rbp - 40]
	add	rax, 8
	mov	qword ptr [rbp - 40], rax
	jmp	LBB0_1
LBB0_6:
	movsd	xmm0, qword ptr [rbp - 48] ## xmm0 = mem[0],zero
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI1_0:
	.quad	4626069108262325715     ## double 19.099
LCPI1_1:
	.quad	-4596472295936176947    ## double -22.050000000000001
LCPI1_2:
	.quad	4621143577644865946     ## double 8.8000000000000007
LCPI1_3:
	.quad	4607857958744122982     ## double 1.1499999999999999
LCPI1_4:
	.quad	4613937818241073152     ## double 3
LCPI1_5:
	.quad	4636736587667194511     ## double 99.989999999999994
LCPI1_6:
	.quad	4620468037700760371     ## double 7.7999999999999998
LCPI1_7:
	.quad	4614264329214057513     ## double 3.145
LCPI1_8:
	.quad	4607182418800017408     ## double 1
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
	sub	rsp, 224
	lea	rax, [rbp - 96]
	lea	rcx, [rbp - 48]
	movsd	xmm0, qword ptr [rip + LCPI1_0] ## xmm0 = mem[0],zero
	movsd	xmm1, qword ptr [rip + LCPI1_1] ## xmm1 = mem[0],zero
	movsd	xmm2, qword ptr [rip + LCPI1_2] ## xmm2 = mem[0],zero
	movsd	xmm3, qword ptr [rip + LCPI1_3] ## xmm3 = mem[0],zero
	movsd	xmm4, qword ptr [rip + LCPI1_4] ## xmm4 = mem[0],zero
	xor	edx, edx
	mov	esi, 40
	mov	edi, esi
	movsd	xmm5, qword ptr [rip + LCPI1_5] ## xmm5 = mem[0],zero
	movsd	xmm6, qword ptr [rip + LCPI1_6] ## xmm6 = mem[0],zero
	movsd	xmm7, qword ptr [rip + LCPI1_7] ## xmm7 = mem[0],zero
	movsd	xmm8, qword ptr [rip + LCPI1_8] ## xmm8 = mem[0],zero
	mov	r8, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	r8, qword ptr [r8]
	mov	qword ptr [rbp - 8], r8
	mov	dword ptr [rbp - 100], 0
	mov	r8, rcx
	mov	qword ptr [rbp - 112], rdi ## 8-byte Spill
	mov	rdi, r8
	mov	esi, edx
	mov	r8, qword ptr [rbp - 112] ## 8-byte Reload
	mov	dword ptr [rbp - 116], edx ## 4-byte Spill
	mov	rdx, r8
	mov	qword ptr [rbp - 128], rax ## 8-byte Spill
	mov	qword ptr [rbp - 136], rcx ## 8-byte Spill
	movsd	qword ptr [rbp - 144], xmm0 ## 8-byte Spill
	movsd	qword ptr [rbp - 152], xmm1 ## 8-byte Spill
	movsd	qword ptr [rbp - 160], xmm2 ## 8-byte Spill
	movsd	qword ptr [rbp - 168], xmm3 ## 8-byte Spill
	movsd	qword ptr [rbp - 176], xmm4 ## 8-byte Spill
	movsd	qword ptr [rbp - 184], xmm8 ## 8-byte Spill
	movsd	qword ptr [rbp - 192], xmm5 ## 8-byte Spill
	movsd	qword ptr [rbp - 200], xmm6 ## 8-byte Spill
	movsd	qword ptr [rbp - 208], xmm7 ## 8-byte Spill
	call	_memset
	movsd	xmm0, qword ptr [rbp - 184] ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 48], xmm0
	movsd	xmm1, qword ptr [rbp - 208] ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	movsd	qword ptr [rbp - 40], xmm1
	movsd	xmm2, qword ptr [rbp - 200] ## 8-byte Reload
                                        ## xmm2 = mem[0],zero
	movsd	qword ptr [rbp - 32], xmm2
	movsd	xmm3, qword ptr [rbp - 152] ## 8-byte Reload
                                        ## xmm3 = mem[0],zero
	movsd	qword ptr [rbp - 24], xmm3
	movsd	xmm4, qword ptr [rbp - 192] ## 8-byte Reload
                                        ## xmm4 = mem[0],zero
	movsd	qword ptr [rbp - 16], xmm4
	mov	rax, qword ptr [rbp - 128] ## 8-byte Reload
	mov	rdi, rax
	mov	esi, dword ptr [rbp - 116] ## 4-byte Reload
	mov	rdx, qword ptr [rbp - 112] ## 8-byte Reload
	call	_memset
	movsd	xmm0, qword ptr [rbp - 176] ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 96], xmm0
	movsd	xmm1, qword ptr [rbp - 168] ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	movsd	qword ptr [rbp - 88], xmm1
	movsd	xmm2, qword ptr [rbp - 160] ## 8-byte Reload
                                        ## xmm2 = mem[0],zero
	movsd	qword ptr [rbp - 80], xmm2
	movsd	xmm3, qword ptr [rbp - 152] ## 8-byte Reload
                                        ## xmm3 = mem[0],zero
	movsd	qword ptr [rbp - 72], xmm3
	movsd	xmm4, qword ptr [rbp - 144] ## 8-byte Reload
                                        ## xmm4 = mem[0],zero
	movsd	qword ptr [rbp - 64], xmm4
	mov	rdi, qword ptr [rbp - 136] ## 8-byte Reload
	mov	rsi, qword ptr [rbp - 128] ## 8-byte Reload
	mov	edx, 5
	call	_inner_product
	lea	rdi, [rip + L_.str]
	mov	al, 1
	call	_printf
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rcx, rsi
	mov	dword ptr [rbp - 212], eax ## 4-byte Spill
	jne	LBB1_2
## %bb.1:
	xor	eax, eax
	add	rsp, 224
	pop	rbp
	ret
LBB1_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Product: %3.8f\n"


.subsections_via_symbols
