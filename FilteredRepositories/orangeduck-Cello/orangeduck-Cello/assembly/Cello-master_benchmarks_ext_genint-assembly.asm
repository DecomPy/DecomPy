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
	mov	dword ptr [rbp - 24], 500000
	cmp	dword ptr [rbp - 8], 1
	jle	LBB0_2
## %bb.1:
	mov	rax, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rax + 8]
	call	_atoi
	mov	dword ptr [rbp - 24], eax
LBB0_2:
	mov	edi, 11
	call	_srand
	mov	dword ptr [rbp - 20], 0
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 20]
	cmp	eax, dword ptr [rbp - 24]
	jge	LBB0_6
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=1
	call	_rand
	mov	ecx, dword ptr [rbp - 24]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	eax, ecx
	cdq
	mov	ecx, 4
	idiv	ecx
	mov	ecx, dword ptr [rbp - 28] ## 4-byte Reload
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	mov	eax, ecx
	cdq
	mov	esi, dword ptr [rbp - 32] ## 4-byte Reload
	idiv	esi
	imul	esi, edx, 271828183
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB0_3
LBB0_6:
	xor	eax, eax
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%u\n"


.subsections_via_symbols
