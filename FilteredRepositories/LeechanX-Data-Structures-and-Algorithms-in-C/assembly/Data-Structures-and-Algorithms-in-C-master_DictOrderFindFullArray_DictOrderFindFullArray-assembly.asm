	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_findj                  ## -- Begin function findj
	.p2align	4, 0x90
_findj:                                 ## @findj
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	esi, dword ptr [rbp - 12]
	sub	esi, 2
	mov	dword ptr [rbp - 16], esi
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 16], 0
	jl	LBB0_6
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	cmp	edx, dword ptr [rax + 4*rcx + 4]
	jge	LBB0_4
## %bb.3:
	jmp	LBB0_6
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_5
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 16]
	add	eax, -1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB0_1
LBB0_6:
	mov	eax, dword ptr [rbp - 16]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_minestmax_inright      ## -- Begin function minestmax_inright
	.p2align	4, 0x90
_minestmax_inright:                     ## @minestmax_inright
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 16], edx
	mov	edx, dword ptr [rbp - 16]
	sub	edx, 1
	mov	dword ptr [rbp - 20], edx
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 20]
	cmp	eax, dword ptr [rbp - 12]
	jle	LBB1_6
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 12]
	cmp	edx, dword ptr [rax + 4*rcx]
	jle	LBB1_4
## %bb.3:
	jmp	LBB1_6
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_5
LBB1_5:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, -1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB1_1
LBB1_6:
	mov	eax, dword ptr [rbp - 20]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_reverse                ## -- Begin function reverse
	.p2align	4, 0x90
_reverse:                               ## @reverse
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
	mov	qword ptr [rbp - 56], rdi
	mov	dword ptr [rbp - 60], esi
	mov	dword ptr [rbp - 64], edx
	mov	dword ptr [rbp - 68], -1
	mov	edx, dword ptr [rbp - 60]
	mov	dword ptr [rbp - 72], edx
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 72]
	cmp	eax, dword ptr [rbp - 64]
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	rax, qword ptr [rbp - 56]
	movsxd	rcx, dword ptr [rbp - 72]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	esi, dword ptr [rbp - 68]
	add	esi, 1
	mov	dword ptr [rbp - 68], esi
	movsxd	rax, esi
	mov	dword ptr [rbp + 4*rax - 48], edx
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 72]
	add	eax, 1
	mov	dword ptr [rbp - 72], eax
	jmp	LBB2_1
LBB2_4:
	mov	eax, dword ptr [rbp - 60]
	mov	dword ptr [rbp - 72], eax
LBB2_5:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 72]
	cmp	eax, dword ptr [rbp - 64]
	jge	LBB2_8
## %bb.6:                               ##   in Loop: Header=BB2_5 Depth=1
	mov	eax, dword ptr [rbp - 68]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 68], ecx
	movsxd	rdx, eax
	mov	eax, dword ptr [rbp + 4*rdx - 48]
	mov	rdx, qword ptr [rbp - 56]
	movsxd	rsi, dword ptr [rbp - 72]
	mov	dword ptr [rdx + 4*rsi], eax
## %bb.7:                               ##   in Loop: Header=BB2_5 Depth=1
	mov	eax, dword ptr [rbp - 72]
	add	eax, 1
	mov	dword ptr [rbp - 72], eax
	jmp	LBB2_5
LBB2_8:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB2_10
## %bb.9:
	add	rsp, 80
	pop	rbp
	ret
LBB2_10:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_displayarray           ## -- Begin function displayarray
	.p2align	4, 0x90
_displayarray:                          ## @displayarray
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 16], 0
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 16]
	cmp	eax, dword ptr [rbp - 12]
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	mov	esi, dword ptr [rax + 4*rcx]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB3_1 Depth=1
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB3_1
LBB3_4:
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_full_array             ## -- Begin function full_array
	.p2align	4, 0x90
_full_array:                            ## @full_array
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	call	_displayarray
LBB4_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	call	_findj
	mov	dword ptr [rbp - 16], eax
	cmp	eax, -1
	je	LBB4_3
## %bb.2:                               ##   in Loop: Header=BB4_1 Depth=1
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 16]
	mov	edx, dword ptr [rbp - 12]
	call	_minestmax_inright
	mov	dword ptr [rbp - 20], eax
	mov	rdi, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	mov	eax, dword ptr [rdi + 4*rcx]
	mov	dword ptr [rbp - 24], eax
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rdi, dword ptr [rbp - 20]
	mov	eax, dword ptr [rcx + 4*rdi]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rdi, dword ptr [rbp - 16]
	mov	dword ptr [rcx + 4*rdi], eax
	mov	eax, dword ptr [rbp - 24]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rdi, dword ptr [rbp - 20]
	mov	dword ptr [rcx + 4*rdi], eax
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	edx, dword ptr [rbp - 12]
	mov	esi, eax
	call	_reverse
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	call	_displayarray
	jmp	LBB4_1
LBB4_3:
	add	rsp, 32
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
	sub	rsp, 48
	lea	rdi, [rbp - 32]
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 36], 0
	mov	rax, qword ptr [rip + l_main.set]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rip + l_main.set+8]
	mov	qword ptr [rbp - 24], rax
	mov	rax, qword ptr [rip + l_main.set+16]
	mov	qword ptr [rbp - 16], rax
	mov	dword ptr [rbp - 40], 6
	mov	esi, dword ptr [rbp - 40]
	call	_full_array
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 8]
	cmp	rax, rdi
	jne	LBB5_2
## %bb.1:
	xor	eax, eax
	add	rsp, 48
	pop	rbp
	ret
LBB5_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d "

L_.str.1:                               ## @.str.1
	.asciz	"\n"

	.section	__TEXT,__const
	.p2align	4               ## @main.set
l_main.set:
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	3                       ## 0x3
	.long	4                       ## 0x4
	.long	5                       ## 0x5
	.long	6                       ## 0x6


.subsections_via_symbols
