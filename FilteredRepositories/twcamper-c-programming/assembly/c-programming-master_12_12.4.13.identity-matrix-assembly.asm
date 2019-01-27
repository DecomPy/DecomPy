	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI0_0:
	.quad	4607632778762754458     ## double 1.1000000000000001
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
	sub	rsp, 1200
	lea	rax, [rbp - 1168]
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 8], rcx
	mov	dword ptr [rbp - 1172], 0
	mov	dword ptr [rbp - 1188], 12
	mov	qword ptr [rbp - 1184], rax
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 1184]
	lea	rcx, [rbp - 1168]
	add	rcx, 1056
	add	rcx, 88
	cmp	rax, rcx
	ja	LBB0_7
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	cmp	dword ptr [rbp - 1188], 12
	jne	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movsd	xmm0, qword ptr [rip + LCPI0_0] ## xmm0 = mem[0],zero
	mov	dword ptr [rbp - 1188], 0
	mov	rax, qword ptr [rbp - 1184]
	movsd	qword ptr [rax], xmm0
	jmp	LBB0_5
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 1188]
	add	eax, 1
	mov	dword ptr [rbp - 1188], eax
	mov	rcx, qword ptr [rbp - 1184]
	xorps	xmm0, xmm0
	movsd	qword ptr [rcx], xmm0
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_6
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 1184]
	add	rax, 8
	mov	qword ptr [rbp - 1184], rax
	jmp	LBB0_1
LBB0_7:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB0_9
## %bb.8:
	xor	eax, eax
	add	rsp, 1200
	pop	rbp
	ret
LBB0_9:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
