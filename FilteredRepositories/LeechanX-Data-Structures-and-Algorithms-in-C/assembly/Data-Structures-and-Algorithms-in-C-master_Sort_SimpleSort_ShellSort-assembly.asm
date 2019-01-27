	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
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
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 16]
	cmp	eax, dword ptr [rbp - 12]
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	mov	esi, dword ptr [rax + 4*rcx]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB0_1
LBB0_4:
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_shellsort              ## -- Begin function shellsort
	.p2align	4, 0x90
_shellsort:                             ## @shellsort
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
	mov	dword ptr [rbp - 20], 2
LBB1_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_3 Depth 2
                                        ##       Child Loop BB1_5 Depth 3
	cmp	dword ptr [rbp - 20], 0
	jl	LBB1_13
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 20], ecx
	movsxd	rdx, eax
	lea	rsi, [rip + _hibbard]
	mov	eax, dword ptr [rsi + 4*rdx]
	mov	dword ptr [rbp - 16], eax
	mov	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 24], eax
LBB1_3:                                 ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB1_5 Depth 3
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 12]
	jge	LBB1_12
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=2
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 24]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	dword ptr [rbp - 32], edx
	mov	edx, dword ptr [rbp - 24]
	mov	dword ptr [rbp - 28], edx
LBB1_5:                                 ##   Parent Loop BB1_1 Depth=1
                                        ##     Parent Loop BB1_3 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 28]
	cmp	eax, dword ptr [rbp - 16]
	mov	byte ptr [rbp - 33], cl ## 1-byte Spill
	jl	LBB1_7
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=3
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 28]
	sub	ecx, dword ptr [rbp - 16]
	movsxd	rdx, ecx
	mov	ecx, dword ptr [rax + 4*rdx]
	cmp	ecx, dword ptr [rbp - 32]
	setg	sil
	mov	byte ptr [rbp - 33], sil ## 1-byte Spill
LBB1_7:                                 ##   in Loop: Header=BB1_5 Depth=3
	mov	al, byte ptr [rbp - 33] ## 1-byte Reload
	test	al, 1
	jne	LBB1_8
	jmp	LBB1_10
LBB1_8:                                 ##   in Loop: Header=BB1_5 Depth=3
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 28]
	sub	ecx, dword ptr [rbp - 16]
	movsxd	rdx, ecx
	mov	ecx, dword ptr [rax + 4*rdx]
	mov	rax, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rbp - 28]
	mov	dword ptr [rax + 4*rdx], ecx
## %bb.9:                               ##   in Loop: Header=BB1_5 Depth=3
	mov	eax, dword ptr [rbp - 16]
	mov	ecx, dword ptr [rbp - 28]
	sub	ecx, eax
	mov	dword ptr [rbp - 28], ecx
	jmp	LBB1_5
LBB1_10:                                ##   in Loop: Header=BB1_3 Depth=2
	mov	eax, dword ptr [rbp - 32]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rbp - 28]
	mov	dword ptr [rcx + 4*rdx], eax
## %bb.11:                              ##   in Loop: Header=BB1_3 Depth=2
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB1_3
LBB1_12:                                ##   in Loop: Header=BB1_1 Depth=1
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	call	_displayoutcome
	jmp	LBB1_1
LBB1_13:
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
	sub	rsp, 80
	lea	rax, [rbp - 64]
	lea	rcx, [rip + l_main.data]
	mov	edx, 52
                                        ## kill: def $rdx killed $edx
	mov	rsi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	dword ptr [rbp - 68], 0
	mov	rsi, rax
	mov	rdi, rsi
	mov	rsi, rcx
	mov	qword ptr [rbp - 80], rax ## 8-byte Spill
	call	_memcpy
	mov	dword ptr [rbp - 72], 13
	mov	esi, dword ptr [rbp - 72]
	mov	rdi, qword ptr [rbp - 80] ## 8-byte Reload
	call	_shellsort
	lea	rdi, [rbp - 64]
	mov	esi, dword ptr [rbp - 72]
	call	_displayoutcome
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB2_2
## %bb.1:
	xor	eax, eax
	add	rsp, 80
	pop	rbp
	ret
LBB2_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_hibbard                ## @hibbard
	.p2align	2
_hibbard:
	.long	1                       ## 0x1
	.long	3                       ## 0x3
	.long	5                       ## 0x5

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d "

L_.str.1:                               ## @.str.1
	.asciz	"\n"

	.section	__TEXT,__const
	.p2align	4               ## @main.data
l_main.data:
	.long	81                      ## 0x51
	.long	94                      ## 0x5e
	.long	11                      ## 0xb
	.long	96                      ## 0x60
	.long	12                      ## 0xc
	.long	35                      ## 0x23
	.long	17                      ## 0x11
	.long	95                      ## 0x5f
	.long	28                      ## 0x1c
	.long	58                      ## 0x3a
	.long	41                      ## 0x29
	.long	75                      ## 0x4b
	.long	15                      ## 0xf


.subsections_via_symbols
