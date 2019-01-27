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
	mov	dword ptr [rbp - 56], 0
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
	cmp	dword ptr [rbp - 56], 3
	jge	LBB0_8
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	dword ptr [rbp - 60], 0
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	dword ptr [rbp - 60], 3
	jge	LBB0_6
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	movsxd	rax, dword ptr [rbp - 56]
	imul	rax, rax, 12
	lea	rcx, [rbp - 48]
	add	rcx, rax
	movsxd	rax, dword ptr [rbp - 60]
	shl	rax, 2
	add	rcx, rax
	lea	rdi, [rip + L_.str]
	mov	rsi, rcx
	mov	al, 0
	call	_scanf
	mov	dword ptr [rbp - 64], eax ## 4-byte Spill
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=2
	mov	eax, dword ptr [rbp - 60]
	add	eax, 1
	mov	dword ptr [rbp - 60], eax
	jmp	LBB0_3
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_7
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 56]
	add	eax, 1
	mov	dword ptr [rbp - 56], eax
	jmp	LBB0_1
LBB0_8:
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 56], 0
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
LBB0_9:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_11 Depth 2
	cmp	dword ptr [rbp - 56], 3
	jge	LBB0_18
## %bb.10:                              ##   in Loop: Header=BB0_9 Depth=1
	mov	dword ptr [rbp - 60], 0
LBB0_11:                                ##   Parent Loop BB0_9 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	dword ptr [rbp - 60], 3
	jge	LBB0_16
## %bb.12:                              ##   in Loop: Header=BB0_11 Depth=2
	movsxd	rax, dword ptr [rbp - 56]
	imul	rax, rax, 12
	lea	rcx, [rbp - 48]
	add	rcx, rax
	movsxd	rax, dword ptr [rbp - 60]
	mov	eax, dword ptr [rcx + 4*rax]
	cdq
	mov	esi, 2
	idiv	esi
	cmp	edx, 0
	jne	LBB0_14
## %bb.13:                              ##   in Loop: Header=BB0_11 Depth=2
	movsxd	rax, dword ptr [rbp - 56]
	imul	rax, rax, 12
	lea	rcx, [rbp - 48]
	add	rcx, rax
	movsxd	rax, dword ptr [rbp - 60]
	mov	esi, dword ptr [rcx + 4*rax]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 72], eax ## 4-byte Spill
LBB0_14:                                ##   in Loop: Header=BB0_11 Depth=2
	jmp	LBB0_15
LBB0_15:                                ##   in Loop: Header=BB0_11 Depth=2
	mov	eax, dword ptr [rbp - 60]
	add	eax, 1
	mov	dword ptr [rbp - 60], eax
	jmp	LBB0_11
LBB0_16:                                ##   in Loop: Header=BB0_9 Depth=1
	jmp	LBB0_17
LBB0_17:                                ##   in Loop: Header=BB0_9 Depth=1
	mov	eax, dword ptr [rbp - 56]
	add	eax, 1
	mov	dword ptr [rbp - 56], eax
	jmp	LBB0_9
LBB0_18:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB0_20
## %bb.19:
	xor	eax, eax
	add	rsp, 80
	pop	rbp
	ret
LBB0_20:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d"

L_.str.1:                               ## @.str.1
	.asciz	"Even numbers\n"

L_.str.2:                               ## @.str.2
	.asciz	"%d\t"


.subsections_via_symbols
