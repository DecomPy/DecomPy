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
	cmp	dword ptr [rbp - 8], 0
	jle	LBB0_5
## %bb.1:
	mov	dword ptr [rbp - 20], 0
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 16]
	mov	rax, qword ptr [rax]
	movsxd	rcx, dword ptr [rbp - 20]
	movsx	edx, byte ptr [rax + rcx]
	cmp	edx, 0
	je	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_2 Depth=1
	mov	rax, qword ptr [rbp - 16]
	mov	rax, qword ptr [rax]
	movsxd	rcx, dword ptr [rbp - 20]
	movsx	edi, byte ptr [rax + rcx]
	call	_ft_putchar
	mov	edi, dword ptr [rbp - 20]
	add	edi, 1
	mov	dword ptr [rbp - 20], edi
	jmp	LBB0_2
LBB0_4:
	jmp	LBB0_5
LBB0_5:
	xor	eax, eax
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
