	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_shellSort              ## -- Begin function shellSort
	.p2align	4, 0x90
_shellSort:                             ## @shellSort
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	esi, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 16], esi
	mov	eax, dword ptr [rbp - 12]
	cdq
	mov	esi, 2
	idiv	esi
	mov	dword ptr [rbp - 16], eax
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
                                        ##       Child Loop BB0_5 Depth 3
	cmp	dword ptr [rbp - 16], 0
	jle	LBB0_15
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 20], eax
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB0_5 Depth 3
	mov	eax, dword ptr [rbp - 20]
	cmp	eax, dword ptr [rbp - 12]
	jge	LBB0_13
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	mov	eax, dword ptr [rbp - 20]
	sub	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 24], eax
LBB0_5:                                 ##   Parent Loop BB0_1 Depth=1
                                        ##     Parent Loop BB0_3 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	cmp	dword ptr [rbp - 24], 0
	jl	LBB0_11
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=3
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 24]
	add	ecx, dword ptr [rbp - 16]
	movsxd	rdx, ecx
	mov	ecx, dword ptr [rax + 4*rdx]
	mov	rax, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rbp - 24]
	cmp	ecx, dword ptr [rax + 4*rdx]
	jl	LBB0_8
## %bb.7:                               ##   in Loop: Header=BB0_3 Depth=2
	jmp	LBB0_11
LBB0_8:                                 ##   in Loop: Header=BB0_5 Depth=3
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 24]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	dword ptr [rbp - 28], edx
	mov	rax, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 24]
	add	edx, dword ptr [rbp - 16]
	movsxd	rcx, edx
	mov	edx, dword ptr [rax + 4*rcx]
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 24]
	mov	dword ptr [rax + 4*rcx], edx
	mov	edx, dword ptr [rbp - 28]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 24]
	add	esi, dword ptr [rbp - 16]
	movsxd	rcx, esi
	mov	dword ptr [rax + 4*rcx], edx
## %bb.9:                               ##   in Loop: Header=BB0_5 Depth=3
	jmp	LBB0_10
LBB0_10:                                ##   in Loop: Header=BB0_5 Depth=3
	mov	eax, dword ptr [rbp - 24]
	sub	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 24], eax
	jmp	LBB0_5
LBB0_11:                                ##   in Loop: Header=BB0_3 Depth=2
	jmp	LBB0_12
LBB0_12:                                ##   in Loop: Header=BB0_3 Depth=2
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB0_3
LBB0_13:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_14
LBB0_14:                                ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 16]
	cdq
	mov	ecx, 2
	idiv	ecx
	mov	dword ptr [rbp - 16], eax
	jmp	LBB0_1
LBB0_15:
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI1_0:
	.quad	4696837146684686336     ## double 1.0E+6
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI1_1:
	.long	1127219200              ## 0x43300000
	.long	1160773632              ## 0x45300000
	.long	0                       ## 0x0
	.long	0                       ## 0x0
LCPI1_2:
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
	sub	rsp, 160
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 100], 0
	mov	dword ptr [rbp - 104], 500
	mov	dword ptr [rbp - 108], 0
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 108], 100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	call	_rand
	cdq
	idiv	dword ptr [rbp - 104]
	add	edx, 1
	movsxd	rcx, dword ptr [rbp - 108]
	mov	dword ptr [rbp + 4*rcx - 96], edx
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 108]
	add	eax, 1
	mov	dword ptr [rbp - 108], eax
	jmp	LBB1_1
LBB1_4:
	movsd	xmm0, qword ptr [rip + LCPI1_0] ## xmm0 = mem[0],zero
	mov	dword ptr [rbp - 112], 20
	movsd	qword ptr [rbp - 144], xmm0 ## 8-byte Spill
	call	_clock
	mov	qword ptr [rbp - 120], rax
	mov	esi, dword ptr [rbp - 112]
	lea	rdi, [rbp - 96]
	call	_shellSort
	call	_clock
	mov	qword ptr [rbp - 128], rax
	mov	rax, qword ptr [rbp - 128]
	mov	rdi, qword ptr [rbp - 120]
	sub	rax, rdi
	movq	xmm0, rax
	movaps	xmm1, xmmword ptr [rip + LCPI1_1] ## xmm1 = [1127219200,1160773632,0,0]
	punpckldq	xmm0, xmm1      ## xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movapd	xmm1, xmmword ptr [rip + LCPI1_2] ## xmm1 = [4.503600e+15,1.934281e+25]
	subpd	xmm0, xmm1
	haddpd	xmm0, xmm0
	movsd	xmm1, qword ptr [rbp - 144] ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	divsd	xmm0, xmm1
	movsd	qword ptr [rbp - 136], xmm0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rip + L_.str.2]
	mov	dword ptr [rbp - 148], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	movsd	xmm0, qword ptr [rbp - 136] ## xmm0 = mem[0],zero
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 152], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	mov	rsi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 8]
	cmp	rsi, rdi
	mov	dword ptr [rbp - 156], eax ## 4-byte Spill
	jne	LBB1_6
## %bb.5:
	xor	eax, eax
	add	rsp, 160
	pop	rbp
	ret
LBB1_6:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Data Sorted\n"

L_.str.1:                               ## @.str.1
	.asciz	"%s\n"

L_.str.2:                               ## @.str.2
	.asciz	"Shell Sort Big O Notation:\n--> Best Case: O(n log(n))\n--> Average Case: depends on gap sequence\n--> Worst Case: O(n)\n"

L_.str.3:                               ## @.str.3
	.asciz	"Time spent sorting: %f\n"


.subsections_via_symbols
