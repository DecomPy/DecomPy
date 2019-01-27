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
	sub	rsp, 80
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 52], 0
	mov	dword ptr [rbp - 56], edi
	mov	qword ptr [rbp - 64], rsi
	mov	dword ptr [rbp - 68], 0
	mov	dword ptr [rbp - 68], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 68]
	cmp	eax, dword ptr [rbp - 56]
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	esi, dword ptr [rbp - 68]
	mov	rax, qword ptr [rbp - 64]
	movsxd	rcx, dword ptr [rbp - 68]
	mov	rdx, qword ptr [rax + 8*rcx]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 76], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 68]
	add	eax, 1
	mov	dword ptr [rbp - 68], eax
	jmp	LBB0_1
LBB0_4:
	mov	rax, qword ptr [rip + l_main.states]
	mov	qword ptr [rbp - 48], rax
	mov	rax, qword ptr [rip + l_main.states+8]
	mov	qword ptr [rbp - 40], rax
	mov	rax, qword ptr [rip + l_main.states+16]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rip + l_main.states+24]
	mov	qword ptr [rbp - 24], rax
	mov	dword ptr [rbp - 72], 5
	mov	dword ptr [rbp - 68], 0
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 68]
	cmp	eax, dword ptr [rbp - 72]
	jge	LBB0_8
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	mov	esi, dword ptr [rbp - 68]
	movsxd	rax, dword ptr [rbp - 68]
	mov	rdx, qword ptr [rbp + 8*rax - 48]
	lea	rdi, [rip + L_.str.5]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 80], eax ## 4-byte Spill
## %bb.7:                               ##   in Loop: Header=BB0_5 Depth=1
	mov	eax, dword ptr [rbp - 68]
	add	eax, 1
	mov	dword ptr [rbp - 68], eax
	jmp	LBB0_5
LBB0_8:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB0_10
## %bb.9:
	xor	eax, eax
	add	rsp, 80
	pop	rbp
	ret
LBB0_10:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"arg %d: %s\n"

L_.str.1:                               ## @.str.1
	.asciz	"California"

L_.str.2:                               ## @.str.2
	.asciz	"Oregon"

L_.str.3:                               ## @.str.3
	.asciz	"Washington"

L_.str.4:                               ## @.str.4
	.asciz	"Texas"

	.section	__DATA,__const
	.p2align	4               ## @main.states
l_main.states:
	.quad	L_.str.1
	.quad	L_.str.2
	.quad	L_.str.3
	.quad	L_.str.4

	.section	__TEXT,__cstring,cstring_literals
L_.str.5:                               ## @.str.5
	.asciz	"state %d: %s\n"


.subsections_via_symbols
