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
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
                                        ##     Child Loop BB0_7 Depth 2
                                        ##     Child Loop BB0_10 Depth 2
                                        ##     Child Loop BB0_14 Depth 2
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 64]
	mov	al, 0
	call	_scanf
	cmp	qword ptr [rbp - 64], 0
	mov	dword ptr [rbp - 72], eax ## 4-byte Spill
	jle	LBB0_18
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	dword ptr [rbp - 56], 0
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	dword ptr [rbp - 56], 10
	jge	LBB0_6
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	movsxd	rax, dword ptr [rbp - 56]
	mov	dword ptr [rbp + 4*rax - 48], 0
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=2
	mov	eax, dword ptr [rbp - 56]
	add	eax, 1
	mov	dword ptr [rbp - 56], eax
	jmp	LBB0_3
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_7
LBB0_7:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	qword ptr [rbp - 64], 0
	jle	LBB0_9
## %bb.8:                               ##   in Loop: Header=BB0_7 Depth=2
	mov	eax, 10
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 64]
	cqo
	idiv	rcx
	mov	esi, edx
	mov	dword ptr [rbp - 56], esi
	movsxd	rdx, dword ptr [rbp - 56]
	mov	esi, dword ptr [rbp + 4*rdx - 48]
	add	esi, 1
	mov	dword ptr [rbp + 4*rdx - 48], esi
	mov	rdx, qword ptr [rbp - 64]
	mov	rax, rdx
	cqo
	idiv	rcx
	mov	qword ptr [rbp - 64], rax
	jmp	LBB0_7
LBB0_9:                                 ##   in Loop: Header=BB0_1 Depth=1
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 56], 0
	mov	dword ptr [rbp - 76], eax ## 4-byte Spill
LBB0_10:                                ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	dword ptr [rbp - 56], 10
	jge	LBB0_13
## %bb.11:                              ##   in Loop: Header=BB0_10 Depth=2
	mov	esi, dword ptr [rbp - 56]
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 80], eax ## 4-byte Spill
## %bb.12:                              ##   in Loop: Header=BB0_10 Depth=2
	mov	eax, dword ptr [rbp - 56]
	add	eax, 1
	mov	dword ptr [rbp - 56], eax
	jmp	LBB0_10
LBB0_13:                                ##   in Loop: Header=BB0_1 Depth=1
	lea	rdi, [rip + L_.str.4]
	call	_puts
	lea	rdi, [rip + L_.str.5]
	mov	dword ptr [rbp - 84], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 56], 0
	mov	dword ptr [rbp - 88], eax ## 4-byte Spill
LBB0_14:                                ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	dword ptr [rbp - 56], 10
	jge	LBB0_17
## %bb.15:                              ##   in Loop: Header=BB0_14 Depth=2
	movsxd	rax, dword ptr [rbp - 56]
	mov	esi, dword ptr [rbp + 4*rax - 48]
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 92], eax ## 4-byte Spill
## %bb.16:                              ##   in Loop: Header=BB0_14 Depth=2
	mov	eax, dword ptr [rbp - 56]
	add	eax, 1
	mov	dword ptr [rbp - 56], eax
	jmp	LBB0_14
LBB0_17:                                ##   in Loop: Header=BB0_1 Depth=1
	lea	rdi, [rip + L_.str.4]
	call	_puts
	mov	dword ptr [rbp - 96], eax ## 4-byte Spill
	jmp	LBB0_1
LBB0_18:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB0_20
## %bb.19:
	xor	eax, eax
	add	rsp, 96
	pop	rbp
	ret
LBB0_20:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter a number (0 or negative to terminate: "

L_.str.1:                               ## @.str.1
	.asciz	"%ld"

L_.str.2:                               ## @.str.2
	.asciz	"Digit:\t\t"

L_.str.3:                               ## @.str.3
	.asciz	"%3d"

L_.str.4:                               ## @.str.4
	.space	1

L_.str.5:                               ## @.str.5
	.asciz	"Occurrences:\t"


.subsections_via_symbols
