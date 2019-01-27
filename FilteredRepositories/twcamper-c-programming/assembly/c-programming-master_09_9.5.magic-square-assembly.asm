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
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rbp - 16]
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	mov	ecx, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
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
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
	jmp	LBB0_5
LBB0_4:
	mov	eax, dword ptr [rbp - 16]
	mov	ecx, eax
	mov	rdx, rcx
	mov	rsi, rsp
	mov	qword ptr [rbp - 24], rsi
	mov	rsi, rcx
	imul	rsi, rsi
	lea	rsi, [4*rsi + 15]
	and	rsi, -16
	mov	rdi, rsp
	sub	rdi, rsi
	mov	rsp, rdi
	mov	qword ptr [rbp - 32], rcx
	mov	qword ptr [rbp - 40], rdx
	mov	eax, dword ptr [rbp - 16]
	mov	qword ptr [rbp - 64], rdi ## 8-byte Spill
	mov	edi, eax
	mov	rsi, qword ptr [rbp - 64] ## 8-byte Reload
	call	_create_magic_square
	mov	edi, dword ptr [rbp - 16]
	mov	rsi, qword ptr [rbp - 64] ## 8-byte Reload
	call	_print_magic_square
	mov	dword ptr [rbp - 12], 0
	mov	rcx, qword ptr [rbp - 24]
	mov	rsp, rcx
LBB0_5:
	mov	eax, dword ptr [rbp - 12]
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
	jne	LBB0_7
## %bb.6:
	mov	eax, dword ptr [rbp - 68] ## 4-byte Reload
	mov	rsp, rbp
	pop	rbp
	ret
LBB0_7:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_create_magic_square    ## -- Begin function create_magic_square
	.p2align	4, 0x90
_create_magic_square:                   ## @create_magic_square
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 16], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	esi, edi
	mov	dword ptr [rbp - 36], 0
	mov	qword ptr [rbp - 48], rsi ## 8-byte Spill
LBB1_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_3 Depth 2
	mov	eax, dword ptr [rbp - 36]
	cmp	eax, dword ptr [rbp - 4]
	jge	LBB1_8
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	dword ptr [rbp - 40], 0
LBB1_3:                                 ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	eax, dword ptr [rbp - 40]
	cmp	eax, dword ptr [rbp - 4]
	jge	LBB1_6
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=2
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 36]
	mov	rdx, qword ptr [rbp - 48] ## 8-byte Reload
	imul	rcx, rdx
	shl	rcx, 2
	add	rax, rcx
	movsxd	rcx, dword ptr [rbp - 40]
	mov	dword ptr [rax + 4*rcx], 0
## %bb.5:                               ##   in Loop: Header=BB1_3 Depth=2
	mov	eax, dword ptr [rbp - 40]
	add	eax, 1
	mov	dword ptr [rbp - 40], eax
	jmp	LBB1_3
LBB1_6:                                 ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_7
LBB1_7:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 36]
	add	eax, 1
	mov	dword ptr [rbp - 36], eax
	jmp	LBB1_1
LBB1_8:
	mov	dword ptr [rbp - 36], 0
	mov	eax, dword ptr [rbp - 4]
	cdq
	mov	ecx, 2
	idiv	ecx
	mov	dword ptr [rbp - 40], eax
	mov	eax, dword ptr [rbp - 4]
	imul	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 20], eax
	mov	dword ptr [rbp - 24], 1
LBB1_9:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 20]
	jg	LBB1_21
## %bb.10:                              ##   in Loop: Header=BB1_9 Depth=1
	mov	eax, dword ptr [rbp - 24]
	mov	rcx, qword ptr [rbp - 16]
	movsxd	rdx, dword ptr [rbp - 36]
	mov	rsi, qword ptr [rbp - 48] ## 8-byte Reload
	imul	rdx, rsi
	shl	rdx, 2
	add	rcx, rdx
	movsxd	rdx, dword ptr [rbp - 40]
	mov	dword ptr [rcx + 4*rdx], eax
	mov	eax, dword ptr [rbp - 36]
	mov	dword ptr [rbp - 28], eax
	mov	eax, dword ptr [rbp - 40]
	mov	dword ptr [rbp - 32], eax
	cmp	dword ptr [rbp - 28], 0
	jne	LBB1_12
## %bb.11:                              ##   in Loop: Header=BB1_9 Depth=1
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 28], eax
LBB1_12:                                ##   in Loop: Header=BB1_9 Depth=1
	mov	eax, dword ptr [rbp - 28]
	add	eax, -1
	mov	dword ptr [rbp - 28], eax
	mov	eax, dword ptr [rbp - 32]
	mov	ecx, dword ptr [rbp - 4]
	sub	ecx, 1
	cmp	eax, ecx
	jne	LBB1_14
## %bb.13:                              ##   in Loop: Header=BB1_9 Depth=1
	mov	dword ptr [rbp - 32], -1
LBB1_14:                                ##   in Loop: Header=BB1_9 Depth=1
	mov	eax, dword ptr [rbp - 32]
	add	eax, 1
	mov	dword ptr [rbp - 32], eax
	mov	rcx, qword ptr [rbp - 16]
	movsxd	rdx, dword ptr [rbp - 28]
	mov	rsi, qword ptr [rbp - 48] ## 8-byte Reload
	imul	rdx, rsi
	shl	rdx, 2
	add	rcx, rdx
	movsxd	rdx, dword ptr [rbp - 32]
	cmp	dword ptr [rcx + 4*rdx], 0
	jne	LBB1_16
## %bb.15:                              ##   in Loop: Header=BB1_9 Depth=1
	mov	eax, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 36], eax
	mov	eax, dword ptr [rbp - 32]
	mov	dword ptr [rbp - 40], eax
	jmp	LBB1_19
LBB1_16:                                ##   in Loop: Header=BB1_9 Depth=1
	mov	eax, dword ptr [rbp - 36]
	mov	ecx, dword ptr [rbp - 4]
	sub	ecx, 1
	cmp	eax, ecx
	jne	LBB1_18
## %bb.17:                              ##   in Loop: Header=BB1_9 Depth=1
	mov	dword ptr [rbp - 36], -1
LBB1_18:                                ##   in Loop: Header=BB1_9 Depth=1
	mov	eax, dword ptr [rbp - 36]
	add	eax, 1
	mov	dword ptr [rbp - 36], eax
LBB1_19:                                ##   in Loop: Header=BB1_9 Depth=1
	jmp	LBB1_20
LBB1_20:                                ##   in Loop: Header=BB1_9 Depth=1
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB1_9
LBB1_21:
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_print_magic_square     ## -- Begin function print_magic_square
	.p2align	4, 0x90
_print_magic_square:                    ## @print_magic_square
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 16], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	esi, edi
	mov	dword ptr [rbp - 20], 0
	mov	qword ptr [rbp - 32], rsi ## 8-byte Spill
LBB2_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_3 Depth 2
	mov	eax, dword ptr [rbp - 20]
	cmp	eax, dword ptr [rbp - 4]
	jge	LBB2_8
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	dword ptr [rbp - 24], 0
LBB2_3:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 4]
	jge	LBB2_6
## %bb.4:                               ##   in Loop: Header=BB2_3 Depth=2
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	rdx, qword ptr [rbp - 32] ## 8-byte Reload
	imul	rcx, rdx
	shl	rcx, 2
	add	rax, rcx
	movsxd	rcx, dword ptr [rbp - 24]
	mov	esi, dword ptr [rax + 4*rcx]
	lea	rdi, [rip + L_.str.4]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
## %bb.5:                               ##   in Loop: Header=BB2_3 Depth=2
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB2_3
LBB2_6:                                 ##   in Loop: Header=BB2_1 Depth=1
	lea	rdi, [rip + L_.str.5]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
## %bb.7:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB2_1
LBB2_8:
	add	rsp, 48
	pop	rbp
	ret
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
