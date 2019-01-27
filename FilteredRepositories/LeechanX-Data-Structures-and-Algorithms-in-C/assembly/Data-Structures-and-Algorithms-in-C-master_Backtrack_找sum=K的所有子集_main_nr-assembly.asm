	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_displayoutcome         ## -- Begin function displayoutcome
	.p2align	4, 0x90
_displayoutcome:                        ## @displayoutcome
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], edx
	mov	dword ptr [rbp - 24], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 20]
	jge	LBB0_6
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 24]
	cmp	dword ptr [rax + 4*rcx], 0
	je	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 24]
	mov	esi, dword ptr [rax + 4*rcx]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_5
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB0_1
LBB0_6:
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_sum                    ## -- Begin function sum
	.p2align	4, 0x90
_sum:                                   ## @sum
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	qword ptr [rbp - 24], rdx
	mov	dword ptr [rbp - 32], 0
	mov	dword ptr [rbp - 28], 0
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 28]
	cmp	eax, dword ptr [rbp - 12]
	jge	LBB1_6
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 28]
	cmp	dword ptr [rax + 4*rcx], 0
	je	LBB1_4
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 24]
	movsxd	rcx, dword ptr [rbp - 28]
	mov	edx, dword ptr [rax + 4*rcx]
	add	edx, dword ptr [rbp - 32]
	mov	dword ptr [rbp - 32], edx
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_5
LBB1_5:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	dword ptr [rbp - 28], eax
	jmp	LBB1_1
LBB1_6:
	mov	eax, dword ptr [rbp - 32]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_backtrace              ## -- Begin function backtrace
	.p2align	4, 0x90
_backtrace:                             ## @backtrace
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 80
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	qword ptr [rbp - 16], rdi
	mov	dword ptr [rbp - 20], esi
	mov	esi, dword ptr [rbp - 20]
	mov	eax, esi
	mov	rdi, rsp
	mov	qword ptr [rbp - 32], rdi
	lea	rdi, [4*rax + 15]
	and	rdi, -16
	mov	rcx, rsp
	sub	rcx, rdi
	mov	rsp, rcx
	mov	qword ptr [rbp - 40], rax
	mov	esi, dword ptr [rbp - 20]
	mov	eax, esi
	lea	rdi, [4*rax + 15]
	and	rdi, -16
	mov	rdx, rsp
	sub	rdx, rdi
	mov	rsp, rdx
	mov	qword ptr [rbp - 48], rax
	mov	dword ptr [rbp - 52], 0
	movsxd	rax, dword ptr [rbp - 52]
	mov	dword ptr [rdx + 4*rax], -1
	mov	qword ptr [rbp - 64], rcx ## 8-byte Spill
	mov	qword ptr [rbp - 72], rdx ## 8-byte Spill
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 52], 0
	jl	LBB2_14
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	esi, dword ptr [rbp - 52]
	mov	rdx, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rbp - 64] ## 8-byte Reload
	call	_sum
	mov	dword ptr [rbp - 56], eax
	movsxd	rdx, dword ptr [rbp - 52]
	mov	rdi, qword ptr [rbp - 72] ## 8-byte Reload
	mov	eax, dword ptr [rdi + 4*rdx]
	add	eax, 1
	mov	dword ptr [rdi + 4*rdx], eax
	movsxd	rdx, dword ptr [rbp - 52]
	cmp	dword ptr [rdi + 4*rdx], 0
	je	LBB2_4
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 52]
	mov	edx, dword ptr [rax + 4*rcx]
	add	edx, dword ptr [rbp - 56]
	mov	dword ptr [rbp - 56], edx
LBB2_4:                                 ##   in Loop: Header=BB2_1 Depth=1
	movsxd	rax, dword ptr [rbp - 52]
	mov	rcx, qword ptr [rbp - 72] ## 8-byte Reload
	cmp	dword ptr [rcx + 4*rax], 2
	jge	LBB2_6
## %bb.5:                               ##   in Loop: Header=BB2_1 Depth=1
	cmp	dword ptr [rbp - 56], 9
	jle	LBB2_7
LBB2_6:                                 ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 52]
	add	eax, -1
	mov	dword ptr [rbp - 52], eax
	jmp	LBB2_13
LBB2_7:                                 ##   in Loop: Header=BB2_1 Depth=1
	cmp	dword ptr [rbp - 56], 9
	jne	LBB2_9
## %bb.8:                               ##   in Loop: Header=BB2_1 Depth=1
	movsxd	rax, dword ptr [rbp - 52]
	mov	rcx, qword ptr [rbp - 72] ## 8-byte Reload
	mov	edx, dword ptr [rcx + 4*rax]
	movsxd	rax, dword ptr [rbp - 52]
	mov	rsi, qword ptr [rbp - 64] ## 8-byte Reload
	mov	dword ptr [rsi + 4*rax], edx
	mov	rsi, qword ptr [rbp - 16]
	mov	edx, dword ptr [rbp - 52]
	add	edx, 1
	mov	rdi, qword ptr [rbp - 64] ## 8-byte Reload
	call	_displayoutcome
	jmp	LBB2_12
LBB2_9:                                 ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 52]
	mov	ecx, dword ptr [rbp - 20]
	sub	ecx, 1
	cmp	eax, ecx
	je	LBB2_11
## %bb.10:                              ##   in Loop: Header=BB2_1 Depth=1
	movsxd	rax, dword ptr [rbp - 52]
	mov	rcx, qword ptr [rbp - 72] ## 8-byte Reload
	mov	edx, dword ptr [rcx + 4*rax]
	movsxd	rax, dword ptr [rbp - 52]
	mov	rsi, qword ptr [rbp - 64] ## 8-byte Reload
	mov	dword ptr [rsi + 4*rax], edx
	mov	edx, dword ptr [rbp - 52]
	add	edx, 1
	mov	dword ptr [rbp - 52], edx
	movsxd	rax, dword ptr [rbp - 52]
	mov	dword ptr [rcx + 4*rax], -1
LBB2_11:                                ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_12
LBB2_12:                                ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_13
LBB2_13:                                ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_1
LBB2_14:
	mov	rax, qword ptr [rbp - 32]
	mov	rsp, rax
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB2_16
## %bb.15:
	mov	rsp, rbp
	pop	rbp
	ret
LBB2_16:
	call	___stack_chk_fail
	ud2
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
	sub	rsp, 64
	lea	rdi, [rbp - 48]
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rip + l_main.set]
	mov	qword ptr [rbp - 48], rax
	mov	rax, qword ptr [rip + l_main.set+8]
	mov	qword ptr [rbp - 40], rax
	mov	rax, qword ptr [rip + l_main.set+16]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rip + l_main.set+24]
	mov	qword ptr [rbp - 24], rax
	mov	dword ptr [rbp - 52], 8
	mov	esi, dword ptr [rbp - 52]
	call	_backtrace
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 8]
	cmp	rax, rdi
	jne	LBB3_2
## %bb.1:
	xor	eax, eax
	add	rsp, 64
	pop	rbp
	ret
LBB3_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d "

L_.str.1:                               ## @.str.1
	.asciz	"\n"

	.section	__TEXT,__const
	.p2align	4               ## @main.set
l_main.set:
	.long	7                       ## 0x7
	.long	5                       ## 0x5
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	8                       ## 0x8
	.long	4                       ## 0x4
	.long	3                       ## 0x3
	.long	10                      ## 0xa


.subsections_via_symbols
