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
	sub	rsp, 48
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 36], 0
	mov	dword ptr [rbp - 40], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 40], 5
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 40]
	shl	rax, 2
	lea	rcx, [rbp - 32]
	add	rcx, rax
	lea	rdi, [rip + L_.str]
	mov	rsi, rcx
	mov	al, 0
	call	_scanf
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 40]
	add	eax, 1
	mov	dword ptr [rbp - 40], eax
	jmp	LBB0_1
LBB0_4:
	lea	rdi, [rbp - 32]
	mov	esi, 5
	call	_bubbleSort
	mov	dword ptr [rbp - 40], 0
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 40], 5
	jge	LBB0_8
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	movsxd	rax, dword ptr [rbp - 40]
	mov	esi, dword ptr [rbp + 4*rax - 32]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
## %bb.7:                               ##   in Loop: Header=BB0_5 Depth=1
	mov	eax, dword ptr [rbp - 40]
	add	eax, 1
	mov	dword ptr [rbp - 40], eax
	jmp	LBB0_5
LBB0_8:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB0_10
## %bb.9:
	xor	eax, eax
	add	rsp, 48
	pop	rbp
	ret
LBB0_10:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_bubbleSort             ## -- Begin function bubbleSort
	.p2align	4, 0x90
_bubbleSort:                            ## @bubbleSort
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 16], 1
LBB1_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_3 Depth 2
	mov	eax, dword ptr [rbp - 16]
	mov	ecx, dword ptr [rbp - 12]
	sub	ecx, 1
	cmp	eax, ecx
	jg	LBB1_10
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	dword ptr [rbp - 20], 0
LBB1_3:                                 ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	eax, dword ptr [rbp - 20]
	mov	ecx, dword ptr [rbp - 12]
	sub	ecx, dword ptr [rbp - 16]
	sub	ecx, 1
	cmp	eax, ecx
	jg	LBB1_8
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=2
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 20]
	add	esi, 1
	movsxd	rcx, esi
	cmp	edx, dword ptr [rax + 4*rcx]
	jle	LBB1_6
## %bb.5:                               ##   in Loop: Header=BB1_3 Depth=2
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	dword ptr [rbp - 24], edx
	mov	rax, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 20]
	add	edx, 1
	movsxd	rcx, edx
	mov	edx, dword ptr [rax + 4*rcx]
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	dword ptr [rax + 4*rcx], edx
	mov	edx, dword ptr [rbp - 24]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 20]
	add	esi, 1
	movsxd	rcx, esi
	mov	dword ptr [rax + 4*rcx], edx
LBB1_6:                                 ##   in Loop: Header=BB1_3 Depth=2
	jmp	LBB1_7
LBB1_7:                                 ##   in Loop: Header=BB1_3 Depth=2
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB1_3
LBB1_8:                                 ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_9
LBB1_9:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB1_1
LBB1_10:
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d"

L_.str.1:                               ## @.str.1
	.asciz	"%d\n"


.subsections_via_symbols
