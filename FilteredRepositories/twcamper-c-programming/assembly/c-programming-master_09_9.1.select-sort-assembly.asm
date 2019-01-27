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
	mov	dword ptr [rbp - 12], 0
	mov	dword ptr [rbp - 16], edi
	mov	qword ptr [rbp - 24], rsi
	cmp	dword ptr [rbp - 16], 2
	jge	LBB0_2
## %bb.1:
	mov	rax, qword ptr [rip + ___stderrp@GOTPCREL]
	mov	rdi, qword ptr [rax]
	lea	rsi, [rip + L_.str]
	mov	al, 0
	call	_fprintf
	mov	dword ptr [rbp - 12], 1
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	jmp	LBB0_7
LBB0_2:
	xor	eax, eax
	mov	edi, eax
	mov	rcx, qword ptr [rbp - 24]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 64], rdi ## 8-byte Spill
	mov	rdi, rcx
	call	_atoi
	mov	dword ptr [rbp - 28], eax
	mov	eax, dword ptr [rbp - 28]
	mov	ecx, eax
	mov	rdi, rsp
	mov	qword ptr [rbp - 40], rdi
	lea	rdi, [4*rcx + 15]
	and	rdi, -16
	mov	rdx, rsp
	sub	rdx, rdi
	mov	rsp, rdx
	mov	qword ptr [rbp - 48], rcx
	mov	rdi, qword ptr [rbp - 64] ## 8-byte Reload
	mov	qword ptr [rbp - 72], rdx ## 8-byte Spill
	call	_time
	mov	esi, eax
	mov	edi, esi
	call	_srand
	mov	dword ptr [rbp - 32], 0
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 32]
	cmp	eax, dword ptr [rbp - 28]
	jge	LBB0_6
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=1
	call	_rand
	cdq
	mov	ecx, 1024
	idiv	ecx
	movsxd	rsi, dword ptr [rbp - 32]
	mov	rdi, qword ptr [rbp - 72] ## 8-byte Reload
	mov	dword ptr [rdi + 4*rsi], edx
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=1
	mov	eax, dword ptr [rbp - 32]
	add	eax, 1
	mov	dword ptr [rbp - 32], eax
	jmp	LBB0_3
LBB0_6:
	mov	esi, dword ptr [rbp - 28]
	mov	rdi, qword ptr [rbp - 72] ## 8-byte Reload
	call	_print_array
	mov	esi, dword ptr [rbp - 28]
	mov	rdi, qword ptr [rbp - 72] ## 8-byte Reload
	call	_select_sort
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 28]
	mov	rdi, qword ptr [rbp - 72] ## 8-byte Reload
	mov	dword ptr [rbp - 76], eax ## 4-byte Spill
	call	_print_array
	mov	dword ptr [rbp - 12], 0
	mov	rdi, qword ptr [rbp - 40]
	mov	rsp, rdi
LBB0_7:
	mov	eax, dword ptr [rbp - 12]
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	mov	dword ptr [rbp - 80], eax ## 4-byte Spill
	jne	LBB0_9
## %bb.8:
	mov	eax, dword ptr [rbp - 80] ## 4-byte Reload
	mov	rsp, rbp
	pop	rbp
	ret
LBB0_9:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_print_array            ## -- Begin function print_array
	.p2align	4, 0x90
_print_array:                           ## @print_array
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
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 16]
	cmp	eax, dword ptr [rbp - 12]
	jge	LBB1_7
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	cmp	dword ptr [rbp - 16], 0
	jle	LBB1_5
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 16]
	cdq
	mov	ecx, 12
	idiv	ecx
	cmp	edx, 0
	jne	LBB1_5
## %bb.4:                               ##   in Loop: Header=BB1_1 Depth=1
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
LBB1_5:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	mov	esi, dword ptr [rax + 4*rcx]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
## %bb.6:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB1_1
LBB1_7:
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_select_sort            ## -- Begin function select_sort
	.p2align	4, 0x90
_select_sort:                           ## @select_sort
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
	cmp	dword ptr [rbp - 12], 0
	jle	LBB2_12
## %bb.1:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 24], ecx
	mov	dword ptr [rbp - 20], 0
	mov	dword ptr [rbp - 16], 1
LBB2_2:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 16]
	cmp	eax, dword ptr [rbp - 12]
	jge	LBB2_7
## %bb.3:                               ##   in Loop: Header=BB2_2 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	mov	edx, dword ptr [rax + 4*rcx]
	cmp	edx, dword ptr [rbp - 24]
	jle	LBB2_5
## %bb.4:                               ##   in Loop: Header=BB2_2 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	dword ptr [rbp - 24], edx
	mov	edx, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 20], edx
LBB2_5:                                 ##   in Loop: Header=BB2_2 Depth=1
	jmp	LBB2_6
LBB2_6:                                 ##   in Loop: Header=BB2_2 Depth=1
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB2_2
LBB2_7:
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
LBB2_8:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 16]
	cmp	eax, dword ptr [rbp - 12]
	jge	LBB2_11
## %bb.9:                               ##   in Loop: Header=BB2_8 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 16]
	sub	esi, 1
	movsxd	rcx, esi
	mov	dword ptr [rax + 4*rcx], edx
## %bb.10:                              ##   in Loop: Header=BB2_8 Depth=1
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB2_8
LBB2_11:
	mov	eax, dword ptr [rbp - 24]
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 12]
	sub	edx, 1
	movsxd	rsi, edx
	mov	dword ptr [rcx + 4*rsi], eax
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 12]
	sub	eax, 1
	mov	esi, eax
	call	_select_sort
LBB2_12:
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter an integer array size.\n"

L_.str.1:                               ## @.str.1
	.asciz	"\n"

L_.str.2:                               ## @.str.2
	.asciz	"%d\t"


.subsections_via_symbols
