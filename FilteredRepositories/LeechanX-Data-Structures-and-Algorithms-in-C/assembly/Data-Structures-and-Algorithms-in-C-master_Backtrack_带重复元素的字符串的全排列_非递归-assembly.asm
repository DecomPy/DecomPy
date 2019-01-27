	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_display_outcome        ## -- Begin function display_outcome
	.p2align	4, 0x90
_display_outcome:                       ## @display_outcome
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 12], 8
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 12]
	movsx	esi, byte ptr [rax + rcx]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	LBB0_1
LBB0_4:
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rip + _count@GOTPCREL]
	mov	ecx, dword ptr [rdi]
	add	ecx, 1
	mov	dword ptr [rdi], ecx
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_condition              ## -- Begin function condition
	.p2align	4, 0x90
_condition:                             ## @condition
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 160
	xor	eax, eax
	mov	r8d, 104
	mov	r9d, r8d
	mov	r10, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	r10, qword ptr [r10]
	mov	qword ptr [rbp - 8], r10
	mov	qword ptr [rbp - 120], rdi
	mov	qword ptr [rbp - 128], rsi
	mov	dword ptr [rbp - 132], edx
	mov	dword ptr [rbp - 136], ecx
	lea	rsi, [rbp - 112]
	mov	rdi, rsi
	mov	esi, eax
	mov	rdx, r9
	call	_memset
	mov	dword ptr [rbp - 144], 0
	mov	dword ptr [rbp - 140], 0
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 140], 8
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 120]
	movsxd	rcx, dword ptr [rbp - 140]
	movsx	edx, byte ptr [rax + rcx]
	sub	edx, 97
	movsxd	rax, edx
	mov	edx, dword ptr [rbp + 4*rax - 112]
	add	edx, 1
	mov	dword ptr [rbp + 4*rax - 112], edx
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 140]
	add	eax, 1
	mov	dword ptr [rbp - 140], eax
	jmp	LBB1_1
LBB1_4:
	mov	dword ptr [rbp - 140], 0
LBB1_5:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 140]
	cmp	eax, dword ptr [rbp - 132]
	jge	LBB1_8
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	mov	rax, qword ptr [rbp - 128]
	movsxd	rcx, dword ptr [rbp - 140]
	movsx	edx, byte ptr [rax + rcx]
	sub	edx, 97
	movsxd	rax, edx
	mov	edx, dword ptr [rbp + 4*rax - 112]
	add	edx, -1
	mov	dword ptr [rbp + 4*rax - 112], edx
## %bb.7:                               ##   in Loop: Header=BB1_5 Depth=1
	mov	eax, dword ptr [rbp - 140]
	add	eax, 1
	mov	dword ptr [rbp - 140], eax
	jmp	LBB1_5
LBB1_8:
	movsxd	rax, dword ptr [rbp - 136]
	mov	eax, dword ptr [rbp + 4*rax - 112]
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	mov	dword ptr [rbp - 148], eax ## 4-byte Spill
	jne	LBB1_10
## %bb.9:
	mov	eax, dword ptr [rbp - 148] ## 4-byte Reload
	add	rsp, 160
	pop	rbp
	ret
LBB1_10:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_backtrack              ## -- Begin function backtrack
	.p2align	4, 0x90
_backtrack:                             ## @backtrack
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
	mov	qword ptr [rbp - 56], rdi
	mov	dword ptr [rbp - 60], 0
	movsxd	rax, dword ptr [rbp - 60]
	mov	dword ptr [rbp + 4*rax - 48], -1
LBB2_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_3 Depth 2
	cmp	dword ptr [rbp - 60], 0
	jl	LBB2_14
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movsxd	rax, dword ptr [rbp - 60]
	mov	ecx, dword ptr [rbp + 4*rax - 48]
	add	ecx, 1
	mov	dword ptr [rbp + 4*rax - 48], ecx
LBB2_3:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 60]
	cmp	dword ptr [rbp + 4*rdx - 48], 26
	mov	byte ptr [rbp - 61], cl ## 1-byte Spill
	jge	LBB2_5
## %bb.4:                               ##   in Loop: Header=BB2_3 Depth=2
	lea	rsi, [rbp - 16]
	mov	rdi, qword ptr [rbp - 56]
	mov	edx, dword ptr [rbp - 60]
	movsxd	rax, dword ptr [rbp - 60]
	mov	ecx, dword ptr [rbp + 4*rax - 48]
	call	_condition
	cmp	eax, 0
	setne	r8b
	xor	r8b, -1
	mov	byte ptr [rbp - 61], r8b ## 1-byte Spill
LBB2_5:                                 ##   in Loop: Header=BB2_3 Depth=2
	mov	al, byte ptr [rbp - 61] ## 1-byte Reload
	test	al, 1
	jne	LBB2_6
	jmp	LBB2_7
LBB2_6:                                 ##   in Loop: Header=BB2_3 Depth=2
	movsxd	rax, dword ptr [rbp - 60]
	mov	ecx, dword ptr [rbp + 4*rax - 48]
	add	ecx, 1
	mov	dword ptr [rbp + 4*rax - 48], ecx
	jmp	LBB2_3
LBB2_7:                                 ##   in Loop: Header=BB2_1 Depth=1
	movsxd	rax, dword ptr [rbp - 60]
	cmp	dword ptr [rbp + 4*rax - 48], 26
	jl	LBB2_9
## %bb.8:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 60]
	add	eax, -1
	mov	dword ptr [rbp - 60], eax
	jmp	LBB2_13
LBB2_9:                                 ##   in Loop: Header=BB2_1 Depth=1
	cmp	dword ptr [rbp - 60], 7
	jne	LBB2_11
## %bb.10:                              ##   in Loop: Header=BB2_1 Depth=1
	lea	rdi, [rbp - 16]
	movsxd	rax, dword ptr [rbp - 60]
	mov	ecx, dword ptr [rbp + 4*rax - 48]
	add	ecx, 97
	mov	dl, cl
	movsxd	rax, dword ptr [rbp - 60]
	mov	byte ptr [rbp + rax - 16], dl
	call	_display_outcome
	jmp	LBB2_12
LBB2_11:                                ##   in Loop: Header=BB2_1 Depth=1
	movsxd	rax, dword ptr [rbp - 60]
	mov	ecx, dword ptr [rbp + 4*rax - 48]
	add	ecx, 97
	mov	dl, cl
	movsxd	rax, dword ptr [rbp - 60]
	mov	byte ptr [rbp + rax - 16], dl
	mov	ecx, dword ptr [rbp - 60]
	add	ecx, 1
	mov	dword ptr [rbp - 60], ecx
	movsxd	rax, dword ptr [rbp - 60]
	mov	dword ptr [rbp + 4*rax - 48], -1
LBB2_12:                                ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_13
LBB2_13:                                ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_1
LBB2_14:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB2_16
## %bb.15:
	add	rsp, 64
	pop	rbp
	ret
LBB2_16:
	call	___stack_chk_fail
	ud2
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
	sub	rsp, 32
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	lea	rsi, [rip + L_.str.2]
	mov	qword ptr [rbp - 24], rsi
	mov	rdi, qword ptr [rbp - 24]
	call	_backtrack
	mov	rsi, qword ptr [rip + _count@GOTPCREL]
	mov	esi, dword ptr [rsi]
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	xor	esi, esi
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	eax, esi
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%c"

L_.str.1:                               ## @.str.1
	.asciz	"\n"

	.comm	_count,4,2              ## @count
L_.str.2:                               ## @.str.2
	.asciz	"leechanx"

L_.str.3:                               ## @.str.3
	.asciz	"%d\n"


.subsections_via_symbols
