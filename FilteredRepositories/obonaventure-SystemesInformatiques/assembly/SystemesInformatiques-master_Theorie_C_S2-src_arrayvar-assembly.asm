	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_init                   ## -- Begin function init
	.p2align	4, 0x90
_init:                                  ## @init
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 20]
	cmp	eax, dword ptr [rbp - 4]
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	dword ptr [rax + 4*rcx], 1
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB0_1
LBB0_4:
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
	lea	rax, [rip + l_main.vecteur]
	mov	ecx, 40
	mov	edx, ecx
	mov	r8, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	r8, qword ptr [r8]
	mov	qword ptr [rbp - 8], r8
	mov	dword ptr [rbp - 52], 0
	mov	dword ptr [rbp - 56], edi
	mov	qword ptr [rbp - 64], rsi
	lea	rsi, [rbp - 48]
	mov	rdi, rsi
	mov	rsi, rax
	call	_memcpy
	mov	dword ptr [rbp - 72], 0
	mov	dword ptr [rbp - 68], 0
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 68], 10
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movsxd	rax, dword ptr [rbp - 68]
	mov	ecx, dword ptr [rbp + 4*rax - 48]
	add	ecx, dword ptr [rbp - 72]
	mov	dword ptr [rbp - 72], ecx
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 68]
	add	eax, 1
	mov	dword ptr [rbp - 68], eax
	jmp	LBB1_1
LBB1_4:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB1_6
## %bb.5:
	xor	eax, eax
	add	rsp, 80
	pop	rbp
	ret
LBB1_6:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @main.vecteur
l_main.vecteur:
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	3                       ## 0x3
	.long	4                       ## 0x4
	.long	5                       ## 0x5
	.long	6                       ## 0x6
	.long	7                       ## 0x7
	.long	8                       ## 0x8
	.long	9                       ## 0x9


.subsections_via_symbols
