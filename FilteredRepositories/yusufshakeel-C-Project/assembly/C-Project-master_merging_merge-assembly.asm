	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
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
	sub	rsp, 96
	lea	r8, [rbp - 80]
	lea	rdx, [rbp - 48]
	lea	rdi, [rbp - 20]
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 84], 0
	mov	rax, qword ptr [rip + l_main.a]
	mov	qword ptr [rbp - 20], rax
	mov	ecx, dword ptr [rip + l_main.a+8]
	mov	dword ptr [rbp - 12], ecx
	mov	rax, qword ptr [rip + L_main.b]
	mov	qword ptr [rbp - 48], rax
	mov	rax, qword ptr [rip + L_main.b+8]
	mov	qword ptr [rbp - 40], rax
	mov	esi, 3
	mov	ecx, 4
	call	_merge
	mov	dword ptr [rbp - 88], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 88], 7
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 88]
	mov	esi, dword ptr [rbp + 4*rax - 80]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 92], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 88]
	add	eax, 1
	mov	dword ptr [rbp - 88], eax
	jmp	LBB0_1
LBB0_4:
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdi, qword ptr [rdi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rdi, rcx
	mov	dword ptr [rbp - 96], eax ## 4-byte Spill
	jne	LBB0_6
## %bb.5:
	xor	eax, eax
	add	rsp, 96
	pop	rbp
	ret
LBB0_6:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_merge                  ## -- Begin function merge
	.p2align	4, 0x90
_merge:                                 ## @merge
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
	mov	dword ptr [rbp - 28], ecx
	mov	qword ptr [rbp - 40], r8
	mov	dword ptr [rbp - 44], 0
	mov	dword ptr [rbp - 48], 0
	mov	dword ptr [rbp - 52], 0
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 44]
	cmp	eax, dword ptr [rbp - 12]
	mov	byte ptr [rbp - 53], cl ## 1-byte Spill
	jge	LBB1_3
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 48]
	cmp	eax, dword ptr [rbp - 28]
	setl	cl
	mov	byte ptr [rbp - 53], cl ## 1-byte Spill
LBB1_3:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	al, byte ptr [rbp - 53] ## 1-byte Reload
	test	al, 1
	jne	LBB1_4
	jmp	LBB1_8
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 44]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	rax, qword ptr [rbp - 24]
	movsxd	rcx, dword ptr [rbp - 48]
	cmp	edx, dword ptr [rax + 4*rcx]
	jge	LBB1_6
## %bb.5:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 44]
	mov	edx, ecx
	add	edx, 1
	mov	dword ptr [rbp - 44], edx
	movsxd	rsi, ecx
	mov	ecx, dword ptr [rax + 4*rsi]
	mov	rax, qword ptr [rbp - 40]
	mov	edx, dword ptr [rbp - 52]
	mov	edi, edx
	add	edi, 1
	mov	dword ptr [rbp - 52], edi
	movsxd	rsi, edx
	mov	dword ptr [rax + 4*rsi], ecx
	jmp	LBB1_7
LBB1_6:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 48]
	mov	edx, ecx
	add	edx, 1
	mov	dword ptr [rbp - 48], edx
	movsxd	rsi, ecx
	mov	ecx, dword ptr [rax + 4*rsi]
	mov	rax, qword ptr [rbp - 40]
	mov	edx, dword ptr [rbp - 52]
	mov	edi, edx
	add	edi, 1
	mov	dword ptr [rbp - 52], edi
	movsxd	rsi, edx
	mov	dword ptr [rax + 4*rsi], ecx
LBB1_7:                                 ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_1
LBB1_8:
	mov	eax, dword ptr [rbp - 44]
	cmp	eax, dword ptr [rbp - 12]
	jne	LBB1_13
## %bb.9:
	jmp	LBB1_10
LBB1_10:                                ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 48]
	cmp	eax, dword ptr [rbp - 28]
	jge	LBB1_12
## %bb.11:                              ##   in Loop: Header=BB1_10 Depth=1
	mov	rax, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 48]
	mov	edx, ecx
	add	edx, 1
	mov	dword ptr [rbp - 48], edx
	movsxd	rsi, ecx
	mov	ecx, dword ptr [rax + 4*rsi]
	mov	rax, qword ptr [rbp - 40]
	mov	edx, dword ptr [rbp - 52]
	mov	edi, edx
	add	edi, 1
	mov	dword ptr [rbp - 52], edi
	movsxd	rsi, edx
	mov	dword ptr [rax + 4*rsi], ecx
	jmp	LBB1_10
LBB1_12:
	jmp	LBB1_17
LBB1_13:
	jmp	LBB1_14
LBB1_14:                                ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 44]
	cmp	eax, dword ptr [rbp - 12]
	jge	LBB1_16
## %bb.15:                              ##   in Loop: Header=BB1_14 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 44]
	mov	edx, ecx
	add	edx, 1
	mov	dword ptr [rbp - 44], edx
	movsxd	rsi, ecx
	mov	ecx, dword ptr [rax + 4*rsi]
	mov	rax, qword ptr [rbp - 40]
	mov	edx, dword ptr [rbp - 52]
	mov	edi, edx
	add	edi, 1
	mov	dword ptr [rbp - 52], edi
	movsxd	rsi, edx
	mov	dword ptr [rax + 4*rsi], ecx
	jmp	LBB1_14
LBB1_16:
	jmp	LBB1_17
LBB1_17:
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	2               ## @main.a
l_main.a:
	.long	1                       ## 0x1
	.long	4                       ## 0x4
	.long	6                       ## 0x6

	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## @main.b
L_main.b:
	.long	2                       ## 0x2
	.long	3                       ## 0x3
	.long	5                       ## 0x5
	.long	7                       ## 0x7

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d "

L_.str.1:                               ## @.str.1
	.asciz	"\nMerge complete.\n"


.subsections_via_symbols
