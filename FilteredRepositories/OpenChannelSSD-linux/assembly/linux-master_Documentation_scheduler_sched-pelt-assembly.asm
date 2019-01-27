	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function calc_runnable_avg_yN_inv
LCPI0_0:
	.quad	4751297606873776128     ## double 4294967295
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_calc_runnable_avg_yN_inv
	.p2align	4, 0x90
_calc_runnable_avg_yN_inv:              ## @calc_runnable_avg_yN_inv
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 4], 32
	jge	LBB0_6
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rip + _y@GOTPCREL]
	movsd	xmm0, qword ptr [rax]   ## xmm0 = mem[0],zero
	cvtsi2sd	xmm1, dword ptr [rbp - 4]
	call	_pow
	movsd	xmm1, qword ptr [rip + LCPI0_0] ## xmm1 = mem[0],zero
	mulsd	xmm0, xmm1
	cvttsd2si	rax, xmm0
	mov	ecx, eax
	mov	dword ptr [rbp - 8], ecx
	mov	eax, dword ptr [rbp - 4]
	cdq
	mov	ecx, 6
	idiv	ecx
	cmp	edx, 0
	jne	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	esi, dword ptr [rbp - 8]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_1
LBB0_6:
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function calc_runnable_avg_yN_sum
LCPI1_0:
	.quad	4652218415073722368     ## double 1024
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_calc_runnable_avg_yN_sum
	.p2align	4, 0x90
_calc_runnable_avg_yN_sum:              ## @calc_runnable_avg_yN_sum
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	lea	rdi, [rip + L_.str.4]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4], 1
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 4], 32
	jg	LBB1_9
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	cmp	dword ptr [rbp - 4], 1
	jne	LBB1_4
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rip + _y@GOTPCREL]
	movsd	xmm0, qword ptr [rax]   ## xmm0 = mem[0],zero
	mov	ecx, dword ptr [rip + _sum]
	cvtsi2sd	xmm1, ecx
	mulsd	xmm1, xmm0
	cvttsd2si	ecx, xmm1
	mov	dword ptr [rip + _sum], ecx
	jmp	LBB1_5
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	movsd	xmm0, qword ptr [rip + LCPI1_0] ## xmm0 = mem[0],zero
	mov	rax, qword ptr [rip + _y@GOTPCREL]
	mov	ecx, dword ptr [rip + _sum]
	cvtsi2sd	xmm1, ecx
	mulsd	xmm1, qword ptr [rax]
	mulsd	xmm0, qword ptr [rax]
	addsd	xmm1, xmm0
	cvttsd2si	ecx, xmm1
	mov	dword ptr [rip + _sum], ecx
LBB1_5:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 4]
	cdq
	mov	ecx, 11
	idiv	ecx
	cmp	edx, 0
	jne	LBB1_7
## %bb.6:                               ##   in Loop: Header=BB1_1 Depth=1
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
LBB1_7:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	esi, dword ptr [rip + _sum]
	lea	rdi, [rip + L_.str.5]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
## %bb.8:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	LBB1_1
LBB1_9:
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function calc_converged_max
LCPI2_0:
	.quad	4751297606873776128     ## double 4294967295
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_calc_converged_max
	.p2align	4, 0x90
_calc_converged_max:                    ## @calc_converged_max
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	movsd	xmm0, qword ptr [rip + LCPI2_0] ## xmm0 = mem[0],zero
	mov	rax, qword ptr [rip + _y@GOTPCREL]
	mov	qword ptr [rbp - 8], 0
	mulsd	xmm0, qword ptr [rax]
	cvttsd2si	rax, xmm0
	mov	qword ptr [rbp - 16], rax
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rip + _n], -1
	jle	LBB2_3
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	rax, qword ptr [rip + _max]
	imul	rax, qword ptr [rbp - 16]
	sar	rax, 32
	add	rax, 1024
	mov	qword ptr [rip + _max], rax
LBB2_3:                                 ##   in Loop: Header=BB2_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rip + _max]
	jne	LBB2_5
## %bb.4:
	jmp	LBB2_7
LBB2_5:                                 ##   in Loop: Header=BB2_1 Depth=1
	mov	rax, qword ptr [rip + _max]
	mov	qword ptr [rbp - 8], rax
## %bb.6:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rip + _n]
	add	eax, 1
	mov	dword ptr [rip + _n], eax
	jmp	LBB2_1
LBB2_7:
	mov	eax, dword ptr [rip + _n]
	add	eax, -1
	mov	dword ptr [rip + _n], eax
	lea	rdi, [rip + L_.str.6]
	mov	esi, 32
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rip + _max]
	lea	rdi, [rip + L_.str.7]
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_calc_accumulated_sum_32 ## -- Begin function calc_accumulated_sum_32
	.p2align	4, 0x90
_calc_accumulated_sum_32:               ## @calc_accumulated_sum_32
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	eax, dword ptr [rip + _sum]
	mov	dword ptr [rbp - 8], eax
	lea	rdi, [rip + L_.str.8]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4], 1
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rip + _n]
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	mov	eax, ecx
	cdq
	mov	ecx, 32
	idiv	ecx
	add	eax, 1
	mov	ecx, dword ptr [rbp - 16] ## 4-byte Reload
	cmp	ecx, eax
	jg	LBB3_8
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	cmp	dword ptr [rbp - 4], 1
	jle	LBB3_4
## %bb.3:                               ##   in Loop: Header=BB3_1 Depth=1
	mov	eax, dword ptr [rbp - 8]
	cdq
	mov	ecx, 2
	idiv	ecx
	add	eax, dword ptr [rip + _sum]
	mov	dword ptr [rbp - 8], eax
LBB3_4:                                 ##   in Loop: Header=BB3_1 Depth=1
	mov	eax, dword ptr [rbp - 4]
	cdq
	mov	ecx, 6
	idiv	ecx
	cmp	edx, 0
	jne	LBB3_6
## %bb.5:                               ##   in Loop: Header=BB3_1 Depth=1
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
LBB3_6:                                 ##   in Loop: Header=BB3_1 Depth=1
	mov	esi, dword ptr [rbp - 8]
	lea	rdi, [rip + L_.str.9]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
## %bb.7:                               ##   in Loop: Header=BB3_1 Depth=1
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	LBB3_1
LBB3_8:
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI4_0:
	.quad	4602678819172646912     ## double 0.5
LCPI4_1:
	.quad	4584664420663164928     ## double 0.03125
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
	sub	rsp, 16
	lea	rdi, [rip + L_.str.10]
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rip + _y@GOTPCREL]
	movsd	xmm0, qword ptr [rip + LCPI4_0] ## xmm0 = mem[0],zero
	movsd	xmm1, qword ptr [rip + LCPI4_1] ## xmm1 = mem[0],zero
	mov	dword ptr [rbp - 4], eax ## 4-byte Spill
	mov	qword ptr [rbp - 16], rdi ## 8-byte Spill
	call	_pow
	mov	rdi, qword ptr [rbp - 16] ## 8-byte Reload
	movsd	qword ptr [rdi], xmm0
	call	_calc_runnable_avg_yN_inv
	call	_calc_converged_max
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"static const u32 runnable_avg_yN_inv[] = {"

	.comm	_y,8,3                  ## @y
L_.str.1:                               ## @.str.1
	.asciz	"\n\t"

L_.str.2:                               ## @.str.2
	.asciz	"0x%8x, "

L_.str.3:                               ## @.str.3
	.asciz	"\n};\n\n"

	.section	__DATA,__data
	.globl	_sum                    ## @sum
	.p2align	2
_sum:
	.long	1024                    ## 0x400

	.section	__TEXT,__cstring,cstring_literals
L_.str.4:                               ## @.str.4
	.asciz	"static const u32 runnable_avg_yN_sum[] = {\n\t    0,"

L_.str.5:                               ## @.str.5
	.asciz	"%5d,"

	.section	__DATA,__data
	.globl	_n                      ## @n
	.p2align	2
_n:
	.long	4294967295              ## 0xffffffff

	.globl	_max                    ## @max
	.p2align	3
_max:
	.quad	1024                    ## 0x400

	.section	__TEXT,__cstring,cstring_literals
L_.str.6:                               ## @.str.6
	.asciz	"#define LOAD_AVG_PERIOD %d\n"

L_.str.7:                               ## @.str.7
	.asciz	"#define LOAD_AVG_MAX %ld\n"

L_.str.8:                               ## @.str.8
	.asciz	"static const u32 __accumulated_sum_N32[] = {\n\t     0,"

L_.str.9:                               ## @.str.9
	.asciz	"%6d,"

L_.str.10:                              ## @.str.10
	.asciz	"/* Generated by Documentation/scheduler/sched-pelt; do not modify. */\n\n"


.subsections_via_symbols
