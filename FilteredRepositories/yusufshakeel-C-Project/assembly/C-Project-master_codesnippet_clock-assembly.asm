	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI0_0:
	.quad	4696837146684686336     ## double 1.0E+6
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI0_1:
	.long	1127219200              ## 0x43300000
	.long	1160773632              ## 0x45300000
	.long	0                       ## 0x0
	.long	0                       ## 0x0
LCPI0_2:
	.quad	4841369599423283200     ## double 4503599627370496
	.quad	4985484787499139072     ## double 1.9342813113834067E+25
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
	call	_clock
	mov	qword ptr [rbp - 16], rax
	mov	qword ptr [rbp - 32], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rbp - 32], 1000000000
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_3
LBB0_3:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 32]
	add	rax, 1
	mov	qword ptr [rbp - 32], rax
	jmp	LBB0_1
LBB0_4:
	movsd	xmm0, qword ptr [rip + LCPI0_0] ## xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 48], xmm0 ## 8-byte Spill
	call	_clock
	mov	qword ptr [rbp - 24], rax
	mov	rax, qword ptr [rbp - 24]
	mov	rcx, qword ptr [rbp - 16]
	sub	rax, rcx
	movq	xmm0, rax
	movaps	xmm1, xmmword ptr [rip + LCPI0_1] ## xmm1 = [1127219200,1160773632,0,0]
	punpckldq	xmm0, xmm1      ## xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movapd	xmm1, xmmword ptr [rip + LCPI0_2] ## xmm1 = [4.503600e+15,1.934281e+25]
	subpd	xmm0, xmm1
	haddpd	xmm0, xmm0
	movsd	xmm1, qword ptr [rbp - 48] ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	divsd	xmm0, xmm1
	movsd	qword ptr [rbp - 40], xmm0
	mov	rsi, qword ptr [rbp - 16]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rbp - 24]
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	movsd	xmm0, qword ptr [rbp - 40] ## xmm0 = mem[0],zero
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	xor	edx, edx
	mov	dword ptr [rbp - 60], eax ## 4-byte Spill
	mov	eax, edx
	add	rsp, 64
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Start Time: %ld\n"

L_.str.1:                               ## @.str.1
	.asciz	"End Time: %ld\n"

L_.str.2:                               ## @.str.2
	.asciz	"Total Time: %f\n"


.subsections_via_symbols
