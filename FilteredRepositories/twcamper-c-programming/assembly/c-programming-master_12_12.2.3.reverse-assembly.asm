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
	lea	rax, [rbp - 48]
	lea	rcx, [rip + l_main.a]
	mov	edx, 40
                                        ## kill: def $rdx killed $edx
	mov	rsi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	dword ptr [rbp - 52], 0
	mov	rsi, rax
	mov	rdi, rsi
	mov	rsi, rcx
	mov	qword ptr [rbp - 88], rax ## 8-byte Spill
	call	_memcpy
	mov	rax, qword ptr [rbp - 88] ## 8-byte Reload
	mov	qword ptr [rbp - 64], rax
	add	rax, 36
	mov	qword ptr [rbp - 72], rax
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 64]
	cmp	rax, qword ptr [rbp - 72]
	jae	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 64]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 76], ecx
	mov	rax, qword ptr [rbp - 72]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 64]
	mov	rdx, rax
	add	rdx, 4
	mov	qword ptr [rbp - 64], rdx
	mov	dword ptr [rax], ecx
	mov	ecx, dword ptr [rbp - 76]
	mov	rax, qword ptr [rbp - 72]
	mov	rdx, rax
	add	rdx, -4
	mov	qword ptr [rbp - 72], rdx
	mov	dword ptr [rax], ecx
	jmp	LBB0_1
LBB0_3:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB0_5
## %bb.4:
	xor	eax, eax
	add	rsp, 96
	pop	rbp
	ret
LBB0_5:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @main.a
l_main.a:
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


.subsections_via_symbols
