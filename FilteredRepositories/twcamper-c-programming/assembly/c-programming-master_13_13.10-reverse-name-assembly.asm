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
	sub	rsp, 112
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 84], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rip + ___stdinp@GOTPCREL]
	lea	rcx, [rbp - 80]
	mov	rdx, qword ptr [rdi]
	mov	rdi, rcx
	mov	esi, 65
	mov	dword ptr [rbp - 88], eax ## 4-byte Spill
	call	_fgets
	lea	rdi, [rbp - 80]
	mov	qword ptr [rbp - 96], rax ## 8-byte Spill
	call	_reverse_name
	lea	rdi, [rbp - 80]
	call	_puts
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	mov	dword ptr [rbp - 100], eax ## 4-byte Spill
	jne	LBB0_2
## %bb.1:
	xor	eax, eax
	add	rsp, 112
	pop	rbp
	ret
LBB0_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_reverse_name           ## -- Begin function reverse_name
	.p2align	4, 0x90
_reverse_name:                          ## @reverse_name
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rdi
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 24]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 29], cl ## 1-byte Spill
	je	LBB1_3
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 24]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 32
	sete	dl
	mov	byte ptr [rbp - 29], dl ## 1-byte Spill
LBB1_3:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	al, byte ptr [rbp - 29] ## 1-byte Reload
	test	al, 1
	jne	LBB1_4
	jmp	LBB1_5
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 24]
	add	rax, 1
	mov	qword ptr [rbp - 24], rax
	jmp	LBB1_1
LBB1_5:
	mov	rax, qword ptr [rbp - 24]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 9], cl
LBB1_6:                                 ## =>This Inner Loop Header: Depth=1
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 24]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 30], cl ## 1-byte Spill
	je	LBB1_8
## %bb.7:                               ##   in Loop: Header=BB1_6 Depth=1
	mov	rax, qword ptr [rbp - 24]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 32
	setne	dl
	mov	byte ptr [rbp - 30], dl ## 1-byte Spill
LBB1_8:                                 ##   in Loop: Header=BB1_6 Depth=1
	mov	al, byte ptr [rbp - 30] ## 1-byte Reload
	test	al, 1
	jne	LBB1_9
	jmp	LBB1_10
LBB1_9:                                 ##   in Loop: Header=BB1_6 Depth=1
	mov	rax, qword ptr [rbp - 24]
	add	rax, 1
	mov	qword ptr [rbp - 24], rax
	jmp	LBB1_6
LBB1_10:
	jmp	LBB1_11
LBB1_11:                                ## =>This Inner Loop Header: Depth=1
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 24]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 31], cl ## 1-byte Spill
	je	LBB1_13
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=1
	mov	rax, qword ptr [rbp - 24]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 32
	sete	dl
	mov	byte ptr [rbp - 31], dl ## 1-byte Spill
LBB1_13:                                ##   in Loop: Header=BB1_11 Depth=1
	mov	al, byte ptr [rbp - 31] ## 1-byte Reload
	test	al, 1
	jne	LBB1_14
	jmp	LBB1_15
LBB1_14:                                ##   in Loop: Header=BB1_11 Depth=1
	mov	rax, qword ptr [rbp - 24]
	add	rax, 1
	mov	qword ptr [rbp - 24], rax
	jmp	LBB1_11
LBB1_15:
	mov	dword ptr [rbp - 28], 0
LBB1_16:                                ## =>This Inner Loop Header: Depth=1
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 24]
	movsxd	rsi, dword ptr [rbp - 28]
	movsx	eax, byte ptr [rdx + rsi]
	cmp	eax, 10
	mov	byte ptr [rbp - 32], cl ## 1-byte Spill
	je	LBB1_19
## %bb.17:                              ##   in Loop: Header=BB1_16 Depth=1
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 24]
	movsxd	rsi, dword ptr [rbp - 28]
	movsx	eax, byte ptr [rdx + rsi]
	cmp	eax, 0
	mov	byte ptr [rbp - 32], cl ## 1-byte Spill
	je	LBB1_19
## %bb.18:                              ##   in Loop: Header=BB1_16 Depth=1
	mov	rax, qword ptr [rbp - 24]
	movsxd	rcx, dword ptr [rbp - 28]
	movsx	edx, byte ptr [rax + rcx]
	cmp	edx, 32
	setne	sil
	mov	byte ptr [rbp - 32], sil ## 1-byte Spill
LBB1_19:                                ##   in Loop: Header=BB1_16 Depth=1
	mov	al, byte ptr [rbp - 32] ## 1-byte Reload
	test	al, 1
	jne	LBB1_20
	jmp	LBB1_22
LBB1_20:                                ##   in Loop: Header=BB1_16 Depth=1
	jmp	LBB1_21
LBB1_21:                                ##   in Loop: Header=BB1_16 Depth=1
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	dword ptr [rbp - 28], eax
	jmp	LBB1_16
LBB1_22:
	xor	esi, esi
	mov	rdx, -1
	mov	rdi, qword ptr [rbp - 8]
	mov	r8d, dword ptr [rbp - 28]
	mov	r9, qword ptr [rbp - 24]
	movsx	eax, byte ptr [rbp - 9]
	lea	rcx, [rip + L_.str.1]
	mov	dword ptr [rsp], eax
	mov	al, 0
	call	___sprintf_chk
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter First Name and Last Name: "

L_.str.1:                               ## @.str.1
	.asciz	"%.*s, %c."


.subsections_via_symbols
