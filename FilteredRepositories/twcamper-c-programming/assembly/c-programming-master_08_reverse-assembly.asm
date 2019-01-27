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
	lea	rdi, [rip + L_.str]
	mov	esi, 10
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 56], 0
	mov	dword ptr [rbp - 60], eax ## 4-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 56], 10
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 56]
	shl	rax, 2
	lea	rcx, [rbp - 48]
	add	rcx, rax
	lea	rdi, [rip + L_.str.1]
	mov	rsi, rcx
	mov	al, 0
	call	_scanf
	mov	dword ptr [rbp - 64], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 56]
	add	eax, 1
	mov	dword ptr [rbp - 56], eax
	jmp	LBB0_1
LBB0_4:
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 56], 9
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 56], 0
	jl	LBB0_8
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	movsxd	rax, dword ptr [rbp - 56]
	mov	esi, dword ptr [rbp + 4*rax - 48]
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 72], eax ## 4-byte Spill
## %bb.7:                               ##   in Loop: Header=BB0_5 Depth=1
	mov	eax, dword ptr [rbp - 56]
	add	eax, -1
	mov	dword ptr [rbp - 56], eax
	jmp	LBB0_5
LBB0_8:
	lea	rdi, [rip + L_.str.4]
	call	_puts
	mov	rdi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdi, qword ptr [rdi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rdi, rcx
	mov	dword ptr [rbp - 76], eax ## 4-byte Spill
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
	.asciz	"Enter %d numbers: "

L_.str.1:                               ## @.str.1
	.asciz	"%d"

L_.str.2:                               ## @.str.2
	.asciz	"And now, in reverse order!: "

L_.str.3:                               ## @.str.3
	.asciz	" %d"

L_.str.4:                               ## @.str.4
	.space	1


.subsections_via_symbols
