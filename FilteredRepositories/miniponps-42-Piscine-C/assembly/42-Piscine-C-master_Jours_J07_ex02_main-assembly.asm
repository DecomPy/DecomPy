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
	mov	rdi, qword ptr [rbp - 16]
	mov	esi, 2
	mov	edx, 6
	call	_ft_ultimate_range
	mov	rdi, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rdi]
	cmp	dword ptr [rdi], 0
	mov	qword ptr [rbp - 24], rax ## 8-byte Spill
	je	LBB0_2
## %bb.1:
	mov	rax, qword ptr [rbp - 16]
	mov	rax, qword ptr [rax]
	mov	esi, dword ptr [rax + 4]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
LBB0_2:
	xor	eax, eax
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d"


.subsections_via_symbols
