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
	sub	rsp, 160
	xor	eax, eax
	mov	ecx, 40
	mov	edx, ecx
	mov	r8, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	r8, qword ptr [r8]
	mov	qword ptr [rbp - 8], r8
	mov	dword ptr [rbp - 84], 0
	mov	dword ptr [rbp - 88], edi
	mov	qword ptr [rbp - 96], rsi
	mov	rsi, qword ptr [rip + l_main.ages]
	mov	qword ptr [rbp - 32], rsi
	mov	rsi, qword ptr [rip + l_main.ages+8]
	mov	qword ptr [rbp - 24], rsi
	mov	ecx, dword ptr [rip + l_main.ages+16]
	mov	dword ptr [rbp - 16], ecx
	lea	rsi, [rbp - 80]
	mov	rdi, rsi
	mov	esi, eax
	call	_memset
	lea	rdx, [rip + L_.str]
	mov	qword ptr [rbp - 80], rdx
	lea	rdx, [rip + L_.str.1]
	mov	qword ptr [rbp - 72], rdx
	lea	rdx, [rip + L_.str.2]
	mov	qword ptr [rbp - 64], rdx
	lea	rdx, [rip + L_.str.3]
	mov	qword ptr [rbp - 56], rdx
	lea	rdx, [rip + L_.str.4]
	mov	qword ptr [rbp - 48], rdx
	mov	dword ptr [rbp - 100], 5
	mov	dword ptr [rbp - 104], 0
	mov	dword ptr [rbp - 104], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 104]
	cmp	eax, dword ptr [rbp - 100]
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 104]
	mov	rsi, qword ptr [rbp + 8*rax - 80]
	movsxd	rax, dword ptr [rbp - 104]
	mov	edx, dword ptr [rbp + 4*rax - 32]
	lea	rdi, [rip + L_.str.5]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 124], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 104]
	add	eax, 1
	mov	dword ptr [rbp - 104], eax
	jmp	LBB0_1
LBB0_4:
	lea	rdi, [rip + L_.str.6]
	mov	al, 0
	call	_printf
	lea	rdi, [rbp - 80]
	mov	rcx, rdi
	mov	qword ptr [rbp - 112], rcx
	mov	qword ptr [rbp - 120], rdi
	mov	dword ptr [rbp - 104], 0
	mov	dword ptr [rbp - 128], eax ## 4-byte Spill
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 104]
	cmp	eax, dword ptr [rbp - 100]
	jge	LBB0_8
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	mov	rax, qword ptr [rbp - 120]
	movsxd	rcx, dword ptr [rbp - 104]
	mov	rsi, qword ptr [rax + 8*rcx]
	mov	rax, qword ptr [rbp - 112]
	movsxd	rcx, dword ptr [rbp - 104]
	mov	edx, dword ptr [rax + 4*rcx]
	lea	rdi, [rip + L_.str.7]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 132], eax ## 4-byte Spill
## %bb.7:                               ##   in Loop: Header=BB0_5 Depth=1
	mov	eax, dword ptr [rbp - 104]
	add	eax, 1
	mov	dword ptr [rbp - 104], eax
	jmp	LBB0_5
LBB0_8:
	lea	rdi, [rip + L_.str.6]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 104], 0
	mov	dword ptr [rbp - 136], eax ## 4-byte Spill
LBB0_9:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 104]
	cmp	eax, dword ptr [rbp - 100]
	jge	LBB0_12
## %bb.10:                              ##   in Loop: Header=BB0_9 Depth=1
	mov	rax, qword ptr [rbp - 120]
	movsxd	rcx, dword ptr [rbp - 104]
	mov	rsi, qword ptr [rax + 8*rcx]
	mov	rax, qword ptr [rbp - 112]
	movsxd	rcx, dword ptr [rbp - 104]
	mov	edx, dword ptr [rax + 4*rcx]
	lea	rdi, [rip + L_.str.8]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 140], eax ## 4-byte Spill
## %bb.11:                              ##   in Loop: Header=BB0_9 Depth=1
	mov	eax, dword ptr [rbp - 104]
	add	eax, 1
	mov	dword ptr [rbp - 104], eax
	jmp	LBB0_9
LBB0_12:
	lea	rdi, [rip + L_.str.6]
	mov	al, 0
	call	_printf
	lea	rdi, [rbp - 32]
	lea	rcx, [rbp - 80]
	mov	qword ptr [rbp - 120], rcx
	mov	qword ptr [rbp - 112], rdi
	mov	dword ptr [rbp - 144], eax ## 4-byte Spill
LBB0_13:                                ## =>This Inner Loop Header: Depth=1
	lea	rax, [rbp - 32]
	mov	rcx, qword ptr [rbp - 112]
	sub	rcx, rax
	sar	rcx, 2
	movsxd	rax, dword ptr [rbp - 100]
	cmp	rcx, rax
	jge	LBB0_16
## %bb.14:                              ##   in Loop: Header=BB0_13 Depth=1
	mov	rax, qword ptr [rbp - 120]
	mov	rsi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 112]
	mov	edx, dword ptr [rax]
	lea	rdi, [rip + L_.str.9]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 148], eax ## 4-byte Spill
## %bb.15:                              ##   in Loop: Header=BB0_13 Depth=1
	mov	rax, qword ptr [rbp - 120]
	add	rax, 8
	mov	qword ptr [rbp - 120], rax
	mov	rax, qword ptr [rbp - 112]
	add	rax, 4
	mov	qword ptr [rbp - 112], rax
	jmp	LBB0_13
LBB0_16:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB0_18
## %bb.17:
	xor	eax, eax
	add	rsp, 160
	pop	rbp
	ret
LBB0_18:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @main.ages
l_main.ages:
	.long	23                      ## 0x17
	.long	43                      ## 0x2b
	.long	12                      ## 0xc
	.long	89                      ## 0x59
	.long	2                       ## 0x2

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Alan"

L_.str.1:                               ## @.str.1
	.asciz	"Frank"

L_.str.2:                               ## @.str.2
	.asciz	"Mary"

L_.str.3:                               ## @.str.3
	.asciz	"John"

L_.str.4:                               ## @.str.4
	.asciz	"Lisa"

L_.str.5:                               ## @.str.5
	.asciz	"%s has %d years alive.\n"

L_.str.6:                               ## @.str.6
	.asciz	"---\n"

L_.str.7:                               ## @.str.7
	.asciz	"%s is %d years old.\n"

L_.str.8:                               ## @.str.8
	.asciz	"%s is %d years old again.\n"

L_.str.9:                               ## @.str.9
	.asciz	"%s lived %d years so far.\n"


.subsections_via_symbols
