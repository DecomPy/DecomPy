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
	sub	rsp, 144
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 100], 0
	mov	rax, qword ptr [rip + l_main.smallest]
	mov	qword ptr [rbp - 64], rax
	mov	rax, qword ptr [rip + l_main.smallest+8]
	mov	qword ptr [rbp - 56], rax
	mov	ecx, dword ptr [rip + l_main.smallest+16]
	mov	dword ptr [rbp - 48], ecx
	mov	dl, byte ptr [rip + l_main.smallest+20]
	mov	byte ptr [rbp - 44], dl
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	lea	rdi, [rbp - 32]
	call	_strlen
	cmp	rax, 4
	je	LBB0_8
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rsi, [rbp - 32]
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 104], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	lea	rsi, [rbp - 64]
	lea	rdi, [rbp - 32]
	mov	dword ptr [rbp - 108], eax ## 4-byte Spill
	call	_strcmp
	cmp	eax, 0
	jge	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, 20
	mov	edx, eax
	mov	eax, 21
	mov	ecx, eax
	lea	rsi, [rbp - 32]
	lea	rdi, [rbp - 64]
	call	___strncpy_chk
	mov	qword ptr [rbp - 120], rax ## 8-byte Spill
	jmp	LBB0_7
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	lea	rsi, [rbp - 96]
	lea	rdi, [rbp - 32]
	call	_strcmp
	cmp	eax, 0
	jle	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, 20
	mov	edx, eax
	mov	eax, 21
	mov	ecx, eax
	lea	rsi, [rbp - 32]
	lea	rdi, [rbp - 96]
	call	___strncpy_chk
	mov	qword ptr [rbp - 128], rax ## 8-byte Spill
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_7
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_1
LBB0_8:
	lea	rsi, [rbp - 64]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	lea	rsi, [rbp - 96]
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 132], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 8]
	cmp	rsi, rdi
	mov	dword ptr [rbp - 136], eax ## 4-byte Spill
	jne	LBB0_10
## %bb.9:
	xor	eax, eax
	add	rsp, 144
	pop	rbp
	ret
LBB0_10:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @main.smallest
l_main.smallest:
	.byte	127                     ## 0x7f
	.space	20

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter a word: "

L_.str.1:                               ## @.str.1
	.asciz	"%20s"

L_.str.2:                               ## @.str.2
	.asciz	"Lowest word: %s\n"

L_.str.3:                               ## @.str.3
	.asciz	"Highest word: %s\n"


.subsections_via_symbols
