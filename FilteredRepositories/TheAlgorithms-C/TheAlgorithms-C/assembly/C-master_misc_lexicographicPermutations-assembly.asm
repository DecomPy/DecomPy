	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_swap                   ## -- Begin function swap
	.p2align	4, 0x90
_swap:                                  ## @swap
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	al, byte ptr [rsi]
	mov	byte ptr [rbp - 17], al
	mov	rsi, qword ptr [rbp - 16]
	mov	al, byte ptr [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi], al
	mov	al, byte ptr [rbp - 17]
	mov	rsi, qword ptr [rbp - 16]
	mov	byte ptr [rsi], al
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_compare                ## -- Begin function compare
	.p2align	4, 0x90
_compare:                               ## @compare
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rsi, qword ptr [rbp - 8]
	movsx	eax, byte ptr [rsi]
	mov	rsi, qword ptr [rbp - 16]
	movsx	ecx, byte ptr [rsi]
	sub	eax, ecx
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_PrintSortedPermutations ## -- Begin function PrintSortedPermutations
	.p2align	4, 0x90
_PrintSortedPermutations:               ## @PrintSortedPermutations
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	eax, 1
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 40], rdx ## 8-byte Spill
	call	_strlen
	mov	ecx, eax
	mov	dword ptr [rbp - 12], ecx
	mov	rdi, qword ptr [rbp - 8]
	movsxd	rsi, dword ptr [rbp - 12]
	mov	rdx, qword ptr [rbp - 40] ## 8-byte Reload
	lea	rcx, [rip + _compare]
	call	_qsort
	mov	dword ptr [rbp - 16], 1
LBB2_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_2 Depth 2
                                        ##     Child Loop BB2_9 Depth 2
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rbp - 12]
	sub	ecx, 2
	mov	dword ptr [rbp - 20], ecx
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
LBB2_2:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 20], 0
	mov	byte ptr [rbp - 45], cl ## 1-byte Spill
	jl	LBB2_4
## %bb.3:                               ##   in Loop: Header=BB2_2 Depth=2
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	movsx	edx, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 20]
	add	esi, 1
	movsxd	rcx, esi
	movsx	esi, byte ptr [rax + rcx]
	cmp	edx, esi
	setge	dil
	mov	byte ptr [rbp - 45], dil ## 1-byte Spill
LBB2_4:                                 ##   in Loop: Header=BB2_2 Depth=2
	mov	al, byte ptr [rbp - 45] ## 1-byte Reload
	test	al, 1
	jne	LBB2_5
	jmp	LBB2_7
LBB2_5:                                 ##   in Loop: Header=BB2_2 Depth=2
	jmp	LBB2_6
LBB2_6:                                 ##   in Loop: Header=BB2_2 Depth=2
	mov	eax, dword ptr [rbp - 20]
	add	eax, -1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB2_2
LBB2_7:                                 ##   in Loop: Header=BB2_1 Depth=1
	cmp	dword ptr [rbp - 20], 0
	jl	LBB2_18
## %bb.8:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	mov	eax, dword ptr [rbp - 24]
	mov	dword ptr [rbp - 28], eax
LBB2_9:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 28]
	cmp	eax, dword ptr [rbp - 12]
	mov	byte ptr [rbp - 46], cl ## 1-byte Spill
	jge	LBB2_11
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=2
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 28]
	movsx	edx, byte ptr [rax + rcx]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 46], sil ## 1-byte Spill
LBB2_11:                                ##   in Loop: Header=BB2_9 Depth=2
	mov	al, byte ptr [rbp - 46] ## 1-byte Reload
	test	al, 1
	jne	LBB2_12
	jmp	LBB2_17
LBB2_12:                                ##   in Loop: Header=BB2_9 Depth=2
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 28]
	movsx	edx, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	movsx	esi, byte ptr [rax + rcx]
	cmp	edx, esi
	jle	LBB2_15
## %bb.13:                              ##   in Loop: Header=BB2_9 Depth=2
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 28]
	movsx	edx, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 24]
	movsx	esi, byte ptr [rax + rcx]
	cmp	edx, esi
	jge	LBB2_15
## %bb.14:                              ##   in Loop: Header=BB2_9 Depth=2
	mov	eax, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 24], eax
LBB2_15:                                ##   in Loop: Header=BB2_9 Depth=2
	jmp	LBB2_16
LBB2_16:                                ##   in Loop: Header=BB2_9 Depth=2
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	dword ptr [rbp - 28], eax
	jmp	LBB2_9
LBB2_17:                                ##   in Loop: Header=BB2_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rbp - 24]
	add	rcx, rdx
	mov	rdi, rax
	mov	rsi, rcx
	call	_swap
	mov	r8d, 1
	mov	edx, r8d
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	add	rax, rcx
	add	rax, 1
	mov	r8d, dword ptr [rbp - 12]
	sub	r8d, dword ptr [rbp - 20]
	sub	r8d, 1
	movsxd	rsi, r8d
	mov	rdi, rax
	lea	rcx, [rip + _compare]
	call	_qsort
	jmp	LBB2_19
LBB2_18:                                ##   in Loop: Header=BB2_1 Depth=1
	mov	dword ptr [rbp - 16], 0
LBB2_19:                                ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_20
LBB2_20:                                ##   in Loop: Header=BB2_1 Depth=1
	cmp	dword ptr [rbp - 16], 0
	jne	LBB2_1
## %bb.21:
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
	sub	rsp, 64
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 12], 0
	lea	rdi, [rip + L_.str.1]
	xor	ecx, ecx
	mov	dl, cl
	lea	rsi, [rbp - 16]
	mov	al, dl
	call	_scanf
	mov	ecx, dword ptr [rbp - 16]
	mov	esi, ecx
	mov	rdi, rsp
	mov	qword ptr [rbp - 24], rdi
	mov	rdi, rsi
	add	rdi, 15
	and	rdi, -16
	mov	r8, rsp
	sub	r8, rdi
	mov	rsp, r8
	mov	qword ptr [rbp - 32], rsi
	lea	rdi, [rip + L_.str.2]
	mov	rsi, r8
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	mov	al, 0
	mov	qword ptr [rbp - 48], r8 ## 8-byte Spill
	call	_scanf
	mov	rdi, qword ptr [rbp - 48] ## 8-byte Reload
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	call	_PrintSortedPermutations
	mov	dword ptr [rbp - 12], 0
	mov	rsi, qword ptr [rbp - 24]
	mov	rsp, rsi
	mov	eax, dword ptr [rbp - 12]
	mov	rsi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 8]
	cmp	rsi, rdi
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
	jne	LBB3_2
## %bb.1:
	mov	eax, dword ptr [rbp - 56] ## 4-byte Reload
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
	.asciz	"%s\n"

L_.str.1:                               ## @.str.1
	.asciz	"%d\n"

L_.str.2:                               ## @.str.2
	.asciz	"%s"


.subsections_via_symbols
