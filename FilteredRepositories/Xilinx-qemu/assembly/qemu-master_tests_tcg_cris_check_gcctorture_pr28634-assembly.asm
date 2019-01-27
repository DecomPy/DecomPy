	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI0_0:
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
	sub	rsp, 16
	mov	dword ptr [rbp - 4], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movsd	xmm0, qword ptr [rip + _y] ## xmm0 = mem[0],zero
	xorps	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jbe	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movsd	xmm0, qword ptr [rip + _x] ## xmm0 = mem[0],zero
	addsd	xmm0, qword ptr [rip + _y]
	movsd	qword ptr [rip + _y], xmm0
	jmp	LBB0_1
LBB0_3:
	movsd	xmm0, qword ptr [rip + LCPI0_0] ## xmm0 = mem[0],zero
	movsd	xmm1, qword ptr [rip + _y] ## xmm1 = mem[0],zero
	addsd	xmm0, qword ptr [rip + _x]
	ucomisd	xmm1, xmm0
	jne	LBB0_4
	jp	LBB0_4
	jmp	LBB0_5
LBB0_4:
	call	_abort
LBB0_5:
	xor	edi, edi
	call	_exit
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_x                      ## @x
	.p2align	3
_x:
	.quad	-4377498837804122112    ## double -9007199254740992

	.globl	_y                      ## @y
	.p2align	3
_y:
	.quad	4607182418800017408     ## double 1


.subsections_via_symbols
