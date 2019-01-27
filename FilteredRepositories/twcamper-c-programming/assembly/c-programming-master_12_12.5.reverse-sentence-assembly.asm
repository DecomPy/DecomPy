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
	sub	rsp, 288
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 276], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 280], 0
	mov	dword ptr [rbp - 288], eax ## 4-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	call	_getchar
	mov	cl, al
	mov	byte ptr [rbp - 281], cl
	movsx	eax, cl
	cmp	eax, 10
	je	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	al, byte ptr [rbp - 281]
	movsxd	rcx, dword ptr [rbp - 280]
	mov	byte ptr [rbp + rcx - 272], al
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 280]
	add	eax, 1
	mov	dword ptr [rbp - 280], eax
	jmp	LBB0_1
LBB0_4:
	lea	rdi, [rbp - 272]
	movsxd	rax, dword ptr [rbp - 280]
	mov	byte ptr [rbp + rax - 272], 0
	mov	esi, dword ptr [rbp - 280]
	call	_print_reversed
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 8]
	cmp	rax, rdi
	jne	LBB0_6
## %bb.5:
	xor	eax, eax
	add	rsp, 288
	pop	rbp
	ret
LBB0_6:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_print_reversed         ## -- Begin function print_reversed
	.p2align	4, 0x90
_print_reversed:                        ## @print_reversed
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 64
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	byte ptr [rbp - 33], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	sub	esi, 1
	movsxd	rax, esi
	add	rdi, rax
	mov	qword ptr [rbp - 32], rdi
	mov	rax, qword ptr [rbp - 32]
	movsx	esi, byte ptr [rax]
	cmp	esi, 46
	je	LBB1_3
## %bb.1:
	mov	rax, qword ptr [rbp - 32]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 63
	je	LBB1_3
## %bb.2:
	mov	rax, qword ptr [rbp - 32]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 33
	jne	LBB1_4
LBB1_3:
	mov	rax, qword ptr [rbp - 32]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 33], cl
	mov	rax, qword ptr [rbp - 32]
	mov	byte ptr [rax], 0
LBB1_4:
	jmp	LBB1_5
LBB1_5:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_11 Depth 2
	mov	rax, qword ptr [rbp - 32]
	cmp	rax, qword ptr [rbp - 8]
	jb	LBB1_22
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	mov	rax, qword ptr [rbp - 32]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 32
	je	LBB1_8
## %bb.7:                               ##   in Loop: Header=BB1_5 Depth=1
	mov	rax, qword ptr [rbp - 32]
	cmp	rax, qword ptr [rbp - 8]
	jne	LBB1_21
LBB1_8:                                 ##   in Loop: Header=BB1_5 Depth=1
	mov	rax, qword ptr [rbp - 32]
	mov	qword ptr [rbp - 24], rax
	mov	rax, qword ptr [rbp - 32]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 32
	jne	LBB1_10
## %bb.9:                               ##   in Loop: Header=BB1_5 Depth=1
	mov	rax, qword ptr [rbp - 32]
	add	rax, 1
	mov	qword ptr [rbp - 32], rax
LBB1_10:                                ##   in Loop: Header=BB1_5 Depth=1
	jmp	LBB1_11
LBB1_11:                                ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 32]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 32
	mov	byte ptr [rbp - 34], cl ## 1-byte Spill
	je	LBB1_13
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	mov	rax, qword ptr [rbp - 32]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	setne	dl
	mov	byte ptr [rbp - 34], dl ## 1-byte Spill
LBB1_13:                                ##   in Loop: Header=BB1_11 Depth=2
	mov	al, byte ptr [rbp - 34] ## 1-byte Reload
	test	al, 1
	jne	LBB1_14
	jmp	LBB1_15
LBB1_14:                                ##   in Loop: Header=BB1_11 Depth=2
	mov	rax, qword ptr [rbp - 32]
	movsx	esi, byte ptr [rax]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rbp - 32]
	add	rdi, 1
	mov	qword ptr [rbp - 32], rdi
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	jmp	LBB1_11
LBB1_15:                                ##   in Loop: Header=BB1_5 Depth=1
	mov	rax, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rbp - 32]
	cmp	rax, qword ptr [rbp - 8]
	jne	LBB1_19
## %bb.16:                              ##   in Loop: Header=BB1_5 Depth=1
	cmp	byte ptr [rbp - 33], 0
	je	LBB1_18
## %bb.17:                              ##   in Loop: Header=BB1_5 Depth=1
	movsx	esi, byte ptr [rbp - 33]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
LBB1_18:                                ##   in Loop: Header=BB1_5 Depth=1
	jmp	LBB1_20
LBB1_19:                                ##   in Loop: Header=BB1_5 Depth=1
	lea	rdi, [rip + L_.str.1]
	mov	esi, 32
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
LBB1_20:                                ##   in Loop: Header=BB1_5 Depth=1
	jmp	LBB1_21
LBB1_21:                                ##   in Loop: Header=BB1_5 Depth=1
	mov	rax, qword ptr [rbp - 32]
	add	rax, -1
	mov	qword ptr [rbp - 32], rax
	jmp	LBB1_5
LBB1_22:
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	add	rsp, 64
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter a sentence: "

L_.str.1:                               ## @.str.1
	.asciz	"%c"

L_.str.2:                               ## @.str.2
	.asciz	"\n"


.subsections_via_symbols
