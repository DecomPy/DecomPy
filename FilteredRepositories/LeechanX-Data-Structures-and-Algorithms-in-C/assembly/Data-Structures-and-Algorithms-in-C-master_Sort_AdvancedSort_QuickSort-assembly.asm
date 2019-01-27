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
	.globl	_quicksort_recursive    ## -- Begin function quicksort_recursive
	.p2align	4, 0x90
_quicksort_recursive:                   ## @quicksort_recursive
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
	cmp	edx, dword ptr [rbp - 16]
	jl	LBB1_2
## %bb.1:
	jmp	LBB1_18
LBB1_2:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	sub	ecx, 1
	movsxd	rdx, ecx
	mov	ecx, dword ptr [rax + 4*rdx]
	mov	dword ptr [rbp - 20], ecx
	mov	ecx, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 24], ecx
	mov	ecx, dword ptr [rbp - 16]
	sub	ecx, 2
	mov	dword ptr [rbp - 28], ecx
LBB1_3:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_5 Depth 2
                                        ##     Child Loop BB1_10 Depth 2
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 28]
	jg	LBB1_17
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=1
	jmp	LBB1_5
LBB1_5:                                 ##   Parent Loop BB1_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	movsxd	rsi, dword ptr [rbp - 24]
	mov	eax, dword ptr [rdx + 4*rsi]
	cmp	eax, dword ptr [rbp - 20]
	mov	byte ptr [rbp - 29], cl ## 1-byte Spill
	jge	LBB1_7
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=2
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 16]
	setl	cl
	mov	byte ptr [rbp - 29], cl ## 1-byte Spill
LBB1_7:                                 ##   in Loop: Header=BB1_5 Depth=2
	mov	al, byte ptr [rbp - 29] ## 1-byte Reload
	test	al, 1
	jne	LBB1_8
	jmp	LBB1_9
LBB1_8:                                 ##   in Loop: Header=BB1_5 Depth=2
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB1_5
LBB1_9:                                 ##   in Loop: Header=BB1_3 Depth=1
	jmp	LBB1_10
LBB1_10:                                ##   Parent Loop BB1_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	movsxd	rsi, dword ptr [rbp - 28]
	mov	eax, dword ptr [rdx + 4*rsi]
	cmp	eax, dword ptr [rbp - 20]
	mov	byte ptr [rbp - 30], cl ## 1-byte Spill
	jl	LBB1_12
## %bb.11:                              ##   in Loop: Header=BB1_10 Depth=2
	cmp	dword ptr [rbp - 28], 0
	setge	al
	mov	byte ptr [rbp - 30], al ## 1-byte Spill
LBB1_12:                                ##   in Loop: Header=BB1_10 Depth=2
	mov	al, byte ptr [rbp - 30] ## 1-byte Reload
	test	al, 1
	jne	LBB1_13
	jmp	LBB1_14
LBB1_13:                                ##   in Loop: Header=BB1_10 Depth=2
	mov	eax, dword ptr [rbp - 28]
	add	eax, -1
	mov	dword ptr [rbp - 28], eax
	jmp	LBB1_10
LBB1_14:                                ##   in Loop: Header=BB1_3 Depth=1
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 28]
	jge	LBB1_16
## %bb.15:                              ##   in Loop: Header=BB1_3 Depth=1
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 28]
	call	_swap
LBB1_16:                                ##   in Loop: Header=BB1_3 Depth=1
	jmp	LBB1_3
LBB1_17:
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 24]
	mov	eax, dword ptr [rbp - 16]
	sub	eax, 1
	mov	edx, eax
	call	_swap
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	mov	edx, dword ptr [rbp - 24]
	call	_quicksort_recursive
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	edx, dword ptr [rbp - 16]
	mov	esi, eax
	call	_quicksort_recursive
LBB1_18:
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_push                   ## -- Begin function push
	.p2align	4, 0x90
_push:                                  ## @push
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	rax, qword ptr [rip + _stack@GOTPCREL]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	mov	edi, dword ptr [rip + _sp]
	add	edi, 1
	mov	dword ptr [rip + _sp], edi
	movsxd	rcx, edi
	mov	dword ptr [rax + 4*rcx], esi
	mov	esi, dword ptr [rbp - 8]
	mov	edi, dword ptr [rip + _sp]
	add	edi, 1
	mov	dword ptr [rip + _sp], edi
	movsxd	rcx, edi
	mov	dword ptr [rax + 4*rcx], esi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_pop                    ## -- Begin function pop
	.p2align	4, 0x90
_pop:                                   ## @pop
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	rax, qword ptr [rip + _stack@GOTPCREL]
	mov	ecx, dword ptr [rip + _sp]
	mov	edx, ecx
	add	edx, -1
	mov	dword ptr [rip + _sp], edx
	movsxd	rsi, ecx
	mov	eax, dword ptr [rax + 4*rsi]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_empty                  ## -- Begin function empty
	.p2align	4, 0x90
_empty:                                 ## @empty
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	cmp	dword ptr [rip + _sp], -1
	sete	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_quicksort_nonrecursive ## -- Begin function quicksort_nonrecursive
	.p2align	4, 0x90
_quicksort_nonrecursive:                ## @quicksort_nonrecursive
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
	mov	dword ptr [rbp - 16], 0
	mov	esi, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 20], esi
	mov	edi, dword ptr [rbp - 16]
	mov	esi, dword ptr [rbp - 20]
	call	_push
LBB5_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB5_3 Depth 2
                                        ##       Child Loop BB5_5 Depth 3
                                        ##       Child Loop BB5_10 Depth 3
	call	_empty
	cmp	eax, 0
	setne	cl
	xor	cl, -1
	test	cl, 1
	jne	LBB5_2
	jmp	LBB5_22
LBB5_2:                                 ##   in Loop: Header=BB5_1 Depth=1
	call	_pop
	mov	dword ptr [rbp - 20], eax
	call	_pop
	mov	dword ptr [rbp - 16], eax
	mov	rcx, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 20]
	sub	eax, 1
	movsxd	rdx, eax
	mov	eax, dword ptr [rcx + 4*rdx]
	mov	dword ptr [rbp - 32], eax
	mov	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 24], eax
	mov	eax, dword ptr [rbp - 20]
	sub	eax, 2
	mov	dword ptr [rbp - 28], eax
LBB5_3:                                 ##   Parent Loop BB5_1 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB5_5 Depth 3
                                        ##       Child Loop BB5_10 Depth 3
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 28]
	jg	LBB5_17
## %bb.4:                               ##   in Loop: Header=BB5_3 Depth=2
	jmp	LBB5_5
LBB5_5:                                 ##   Parent Loop BB5_1 Depth=1
                                        ##     Parent Loop BB5_3 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 20]
	mov	byte ptr [rbp - 33], cl ## 1-byte Spill
	jge	LBB5_7
## %bb.6:                               ##   in Loop: Header=BB5_5 Depth=3
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 24]
	mov	edx, dword ptr [rax + 4*rcx]
	cmp	edx, dword ptr [rbp - 32]
	setl	sil
	mov	byte ptr [rbp - 33], sil ## 1-byte Spill
LBB5_7:                                 ##   in Loop: Header=BB5_5 Depth=3
	mov	al, byte ptr [rbp - 33] ## 1-byte Reload
	test	al, 1
	jne	LBB5_8
	jmp	LBB5_9
LBB5_8:                                 ##   in Loop: Header=BB5_5 Depth=3
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB5_5
LBB5_9:                                 ##   in Loop: Header=BB5_3 Depth=2
	jmp	LBB5_10
LBB5_10:                                ##   Parent Loop BB5_1 Depth=1
                                        ##     Parent Loop BB5_3 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 28], 0
	mov	byte ptr [rbp - 34], cl ## 1-byte Spill
	jl	LBB5_12
## %bb.11:                              ##   in Loop: Header=BB5_10 Depth=3
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 28]
	mov	edx, dword ptr [rax + 4*rcx]
	cmp	edx, dword ptr [rbp - 32]
	setge	sil
	mov	byte ptr [rbp - 34], sil ## 1-byte Spill
LBB5_12:                                ##   in Loop: Header=BB5_10 Depth=3
	mov	al, byte ptr [rbp - 34] ## 1-byte Reload
	test	al, 1
	jne	LBB5_13
	jmp	LBB5_14
LBB5_13:                                ##   in Loop: Header=BB5_10 Depth=3
	mov	eax, dword ptr [rbp - 28]
	add	eax, -1
	mov	dword ptr [rbp - 28], eax
	jmp	LBB5_10
LBB5_14:                                ##   in Loop: Header=BB5_3 Depth=2
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 28]
	jge	LBB5_16
## %bb.15:                              ##   in Loop: Header=BB5_3 Depth=2
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 28]
	call	_swap
LBB5_16:                                ##   in Loop: Header=BB5_3 Depth=2
	jmp	LBB5_3
LBB5_17:                                ##   in Loop: Header=BB5_1 Depth=1
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 24]
	mov	eax, dword ptr [rbp - 20]
	sub	eax, 1
	mov	edx, eax
	call	_swap
	mov	eax, dword ptr [rbp - 16]
	cmp	eax, dword ptr [rbp - 24]
	jge	LBB5_19
## %bb.18:                              ##   in Loop: Header=BB5_1 Depth=1
	mov	edi, dword ptr [rbp - 16]
	mov	esi, dword ptr [rbp - 24]
	call	_push
LBB5_19:                                ##   in Loop: Header=BB5_1 Depth=1
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	cmp	eax, dword ptr [rbp - 20]
	jge	LBB5_21
## %bb.20:                              ##   in Loop: Header=BB5_1 Depth=1
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	esi, dword ptr [rbp - 20]
	mov	edi, eax
	call	_push
LBB5_21:                                ##   in Loop: Header=BB5_1 Depth=1
	jmp	LBB5_1
LBB5_22:
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
LBB6_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 16]
	cmp	eax, dword ptr [rbp - 12]
	jge	LBB6_4
## %bb.2:                               ##   in Loop: Header=BB6_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	mov	esi, dword ptr [rax + 4*rcx]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB6_1 Depth=1
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB6_1
LBB6_4:
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
	call	_quicksort_nonrecursive
	lea	rdi, [rbp - 208]
	mov	esi, dword ptr [rbp - 216]
	call	_displayoutcome
	mov	rdx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdx, qword ptr [rdx]
	mov	rdi, qword ptr [rbp - 8]
	cmp	rdx, rdi
	jne	LBB7_2
## %bb.1:
	xor	eax, eax
	add	rsp, 224
	pop	rbp
	ret
LBB7_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_sp                     ## @sp
	.p2align	2
_sp:
	.long	4294967295              ## 0xffffffff

	.comm	_stack,4000,4           ## @stack
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
