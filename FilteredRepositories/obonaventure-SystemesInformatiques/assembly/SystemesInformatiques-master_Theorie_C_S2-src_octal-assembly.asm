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
	mov	dword ptr [rbp - 20], 65
	mov	dword ptr [rbp - 24], 53
	mov	edi, dword ptr [rbp - 20]
	cmp	edi, dword ptr [rbp - 24]
	jne	LBB0_2
## %bb.1:
	mov	esi, dword ptr [rbp - 20]
	mov	edx, dword ptr [rbp - 24]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	jmp	LBB0_3
LBB0_2:
	mov	esi, dword ptr [rbp - 20]
	mov	edx, dword ptr [rbp - 24]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
LBB0_3:
	xor	eax, eax
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d et %d sont \303\251gaux\n"

L_.str.1:                               ## @.str.1
	.asciz	"%d et %d sont diff\303\251rents\n"


.subsections_via_symbols
