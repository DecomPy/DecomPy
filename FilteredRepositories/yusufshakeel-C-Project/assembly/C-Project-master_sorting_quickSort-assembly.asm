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
	sub	rsp, 48
	xor	esi, esi
	lea	rdi, [rbp - 32]
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 36], 0
	mov	rax, qword ptr [rip + l_main.a]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rip + l_main.a+8]
	mov	qword ptr [rbp - 24], rax
	mov	rax, qword ptr [rip + l_main.a+16]
	mov	qword ptr [rbp - 16], rax
	mov	edx, 5
	call	_quickSort
	mov	dword ptr [rbp - 40], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 40], 6
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 40]
	mov	esi, dword ptr [rbp + 4*rax - 32]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 40]
	add	eax, 1
	mov	dword ptr [rbp - 40], eax
	jmp	LBB0_1
LBB0_4:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB0_6
## %bb.5:
	xor	eax, eax
	add	rsp, 48
	pop	rbp
	ret
LBB0_6:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_quickSort              ## -- Begin function quickSort
	.p2align	4, 0x90
_quickSort:                             ## @quickSort
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 16], edx
	mov	edx, dword ptr [rbp - 12]
	cmp	edx, dword ptr [rbp - 16]
	jge	LBB1_2
## %bb.1:
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	mov	edx, dword ptr [rbp - 16]
	lea	rcx, [rbp - 20]
	call	_partitionArray
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	mov	edx, dword ptr [rbp - 20]
	sub	edx, 1
	call	_quickSort
	mov	rdi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 20]
	add	edx, 1
	mov	esi, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 24], esi ## 4-byte Spill
	mov	esi, edx
	mov	edx, dword ptr [rbp - 24] ## 4-byte Reload
	call	_quickSort
LBB1_2:
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_partitionArray         ## -- Begin function partitionArray
	.p2align	4, 0x90
_partitionArray:                        ## @partitionArray
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 16], edx
	mov	qword ptr [rbp - 24], rcx
	mov	edx, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 28], edx
	mov	edx, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 32], edx
	mov	edx, dword ptr [rbp - 28]
	mov	rcx, qword ptr [rbp - 24]
	mov	dword ptr [rcx], edx
LBB2_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_2 Depth 2
                                        ##     Child Loop BB2_12 Depth 2
	jmp	LBB2_2
LBB2_2:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 24]
	movsxd	rsi, dword ptr [rsi]
	mov	eax, dword ptr [rdx + 4*rsi]
	mov	rdx, qword ptr [rbp - 8]
	movsxd	rsi, dword ptr [rbp - 32]
	cmp	eax, dword ptr [rdx + 4*rsi]
	mov	byte ptr [rbp - 37], cl ## 1-byte Spill
	jg	LBB2_4
## %bb.3:                               ##   in Loop: Header=BB2_2 Depth=2
	mov	rax, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rax]
	cmp	ecx, dword ptr [rbp - 32]
	setne	dl
	mov	byte ptr [rbp - 37], dl ## 1-byte Spill
LBB2_4:                                 ##   in Loop: Header=BB2_2 Depth=2
	mov	al, byte ptr [rbp - 37] ## 1-byte Reload
	test	al, 1
	jne	LBB2_5
	jmp	LBB2_6
LBB2_5:                                 ##   in Loop: Header=BB2_2 Depth=2
	mov	eax, dword ptr [rbp - 32]
	add	eax, -1
	mov	dword ptr [rbp - 32], eax
	jmp	LBB2_2
LBB2_6:                                 ##   in Loop: Header=BB2_1 Depth=1
	mov	rax, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rax]
	cmp	ecx, dword ptr [rbp - 32]
	jne	LBB2_8
## %bb.7:
	jmp	LBB2_22
LBB2_8:                                 ##   in Loop: Header=BB2_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 24]
	movsxd	rcx, dword ptr [rcx]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 32]
	cmp	edx, dword ptr [rax + 4*rcx]
	jle	LBB2_10
## %bb.9:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 32]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	dword ptr [rbp - 36], edx
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 24]
	movsxd	rcx, dword ptr [rcx]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 32]
	mov	dword ptr [rax + 4*rcx], edx
	mov	edx, dword ptr [rbp - 36]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 24]
	movsxd	rcx, dword ptr [rcx]
	mov	dword ptr [rax + 4*rcx], edx
	mov	edx, dword ptr [rbp - 32]
	mov	rax, qword ptr [rbp - 24]
	mov	dword ptr [rax], edx
LBB2_10:                                ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_11
LBB2_11:                                ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_12
LBB2_12:                                ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 24]
	movsxd	rsi, dword ptr [rsi]
	mov	eax, dword ptr [rdx + 4*rsi]
	mov	rdx, qword ptr [rbp - 8]
	movsxd	rsi, dword ptr [rbp - 28]
	cmp	eax, dword ptr [rdx + 4*rsi]
	mov	byte ptr [rbp - 38], cl ## 1-byte Spill
	jl	LBB2_14
## %bb.13:                              ##   in Loop: Header=BB2_12 Depth=2
	mov	rax, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rax]
	cmp	ecx, dword ptr [rbp - 28]
	setne	dl
	mov	byte ptr [rbp - 38], dl ## 1-byte Spill
LBB2_14:                                ##   in Loop: Header=BB2_12 Depth=2
	mov	al, byte ptr [rbp - 38] ## 1-byte Reload
	test	al, 1
	jne	LBB2_15
	jmp	LBB2_16
LBB2_15:                                ##   in Loop: Header=BB2_12 Depth=2
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	dword ptr [rbp - 28], eax
	jmp	LBB2_12
LBB2_16:                                ##   in Loop: Header=BB2_1 Depth=1
	mov	rax, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rax]
	cmp	ecx, dword ptr [rbp - 28]
	jne	LBB2_18
## %bb.17:
	jmp	LBB2_22
LBB2_18:                                ##   in Loop: Header=BB2_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 24]
	movsxd	rcx, dword ptr [rcx]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 28]
	cmp	edx, dword ptr [rax + 4*rcx]
	jge	LBB2_20
## %bb.19:                              ##   in Loop: Header=BB2_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 28]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	dword ptr [rbp - 36], edx
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 24]
	movsxd	rcx, dword ptr [rcx]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 28]
	mov	dword ptr [rax + 4*rcx], edx
	mov	edx, dword ptr [rbp - 36]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 24]
	movsxd	rcx, dword ptr [rcx]
	mov	dword ptr [rax + 4*rcx], edx
	mov	edx, dword ptr [rbp - 28]
	mov	rax, qword ptr [rbp - 24]
	mov	dword ptr [rax], edx
LBB2_20:                                ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_21
LBB2_21:                                ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_1
LBB2_22:
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @main.a
l_main.a:
	.long	5                       ## 0x5
	.long	2                       ## 0x2
	.long	6                       ## 0x6
	.long	1                       ## 0x1
	.long	3                       ## 0x3
	.long	4                       ## 0x4

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d\t"


.subsections_via_symbols
