	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_display_outcome        ## -- Begin function display_outcome
	.p2align	4, 0x90
_display_outcome:                       ## @display_outcome
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 12], 6
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 12]
	mov	esi, dword ptr [rax + 4*rcx]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	LBB0_1
LBB0_4:
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_condition              ## -- Begin function condition
	.p2align	4, 0x90
_condition:                             ## @condition
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
	mov	dword ptr [rbp - 20], 0
	mov	dword ptr [rbp - 24], 0
	mov	dword ptr [rbp - 28], 0
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 28]
	cmp	eax, dword ptr [rbp - 12]
	jge	LBB1_7
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 28]
	cmp	dword ptr [rax + 4*rcx], 0
	je	LBB1_4
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB1_5
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
LBB1_5:                                 ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_6
LBB1_6:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	dword ptr [rbp - 28], eax
	jmp	LBB1_1
LBB1_7:
	cmp	dword ptr [rbp - 16], 0
	je	LBB1_9
## %bb.8:
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB1_10
LBB1_9:
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
LBB1_10:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 20]
	mov	byte ptr [rbp - 29], cl ## 1-byte Spill
	jg	LBB1_14
## %bb.11:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 24], 3
	mov	byte ptr [rbp - 30], cl ## 1-byte Spill
	jg	LBB1_13
## %bb.12:
	cmp	dword ptr [rbp - 20], 3
	setle	al
	mov	byte ptr [rbp - 30], al ## 1-byte Spill
LBB1_13:
	mov	al, byte ptr [rbp - 30] ## 1-byte Reload
	mov	byte ptr [rbp - 29], al ## 1-byte Spill
LBB1_14:
	mov	al, byte ptr [rbp - 29] ## 1-byte Reload
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_backtrack              ## -- Begin function backtrack
	.p2align	4, 0x90
_backtrack:                             ## @backtrack
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
	mov	dword ptr [rbp - 68], 0
	movsxd	rax, dword ptr [rbp - 68]
	mov	dword ptr [rbp + 4*rax - 32], -1
LBB2_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_3 Depth 2
	cmp	dword ptr [rbp - 68], 0
	jl	LBB2_14
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movsxd	rax, dword ptr [rbp - 68]
	mov	ecx, dword ptr [rbp + 4*rax - 32]
	add	ecx, 1
	mov	dword ptr [rbp + 4*rax - 32], ecx
LBB2_3:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 68]
	cmp	dword ptr [rbp + 4*rdx - 32], 2
	mov	byte ptr [rbp - 69], cl ## 1-byte Spill
	jge	LBB2_5
## %bb.4:                               ##   in Loop: Header=BB2_3 Depth=2
	lea	rdi, [rbp - 64]
	mov	esi, dword ptr [rbp - 68]
	movsxd	rax, dword ptr [rbp - 68]
	mov	edx, dword ptr [rbp + 4*rax - 32]
	call	_condition
	cmp	eax, 0
	setne	cl
	xor	cl, -1
	mov	byte ptr [rbp - 69], cl ## 1-byte Spill
LBB2_5:                                 ##   in Loop: Header=BB2_3 Depth=2
	mov	al, byte ptr [rbp - 69] ## 1-byte Reload
	test	al, 1
	jne	LBB2_6
	jmp	LBB2_7
LBB2_6:                                 ##   in Loop: Header=BB2_3 Depth=2
	movsxd	rax, dword ptr [rbp - 68]
	mov	ecx, dword ptr [rbp + 4*rax - 32]
	add	ecx, 1
	mov	dword ptr [rbp + 4*rax - 32], ecx
	jmp	LBB2_3
LBB2_7:                                 ##   in Loop: Header=BB2_1 Depth=1
	movsxd	rax, dword ptr [rbp - 68]
	cmp	dword ptr [rbp + 4*rax - 32], 2
	jl	LBB2_9
## %bb.8:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 68]
	add	eax, -1
	mov	dword ptr [rbp - 68], eax
	jmp	LBB2_13
LBB2_9:                                 ##   in Loop: Header=BB2_1 Depth=1
	cmp	dword ptr [rbp - 68], 5
	jne	LBB2_11
## %bb.10:                              ##   in Loop: Header=BB2_1 Depth=1
	lea	rdi, [rbp - 64]
	movsxd	rax, dword ptr [rbp - 68]
	mov	ecx, dword ptr [rbp + 4*rax - 32]
	movsxd	rax, dword ptr [rbp - 68]
	mov	dword ptr [rbp + 4*rax - 64], ecx
	call	_display_outcome
	jmp	LBB2_12
LBB2_11:                                ##   in Loop: Header=BB2_1 Depth=1
	movsxd	rax, dword ptr [rbp - 68]
	mov	ecx, dword ptr [rbp + 4*rax - 32]
	movsxd	rax, dword ptr [rbp - 68]
	mov	dword ptr [rbp + 4*rax - 64], ecx
	mov	ecx, dword ptr [rbp - 68]
	add	ecx, 1
	mov	dword ptr [rbp - 68], ecx
	movsxd	rax, dword ptr [rbp - 68]
	mov	dword ptr [rbp + 4*rax - 32], -1
LBB2_12:                                ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_13
LBB2_13:                                ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_1
LBB2_14:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB2_16
## %bb.15:
	add	rsp, 80
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
	sub	rsp, 16
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	call	_backtrack
	xor	eax, eax
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d"

L_.str.1:                               ## @.str.1
	.asciz	"\n"


.subsections_via_symbols
