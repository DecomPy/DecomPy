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
	lea	rax, [rbp - 32]
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 8], rcx
	mov	dword ptr [rbp - 36], 0
	mov	rcx, qword ptr [rip + l_main.a]
	mov	qword ptr [rbp - 32], rcx
	mov	rcx, qword ptr [rip + l_main.a+8]
	mov	qword ptr [rbp - 24], rcx
	mov	rcx, qword ptr [rip + l_main.a+16]
	mov	qword ptr [rbp - 16], rcx
	mov	qword ptr [rbp - 48], rax
	add	rax, 20
	mov	qword ptr [rbp - 64], rax
	mov	rsi, qword ptr [rbp - 48]
	mov	rax, qword ptr [rbp - 48]
	mov	edx, dword ptr [rax]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rbp - 64]
	mov	rcx, qword ptr [rbp - 64]
	mov	edx, dword ptr [rcx]
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	edx, 2
	mov	ecx, edx
	mov	rsi, qword ptr [rbp - 48]
	mov	rdi, qword ptr [rbp - 64]
	mov	r8, qword ptr [rbp - 48]
	sub	rdi, r8
	sar	rdi, 2
	mov	dword ptr [rbp - 72], eax ## 4-byte Spill
	mov	rax, rdi
	cqo
	idiv	rcx
	shl	rax, 2
	add	rsi, rax
	mov	qword ptr [rbp - 56], rsi
	mov	rsi, qword ptr [rbp - 56]
	mov	rax, qword ptr [rbp - 56]
	mov	r9d, dword ptr [rax]
	lea	rdi, [rip + L_.str.2]
	mov	edx, r9d
	mov	al, 0
	call	_printf
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rcx, rsi
	mov	dword ptr [rbp - 76], eax ## 4-byte Spill
	jne	LBB0_2
## %bb.1:
	xor	eax, eax
	add	rsp, 80
	pop	rbp
	ret
LBB0_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @main.a
l_main.a:
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	3                       ## 0x3
	.long	4                       ## 0x4
	.long	5                       ## 0x5

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"low: %p, %d\n"

L_.str.1:                               ## @.str.1
	.asciz	"high: %p, %d\n"

L_.str.2:                               ## @.str.2
	.asciz	"middle: %p, %d\n"


.subsections_via_symbols
