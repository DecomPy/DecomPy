	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_equal                  ## -- Begin function equal
	.p2align	4, 0x90
_equal:                                 ## @equal
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	xor	eax, eax
	mov	cl, al
	movsd	qword ptr [rbp - 16], xmm0
	movsd	qword ptr [rbp - 8], xmm1
	movsd	qword ptr [rbp - 32], xmm2
	movsd	qword ptr [rbp - 24], xmm3
	movsd	xmm0, qword ptr [rbp - 16] ## xmm0 = mem[0],zero
	ucomisd	xmm0, qword ptr [rbp - 32]
	mov	byte ptr [rbp - 33], cl ## 1-byte Spill
	jne	LBB0_2
	jp	LBB0_2
## %bb.1:
	movsd	xmm0, qword ptr [rbp - 8] ## xmm0 = mem[0],zero
	ucomisd	xmm0, qword ptr [rbp - 24]
	sete	al
	setnp	cl
	and	al, cl
	mov	byte ptr [rbp - 33], al ## 1-byte Spill
LBB0_2:
	mov	al, byte ptr [rbp - 33] ## 1-byte Reload
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI1_0:
	.quad	4616189618054758400     ## double 4
LCPI1_1:
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
	sub	rsp, 80
	mov	rax, qword ptr [rip + _f@GOTPCREL]
	movsd	xmm0, qword ptr [rip + LCPI1_0] ## xmm0 = mem[0],zero
	movsd	xmm1, qword ptr [rip + LCPI1_1] ## xmm1 = mem[0],zero
	xor	ecx, ecx
	mov	edx, 12
                                        ## kill: def $rdx killed $edx
	mov	r8, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	r8, qword ptr [r8]
	mov	qword ptr [rbp - 8], r8
	mov	dword ptr [rbp - 24], 0
	mov	dword ptr [rbp - 28], edi
	mov	qword ptr [rbp - 40], rsi
	lea	rsi, [rbp - 20]
	mov	rdi, rsi
	mov	esi, ecx
	movsd	qword ptr [rbp - 48], xmm0 ## 8-byte Spill
	movsd	qword ptr [rbp - 56], xmm1 ## 8-byte Spill
	mov	qword ptr [rbp - 64], rax ## 8-byte Spill
	call	_memset
	mov	dword ptr [rip + _origin], 1
	mov	dword ptr [rip + _origin+4], 2
	mov	dword ptr [rip + _origin+8], 3
	mov	rax, qword ptr [rbp - 64] ## 8-byte Reload
	movsd	xmm0, qword ptr [rbp - 56] ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movsd	qword ptr [rax], xmm0
	movsd	xmm1, qword ptr [rbp - 48] ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	movsd	qword ptr [rax + 8], xmm1
	movsx	esi, byte ptr [rip + _s+6]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	ecx, 12
	mov	edx, ecx
	lea	rdi, [rip + L_.str.1]
	mov	rsi, rdx
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, 56
	mov	esi, ecx
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 72], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rdx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, rsi
	mov	dword ptr [rbp - 76], eax ## 4-byte Spill
	jne	LBB1_2
## %bb.1:
	xor	eax, eax
	add	rsp, 80
	pop	rbp
	ret
LBB1_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_origin                 ## @origin
	.p2align	2
_origin:
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	3                       ## 0x3

	.globl	_demi                   ## @demi
	.p2align	3
_demi:
	.quad	4607182418800017408     ## double 1
	.quad	4611686018427387904     ## double 2

	.globl	_s                      ## @s
	.p2align	2
_s:
	.long	1                       ## 0x1
	.asciz	"Linux\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Torvalds\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.space	2

	.comm	_f,16,3                 ## @f
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%c\n"

L_.str.1:                               ## @.str.1
	.asciz	"sizeof int[3]=%ld, sizeof coord=%ld\n"

L_.str.2:                               ## @.str.2
	.asciz	"sizeof student : %ld\n"

	.comm	_p,12,2                 ## @p

.subsections_via_symbols
