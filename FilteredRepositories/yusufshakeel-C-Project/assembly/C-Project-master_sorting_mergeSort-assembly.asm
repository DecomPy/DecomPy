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
	call	_mergeSort
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
	.globl	_mergeSort              ## -- Begin function mergeSort
	.p2align	4, 0x90
_mergeSort:                             ## @mergeSort
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
	mov	eax, dword ptr [rbp - 12]
	add	eax, dword ptr [rbp - 16]
	cdq
	mov	ecx, 2
	idiv	ecx
	mov	dword ptr [rbp - 20], eax
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	mov	eax, dword ptr [rbp - 20]
	mov	edx, eax
	call	_mergeSort
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	edx, dword ptr [rbp - 16]
	mov	esi, eax
	call	_mergeSort
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	mov	edx, dword ptr [rbp - 20]
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	r8d, dword ptr [rbp - 16]
	mov	ecx, eax
	call	_mergeSortedArray
LBB1_2:
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_mergeSortedArray       ## -- Begin function mergeSortedArray
	.p2align	4, 0x90
_mergeSortedArray:                      ## @mergeSortedArray
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
	mov	qword ptr [rbp - 40], rdi
	mov	dword ptr [rbp - 44], esi
	mov	dword ptr [rbp - 48], edx
	mov	dword ptr [rbp - 52], ecx
	mov	dword ptr [rbp - 56], r8d
	mov	ecx, dword ptr [rbp - 44]
	mov	dword ptr [rbp - 60], ecx
	mov	ecx, dword ptr [rbp - 52]
	mov	dword ptr [rbp - 64], ecx
	mov	ecx, dword ptr [rbp - 44]
	mov	dword ptr [rbp - 68], ecx
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 60]
	cmp	eax, dword ptr [rbp - 48]
	mov	byte ptr [rbp - 69], cl ## 1-byte Spill
	jg	LBB2_3
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 64]
	cmp	eax, dword ptr [rbp - 56]
	setle	cl
	mov	byte ptr [rbp - 69], cl ## 1-byte Spill
LBB2_3:                                 ##   in Loop: Header=BB2_1 Depth=1
	mov	al, byte ptr [rbp - 69] ## 1-byte Reload
	test	al, 1
	jne	LBB2_4
	jmp	LBB2_8
LBB2_4:                                 ##   in Loop: Header=BB2_1 Depth=1
	mov	rax, qword ptr [rbp - 40]
	movsxd	rcx, dword ptr [rbp - 60]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	rax, qword ptr [rbp - 40]
	movsxd	rcx, dword ptr [rbp - 64]
	cmp	edx, dword ptr [rax + 4*rcx]
	jge	LBB2_6
## %bb.5:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	rax, qword ptr [rbp - 40]
	mov	ecx, dword ptr [rbp - 60]
	mov	edx, ecx
	add	edx, 1
	mov	dword ptr [rbp - 60], edx
	movsxd	rsi, ecx
	mov	ecx, dword ptr [rax + 4*rsi]
	mov	edx, dword ptr [rbp - 68]
	mov	edi, edx
	add	edi, 1
	mov	dword ptr [rbp - 68], edi
	movsxd	rax, edx
	mov	dword ptr [rbp + 4*rax - 32], ecx
	jmp	LBB2_7
LBB2_6:                                 ##   in Loop: Header=BB2_1 Depth=1
	mov	rax, qword ptr [rbp - 40]
	mov	ecx, dword ptr [rbp - 64]
	mov	edx, ecx
	add	edx, 1
	mov	dword ptr [rbp - 64], edx
	movsxd	rsi, ecx
	mov	ecx, dword ptr [rax + 4*rsi]
	mov	edx, dword ptr [rbp - 68]
	mov	edi, edx
	add	edi, 1
	mov	dword ptr [rbp - 68], edi
	movsxd	rax, edx
	mov	dword ptr [rbp + 4*rax - 32], ecx
LBB2_7:                                 ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_1
LBB2_8:
	mov	eax, dword ptr [rbp - 60]
	cmp	eax, dword ptr [rbp - 48]
	jle	LBB2_13
## %bb.9:
	jmp	LBB2_10
LBB2_10:                                ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 64]
	cmp	eax, dword ptr [rbp - 56]
	jg	LBB2_12
## %bb.11:                              ##   in Loop: Header=BB2_10 Depth=1
	mov	rax, qword ptr [rbp - 40]
	mov	ecx, dword ptr [rbp - 64]
	mov	edx, ecx
	add	edx, 1
	mov	dword ptr [rbp - 64], edx
	movsxd	rsi, ecx
	mov	ecx, dword ptr [rax + 4*rsi]
	mov	edx, dword ptr [rbp - 68]
	mov	edi, edx
	add	edi, 1
	mov	dword ptr [rbp - 68], edi
	movsxd	rax, edx
	mov	dword ptr [rbp + 4*rax - 32], ecx
	jmp	LBB2_10
LBB2_12:
	jmp	LBB2_17
LBB2_13:
	jmp	LBB2_14
LBB2_14:                                ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 60]
	cmp	eax, dword ptr [rbp - 48]
	jg	LBB2_16
## %bb.15:                              ##   in Loop: Header=BB2_14 Depth=1
	mov	rax, qword ptr [rbp - 40]
	mov	ecx, dword ptr [rbp - 60]
	mov	edx, ecx
	add	edx, 1
	mov	dword ptr [rbp - 60], edx
	movsxd	rsi, ecx
	mov	ecx, dword ptr [rax + 4*rsi]
	mov	edx, dword ptr [rbp - 68]
	mov	edi, edx
	add	edi, 1
	mov	dword ptr [rbp - 68], edi
	movsxd	rax, edx
	mov	dword ptr [rbp + 4*rax - 32], ecx
	jmp	LBB2_14
LBB2_16:
	jmp	LBB2_17
LBB2_17:
	mov	eax, dword ptr [rbp - 44]
	mov	dword ptr [rbp - 68], eax
LBB2_18:                                ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 68]
	cmp	eax, dword ptr [rbp - 56]
	jg	LBB2_21
## %bb.19:                              ##   in Loop: Header=BB2_18 Depth=1
	movsxd	rax, dword ptr [rbp - 68]
	mov	ecx, dword ptr [rbp + 4*rax - 32]
	mov	rax, qword ptr [rbp - 40]
	movsxd	rdx, dword ptr [rbp - 68]
	mov	dword ptr [rax + 4*rdx], ecx
## %bb.20:                              ##   in Loop: Header=BB2_18 Depth=1
	mov	eax, dword ptr [rbp - 68]
	add	eax, 1
	mov	dword ptr [rbp - 68], eax
	jmp	LBB2_18
LBB2_21:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB2_23
## %bb.22:
	add	rsp, 80
	pop	rbp
	ret
LBB2_23:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @main.a
l_main.a:
	.long	5                       ## 0x5
	.long	4                       ## 0x4
	.long	3                       ## 0x3
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	6                       ## 0x6

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d\t"


.subsections_via_symbols
