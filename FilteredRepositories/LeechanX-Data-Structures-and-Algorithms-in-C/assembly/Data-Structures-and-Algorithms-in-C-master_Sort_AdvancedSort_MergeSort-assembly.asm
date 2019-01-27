	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_merge                  ## -- Begin function merge
	.p2align	4, 0x90
_merge:                                 ## @merge
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 256
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	qword ptr [rbp - 216], rdi
	mov	dword ptr [rbp - 220], esi
	mov	dword ptr [rbp - 224], edx
	mov	dword ptr [rbp - 228], ecx
	mov	dword ptr [rbp - 232], -1
	mov	ecx, dword ptr [rbp - 220]
	mov	dword ptr [rbp - 236], ecx
	mov	ecx, dword ptr [rbp - 224]
	mov	dword ptr [rbp - 240], ecx
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 236]
	cmp	eax, dword ptr [rbp - 224]
	mov	byte ptr [rbp - 241], cl ## 1-byte Spill
	jge	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 240]
	cmp	eax, dword ptr [rbp - 228]
	setl	cl
	mov	byte ptr [rbp - 241], cl ## 1-byte Spill
LBB0_3:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	al, byte ptr [rbp - 241] ## 1-byte Reload
	test	al, 1
	jne	LBB0_4
	jmp	LBB0_8
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 216]
	movsxd	rcx, dword ptr [rbp - 236]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	rax, qword ptr [rbp - 216]
	movsxd	rcx, dword ptr [rbp - 240]
	cmp	edx, dword ptr [rax + 4*rcx]
	jg	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 216]
	mov	ecx, dword ptr [rbp - 236]
	mov	edx, ecx
	add	edx, 1
	mov	dword ptr [rbp - 236], edx
	movsxd	rsi, ecx
	mov	ecx, dword ptr [rax + 4*rsi]
	mov	edx, dword ptr [rbp - 232]
	add	edx, 1
	mov	dword ptr [rbp - 232], edx
	movsxd	rax, edx
	mov	dword ptr [rbp + 4*rax - 208], ecx
	jmp	LBB0_7
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 216]
	mov	ecx, dword ptr [rbp - 240]
	mov	edx, ecx
	add	edx, 1
	mov	dword ptr [rbp - 240], edx
	movsxd	rsi, ecx
	mov	ecx, dword ptr [rax + 4*rsi]
	mov	edx, dword ptr [rbp - 232]
	add	edx, 1
	mov	dword ptr [rbp - 232], edx
	movsxd	rax, edx
	mov	dword ptr [rbp + 4*rax - 208], ecx
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_1
LBB0_8:
	jmp	LBB0_9
LBB0_9:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 236]
	cmp	eax, dword ptr [rbp - 224]
	jge	LBB0_11
## %bb.10:                              ##   in Loop: Header=BB0_9 Depth=1
	mov	rax, qword ptr [rbp - 216]
	mov	ecx, dword ptr [rbp - 236]
	mov	edx, ecx
	add	edx, 1
	mov	dword ptr [rbp - 236], edx
	movsxd	rsi, ecx
	mov	ecx, dword ptr [rax + 4*rsi]
	mov	edx, dword ptr [rbp - 232]
	add	edx, 1
	mov	dword ptr [rbp - 232], edx
	movsxd	rax, edx
	mov	dword ptr [rbp + 4*rax - 208], ecx
	jmp	LBB0_9
LBB0_11:
	jmp	LBB0_12
LBB0_12:                                ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 240]
	cmp	eax, dword ptr [rbp - 228]
	jge	LBB0_14
## %bb.13:                              ##   in Loop: Header=BB0_12 Depth=1
	mov	rax, qword ptr [rbp - 216]
	mov	ecx, dword ptr [rbp - 240]
	mov	edx, ecx
	add	edx, 1
	mov	dword ptr [rbp - 240], edx
	movsxd	rsi, ecx
	mov	ecx, dword ptr [rax + 4*rsi]
	mov	edx, dword ptr [rbp - 232]
	add	edx, 1
	mov	dword ptr [rbp - 232], edx
	movsxd	rax, edx
	mov	dword ptr [rbp + 4*rax - 208], ecx
	jmp	LBB0_12
LBB0_14:
	mov	eax, dword ptr [rbp - 220]
	mov	dword ptr [rbp - 236], eax
LBB0_15:                                ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 236]
	cmp	eax, dword ptr [rbp - 228]
	jge	LBB0_18
## %bb.16:                              ##   in Loop: Header=BB0_15 Depth=1
	mov	eax, dword ptr [rbp - 236]
	sub	eax, dword ptr [rbp - 220]
	movsxd	rcx, eax
	mov	eax, dword ptr [rbp + 4*rcx - 208]
	mov	rcx, qword ptr [rbp - 216]
	movsxd	rdx, dword ptr [rbp - 236]
	mov	dword ptr [rcx + 4*rdx], eax
## %bb.17:                              ##   in Loop: Header=BB0_15 Depth=1
	mov	eax, dword ptr [rbp - 236]
	add	eax, 1
	mov	dword ptr [rbp - 236], eax
	jmp	LBB0_15
LBB0_18:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB0_20
## %bb.19:
	add	rsp, 256
	pop	rbp
	ret
LBB0_20:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_mergesort_recursive    ## -- Begin function mergesort_recursive
	.p2align	4, 0x90
_mergesort_recursive:                   ## @mergesort_recursive
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
	mov	dword ptr [rbp - 16], edx
	mov	edx, dword ptr [rbp - 12]
	mov	esi, dword ptr [rbp - 16]
	sub	esi, 1
	cmp	edx, esi
	jl	LBB1_2
## %bb.1:
	jmp	LBB1_3
LBB1_2:
	mov	eax, dword ptr [rbp - 12]
	add	eax, dword ptr [rbp - 16]
	cdq
	mov	ecx, 2
	idiv	ecx
	mov	dword ptr [rbp - 20], eax
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	mov	eax, dword ptr [rbp - 20]
	mov	edx, eax
	call	_mergesort_recursive
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 20]
	mov	edx, dword ptr [rbp - 16]
	call	_mergesort_recursive
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	mov	edx, dword ptr [rbp - 20]
	mov	ecx, dword ptr [rbp - 16]
	call	_merge
LBB1_3:
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_mergesort_nonrecursive ## -- Begin function mergesort_nonrecursive
	.p2align	4, 0x90
_mergesort_nonrecursive:                ## @mergesort_nonrecursive
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
	mov	dword ptr [rbp - 16], 2
LBB2_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_3 Depth 2
	mov	eax, dword ptr [rbp - 16]
	mov	ecx, dword ptr [rbp - 12]
	shl	ecx, 1
	cmp	eax, ecx
	jge	LBB2_10
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	dword ptr [rbp - 20], 0
LBB2_3:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	eax, dword ptr [rbp - 20]
	cmp	eax, dword ptr [rbp - 12]
	jge	LBB2_8
## %bb.4:                               ##   in Loop: Header=BB2_3 Depth=2
	mov	eax, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 24], eax
	mov	eax, dword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	mov	eax, ecx
	cdq
	mov	ecx, 2
	idiv	ecx
	mov	ecx, dword ptr [rbp - 36] ## 4-byte Reload
	add	ecx, eax
	mov	dword ptr [rbp - 28], ecx
	mov	eax, dword ptr [rbp - 24]
	add	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 32], eax
	mov	eax, dword ptr [rbp - 32]
	cmp	eax, dword ptr [rbp - 12]
	jle	LBB2_6
## %bb.5:                               ##   in Loop: Header=BB2_3 Depth=2
	mov	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 32], eax
LBB2_6:                                 ##   in Loop: Header=BB2_3 Depth=2
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 28]
	mov	ecx, dword ptr [rbp - 32]
	call	_merge
## %bb.7:                               ##   in Loop: Header=BB2_3 Depth=2
	mov	eax, dword ptr [rbp - 16]
	add	eax, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 20], eax
	jmp	LBB2_3
LBB2_8:                                 ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_9
LBB2_9:                                 ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 16]
	shl	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB2_1
LBB2_10:
	add	rsp, 48
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
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 16]
	cmp	eax, dword ptr [rbp - 12]
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	mov	esi, dword ptr [rax + 4*rcx]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB3_1 Depth=1
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB3_1
LBB3_4:
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
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
	sub	rsp, 224
	lea	rax, [rip + l_main.data]
	mov	ecx, 200
	mov	edx, ecx
	mov	rsi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	dword ptr [rbp - 212], 0
	lea	rsi, [rbp - 208]
	mov	rdi, rsi
	mov	rsi, rax
	call	_memcpy
	mov	dword ptr [rbp - 216], 50
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	lea	rdi, [rbp - 208]
	mov	esi, dword ptr [rbp - 216]
	mov	dword ptr [rbp - 220], eax ## 4-byte Spill
	call	_mergesort_nonrecursive
	lea	rdi, [rbp - 208]
	mov	esi, dword ptr [rbp - 216]
	call	_displayoutcome
	mov	rdx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdx, qword ptr [rdx]
	mov	rdi, qword ptr [rbp - 8]
	cmp	rdx, rdi
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
	.asciz	"%d "

L_.str.1:                               ## @.str.1
	.asciz	"\n"

	.section	__TEXT,__const
	.p2align	4               ## @main.data
l_main.data:
	.long	60                      ## 0x3c
	.long	2                       ## 0x2
	.long	97                      ## 0x61
	.long	78                      ## 0x4e
	.long	0                       ## 0x0
	.long	84                      ## 0x54
	.long	68                      ## 0x44
	.long	23                      ## 0x17
	.long	48                      ## 0x30
	.long	22                      ## 0x16
	.long	63                      ## 0x3f
	.long	31                      ## 0x1f
	.long	43                      ## 0x2b
	.long	42                      ## 0x2a
	.long	82                      ## 0x52
	.long	9                       ## 0x9
	.long	57                      ## 0x39
	.long	21                      ## 0x15
	.long	42                      ## 0x2a
	.long	62                      ## 0x3e
	.long	83                      ## 0x53
	.long	98                      ## 0x62
	.long	64                      ## 0x40
	.long	72                      ## 0x48
	.long	96                      ## 0x60
	.long	31                      ## 0x1f
	.long	76                      ## 0x4c
	.long	13                      ## 0xd
	.long	70                      ## 0x46
	.long	49                      ## 0x31
	.long	10                      ## 0xa
	.long	60                      ## 0x3c
	.long	72                      ## 0x48
	.long	36                      ## 0x24
	.long	26                      ## 0x1a
	.long	4                       ## 0x4
	.long	56                      ## 0x38
	.long	54                      ## 0x36
	.long	13                      ## 0xd
	.long	9                       ## 0x9
	.long	98                      ## 0x62
	.long	45                      ## 0x2d
	.long	61                      ## 0x3d
	.long	90                      ## 0x5a
	.long	88                      ## 0x58
	.long	80                      ## 0x50
	.long	30                      ## 0x1e
	.long	50                      ## 0x32
	.long	77                      ## 0x4d
	.long	83                      ## 0x53

	.section	__TEXT,__cstring,cstring_literals
L_.str.2:                               ## @.str.2
	.asciz	"use non recursive\n"


.subsections_via_symbols
