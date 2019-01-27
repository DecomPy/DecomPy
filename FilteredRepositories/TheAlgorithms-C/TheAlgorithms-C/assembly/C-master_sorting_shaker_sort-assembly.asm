	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_swap                   ## -- Begin function swap
	.p2align	4, 0x90
_swap:                                  ## @swap
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
	mov	dword ptr [rbp - 20], eax
	mov	rsi, qword ptr [rbp - 16]
	mov	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	dword ptr [rsi], eax
	mov	eax, dword ptr [rbp - 20]
	mov	rsi, qword ptr [rbp - 16]
	mov	dword ptr [rsi], eax
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_shakersort             ## -- Begin function shakersort
	.p2align	4, 0x90
_shakersort:                            ## @shakersort
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
	mov	dword ptr [rbp - 16], 1
LBB1_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_3 Depth 2
                                        ##     Child Loop BB1_9 Depth 2
	mov	eax, dword ptr [rbp - 16]
	mov	ecx, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	mov	eax, ecx
	cdq
	mov	ecx, 2
	idiv	ecx
	mov	ecx, dword ptr [rbp - 24] ## 4-byte Reload
	cmp	ecx, eax
	jg	LBB1_16
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 16]
	sub	eax, 1
	mov	dword ptr [rbp - 20], eax
LBB1_3:                                 ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	eax, dword ptr [rbp - 20]
	mov	ecx, dword ptr [rbp - 12]
	sub	ecx, dword ptr [rbp - 16]
	cmp	eax, ecx
	jge	LBB1_8
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
	shl	rcx, 2
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 20]
	add	edx, 1
	movsxd	rsi, edx
	shl	rsi, 2
	add	rcx, rsi
	mov	rdi, rax
	mov	rsi, rcx
	call	_swap
LBB1_6:                                 ##   in Loop: Header=BB1_3 Depth=2
	jmp	LBB1_7
LBB1_7:                                 ##   in Loop: Header=BB1_3 Depth=2
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB1_3
LBB1_8:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	sub	eax, dword ptr [rbp - 16]
	sub	eax, 1
	mov	dword ptr [rbp - 20], eax
LBB1_9:                                 ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	eax, dword ptr [rbp - 20]
	cmp	eax, dword ptr [rbp - 16]
	jl	LBB1_14
## %bb.10:                              ##   in Loop: Header=BB1_9 Depth=2
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 20]
	sub	esi, 1
	movsxd	rcx, esi
	cmp	edx, dword ptr [rax + 4*rcx]
	jge	LBB1_12
## %bb.11:                              ##   in Loop: Header=BB1_9 Depth=2
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	shl	rcx, 2
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 20]
	sub	edx, 1
	movsxd	rsi, edx
	shl	rsi, 2
	add	rcx, rsi
	mov	rdi, rax
	mov	rsi, rcx
	call	_swap
LBB1_12:                                ##   in Loop: Header=BB1_9 Depth=2
	jmp	LBB1_13
LBB1_13:                                ##   in Loop: Header=BB1_9 Depth=2
	mov	eax, dword ptr [rbp - 20]
	add	eax, -1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB1_9
LBB1_14:                                ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_15
LBB1_15:                                ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB1_1
LBB1_16:
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
	sub	rsp, 64
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 12], 0
	lea	rdi, [rip + L_.str]
	xor	ecx, ecx
	mov	dl, cl
	lea	rsi, [rbp - 16]
	mov	al, dl
	call	_scanf
	mov	ecx, dword ptr [rbp - 16]
	mov	esi, ecx
	mov	rdi, rsp
	mov	qword ptr [rbp - 24], rdi
	lea	rdi, [4*rsi + 15]
	and	rdi, -16
	mov	r8, rsp
	sub	r8, rdi
	mov	rsp, r8
	mov	qword ptr [rbp - 32], rsi
	mov	dword ptr [rbp - 36], 0
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	mov	qword ptr [rbp - 48], r8 ## 8-byte Spill
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 36]
	cmp	eax, dword ptr [rbp - 16]
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movsxd	rax, dword ptr [rbp - 36]
	shl	rax, 2
	mov	rcx, qword ptr [rbp - 48] ## 8-byte Reload
	add	rcx, rax
	lea	rdi, [rip + L_.str.1]
	mov	rsi, rcx
	mov	al, 0
	call	_scanf
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 36]
	add	eax, 1
	mov	dword ptr [rbp - 36], eax
	jmp	LBB2_1
LBB2_4:
	mov	esi, dword ptr [rbp - 16]
	mov	rdi, qword ptr [rbp - 48] ## 8-byte Reload
	call	_shakersort
	mov	dword ptr [rbp - 36], 0
LBB2_5:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 36]
	cmp	eax, dword ptr [rbp - 16]
	jge	LBB2_8
## %bb.6:                               ##   in Loop: Header=BB2_5 Depth=1
	movsxd	rax, dword ptr [rbp - 36]
	mov	rcx, qword ptr [rbp - 48] ## 8-byte Reload
	mov	esi, dword ptr [rcx + 4*rax]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
## %bb.7:                               ##   in Loop: Header=BB2_5 Depth=1
	mov	eax, dword ptr [rbp - 36]
	add	eax, 1
	mov	dword ptr [rbp - 36], eax
	jmp	LBB2_5
LBB2_8:
	mov	dword ptr [rbp - 12], 0
	mov	rax, qword ptr [rbp - 24]
	mov	rsp, rax
	mov	eax, dword ptr [rbp - 12]
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	mov	dword ptr [rbp - 60], eax ## 4-byte Spill
	jne	LBB2_10
## %bb.9:
	mov	eax, dword ptr [rbp - 60] ## 4-byte Reload
	mov	rsp, rbp
	pop	rbp
	ret
LBB2_10:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d"

L_.str.1:                               ## @.str.1
	.asciz	"%d "


.subsections_via_symbols
