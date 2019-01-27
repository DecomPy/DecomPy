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
	.globl	_quicksplit_findtopk    ## -- Begin function quicksplit_findtopk
	.p2align	4, 0x90
_quicksplit_findtopk:                   ## @quicksplit_findtopk
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
	mov	dword ptr [rbp - 16], edx
	mov	dword ptr [rbp - 20], ecx
	mov	ecx, dword ptr [rbp - 12]
	cmp	ecx, dword ptr [rbp - 16]
	jl	LBB1_2
## %bb.1:
	jmp	LBB1_26
LBB1_2:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	sub	ecx, 1
	movsxd	rdx, ecx
	mov	ecx, dword ptr [rax + 4*rdx]
	mov	dword ptr [rbp - 24], ecx
	mov	ecx, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 28], ecx
	mov	ecx, dword ptr [rbp - 16]
	sub	ecx, 2
	mov	dword ptr [rbp - 32], ecx
LBB1_3:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_5 Depth 2
                                        ##     Child Loop BB1_10 Depth 2
	mov	eax, dword ptr [rbp - 28]
	cmp	eax, dword ptr [rbp - 32]
	jg	LBB1_17
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=1
	jmp	LBB1_5
LBB1_5:                                 ##   Parent Loop BB1_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 28]
	mov	edx, dword ptr [rbp - 16]
	sub	edx, 2
	cmp	eax, edx
	mov	byte ptr [rbp - 37], cl ## 1-byte Spill
	jg	LBB1_7
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=2
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 28]
	mov	edx, dword ptr [rax + 4*rcx]
	cmp	edx, dword ptr [rbp - 24]
	setl	sil
	mov	byte ptr [rbp - 37], sil ## 1-byte Spill
LBB1_7:                                 ##   in Loop: Header=BB1_5 Depth=2
	mov	al, byte ptr [rbp - 37] ## 1-byte Reload
	test	al, 1
	jne	LBB1_8
	jmp	LBB1_9
LBB1_8:                                 ##   in Loop: Header=BB1_5 Depth=2
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	dword ptr [rbp - 28], eax
	jmp	LBB1_5
LBB1_9:                                 ##   in Loop: Header=BB1_3 Depth=1
	jmp	LBB1_10
LBB1_10:                                ##   Parent Loop BB1_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 32], 0
	mov	byte ptr [rbp - 38], cl ## 1-byte Spill
	jl	LBB1_12
## %bb.11:                              ##   in Loop: Header=BB1_10 Depth=2
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 32]
	mov	edx, dword ptr [rax + 4*rcx]
	cmp	edx, dword ptr [rbp - 24]
	setge	sil
	mov	byte ptr [rbp - 38], sil ## 1-byte Spill
LBB1_12:                                ##   in Loop: Header=BB1_10 Depth=2
	mov	al, byte ptr [rbp - 38] ## 1-byte Reload
	test	al, 1
	jne	LBB1_13
	jmp	LBB1_14
LBB1_13:                                ##   in Loop: Header=BB1_10 Depth=2
	mov	eax, dword ptr [rbp - 32]
	add	eax, -1
	mov	dword ptr [rbp - 32], eax
	jmp	LBB1_10
LBB1_14:                                ##   in Loop: Header=BB1_3 Depth=1
	mov	eax, dword ptr [rbp - 28]
	cmp	eax, dword ptr [rbp - 32]
	jge	LBB1_16
## %bb.15:                              ##   in Loop: Header=BB1_3 Depth=1
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 28]
	mov	edx, dword ptr [rbp - 32]
	call	_swap
LBB1_16:                                ##   in Loop: Header=BB1_3 Depth=1
	jmp	LBB1_3
LBB1_17:
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 28]
	mov	eax, dword ptr [rbp - 16]
	sub	eax, 1
	mov	edx, eax
	call	_swap
	mov	eax, dword ptr [rbp - 28]
	cmp	eax, dword ptr [rbp - 20]
	jle	LBB1_19
## %bb.18:
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	mov	edx, dword ptr [rbp - 28]
	mov	ecx, dword ptr [rbp - 20]
	call	_quicksplit_findtopk
	jmp	LBB1_26
LBB1_19:
	mov	eax, dword ptr [rbp - 28]
	cmp	eax, dword ptr [rbp - 20]
	jge	LBB1_21
## %bb.20:
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	edx, dword ptr [rbp - 16]
	mov	ecx, dword ptr [rbp - 20]
	mov	esi, eax
	call	_quicksplit_findtopk
	jmp	LBB1_25
LBB1_21:
	mov	dword ptr [rbp - 36], 0
LBB1_22:                                ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 36]
	cmp	eax, dword ptr [rbp - 28]
	jge	LBB1_24
## %bb.23:                              ##   in Loop: Header=BB1_22 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	mov	edx, ecx
	add	edx, 1
	mov	dword ptr [rbp - 36], edx
	movsxd	rsi, ecx
	mov	esi, dword ptr [rax + 4*rsi]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	jmp	LBB1_22
LBB1_24:
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
LBB1_25:
	jmp	LBB1_26
LBB1_26:
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_quicksplit_find_kth_min ## -- Begin function quicksplit_find_kth_min
	.p2align	4, 0x90
_quicksplit_find_kth_min:               ## @quicksplit_find_kth_min
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
	mov	dword ptr [rbp - 16], edx
	mov	dword ptr [rbp - 20], ecx
	mov	ecx, dword ptr [rbp - 12]
	cmp	ecx, dword ptr [rbp - 16]
	jl	LBB2_2
## %bb.1:
	jmp	LBB2_23
LBB2_2:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	sub	ecx, 1
	movsxd	rdx, ecx
	mov	ecx, dword ptr [rax + 4*rdx]
	mov	dword ptr [rbp - 24], ecx
	mov	ecx, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 28], ecx
	mov	ecx, dword ptr [rbp - 16]
	sub	ecx, 2
	mov	dword ptr [rbp - 32], ecx
LBB2_3:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_5 Depth 2
                                        ##     Child Loop BB2_10 Depth 2
	mov	eax, dword ptr [rbp - 28]
	cmp	eax, dword ptr [rbp - 32]
	jg	LBB2_17
## %bb.4:                               ##   in Loop: Header=BB2_3 Depth=1
	jmp	LBB2_5
LBB2_5:                                 ##   Parent Loop BB2_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 28]
	mov	edx, dword ptr [rbp - 16]
	sub	edx, 2
	cmp	eax, edx
	mov	byte ptr [rbp - 33], cl ## 1-byte Spill
	jg	LBB2_7
## %bb.6:                               ##   in Loop: Header=BB2_5 Depth=2
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 28]
	mov	edx, dword ptr [rax + 4*rcx]
	cmp	edx, dword ptr [rbp - 24]
	setl	sil
	mov	byte ptr [rbp - 33], sil ## 1-byte Spill
LBB2_7:                                 ##   in Loop: Header=BB2_5 Depth=2
	mov	al, byte ptr [rbp - 33] ## 1-byte Reload
	test	al, 1
	jne	LBB2_8
	jmp	LBB2_9
LBB2_8:                                 ##   in Loop: Header=BB2_5 Depth=2
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	dword ptr [rbp - 28], eax
	jmp	LBB2_5
LBB2_9:                                 ##   in Loop: Header=BB2_3 Depth=1
	jmp	LBB2_10
LBB2_10:                                ##   Parent Loop BB2_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 32], 0
	mov	byte ptr [rbp - 34], cl ## 1-byte Spill
	jl	LBB2_12
## %bb.11:                              ##   in Loop: Header=BB2_10 Depth=2
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 32]
	mov	edx, dword ptr [rax + 4*rcx]
	cmp	edx, dword ptr [rbp - 24]
	setge	sil
	mov	byte ptr [rbp - 34], sil ## 1-byte Spill
LBB2_12:                                ##   in Loop: Header=BB2_10 Depth=2
	mov	al, byte ptr [rbp - 34] ## 1-byte Reload
	test	al, 1
	jne	LBB2_13
	jmp	LBB2_14
LBB2_13:                                ##   in Loop: Header=BB2_10 Depth=2
	mov	eax, dword ptr [rbp - 32]
	add	eax, -1
	mov	dword ptr [rbp - 32], eax
	jmp	LBB2_10
LBB2_14:                                ##   in Loop: Header=BB2_3 Depth=1
	mov	eax, dword ptr [rbp - 28]
	cmp	eax, dword ptr [rbp - 32]
	jge	LBB2_16
## %bb.15:                              ##   in Loop: Header=BB2_3 Depth=1
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 28]
	mov	edx, dword ptr [rbp - 32]
	call	_swap
LBB2_16:                                ##   in Loop: Header=BB2_3 Depth=1
	jmp	LBB2_3
LBB2_17:
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 28]
	mov	eax, dword ptr [rbp - 16]
	sub	eax, 1
	mov	edx, eax
	call	_swap
	mov	eax, dword ptr [rbp - 28]
	mov	edx, dword ptr [rbp - 20]
	sub	edx, 1
	cmp	eax, edx
	jle	LBB2_19
## %bb.18:
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	mov	edx, dword ptr [rbp - 28]
	mov	ecx, dword ptr [rbp - 20]
	call	_quicksplit_find_kth_min
	jmp	LBB2_23
LBB2_19:
	mov	eax, dword ptr [rbp - 28]
	mov	ecx, dword ptr [rbp - 20]
	sub	ecx, 1
	cmp	eax, ecx
	jge	LBB2_21
## %bb.20:
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	edx, dword ptr [rbp - 16]
	mov	ecx, dword ptr [rbp - 20]
	mov	esi, eax
	call	_quicksplit_find_kth_min
	jmp	LBB2_22
LBB2_21:
	mov	esi, dword ptr [rbp - 20]
	mov	edx, dword ptr [rbp - 24]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
LBB2_22:
	jmp	LBB2_23
LBB2_23:
	add	rsp, 48
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
	sub	rsp, 240
	lea	rax, [rip + l_main.data]
	mov	ecx, 200
	mov	edx, ecx
	mov	r8, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	r8, qword ptr [r8]
	mov	qword ptr [rbp - 8], r8
	mov	dword ptr [rbp - 212], 0
	mov	dword ptr [rbp - 216], edi
	mov	qword ptr [rbp - 224], rsi
	lea	rsi, [rbp - 208]
	mov	rdi, rsi
	mov	rsi, rax
	call	_memcpy
	mov	dword ptr [rbp - 228], 50
	mov	rax, qword ptr [rbp - 224]
	mov	rdi, qword ptr [rax + 8]
	call	_atoi
	mov	dword ptr [rbp - 232], eax
	mov	eax, dword ptr [rbp - 232]
	cmp	eax, dword ptr [rbp - 228]
	jle	LBB3_2
## %bb.1:
	mov	eax, dword ptr [rbp - 228]
	mov	dword ptr [rbp - 232], eax
LBB3_2:
	xor	esi, esi
	lea	rdi, [rbp - 208]
	mov	edx, dword ptr [rbp - 228]
	mov	ecx, dword ptr [rbp - 232]
	call	_quicksplit_find_kth_min
	mov	ecx, dword ptr [rbp - 232]
	cmp	ecx, dword ptr [rbp - 228]
	jne	LBB3_4
## %bb.3:
	mov	eax, dword ptr [rbp - 232]
	add	eax, -1
	mov	dword ptr [rbp - 232], eax
LBB3_4:
	mov	esi, dword ptr [rbp - 232]
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	xor	esi, esi
	lea	rdi, [rbp - 208]
	mov	edx, dword ptr [rbp - 228]
	mov	ecx, dword ptr [rbp - 232]
	mov	dword ptr [rbp - 236], eax ## 4-byte Spill
	call	_quicksplit_findtopk
	mov	rdi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdi, qword ptr [rdi]
	mov	r8, qword ptr [rbp - 8]
	cmp	rdi, r8
	jne	LBB3_6
## %bb.5:
	xor	eax, eax
	add	rsp, 240
	pop	rbp
	ret
LBB3_6:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d "

L_.str.1:                               ## @.str.1
	.asciz	"\n"

L_.str.2:                               ## @.str.2
	.asciz	"%dth minest number=%d\n"

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
L_.str.3:                               ## @.str.3
	.asciz	"top%d minest numbers:\n"


.subsections_via_symbols
