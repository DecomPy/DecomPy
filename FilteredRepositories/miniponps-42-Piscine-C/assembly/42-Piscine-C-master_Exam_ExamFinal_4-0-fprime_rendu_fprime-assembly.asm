	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ft_fprime              ## -- Begin function ft_fprime
	.p2align	4, 0x90
_ft_fprime:                             ## @ft_fprime
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 16], 2
	mov	rdi, qword ptr [rbp - 8]
	call	_atoi
	mov	dword ptr [rbp - 12], eax
	cmp	dword ptr [rbp - 12], 1
	jne	LBB0_2
## %bb.1:
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
LBB0_2:
	cmp	dword ptr [rbp - 12], 1
	jg	LBB0_4
## %bb.3:
	jmp	LBB0_11
LBB0_4:
	jmp	LBB0_5
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 16]
	cmp	eax, dword ptr [rbp - 12]
	jg	LBB0_11
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	mov	eax, dword ptr [rbp - 12]
	cdq
	idiv	dword ptr [rbp - 16]
	cmp	edx, 0
	jne	LBB0_10
## %bb.7:                               ##   in Loop: Header=BB0_5 Depth=1
	mov	esi, dword ptr [rbp - 16]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 12]
	cmp	esi, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	jne	LBB0_9
## %bb.8:
	jmp	LBB0_11
LBB0_9:                                 ##   in Loop: Header=BB0_5 Depth=1
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	eax, ecx
	cdq
	idiv	dword ptr [rbp - 16]
	mov	dword ptr [rbp - 12], eax
	mov	dword ptr [rbp - 16], 1
LBB0_10:                                ##   in Loop: Header=BB0_5 Depth=1
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB0_5
LBB0_11:
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
	cmp	dword ptr [rbp - 8], 2
	jne	LBB1_2
## %bb.1:
	mov	rax, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rax + 8]
	call	_ft_fprime
LBB1_2:
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"1"

L_.str.1:                               ## @.str.1
	.asciz	"%d"

L_.str.2:                               ## @.str.2
	.asciz	"*"

L_.str.3:                               ## @.str.3
	.asciz	"\n"


.subsections_via_symbols
