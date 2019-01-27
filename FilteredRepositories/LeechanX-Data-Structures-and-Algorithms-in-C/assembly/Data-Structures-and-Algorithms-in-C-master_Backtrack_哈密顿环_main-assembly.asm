	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_isneibor               ## -- Begin function isneibor
	.p2align	4, 0x90
_isneibor:                              ## @isneibor
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 16], edx
	mov	rdi, qword ptr [rbp - 8]
	movsxd	rax, dword ptr [rbp - 12]
	imul	rax, rax, 24
	add	rdi, rax
	movsxd	rax, dword ptr [rbp - 16]
	mov	eax, dword ptr [rdi + 4*rax]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_displayoutcome         ## -- Begin function displayoutcome
	.p2align	4, 0x90
_displayoutcome:                        ## @displayoutcome
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
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	mov	esi, dword ptr [rax + 4*rcx]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB1_1
LBB1_4:
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
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
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 16], edx
	mov	dword ptr [rbp - 20], 1
	mov	dword ptr [rbp - 24], 0
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 12]
	mov	byte ptr [rbp - 25], cl ## 1-byte Spill
	jge	LBB2_3
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	cmp	dword ptr [rbp - 20], 0
	setne	al
	mov	byte ptr [rbp - 25], al ## 1-byte Spill
LBB2_3:                                 ##   in Loop: Header=BB2_1 Depth=1
	mov	al, byte ptr [rbp - 25] ## 1-byte Reload
	test	al, 1
	jne	LBB2_4
	jmp	LBB2_8
LBB2_4:                                 ##   in Loop: Header=BB2_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 24]
	mov	edx, dword ptr [rax + 4*rcx]
	cmp	edx, dword ptr [rbp - 16]
	jne	LBB2_6
## %bb.5:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	dword ptr [rbp - 20], 0
LBB2_6:                                 ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_7
LBB2_7:                                 ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB2_1
LBB2_8:
	mov	eax, dword ptr [rbp - 20]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_backtrace_recursive    ## -- Begin function backtrace_recursive
	.p2align	4, 0x90
_backtrace_recursive:                   ## @backtrace_recursive
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	qword ptr [rbp - 24], rdx
	mov	dword ptr [rbp - 28], ecx
	mov	ecx, dword ptr [rbp - 28]
	cmp	ecx, dword ptr [rbp - 12]
	jne	LBB3_3
## %bb.1:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 28]
	sub	ecx, 1
	movsxd	rsi, ecx
	mov	esi, dword ptr [rax + 4*rsi]
	call	_isneibor
	cmp	eax, 0
	je	LBB3_3
## %bb.2:
	mov	rdi, qword ptr [rbp - 24]
	mov	esi, dword ptr [rbp - 28]
	call	_displayoutcome
	jmp	LBB3_10
LBB3_3:
	mov	rax, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 28]
	sub	ecx, 1
	movsxd	rdx, ecx
	mov	ecx, dword ptr [rax + 4*rdx]
	mov	dword ptr [rbp - 32], ecx
	mov	dword ptr [rbp - 36], 0
LBB3_4:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 36]
	cmp	eax, dword ptr [rbp - 12]
	jge	LBB3_10
## %bb.5:                               ##   in Loop: Header=BB3_4 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 32]
	imul	rcx, rcx, 24
	add	rax, rcx
	movsxd	rcx, dword ptr [rbp - 36]
	cmp	dword ptr [rax + 4*rcx], 0
	je	LBB3_8
## %bb.6:                               ##   in Loop: Header=BB3_4 Depth=1
	mov	rdi, qword ptr [rbp - 24]
	mov	esi, dword ptr [rbp - 28]
	mov	edx, dword ptr [rbp - 36]
	call	_available
	cmp	eax, 0
	je	LBB3_8
## %bb.7:                               ##   in Loop: Header=BB3_4 Depth=1
	mov	eax, dword ptr [rbp - 36]
	mov	rcx, qword ptr [rbp - 24]
	movsxd	rdx, dword ptr [rbp - 28]
	mov	dword ptr [rcx + 4*rdx], eax
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	mov	rdx, qword ptr [rbp - 24]
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	ecx, eax
	call	_backtrace_recursive
LBB3_8:                                 ##   in Loop: Header=BB3_4 Depth=1
	jmp	LBB3_9
LBB3_9:                                 ##   in Loop: Header=BB3_4 Depth=1
	mov	eax, dword ptr [rbp - 36]
	add	eax, 1
	mov	dword ptr [rbp - 36], eax
	jmp	LBB3_4
LBB3_10:
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_backtrace_nonrecursive ## -- Begin function backtrace_nonrecursive
	.p2align	4, 0x90
_backtrace_nonrecursive:                ## @backtrace_nonrecursive
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
	mov	qword ptr [rbp - 16], rdi
	mov	dword ptr [rbp - 20], esi
	mov	esi, dword ptr [rbp - 20]
	mov	eax, esi
	mov	rdi, rsp
	mov	qword ptr [rbp - 32], rdi
	lea	rdi, [4*rax + 15]
	and	rdi, -16
	mov	rcx, rsp
	sub	rcx, rdi
	mov	rsp, rcx
	mov	qword ptr [rbp - 40], rax
	mov	esi, dword ptr [rbp - 20]
	mov	eax, esi
	lea	rdi, [4*rax + 15]
	and	rdi, -16
	mov	rdx, rsp
	sub	rdx, rdi
	mov	rsp, rdx
	mov	qword ptr [rbp - 48], rax
	mov	dword ptr [rbp - 52], 1
	mov	dword ptr [rdx], 0
	movsxd	rax, dword ptr [rbp - 52]
	mov	dword ptr [rdx + 4*rax], -1
	mov	qword ptr [rbp - 64], rcx ## 8-byte Spill
	mov	qword ptr [rbp - 72], rdx ## 8-byte Spill
LBB4_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB4_3 Depth 2
	cmp	dword ptr [rbp - 52], 1
	jl	LBB4_17
## %bb.2:                               ##   in Loop: Header=BB4_1 Depth=1
	movsxd	rax, dword ptr [rbp - 52]
	mov	rcx, qword ptr [rbp - 72] ## 8-byte Reload
	mov	edx, dword ptr [rcx + 4*rax]
	add	edx, 1
	mov	dword ptr [rcx + 4*rax], edx
	mov	edx, dword ptr [rbp - 52]
	sub	edx, 1
	movsxd	rax, edx
	mov	rsi, qword ptr [rbp - 64] ## 8-byte Reload
	mov	edx, dword ptr [rsi + 4*rax]
	mov	dword ptr [rbp - 56], edx
LBB4_3:                                 ##   Parent Loop BB4_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 52]
	mov	rsi, qword ptr [rbp - 72] ## 8-byte Reload
	mov	eax, dword ptr [rsi + 4*rdx]
	cmp	eax, dword ptr [rbp - 20]
	mov	byte ptr [rbp - 73], cl ## 1-byte Spill
	jge	LBB4_7
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=2
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 16]
	movsxd	rsi, dword ptr [rbp - 56]
	imul	rsi, rsi, 24
	add	rdx, rsi
	movsxd	rsi, dword ptr [rbp - 52]
	mov	rdi, qword ptr [rbp - 72] ## 8-byte Reload
	movsxd	rsi, dword ptr [rdi + 4*rsi]
	cmp	dword ptr [rdx + 4*rsi], 0
	mov	byte ptr [rbp - 74], cl ## 1-byte Spill
	je	LBB4_6
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=2
	mov	esi, dword ptr [rbp - 52]
	movsxd	rax, dword ptr [rbp - 52]
	mov	rcx, qword ptr [rbp - 72] ## 8-byte Reload
	mov	edx, dword ptr [rcx + 4*rax]
	mov	rdi, qword ptr [rbp - 64] ## 8-byte Reload
	call	_available
	cmp	eax, 0
	setne	r8b
	mov	byte ptr [rbp - 74], r8b ## 1-byte Spill
LBB4_6:                                 ##   in Loop: Header=BB4_3 Depth=2
	mov	al, byte ptr [rbp - 74] ## 1-byte Reload
	xor	al, -1
	mov	byte ptr [rbp - 73], al ## 1-byte Spill
LBB4_7:                                 ##   in Loop: Header=BB4_3 Depth=2
	mov	al, byte ptr [rbp - 73] ## 1-byte Reload
	test	al, 1
	jne	LBB4_8
	jmp	LBB4_9
LBB4_8:                                 ##   in Loop: Header=BB4_3 Depth=2
	movsxd	rax, dword ptr [rbp - 52]
	mov	rcx, qword ptr [rbp - 72] ## 8-byte Reload
	mov	edx, dword ptr [rcx + 4*rax]
	add	edx, 1
	mov	dword ptr [rcx + 4*rax], edx
	jmp	LBB4_3
LBB4_9:                                 ##   in Loop: Header=BB4_1 Depth=1
	movsxd	rax, dword ptr [rbp - 52]
	mov	rcx, qword ptr [rbp - 72] ## 8-byte Reload
	mov	edx, dword ptr [rcx + 4*rax]
	cmp	edx, dword ptr [rbp - 20]
	jne	LBB4_11
## %bb.10:                              ##   in Loop: Header=BB4_1 Depth=1
	mov	eax, dword ptr [rbp - 52]
	add	eax, -1
	mov	dword ptr [rbp - 52], eax
	jmp	LBB4_16
LBB4_11:                                ##   in Loop: Header=BB4_1 Depth=1
	movsxd	rax, dword ptr [rbp - 52]
	mov	rcx, qword ptr [rbp - 72] ## 8-byte Reload
	mov	edx, dword ptr [rcx + 4*rax]
	movsxd	rax, dword ptr [rbp - 52]
	mov	rsi, qword ptr [rbp - 64] ## 8-byte Reload
	mov	dword ptr [rsi + 4*rax], edx
	mov	edx, dword ptr [rbp - 52]
	mov	edi, dword ptr [rbp - 20]
	sub	edi, 1
	cmp	edx, edi
	jne	LBB4_14
## %bb.12:                              ##   in Loop: Header=BB4_1 Depth=1
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 16]
	movsxd	rax, dword ptr [rbp - 52]
	mov	rcx, qword ptr [rbp - 64] ## 8-byte Reload
	mov	esi, dword ptr [rcx + 4*rax]
	call	_isneibor
	cmp	eax, 0
	je	LBB4_14
## %bb.13:                              ##   in Loop: Header=BB4_1 Depth=1
	mov	eax, dword ptr [rbp - 52]
	add	eax, 1
	mov	rdi, qword ptr [rbp - 64] ## 8-byte Reload
	mov	esi, eax
	call	_displayoutcome
	jmp	LBB4_15
LBB4_14:                                ##   in Loop: Header=BB4_1 Depth=1
	mov	eax, dword ptr [rbp - 52]
	add	eax, 1
	mov	dword ptr [rbp - 52], eax
	movsxd	rcx, dword ptr [rbp - 52]
	mov	rdx, qword ptr [rbp - 72] ## 8-byte Reload
	mov	dword ptr [rdx + 4*rcx], -1
LBB4_15:                                ##   in Loop: Header=BB4_1 Depth=1
	jmp	LBB4_16
LBB4_16:                                ##   in Loop: Header=BB4_1 Depth=1
	jmp	LBB4_1
LBB4_17:
	mov	rax, qword ptr [rbp - 32]
	mov	rsp, rax
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB4_19
## %bb.18:
	mov	rsp, rbp
	pop	rbp
	ret
LBB4_19:
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
	sub	rsp, 240
	lea	rdx, [rbp - 192]
	lea	rax, [rbp - 160]
	lea	rcx, [rip + l_main.map]
	mov	r8d, 144
	mov	r9d, r8d
	mov	r10, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	r10, qword ptr [r10]
	mov	qword ptr [rbp - 8], r10
	mov	dword ptr [rbp - 196], 0
	mov	dword ptr [rbp - 200], edi
	mov	qword ptr [rbp - 208], rsi
	mov	rsi, rax
	mov	rdi, rsi
	mov	rsi, rcx
	mov	qword ptr [rbp - 224], rdx ## 8-byte Spill
	mov	rdx, r9
	mov	qword ptr [rbp - 232], rax ## 8-byte Spill
	call	_memcpy
	mov	dword ptr [rbp - 212], 6
	mov	dword ptr [rbp - 192], 0
	mov	esi, dword ptr [rbp - 212]
	mov	rdi, qword ptr [rbp - 232] ## 8-byte Reload
	mov	rdx, qword ptr [rbp - 224] ## 8-byte Reload
	mov	ecx, 1
	call	_backtrace_recursive
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rax, rdx
	jne	LBB5_2
## %bb.1:
	xor	eax, eax
	add	rsp, 240
	pop	rbp
	ret
LBB5_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d "

L_.str.1:                               ## @.str.1
	.asciz	"\n"

	.section	__TEXT,__const
	.p2align	4               ## @main.map
l_main.map:
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	0                       ## 0x0
	.long	0                       ## 0x0


.subsections_via_symbols
