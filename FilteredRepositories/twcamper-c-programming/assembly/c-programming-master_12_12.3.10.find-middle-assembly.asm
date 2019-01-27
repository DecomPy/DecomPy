	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_find_middle            ## -- Begin function find_middle
	.p2align	4, 0x90
_find_middle:                           ## @find_middle
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	eax, 2
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rdi
	mov	rdi, qword ptr [rbp - 24]
	movsxd	rdx, dword ptr [rbp - 12]
	shl	rdx, 2
	add	rdi, rdx
	mov	qword ptr [rbp - 32], rdi
	mov	rdx, qword ptr [rbp - 24]
	mov	rdi, qword ptr [rbp - 32]
	mov	r8, qword ptr [rbp - 24]
	sub	rdi, r8
	sar	rdi, 2
	mov	rax, rdi
	mov	qword ptr [rbp - 40], rdx ## 8-byte Spill
	cqo
	idiv	rcx
	shl	rax, 2
	mov	rcx, qword ptr [rbp - 40] ## 8-byte Reload
	add	rcx, rax
	mov	rax, rcx
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
	sub	rsp, 80
	lea	rax, [rbp - 48]
	lea	rcx, [rip + l_main.ar]
	mov	edx, 36
                                        ## kill: def $rdx killed $edx
	mov	rsi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	dword ptr [rbp - 52], 0
	mov	rsi, rax
	mov	rdi, rsi
	mov	rsi, rcx
	mov	qword ptr [rbp - 72], rax ## 8-byte Spill
	call	_memcpy
	mov	rax, qword ptr [rbp - 72] ## 8-byte Reload
	add	rax, 12
	mov	rdi, rax
	mov	esi, 9
	call	_find_middle
	mov	qword ptr [rbp - 64], rax
	mov	rsi, qword ptr [rbp - 64]
	mov	rax, qword ptr [rbp - 64]
	mov	edx, dword ptr [rax]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rcx, rsi
	mov	dword ptr [rbp - 76], eax ## 4-byte Spill
	jne	LBB1_2
## %bb.1:
	xor	eax, eax
	add	rsp, 80
	pop	rbp
	ret
LBB1_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @main.ar
l_main.ar:
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	3                       ## 0x3
	.long	4                       ## 0x4
	.long	5                       ## 0x5
	.long	6                       ## 0x6
	.long	7                       ## 0x7
	.long	8                       ## 0x8

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%p: %d\n"


.subsections_via_symbols
