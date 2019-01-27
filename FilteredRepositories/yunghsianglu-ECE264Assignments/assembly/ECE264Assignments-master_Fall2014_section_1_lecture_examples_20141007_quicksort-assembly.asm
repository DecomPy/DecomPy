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
	lea	rax, [rip + l_main.a]
	mov	ecx, 36
	mov	edx, ecx
	mov	rsi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rbp - 48]
	mov	rdi, rsi
	mov	rsi, rax
	call	_memcpy
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 52], 0
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 52], 9
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 52]
	mov	esi, dword ptr [rbp + 4*rax - 48]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 60], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 52]
	add	eax, 1
	mov	dword ptr [rbp - 52], eax
	jmp	LBB0_1
LBB0_4:
	xor	esi, esi
	lea	rdi, [rbp - 48]
	mov	edx, 8
	call	_quickSort
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 52], 0
	mov	dword ptr [rbp - 64], eax ## 4-byte Spill
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 52], 9
	jge	LBB0_8
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	movsxd	rax, dword ptr [rbp - 52]
	mov	esi, dword ptr [rbp + 4*rax - 48]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
## %bb.7:                               ##   in Loop: Header=BB0_5 Depth=1
	mov	eax, dword ptr [rbp - 52]
	add	eax, 1
	mov	dword ptr [rbp - 52], eax
	jmp	LBB0_5
LBB0_8:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB0_10
## %bb.9:
	add	rsp, 80
	pop	rbp
	ret
LBB0_10:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_quickSort              ## -- Begin function quickSort
	.p2align	4, 0x90
_quickSort:                             ## @quickSort
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
	jge	LBB1_2
## %bb.1:
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	mov	edx, dword ptr [rbp - 16]
	call	_partition
	mov	dword ptr [rbp - 20], eax
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	mov	eax, dword ptr [rbp - 20]
	sub	eax, 1
	mov	edx, eax
	call	_quickSort
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	edx, dword ptr [rbp - 16]
	mov	esi, eax
	call	_quickSort
LBB1_2:
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_partition              ## -- Begin function partition
	.p2align	4, 0x90
_partition:                             ## @partition
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
	mov	edx, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 24], edx
	mov	edx, dword ptr [rbp - 16]
	add	edx, 1
	mov	dword ptr [rbp - 28], edx
LBB2_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_2 Depth 2
                                        ##     Child Loop BB2_7 Depth 2
	jmp	LBB2_2
LBB2_2:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
## %bb.3:                               ##   in Loop: Header=BB2_2 Depth=2
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	movsxd	rsi, dword ptr [rbp - 24]
	mov	eax, dword ptr [rdx + 4*rsi]
	cmp	eax, dword ptr [rbp - 20]
	mov	byte ptr [rbp - 33], cl ## 1-byte Spill
	jg	LBB2_5
## %bb.4:                               ##   in Loop: Header=BB2_2 Depth=2
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 16]
	setle	cl
	mov	byte ptr [rbp - 33], cl ## 1-byte Spill
LBB2_5:                                 ##   in Loop: Header=BB2_2 Depth=2
	mov	al, byte ptr [rbp - 33] ## 1-byte Reload
	test	al, 1
	jne	LBB2_2
## %bb.6:                               ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_7
LBB2_7:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	eax, dword ptr [rbp - 28]
	add	eax, -1
	mov	dword ptr [rbp - 28], eax
## %bb.8:                               ##   in Loop: Header=BB2_7 Depth=2
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 28]
	mov	edx, dword ptr [rax + 4*rcx]
	cmp	edx, dword ptr [rbp - 20]
	jg	LBB2_7
## %bb.9:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 28]
	jl	LBB2_11
## %bb.10:
	jmp	LBB2_12
LBB2_11:                                ##   in Loop: Header=BB2_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 24]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	dword ptr [rbp - 32], edx
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 28]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 24]
	mov	dword ptr [rax + 4*rcx], edx
	mov	edx, dword ptr [rbp - 32]
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 28]
	mov	dword ptr [rax + 4*rcx], edx
	jmp	LBB2_1
LBB2_12:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 12]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	dword ptr [rbp - 32], edx
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 28]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 12]
	mov	dword ptr [rax + 4*rcx], edx
	mov	edx, dword ptr [rbp - 32]
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 28]
	mov	dword ptr [rax + 4*rcx], edx
	mov	eax, dword ptr [rbp - 28]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @main.a
l_main.a:
	.long	7                       ## 0x7
	.long	12                      ## 0xc
	.long	1                       ## 0x1
	.long	4294967294              ## 0xfffffffe
	.long	0                       ## 0x0
	.long	15                      ## 0xf
	.long	4                       ## 0x4
	.long	11                      ## 0xb
	.long	9                       ## 0x9

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"\n\nUnsorted array is:\t"

L_.str.1:                               ## @.str.1
	.asciz	" %d "

L_.str.2:                               ## @.str.2
	.asciz	"\n\nSorted array is:  "


.subsections_via_symbols
