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
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 16], edx
	mov	rdi, qword ptr [rbp - 8]
	movsxd	rax, dword ptr [rbp - 12]
	mov	edx, dword ptr [rdi + 4*rax]
	mov	dword ptr [rbp - 20], edx
	mov	rax, qword ptr [rbp - 8]
	movsxd	rdi, dword ptr [rbp - 16]
	mov	edx, dword ptr [rax + 4*rdi]
	mov	rax, qword ptr [rbp - 8]
	movsxd	rdi, dword ptr [rbp - 12]
	mov	dword ptr [rax + 4*rdi], edx
	mov	edx, dword ptr [rbp - 20]
	mov	rax, qword ptr [rbp - 8]
	movsxd	rdi, dword ptr [rbp - 16]
	mov	dword ptr [rax + 4*rdi], edx
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
	.globl	_bubblesort             ## -- Begin function bubblesort
	.p2align	4, 0x90
_bubblesort:                            ## @bubblesort
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
	mov	esi, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 24], esi
LBB2_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_3 Depth 2
	cmp	dword ptr [rbp - 16], 0
	je	LBB2_9
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 24]
	add	eax, -1
	mov	dword ptr [rbp - 24], eax
	mov	dword ptr [rbp - 16], 0
	mov	dword ptr [rbp - 20], 0
LBB2_3:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	eax, dword ptr [rbp - 20]
	cmp	eax, dword ptr [rbp - 24]
	jge	LBB2_8
## %bb.4:                               ##   in Loop: Header=BB2_3 Depth=2
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 20]
	add	esi, 1
	movsxd	rcx, esi
	cmp	edx, dword ptr [rax + 4*rcx]
	jle	LBB2_6
## %bb.5:                               ##   in Loop: Header=BB2_3 Depth=2
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 20]
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	edx, eax
	call	_swap
	mov	dword ptr [rbp - 16], 1
LBB2_6:                                 ##   in Loop: Header=BB2_3 Depth=2
	jmp	LBB2_7
LBB2_7:                                 ##   in Loop: Header=BB2_3 Depth=2
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB2_3
LBB2_8:                                 ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_1
LBB2_9:
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
	lea	rax, [rbp - 208]
	lea	rcx, [rip + l_main.data]
	mov	edx, 200
                                        ## kill: def $rdx killed $edx
	mov	rsi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	dword ptr [rbp - 212], 0
	mov	rsi, rax
	mov	rdi, rsi
	mov	rsi, rcx
	mov	qword ptr [rbp - 224], rax ## 8-byte Spill
	call	_memcpy
	mov	dword ptr [rbp - 216], 50
	mov	esi, dword ptr [rbp - 216]
	mov	rdi, qword ptr [rbp - 224] ## 8-byte Reload
	call	_bubblesort
	lea	rdi, [rbp - 208]
	mov	esi, dword ptr [rbp - 216]
	call	_displayoutcome
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB3_2
## %bb.1:
	xor	eax, eax
	add	rsp, 224
	pop	rbp
	ret
LBB3_2:
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


.subsections_via_symbols
