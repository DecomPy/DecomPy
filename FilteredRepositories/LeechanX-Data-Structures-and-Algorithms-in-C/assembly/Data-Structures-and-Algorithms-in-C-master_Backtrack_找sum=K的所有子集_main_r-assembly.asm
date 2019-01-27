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
	sub	rsp, 48
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	qword ptr [rbp - 24], rdx
	mov	dword ptr [rbp - 28], ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	mov	rdx, qword ptr [rbp - 24]
	call	_sum
	mov	dword ptr [rbp - 32], eax
	cmp	dword ptr [rbp - 32], 9
	jne	LBB2_2
## %bb.1:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 12]
	call	_displayoutcome
	jmp	LBB2_9
LBB2_2:
	mov	eax, dword ptr [rbp - 12]
	cmp	eax, dword ptr [rbp - 28]
	je	LBB2_4
## %bb.3:
	cmp	dword ptr [rbp - 32], 9
	jle	LBB2_5
LBB2_4:
	jmp	LBB2_9
LBB2_5:
	mov	dword ptr [rbp - 36], 0
LBB2_6:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 36], 2
	jge	LBB2_9
## %bb.7:                               ##   in Loop: Header=BB2_6 Depth=1
	mov	eax, dword ptr [rbp - 36]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rbp - 12]
	mov	dword ptr [rcx + 4*rdx], eax
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	rdx, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 28]
	mov	esi, eax
	call	_backtrace
## %bb.8:                               ##   in Loop: Header=BB2_6 Depth=1
	mov	eax, dword ptr [rbp - 36]
	add	eax, 1
	mov	dword ptr [rbp - 36], eax
	jmp	LBB2_6
LBB2_9:
	add	rsp, 48
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
	sub	rsp, 80
	xor	esi, esi
	lea	rdx, [rbp - 48]
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	movaps	xmm0, xmmword ptr [rip + l_main.set+16]
	movaps	xmmword ptr [rbp - 32], xmm0
	movaps	xmm0, xmmword ptr [rip + l_main.set]
	movaps	xmmword ptr [rbp - 48], xmm0
	mov	dword ptr [rbp - 52], 8
	mov	ecx, dword ptr [rbp - 52]
	mov	eax, ecx
	mov	rdi, rsp
	mov	qword ptr [rbp - 64], rdi
	lea	rdi, [4*rax + 15]
	and	rdi, -16
	mov	r8, rsp
	sub	r8, rdi
	mov	rsp, r8
	mov	qword ptr [rbp - 72], rax
	mov	ecx, dword ptr [rbp - 52]
	mov	rdi, r8
	call	_backtrace
	mov	rax, qword ptr [rbp - 64]
	mov	rsp, rax
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rax, rdx
	jne	LBB3_2
## %bb.1:
	xor	eax, eax
	mov	rsp, rbp
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
