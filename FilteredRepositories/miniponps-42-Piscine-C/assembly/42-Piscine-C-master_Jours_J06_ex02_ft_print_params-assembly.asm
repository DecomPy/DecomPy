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
	sub	rsp, 32
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	cmp	dword ptr [rbp - 8], 1
	jle	LBB0_8
## %bb.1:
	mov	dword ptr [rbp - 20], 1
LBB0_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_4 Depth 2
	mov	eax, dword ptr [rbp - 20]
	cmp	eax, dword ptr [rbp - 8]
	jge	LBB0_7
## %bb.3:                               ##   in Loop: Header=BB0_2 Depth=1
	mov	dword ptr [rbp - 24], 0
LBB0_4:                                 ##   Parent Loop BB0_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	rax, qword ptr [rax + 8*rcx]
	movsxd	rcx, dword ptr [rbp - 24]
	movsx	edx, byte ptr [rax + rcx]
	cmp	edx, 0
	je	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_4 Depth=2
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	rax, qword ptr [rax + 8*rcx]
	movsxd	rcx, dword ptr [rbp - 24]
	movsx	edi, byte ptr [rax + rcx]
	call	_ft_putchar
	mov	edi, dword ptr [rbp - 24]
	add	edi, 1
	mov	dword ptr [rbp - 24], edi
	jmp	LBB0_4
LBB0_6:                                 ##   in Loop: Header=BB0_2 Depth=1
	mov	edi, 10
	call	_ft_putchar
	mov	edi, dword ptr [rbp - 20]
	add	edi, 1
	mov	dword ptr [rbp - 20], edi
	jmp	LBB0_2
LBB0_7:
	jmp	LBB0_8
LBB0_8:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
