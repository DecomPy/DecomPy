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
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 52], 0
	lea	rdi, [rip + L_.str]
	mov	esi, 25
	mov	al, 0
	call	_printf
	lea	rdi, [rbp - 48]
	mov	qword ptr [rbp - 64], rdi
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	xor	eax, eax
	mov	cl, al
	lea	rdx, [rbp - 48]
	mov	rsi, qword ptr [rbp - 64]
	add	rdx, 25
	cmp	rsi, rdx
	mov	byte ptr [rbp - 69], cl ## 1-byte Spill
	jae	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	call	_getchar
	mov	cl, al
	mov	byte ptr [rbp - 53], cl
	movsx	eax, cl
	cmp	eax, 10
	setne	cl
	mov	byte ptr [rbp - 69], cl ## 1-byte Spill
LBB0_3:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	al, byte ptr [rbp - 69] ## 1-byte Reload
	test	al, 1
	jne	LBB0_4
	jmp	LBB0_6
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	al, byte ptr [rbp - 53]
	mov	rcx, qword ptr [rbp - 64]
	mov	byte ptr [rcx], al
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 64]
	add	rax, 1
	mov	qword ptr [rbp - 64], rax
	jmp	LBB0_1
LBB0_6:
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 76], eax ## 4-byte Spill
LBB0_7:                                 ## =>This Inner Loop Header: Depth=1
	lea	rax, [rbp - 48]
	mov	rcx, qword ptr [rbp - 64]
	cmp	rcx, rax
	jb	LBB0_10
## %bb.8:                               ##   in Loop: Header=BB0_7 Depth=1
	mov	rax, qword ptr [rbp - 64]
	movsx	esi, byte ptr [rax]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 80], eax ## 4-byte Spill
## %bb.9:                               ##   in Loop: Header=BB0_7 Depth=1
	mov	rax, qword ptr [rbp - 64]
	add	rax, -1
	mov	qword ptr [rbp - 64], rax
	jmp	LBB0_7
LBB0_10:
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdi, qword ptr [rdi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rdi, rcx
	mov	dword ptr [rbp - 84], eax ## 4-byte Spill
	jne	LBB0_12
## %bb.11:
	xor	eax, eax
	add	rsp, 96
	pop	rbp
	ret
LBB0_12:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter a message up to %d characters: "

L_.str.1:                               ## @.str.1
	.asciz	"Reversed: "

L_.str.2:                               ## @.str.2
	.asciz	"%c"

L_.str.3:                               ## @.str.3
	.asciz	"\n"


.subsections_via_symbols
