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
	lea	rax, [rbp - 64]
	lea	rcx, [rip + l_main.m]
	mov	edx, 48
                                        ## kill: def $rdx killed $edx
	mov	r8, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	r8, qword ptr [r8]
	mov	qword ptr [rbp - 8], r8
	mov	dword ptr [rbp - 68], edi
	mov	qword ptr [rbp - 80], rsi
	mov	rsi, rax
	mov	rdi, rsi
	mov	rsi, rcx
	mov	qword ptr [rbp - 96], rax ## 8-byte Spill
	call	_memcpy
	mov	edx, dword ptr [rbp - 40]
	mov	ecx, dword ptr [rbp - 44]
	mov	r8d, dword ptr [rbp - 24]
	lea	rdi, [rip + L_.str]
	mov	rsi, qword ptr [rbp - 96] ## 8-byte Reload
	mov	al, 0
	call	_printf
	lea	rsi, [rbp - 64]
	mov	qword ptr [rbp - 88], rsi
	mov	rsi, qword ptr [rbp - 88]
	mov	rdi, qword ptr [rbp - 88]
	mov	edx, dword ptr [rdi + 24]
	mov	rdi, qword ptr [rbp - 88]
	mov	ecx, dword ptr [rdi + 20]
	mov	rdi, qword ptr [rbp - 88]
	mov	r8d, dword ptr [rdi + 40]
	lea	rdi, [rip + L_.str]
	mov	dword ptr [rbp - 100], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 8]
	cmp	rsi, rdi
	mov	dword ptr [rbp - 104], eax ## 4-byte Spill
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
	.section	__TEXT,__const
	.p2align	4               ## @main.m
l_main.m:
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	3                       ## 0x3
	.long	4                       ## 0x4
	.long	5                       ## 0x5
	.long	6                       ## 0x6
	.long	7                       ## 0x7
	.long	8                       ## 0x8
	.long	9                       ## 0x9
	.long	10                      ## 0xa
	.long	11                      ## 0xb
	.long	12                      ## 0xc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%p %d %d %d\n"


.subsections_via_symbols
