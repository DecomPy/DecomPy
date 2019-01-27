	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_countsort              ## -- Begin function countsort
	.p2align	4, 0x90
_countsort:                             ## @countsort
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 144
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	qword ptr [rbp - 104], rdi
	mov	dword ptr [rbp - 108], esi
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 32], xmm0
	movaps	xmmword ptr [rbp - 48], xmm0
	movaps	xmmword ptr [rbp - 64], xmm0
	movaps	xmmword ptr [rbp - 80], xmm0
	movaps	xmmword ptr [rbp - 96], xmm0
	mov	esi, dword ptr [rbp - 108]
	mov	eax, esi
	mov	rdi, rsp
	mov	qword ptr [rbp - 120], rdi
	lea	rdi, [4*rax + 15]
	and	rdi, -16
	mov	rcx, rsp
	sub	rcx, rdi
	mov	rsp, rcx
	mov	qword ptr [rbp - 128], rax
	mov	dword ptr [rbp - 112], 0
	mov	qword ptr [rbp - 136], rcx ## 8-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 112]
	cmp	eax, dword ptr [rbp - 108]
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 104]
	movsxd	rcx, dword ptr [rbp - 112]
	movsxd	rax, dword ptr [rax + 4*rcx]
	mov	edx, dword ptr [rbp + 4*rax - 96]
	add	edx, 1
	mov	dword ptr [rbp + 4*rax - 96], edx
	mov	rax, qword ptr [rbp - 104]
	movsxd	rcx, dword ptr [rbp - 112]
	mov	edx, dword ptr [rax + 4*rcx]
	movsxd	rax, dword ptr [rbp - 112]
	mov	rcx, qword ptr [rbp - 136] ## 8-byte Reload
	mov	dword ptr [rcx + 4*rax], edx
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 112]
	add	eax, 1
	mov	dword ptr [rbp - 112], eax
	jmp	LBB0_1
LBB0_4:
	mov	dword ptr [rbp - 112], 1
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 112], 20
	jge	LBB0_8
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	mov	eax, dword ptr [rbp - 112]
	sub	eax, 1
	movsxd	rcx, eax
	mov	eax, dword ptr [rbp + 4*rcx - 96]
	movsxd	rcx, dword ptr [rbp - 112]
	add	eax, dword ptr [rbp + 4*rcx - 96]
	mov	dword ptr [rbp + 4*rcx - 96], eax
## %bb.7:                               ##   in Loop: Header=BB0_5 Depth=1
	mov	eax, dword ptr [rbp - 112]
	add	eax, 1
	mov	dword ptr [rbp - 112], eax
	jmp	LBB0_5
LBB0_8:
	mov	eax, dword ptr [rbp - 108]
	sub	eax, 1
	mov	dword ptr [rbp - 112], eax
LBB0_9:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 112], 0
	jl	LBB0_12
## %bb.10:                              ##   in Loop: Header=BB0_9 Depth=1
	movsxd	rax, dword ptr [rbp - 112]
	mov	rcx, qword ptr [rbp - 136] ## 8-byte Reload
	mov	edx, dword ptr [rcx + 4*rax]
	mov	rax, qword ptr [rbp - 104]
	movsxd	rsi, dword ptr [rbp - 112]
	movsxd	rsi, dword ptr [rcx + 4*rsi]
	mov	edi, dword ptr [rbp + 4*rsi - 96]
	add	edi, -1
	mov	dword ptr [rbp + 4*rsi - 96], edi
	movsxd	rsi, edi
	mov	dword ptr [rax + 4*rsi], edx
## %bb.11:                              ##   in Loop: Header=BB0_9 Depth=1
	mov	eax, dword ptr [rbp - 112]
	add	eax, -1
	mov	dword ptr [rbp - 112], eax
	jmp	LBB0_9
LBB0_12:
	mov	rax, qword ptr [rbp - 120]
	mov	rsp, rax
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB0_14
## %bb.13:
	mov	rsp, rbp
	pop	rbp
	ret
LBB0_14:
	call	___stack_chk_fail
	ud2
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
	call	_countsort
	lea	rdi, [rbp - 208]
	mov	esi, dword ptr [rbp - 216]
	call	_displayoutcome
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB2_2
## %bb.1:
	xor	eax, eax
	add	rsp, 224
	pop	rbp
	ret
LBB2_2:
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
	.long	5                       ## 0x5
	.long	4                       ## 0x4
	.long	3                       ## 0x3
	.long	19                      ## 0x13
	.long	3                       ## 0x3
	.long	9                       ## 0x9
	.long	16                      ## 0x10
	.long	15                      ## 0xf
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	9                       ## 0x9
	.long	12                      ## 0xc
	.long	9                       ## 0x9
	.long	10                      ## 0xa
	.long	10                      ## 0xa
	.long	4                       ## 0x4
	.long	19                      ## 0x13
	.long	15                      ## 0xf
	.long	12                      ## 0xc
	.long	16                      ## 0x10
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	3                       ## 0x3
	.long	4                       ## 0x4
	.long	14                      ## 0xe
	.long	3                       ## 0x3
	.long	6                       ## 0x6
	.long	12                      ## 0xc
	.long	1                       ## 0x1
	.long	3                       ## 0x3
	.long	14                      ## 0xe
	.long	4                       ## 0x4
	.long	15                      ## 0xf
	.long	4                       ## 0x4
	.long	4                       ## 0x4
	.long	7                       ## 0x7
	.long	11                      ## 0xb
	.long	13                      ## 0xd
	.long	2                       ## 0x2
	.long	1                       ## 0x1
	.long	15                      ## 0xf
	.long	13                      ## 0xd
	.long	1                       ## 0x1
	.long	12                      ## 0xc
	.long	9                       ## 0x9
	.long	17                      ## 0x11
	.long	13                      ## 0xd
	.long	16                      ## 0x10


.subsections_via_symbols
