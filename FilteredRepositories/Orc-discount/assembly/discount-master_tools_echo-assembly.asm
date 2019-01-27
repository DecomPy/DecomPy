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
	sub	rsp, 48
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], 1
	cmp	dword ptr [rbp - 8], 1
	jle	LBB0_3
## %bb.1:
	mov	rax, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rax + 8]
	lea	rsi, [rip + L_.str]
	call	_strcmp
	cmp	eax, 0
	jne	LBB0_3
## %bb.2:
	mov	rax, qword ptr [rbp - 16]
	add	rax, 8
	mov	qword ptr [rbp - 16], rax
	mov	ecx, dword ptr [rbp - 8]
	add	ecx, -1
	mov	dword ptr [rbp - 8], ecx
	mov	dword ptr [rbp - 20], 0
LBB0_3:
	mov	dword ptr [rbp - 24], 1
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 8]
	jge	LBB0_9
## %bb.5:                               ##   in Loop: Header=BB0_4 Depth=1
	cmp	dword ptr [rbp - 24], 1
	jle	LBB0_7
## %bb.6:                               ##   in Loop: Header=BB0_4 Depth=1
	mov	edi, 32
	call	_putchar
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
LBB0_7:                                 ##   in Loop: Header=BB0_4 Depth=1
	mov	rax, qword ptr [rip + ___stdoutp@GOTPCREL]
	mov	rcx, qword ptr [rbp - 16]
	movsxd	rdx, dword ptr [rbp - 24]
	mov	rdi, qword ptr [rcx + 8*rdx]
	mov	rsi, qword ptr [rax]
	call	_fputs
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
## %bb.8:                               ##   in Loop: Header=BB0_4 Depth=1
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB0_4
LBB0_9:
	cmp	dword ptr [rbp - 20], 0
	je	LBB0_11
## %bb.10:
	mov	edi, 10
	call	_putchar
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
LBB0_11:
	xor	edi, edi
	call	_exit
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"-n"


.subsections_via_symbols
