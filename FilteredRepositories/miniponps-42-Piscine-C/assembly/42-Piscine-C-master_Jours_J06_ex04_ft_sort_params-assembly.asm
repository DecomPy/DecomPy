	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ft_sort_ascii          ## -- Begin function ft_sort_ascii
	.p2align	4, 0x90
_ft_sort_ascii:                         ## @ft_sort_ascii
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 16], 1
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
	mov	eax, dword ptr [rbp - 16]
	mov	ecx, dword ptr [rbp - 12]
	sub	ecx, 1
	cmp	eax, ecx
	jge	LBB0_8
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	dword ptr [rbp - 20], 0
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	mov	rax, qword ptr [rax + 8*rcx]
	movsxd	rcx, dword ptr [rbp - 20]
	movsx	edx, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 16]
	add	esi, 1
	movsxd	rcx, esi
	mov	rax, qword ptr [rax + 8*rcx]
	movsxd	rcx, dword ptr [rbp - 20]
	movsx	esi, byte ptr [rax + rcx]
	cmp	edx, esi
	jne	LBB0_5
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB0_3
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	mov	rax, qword ptr [rax + 8*rcx]
	movsxd	rcx, dword ptr [rbp - 20]
	movsx	edx, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 16]
	add	esi, 1
	movsxd	rcx, esi
	mov	rax, qword ptr [rax + 8*rcx]
	movsxd	rcx, dword ptr [rbp - 20]
	movsx	esi, byte ptr [rax + rcx]
	cmp	edx, esi
	jle	LBB0_7
## %bb.6:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	mov	rax, qword ptr [rax + 8*rcx]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 16]
	add	edx, 1
	movsxd	rcx, edx
	mov	rax, qword ptr [rax + 8*rcx]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rsi, dword ptr [rbp - 16]
	mov	qword ptr [rcx + 8*rsi], rax
	mov	rax, qword ptr [rbp - 32]
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 16]
	add	edx, 1
	movsxd	rsi, edx
	mov	qword ptr [rcx + 8*rsi], rax
	mov	dword ptr [rbp - 16], 0
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB0_1
LBB0_8:
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_ft_print               ## -- Begin function ft_print
	.p2align	4, 0x90
_ft_print:                              ## @ft_print
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
	cmp	dword ptr [rbp - 12], 1
	jle	LBB1_8
## %bb.1:
	mov	dword ptr [rbp - 16], 1
LBB1_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_4 Depth 2
	mov	eax, dword ptr [rbp - 16]
	cmp	eax, dword ptr [rbp - 12]
	jge	LBB1_7
## %bb.3:                               ##   in Loop: Header=BB1_2 Depth=1
	mov	dword ptr [rbp - 20], 0
LBB1_4:                                 ##   Parent Loop BB1_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	mov	rax, qword ptr [rax + 8*rcx]
	movsxd	rcx, dword ptr [rbp - 20]
	movsx	edx, byte ptr [rax + rcx]
	cmp	edx, 0
	je	LBB1_6
## %bb.5:                               ##   in Loop: Header=BB1_4 Depth=2
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	mov	rax, qword ptr [rax + 8*rcx]
	movsxd	rcx, dword ptr [rbp - 20]
	movsx	edi, byte ptr [rax + rcx]
	call	_ft_putchar
	mov	edi, dword ptr [rbp - 20]
	add	edi, 1
	mov	dword ptr [rbp - 20], edi
	jmp	LBB1_4
LBB1_6:                                 ##   in Loop: Header=BB1_2 Depth=1
	mov	edi, 10
	call	_ft_putchar
	mov	edi, dword ptr [rbp - 16]
	add	edi, 1
	mov	dword ptr [rbp - 16], edi
	jmp	LBB1_2
LBB1_7:
	jmp	LBB1_8
LBB1_8:
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
	sub	rsp, 16
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	rdi, qword ptr [rbp - 16]
	mov	esi, dword ptr [rbp - 8]
	call	_ft_sort_ascii
	mov	rdi, qword ptr [rbp - 16]
	mov	esi, dword ptr [rbp - 8]
	call	_ft_print
	xor	eax, eax
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
