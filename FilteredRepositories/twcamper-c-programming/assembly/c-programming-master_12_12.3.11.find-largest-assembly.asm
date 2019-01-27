	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_find_largest           ## -- Begin function find_largest
	.p2align	4, 0x90
_find_largest:                          ## @find_largest
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 32], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rdi
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 24]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rbp - 12]
	shl	rdx, 2
	add	rcx, rdx
	cmp	rax, rcx
	jae	LBB0_6
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 32]
	cmp	ecx, dword ptr [rax]
	jle	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 32], rax
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_5
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 24]
	add	rax, 4
	mov	qword ptr [rbp - 24], rax
	jmp	LBB0_1
LBB0_6:
	mov	rax, qword ptr [rbp - 32]
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
	sub	rsp, 48
	lea	rdi, [rbp - 24]
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 28], 0
	mov	dword ptr [rbp - 24], 89
	mov	dword ptr [rbp - 20], 2
	mov	dword ptr [rbp - 16], 345
	mov	dword ptr [rbp - 12], 101
	mov	esi, 4
	call	_find_largest
	mov	qword ptr [rbp - 40], rax
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 8]
	cmp	rax, rdi
	jne	LBB1_2
## %bb.1:
	xor	eax, eax
	add	rsp, 48
	pop	rbp
	ret
LBB1_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
