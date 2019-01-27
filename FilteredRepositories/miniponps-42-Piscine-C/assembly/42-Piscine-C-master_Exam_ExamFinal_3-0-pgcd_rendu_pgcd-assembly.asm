	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_pgcd                   ## -- Begin function pgcd
	.p2align	4, 0x90
_pgcd:                                  ## @pgcd
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 12], 1
	cmp	dword ptr [rbp - 4], 0
	jle	LBB0_2
## %bb.1:
	cmp	dword ptr [rbp - 8], 0
	jg	LBB0_3
LBB0_2:
	jmp	LBB0_12
LBB0_3:
	jmp	LBB0_4
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 12]
	cmp	eax, dword ptr [rbp - 4]
	mov	cl, 1
	mov	byte ptr [rbp - 17], cl ## 1-byte Spill
	jle	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_4 Depth=1
	mov	eax, dword ptr [rbp - 12]
	cmp	eax, dword ptr [rbp - 8]
	setle	cl
	mov	byte ptr [rbp - 17], cl ## 1-byte Spill
LBB0_6:                                 ##   in Loop: Header=BB0_4 Depth=1
	mov	al, byte ptr [rbp - 17] ## 1-byte Reload
	test	al, 1
	jne	LBB0_7
	jmp	LBB0_11
LBB0_7:                                 ##   in Loop: Header=BB0_4 Depth=1
	mov	eax, dword ptr [rbp - 4]
	cdq
	idiv	dword ptr [rbp - 12]
	cmp	edx, 0
	jne	LBB0_10
## %bb.8:                               ##   in Loop: Header=BB0_4 Depth=1
	mov	eax, dword ptr [rbp - 8]
	cdq
	idiv	dword ptr [rbp - 12]
	cmp	edx, 0
	jne	LBB0_10
## %bb.9:                               ##   in Loop: Header=BB0_4 Depth=1
	mov	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 16], eax
LBB0_10:                                ##   in Loop: Header=BB0_4 Depth=1
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	LBB0_4
LBB0_11:
	mov	esi, dword ptr [rbp - 16]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
LBB0_12:
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
	sub	rsp, 32
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	cmp	dword ptr [rbp - 8], 3
	jne	LBB1_2
## %bb.1:
	mov	rax, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rax + 8]
	call	_atoi
	mov	rdi, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rdi + 16]
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	call	_atoi
	mov	edi, dword ptr [rbp - 20] ## 4-byte Reload
	mov	esi, eax
	call	_pgcd
LBB1_2:
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d"

L_.str.1:                               ## @.str.1
	.asciz	"\n"


.subsections_via_symbols
