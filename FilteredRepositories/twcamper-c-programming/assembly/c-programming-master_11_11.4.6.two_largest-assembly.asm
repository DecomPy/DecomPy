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
	lea	rdi, [rbp - 32]
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 36], 0
	mov	rax, qword ptr [rip + l_constinit]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rip + l_constinit+8]
	mov	qword ptr [rbp - 24], rax
	mov	rax, qword ptr [rip + l_constinit+16]
	mov	qword ptr [rbp - 16], rax
	mov	esi, 6
	lea	rdx, [rbp - 40]
	lea	rcx, [rbp - 44]
	call	_two_largest
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB0_2
## %bb.1:
	xor	eax, eax
	add	rsp, 48
	pop	rbp
	ret
LBB0_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_two_largest            ## -- Begin function two_largest
	.p2align	4, 0x90
_two_largest:                           ## @two_largest
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
	mov	qword ptr [rbp - 32], rcx
	mov	rcx, qword ptr [rbp - 32]
	mov	dword ptr [rcx], 0
	mov	rcx, qword ptr [rbp - 24]
	mov	dword ptr [rcx], 0
	mov	dword ptr [rbp - 36], 0
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 36]
	cmp	eax, dword ptr [rbp - 12]
	jge	LBB1_9
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 36]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	rax, qword ptr [rbp - 24]
	cmp	edx, dword ptr [rax]
	jle	LBB1_4
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 32]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rbp - 36]
	mov	ecx, dword ptr [rax + 4*rdx]
	mov	rax, qword ptr [rbp - 24]
	mov	dword ptr [rax], ecx
	jmp	LBB1_7
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 36]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	rax, qword ptr [rbp - 32]
	cmp	edx, dword ptr [rax]
	jle	LBB1_6
## %bb.5:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 36]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	rax, qword ptr [rbp - 32]
	mov	dword ptr [rax], edx
LBB1_6:                                 ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_7
LBB1_7:                                 ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_8
LBB1_8:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 36]
	add	eax, 1
	mov	dword ptr [rbp - 36], eax
	jmp	LBB1_1
LBB1_9:
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.p2align	2               ## @constinit
l_constinit:
	.long	10                      ## 0xa
	.long	9                       ## 0x9
	.long	312                     ## 0x138
	.long	569                     ## 0x239
	.long	1                       ## 0x1
	.long	311                     ## 0x137


.subsections_via_symbols
