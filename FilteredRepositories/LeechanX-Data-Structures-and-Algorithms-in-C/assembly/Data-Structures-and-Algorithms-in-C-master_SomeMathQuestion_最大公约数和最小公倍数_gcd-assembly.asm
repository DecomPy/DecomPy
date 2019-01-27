	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_swap                   ## -- Begin function swap
	.p2align	4, 0x90
_swap:                                  ## @swap
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi]
	mov	dword ptr [rbp - 20], eax
	mov	rsi, qword ptr [rbp - 16]
	mov	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	dword ptr [rsi], eax
	mov	eax, dword ptr [rbp - 20]
	mov	rsi, qword ptr [rbp - 16]
	mov	dword ptr [rsi], eax
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_gcd                    ## -- Begin function gcd
	.p2align	4, 0x90
_gcd:                                   ## @gcd
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	cmp	esi, dword ptr [rbp - 8]
	jge	LBB1_2
## %bb.1:
	lea	rdi, [rbp - 4]
	lea	rsi, [rbp - 8]
	call	_swap
LBB1_2:
	jmp	LBB1_3
LBB1_3:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 4]
	cdq
	idiv	dword ptr [rbp - 8]
	mov	dword ptr [rbp - 12], edx
	cmp	edx, 0
	je	LBB1_5
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=1
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	mov	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 8], eax
	jmp	LBB1_3
LBB1_5:
	mov	eax, dword ptr [rbp - 8]
	add	rsp, 16
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
	sub	rsp, 48
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rbp - 20]
	lea	rdx, [rbp - 24]
	mov	al, 0
	call	_scanf
	cmp	eax, 0
	je	LBB2_3
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	edi, dword ptr [rbp - 20]
	mov	esi, dword ptr [rbp - 24]
	call	_gcd
	mov	dword ptr [rbp - 28], eax
	mov	eax, dword ptr [rbp - 20]
	imul	eax, dword ptr [rbp - 24]
	cdq
	idiv	dword ptr [rbp - 28]
	mov	dword ptr [rbp - 32], eax
	mov	esi, dword ptr [rbp - 28]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 32]
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	jmp	LBB2_1
LBB2_3:
	xor	eax, eax
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d%d"

L_.str.1:                               ## @.str.1
	.asciz	"\346\234\200\345\244\247\345\205\254\347\272\246\346\225\260=%d\n"

L_.str.2:                               ## @.str.2
	.asciz	"\346\234\200\345\260\217\345\205\254\345\200\215\346\225\260=%d\n"


.subsections_via_symbols
