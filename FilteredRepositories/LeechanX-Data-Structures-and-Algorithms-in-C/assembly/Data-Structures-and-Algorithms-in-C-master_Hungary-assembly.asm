	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_available              ## -- Begin function available
	.p2align	4, 0x90
_available:                             ## @available
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 16]
	cmp	eax, dword ptr [rsi]
	mov	byte ptr [rbp - 17], cl ## 1-byte Spill
	jl	LBB0_2
## %bb.1:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 16]
	cmp	ecx, dword ptr [rax + 4]
	setge	dl
	mov	byte ptr [rbp - 17], dl ## 1-byte Spill
LBB0_2:
	mov	al, byte ptr [rbp - 17] ## 1-byte Reload
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_showresult             ## -- Begin function showresult
	.p2align	4, 0x90
_showresult:                            ## @showresult
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], edx
	mov	qword ptr [rbp - 32], rcx
	mov	dword ptr [rbp - 36], 0
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 36]
	cmp	eax, dword ptr [rbp - 20]
	jge	LBB1_6
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 36]
	cmp	dword ptr [rax + 4*rcx], -1
	je	LBB1_4
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rbp - 36]
	movsxd	rcx, dword ptr [rcx + 4*rdx]
	mov	esi, dword ptr [rax + 8*rcx]
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rbp - 36]
	movsxd	rcx, dword ptr [rcx + 4*rdx]
	mov	edx, dword ptr [rax + 8*rcx + 4]
	mov	rax, qword ptr [rbp - 32]
	movsxd	rcx, dword ptr [rbp - 36]
	mov	ecx, dword ptr [rax + 8*rcx]
	mov	rax, qword ptr [rbp - 32]
	movsxd	rdi, dword ptr [rbp - 36]
	mov	r8d, dword ptr [rax + 8*rdi + 4]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_5
LBB1_5:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 36]
	add	eax, 1
	mov	dword ptr [rbp - 36], eax
	jmp	LBB1_1
LBB1_6:
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_findout                ## -- Begin function findout
	.p2align	4, 0x90
_findout:                               ## @findout
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 80
	mov	eax, dword ptr [rbp + 16]
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	qword ptr [rbp - 32], rdx
	mov	dword ptr [rbp - 36], ecx
	mov	qword ptr [rbp - 48], r8
	mov	dword ptr [rbp - 52], r9d
	mov	ecx, dword ptr [rbp + 16]
	mov	dword ptr [rbp - 60], ecx
	mov	dword ptr [rbp - 64], eax ## 4-byte Spill
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 60]
	cmp	eax, dword ptr [rbp - 36]
	jge	LBB2_9
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	rax, qword ptr [rbp - 24]
	movsxd	rcx, dword ptr [rbp - 52]
	shl	rcx, 3
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 32]
	movsxd	rdx, dword ptr [rbp - 60]
	shl	rdx, 3
	add	rcx, rdx
	mov	rdi, rax
	mov	rsi, rcx
	call	_available
	cmp	eax, 0
	je	LBB2_7
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	rax, qword ptr [rbp - 48]
	movsxd	rcx, dword ptr [rbp - 60]
	mov	dword ptr [rax + 4*rcx], 1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 60]
	cmp	dword ptr [rax + 4*rcx], -1
	je	LBB2_5
## %bb.4:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	rdi, qword ptr [rbp - 16]
	mov	rsi, qword ptr [rbp - 24]
	mov	rdx, qword ptr [rbp - 32]
	mov	ecx, dword ptr [rbp - 36]
	mov	r8, qword ptr [rbp - 48]
	mov	rax, qword ptr [rbp - 16]
	movsxd	r9, dword ptr [rbp - 60]
	mov	r9d, dword ptr [rax + 4*r9]
	mov	r10d, dword ptr [rbp - 60]
	add	r10d, 1
	mov	dword ptr [rsp], r10d
	call	_findout
	cmp	eax, 0
	je	LBB2_6
LBB2_5:
	mov	eax, dword ptr [rbp - 52]
	mov	rcx, qword ptr [rbp - 16]
	movsxd	rdx, dword ptr [rbp - 60]
	mov	dword ptr [rcx + 4*rdx], eax
	mov	dword ptr [rbp - 4], 1
	jmp	LBB2_10
LBB2_6:                                 ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_7
LBB2_7:                                 ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_8
LBB2_8:                                 ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 60]
	add	eax, 1
	mov	dword ptr [rbp - 60], eax
	jmp	LBB2_1
LBB2_9:
	mov	dword ptr [rbp - 4], 0
LBB2_10:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 80
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_hungary                ## -- Begin function hungary
	.p2align	4, 0x90
_hungary:                               ## @hungary
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 112
	xor	eax, eax
	mov	r8, -1
	mov	r9, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	r9, qword ptr [r9]
	mov	qword ptr [rbp - 8], r9
	mov	qword ptr [rbp - 16], rdi
	mov	dword ptr [rbp - 20], esi
	mov	qword ptr [rbp - 32], rdx
	mov	dword ptr [rbp - 36], ecx
	mov	dword ptr [rbp - 40], 0
	mov	ecx, dword ptr [rbp - 36]
	mov	edx, ecx
	mov	rdi, rsp
	mov	qword ptr [rbp - 48], rdi
	lea	rdi, [4*rdx + 15]
	and	rdi, -16
	mov	r9, rsp
	sub	r9, rdi
	mov	rsp, r9
	mov	qword ptr [rbp - 56], rdx
	mov	ecx, dword ptr [rbp - 20]
	mov	edx, ecx
	lea	rdi, [4*rdx + 15]
	and	rdi, -16
	mov	r10, rsp
	sub	r10, rdi
	mov	rsp, r10
	mov	qword ptr [rbp - 64], rdx
	mov	rdx, r9
	movsxd	rdi, dword ptr [rbp - 36]
	shl	rdi, 2
	mov	qword ptr [rbp - 80], rdi ## 8-byte Spill
	mov	rdi, rdx
	mov	esi, eax
	mov	rdx, qword ptr [rbp - 80] ## 8-byte Reload
	mov	rcx, r8
	mov	qword ptr [rbp - 88], r9 ## 8-byte Spill
	mov	qword ptr [rbp - 96], r10 ## 8-byte Spill
	call	___memset_chk
	mov	dword ptr [rbp - 68], 0
	mov	qword ptr [rbp - 104], rax ## 8-byte Spill
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 68]
	cmp	eax, dword ptr [rbp - 36]
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movsxd	rax, dword ptr [rbp - 68]
	mov	rcx, qword ptr [rbp - 96] ## 8-byte Reload
	mov	dword ptr [rcx + 4*rax], -1
## %bb.3:                               ##   in Loop: Header=BB3_1 Depth=1
	mov	eax, dword ptr [rbp - 68]
	add	eax, 1
	mov	dword ptr [rbp - 68], eax
	jmp	LBB3_1
LBB3_4:
	mov	dword ptr [rbp - 72], 0
LBB3_5:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 72]
	cmp	eax, dword ptr [rbp - 20]
	jge	LBB3_10
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	xor	eax, eax
	mov	rsi, qword ptr [rbp - 16]
	mov	rdx, qword ptr [rbp - 32]
	mov	ecx, dword ptr [rbp - 36]
	mov	r9d, dword ptr [rbp - 72]
	sub	rsp, 16
	mov	rdi, qword ptr [rbp - 96] ## 8-byte Reload
	mov	r8, qword ptr [rbp - 88] ## 8-byte Reload
	mov	dword ptr [rsp], 0
	mov	dword ptr [rbp - 108], eax ## 4-byte Spill
	call	_findout
	add	rsp, 16
	cmp	eax, 0
	je	LBB3_8
## %bb.7:                               ##   in Loop: Header=BB3_5 Depth=1
	mov	eax, dword ptr [rbp - 40]
	add	eax, 1
	mov	dword ptr [rbp - 40], eax
LBB3_8:                                 ##   in Loop: Header=BB3_5 Depth=1
	jmp	LBB3_9
LBB3_9:                                 ##   in Loop: Header=BB3_5 Depth=1
	mov	eax, dword ptr [rbp - 72]
	add	eax, 1
	mov	dword ptr [rbp - 72], eax
	jmp	LBB3_5
LBB3_10:
	mov	esi, dword ptr [rbp - 40]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rbp - 16]
	mov	edx, dword ptr [rbp - 36]
	mov	rcx, qword ptr [rbp - 32]
	mov	rdi, qword ptr [rbp - 96] ## 8-byte Reload
	mov	dword ptr [rbp - 112], eax ## 4-byte Spill
	call	_showresult
	mov	rcx, qword ptr [rbp - 48]
	mov	rsp, rcx
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rcx, rsi
	jne	LBB3_12
## %bb.11:
	mov	rsp, rbp
	pop	rbp
	ret
LBB3_12:
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
	sub	rsp, 224
	lea	rax, [rbp - 176]
	lea	rcx, [rbp - 96]
	lea	rdx, [rip + l_main.qset]
	mov	esi, 80
	mov	edi, esi
	lea	r8, [rip + l_main.pset]
	mov	r9, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	r9, qword ptr [r9]
	mov	qword ptr [rbp - 8], r9
	mov	r9, rcx
	mov	qword ptr [rbp - 192], rdi ## 8-byte Spill
	mov	rdi, r9
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 192] ## 8-byte Reload
	mov	qword ptr [rbp - 200], rdx ## 8-byte Spill
	mov	rdx, r8
	mov	qword ptr [rbp - 208], rax ## 8-byte Spill
	mov	qword ptr [rbp - 216], rcx ## 8-byte Spill
	call	_memcpy
	mov	rax, qword ptr [rbp - 208] ## 8-byte Reload
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 200] ## 8-byte Reload
	mov	rdx, qword ptr [rbp - 192] ## 8-byte Reload
	call	_memcpy
	mov	dword ptr [rbp - 180], 10
	mov	dword ptr [rbp - 184], 10
	mov	esi, dword ptr [rbp - 180]
	mov	ecx, dword ptr [rbp - 184]
	mov	rdi, qword ptr [rbp - 216] ## 8-byte Reload
	mov	rdx, qword ptr [rbp - 208] ## 8-byte Reload
	call	_hungary
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rax, rdx
	jne	LBB4_2
## %bb.1:
	xor	eax, eax
	add	rsp, 224
	pop	rbp
	ret
LBB4_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"(%d,%d)=>(%d,%d)\n"

L_.str.1:                               ## @.str.1
	.asciz	"counter=%d\n"

	.section	__TEXT,__const
	.p2align	4               ## @main.pset
l_main.pset:
	.long	5                       ## 0x5
	.long	2                       ## 0x2
	.long	4                       ## 0x4
	.long	1                       ## 0x1
	.long	5                       ## 0x5
	.long	2                       ## 0x2
	.long	2                       ## 0x2
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	3                       ## 0x3
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	5                       ## 0x5
	.long	3                       ## 0x3
	.long	4                       ## 0x4
	.long	5                       ## 0x5
	.long	2                       ## 0x2
	.long	6                       ## 0x6
	.long	2                       ## 0x2
	.long	2                       ## 0x2

	.p2align	4               ## @main.qset
l_main.qset:
	.long	3                       ## 0x3
	.long	5                       ## 0x5
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	5                       ## 0x5
	.long	3                       ## 0x3
	.long	2                       ## 0x2
	.long	3                       ## 0x3
	.long	2                       ## 0x2
	.long	4                       ## 0x4
	.long	4                       ## 0x4
	.long	1                       ## 0x1
	.long	3                       ## 0x3
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	3                       ## 0x3
	.long	3                       ## 0x3
	.long	2                       ## 0x2
	.long	3                       ## 0x3
	.long	2                       ## 0x2


.subsections_via_symbols
