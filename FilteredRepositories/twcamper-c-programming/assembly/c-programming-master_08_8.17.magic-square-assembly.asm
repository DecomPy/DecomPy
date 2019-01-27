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
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 12], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rbp - 16]
	mov	dword ptr [rbp - 72], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	mov	ecx, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 76], eax ## 4-byte Spill
	mov	eax, ecx
	cdq
	mov	ecx, 2
	idiv	ecx
	cmp	edx, 0
	je	LBB0_3
## %bb.1:
	cmp	dword ptr [rbp - 16], 1
	jl	LBB0_3
## %bb.2:
	cmp	dword ptr [rbp - 16], 99
	jle	LBB0_4
LBB0_3:
	mov	rax, qword ptr [rip + ___stderrp@GOTPCREL]
	mov	rdi, qword ptr [rax]
	lea	rsi, [rip + L_.str.3]
	mov	al, 0
	call	_fprintf
	mov	dword ptr [rbp - 12], 1
	mov	dword ptr [rbp - 80], eax ## 4-byte Spill
	jmp	LBB0_34
LBB0_4:
	mov	eax, dword ptr [rbp - 16]
	mov	ecx, eax
	mov	rdx, rcx
	mov	rsi, rsp
	mov	qword ptr [rbp - 48], rsi
	mov	rsi, rcx
	imul	rsi, rsi
	lea	rsi, [4*rsi + 15]
	and	rsi, -16
	mov	rdi, rsp
	sub	rdi, rsi
	mov	rsp, rdi
	mov	qword ptr [rbp - 56], rcx
	mov	qword ptr [rbp - 64], rdx
	mov	dword ptr [rbp - 36], 0
	mov	qword ptr [rbp - 88], rdi ## 8-byte Spill
	mov	qword ptr [rbp - 96], rdx ## 8-byte Spill
LBB0_5:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_7 Depth 2
	mov	eax, dword ptr [rbp - 36]
	cmp	eax, dword ptr [rbp - 16]
	jge	LBB0_12
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	mov	dword ptr [rbp - 40], 0
LBB0_7:                                 ##   Parent Loop BB0_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	eax, dword ptr [rbp - 40]
	cmp	eax, dword ptr [rbp - 16]
	jge	LBB0_10
## %bb.8:                               ##   in Loop: Header=BB0_7 Depth=2
	movsxd	rax, dword ptr [rbp - 36]
	mov	rcx, qword ptr [rbp - 96] ## 8-byte Reload
	imul	rax, rcx
	shl	rax, 2
	mov	rdx, qword ptr [rbp - 88] ## 8-byte Reload
	add	rdx, rax
	movsxd	rax, dword ptr [rbp - 40]
	mov	dword ptr [rdx + 4*rax], 0
## %bb.9:                               ##   in Loop: Header=BB0_7 Depth=2
	mov	eax, dword ptr [rbp - 40]
	add	eax, 1
	mov	dword ptr [rbp - 40], eax
	jmp	LBB0_7
LBB0_10:                                ##   in Loop: Header=BB0_5 Depth=1
	jmp	LBB0_11
LBB0_11:                                ##   in Loop: Header=BB0_5 Depth=1
	mov	eax, dword ptr [rbp - 36]
	add	eax, 1
	mov	dword ptr [rbp - 36], eax
	jmp	LBB0_5
LBB0_12:
	mov	dword ptr [rbp - 36], 0
	mov	eax, dword ptr [rbp - 16]
	cdq
	mov	ecx, 2
	idiv	ecx
	mov	dword ptr [rbp - 40], eax
	mov	eax, dword ptr [rbp - 16]
	imul	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 20], eax
	mov	dword ptr [rbp - 24], 1
LBB0_13:                                ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 20]
	jg	LBB0_25
## %bb.14:                              ##   in Loop: Header=BB0_13 Depth=1
	mov	eax, dword ptr [rbp - 24]
	movsxd	rcx, dword ptr [rbp - 36]
	mov	rdx, qword ptr [rbp - 96] ## 8-byte Reload
	imul	rcx, rdx
	shl	rcx, 2
	mov	rsi, qword ptr [rbp - 88] ## 8-byte Reload
	add	rsi, rcx
	movsxd	rcx, dword ptr [rbp - 40]
	mov	dword ptr [rsi + 4*rcx], eax
	mov	eax, dword ptr [rbp - 36]
	mov	dword ptr [rbp - 28], eax
	mov	eax, dword ptr [rbp - 40]
	mov	dword ptr [rbp - 32], eax
	cmp	dword ptr [rbp - 28], 0
	jne	LBB0_16
## %bb.15:                              ##   in Loop: Header=BB0_13 Depth=1
	mov	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 28], eax
LBB0_16:                                ##   in Loop: Header=BB0_13 Depth=1
	mov	eax, dword ptr [rbp - 28]
	add	eax, -1
	mov	dword ptr [rbp - 28], eax
	mov	eax, dword ptr [rbp - 32]
	mov	ecx, dword ptr [rbp - 16]
	sub	ecx, 1
	cmp	eax, ecx
	jne	LBB0_18
## %bb.17:                              ##   in Loop: Header=BB0_13 Depth=1
	mov	dword ptr [rbp - 32], -1
LBB0_18:                                ##   in Loop: Header=BB0_13 Depth=1
	mov	eax, dword ptr [rbp - 32]
	add	eax, 1
	mov	dword ptr [rbp - 32], eax
	movsxd	rcx, dword ptr [rbp - 28]
	mov	rdx, qword ptr [rbp - 96] ## 8-byte Reload
	imul	rcx, rdx
	shl	rcx, 2
	mov	rsi, qword ptr [rbp - 88] ## 8-byte Reload
	add	rsi, rcx
	movsxd	rcx, dword ptr [rbp - 32]
	cmp	dword ptr [rsi + 4*rcx], 0
	jne	LBB0_20
## %bb.19:                              ##   in Loop: Header=BB0_13 Depth=1
	mov	eax, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 36], eax
	mov	eax, dword ptr [rbp - 32]
	mov	dword ptr [rbp - 40], eax
	jmp	LBB0_23
LBB0_20:                                ##   in Loop: Header=BB0_13 Depth=1
	mov	eax, dword ptr [rbp - 36]
	mov	ecx, dword ptr [rbp - 16]
	sub	ecx, 1
	cmp	eax, ecx
	jne	LBB0_22
## %bb.21:                              ##   in Loop: Header=BB0_13 Depth=1
	mov	dword ptr [rbp - 36], -1
LBB0_22:                                ##   in Loop: Header=BB0_13 Depth=1
	mov	eax, dword ptr [rbp - 36]
	add	eax, 1
	mov	dword ptr [rbp - 36], eax
LBB0_23:                                ##   in Loop: Header=BB0_13 Depth=1
	jmp	LBB0_24
LBB0_24:                                ##   in Loop: Header=BB0_13 Depth=1
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB0_13
LBB0_25:
	mov	dword ptr [rbp - 36], 0
LBB0_26:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_28 Depth 2
	mov	eax, dword ptr [rbp - 36]
	cmp	eax, dword ptr [rbp - 16]
	jge	LBB0_33
## %bb.27:                              ##   in Loop: Header=BB0_26 Depth=1
	mov	dword ptr [rbp - 40], 0
LBB0_28:                                ##   Parent Loop BB0_26 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	eax, dword ptr [rbp - 40]
	cmp	eax, dword ptr [rbp - 16]
	jge	LBB0_31
## %bb.29:                              ##   in Loop: Header=BB0_28 Depth=2
	movsxd	rax, dword ptr [rbp - 36]
	mov	rcx, qword ptr [rbp - 96] ## 8-byte Reload
	imul	rax, rcx
	shl	rax, 2
	mov	rdx, qword ptr [rbp - 88] ## 8-byte Reload
	add	rdx, rax
	movsxd	rax, dword ptr [rbp - 40]
	mov	esi, dword ptr [rdx + 4*rax]
	lea	rdi, [rip + L_.str.4]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 100], eax ## 4-byte Spill
## %bb.30:                              ##   in Loop: Header=BB0_28 Depth=2
	mov	eax, dword ptr [rbp - 40]
	add	eax, 1
	mov	dword ptr [rbp - 40], eax
	jmp	LBB0_28
LBB0_31:                                ##   in Loop: Header=BB0_26 Depth=1
	lea	rdi, [rip + L_.str.5]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 104], eax ## 4-byte Spill
## %bb.32:                              ##   in Loop: Header=BB0_26 Depth=1
	mov	eax, dword ptr [rbp - 36]
	add	eax, 1
	mov	dword ptr [rbp - 36], eax
	jmp	LBB0_26
LBB0_33:
	mov	dword ptr [rbp - 12], 0
	mov	rax, qword ptr [rbp - 48]
	mov	rsp, rax
LBB0_34:
	mov	eax, dword ptr [rbp - 12]
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	mov	dword ptr [rbp - 108], eax ## 4-byte Spill
	jne	LBB0_36
## %bb.35:
	mov	eax, dword ptr [rbp - 108] ## 4-byte Reload
	mov	rsp, rbp
	pop	rbp
	ret
LBB0_36:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"This program creates a magic square of a specified size.\nThe size must be an odd number between 1 and 99\n"

L_.str.1:                               ## @.str.1
	.asciz	"Enter the size of the magic square: "

L_.str.2:                               ## @.str.2
	.asciz	"%d"

L_.str.3:                               ## @.str.3
	.asciz	"Enter an ODD number between 1 and 99\n"

L_.str.4:                               ## @.str.4
	.asciz	"%d\t"

L_.str.5:                               ## @.str.5
	.asciz	"\n"


.subsections_via_symbols
