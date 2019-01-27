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
	mov	dword ptr [rbp - 8], 1
	mov	dword ptr [rbp - 20], 0
	mov	rsi, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rsi + 8]
	call	_ft_split_whitespaces
	mov	qword ptr [rbp - 16], rax
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	cmp	qword ptr [rax + 8*rcx], 0
	je	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	rsi, qword ptr [rax + 8*rcx]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	edx, dword ptr [rbp - 20]
	add	edx, 1
	mov	dword ptr [rbp - 20], edx
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	jmp	LBB0_1
LBB0_3:
	mov	dword ptr [rbp - 20], 0
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rip + _ft_strcmp@GOTPCREL]
	mov	rdi, qword ptr [rbp - 16]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	call	_ft_advanced_sort_wordtab
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	cmp	qword ptr [rax + 8*rcx], 0
	je	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_4 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	rsi, qword ptr [rax + 8*rcx]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	edx, dword ptr [rbp - 20]
	add	edx, 1
	mov	dword ptr [rbp - 20], edx
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	jmp	LBB0_4
LBB0_6:
	xor	eax, eax
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%s\n"

L_.str.1:                               ## @.str.1
	.asciz	"\n===============================\n\n"


.subsections_via_symbols
