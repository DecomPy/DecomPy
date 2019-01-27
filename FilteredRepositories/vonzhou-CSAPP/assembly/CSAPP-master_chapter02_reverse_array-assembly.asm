	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_inplace_swap           ## -- Begin function inplace_swap
	.p2align	4, 0x90
_inplace_swap:                          ## @inplace_swap
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 16]
	xor	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 16]
	mov	dword ptr [rsi], eax
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 16]
	xor	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	dword ptr [rsi], eax
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 16]
	xor	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 16]
	mov	dword ptr [rsi], eax
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_reverse_array          ## -- Begin function reverse_array
	.p2align	4, 0x90
_reverse_array:                         ## @reverse_array
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
	mov	esi, dword ptr [rbp - 12]
	sub	esi, 1
	mov	dword ptr [rbp - 20], esi
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 16]
	cmp	eax, dword ptr [rbp - 20]
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	shl	rcx, 2
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rbp - 20]
	shl	rdx, 2
	add	rcx, rdx
	mov	rdi, rax
	mov	rsi, rcx
	call	_inplace_swap
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	mov	eax, dword ptr [rbp - 20]
	add	eax, -1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB1_1
LBB1_4:
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
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 36], 0
	mov	dword ptr [rbp - 40], 0
	mov	dword ptr [rbp - 40], 0
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 40], 5
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 40]
	add	eax, 1
	movsxd	rcx, dword ptr [rbp - 40]
	mov	dword ptr [rbp + 4*rcx - 32], eax
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 40]
	add	eax, 1
	mov	dword ptr [rbp - 40], eax
	jmp	LBB2_1
LBB2_4:
	lea	rdi, [rbp - 32]
	mov	esi, 5
	call	_reverse_array
	mov	dword ptr [rbp - 40], 0
LBB2_5:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 40], 5
	jge	LBB2_8
## %bb.6:                               ##   in Loop: Header=BB2_5 Depth=1
	mov	esi, dword ptr [rbp - 40]
	movsxd	rax, dword ptr [rbp - 40]
	mov	edx, dword ptr [rbp + 4*rax - 32]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
## %bb.7:                               ##   in Loop: Header=BB2_5 Depth=1
	mov	eax, dword ptr [rbp - 40]
	add	eax, 1
	mov	dword ptr [rbp - 40], eax
	jmp	LBB2_5
LBB2_8:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB2_10
## %bb.9:
	xor	eax, eax
	add	rsp, 48
	pop	rbp
	ret
LBB2_10:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"x[%d]=%d\n"


.subsections_via_symbols
