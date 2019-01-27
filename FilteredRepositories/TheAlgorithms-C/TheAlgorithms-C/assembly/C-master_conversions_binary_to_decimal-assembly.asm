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
	mov	dword ptr [rbp - 12], 0
	mov	dword ptr [rbp - 16], 0
	mov	dword ptr [rbp - 20], 1
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 12]
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 12], 0
	jle	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	cdq
	mov	ecx, 10
	idiv	ecx
	mov	dword ptr [rbp - 8], edx
	mov	edx, dword ptr [rbp - 12]
	mov	eax, edx
	cdq
	idiv	ecx
	mov	dword ptr [rbp - 12], eax
	mov	eax, dword ptr [rbp - 8]
	imul	eax, dword ptr [rbp - 20]
	add	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 16], eax
	mov	eax, dword ptr [rbp - 20]
	shl	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB0_1
LBB0_3:
	mov	esi, dword ptr [rbp - 16]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	mov	eax, esi
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter any binary number= "

L_.str.1:                               ## @.str.1
	.asciz	"%d"

L_.str.2:                               ## @.str.2
	.asciz	"%d\n"


.subsections_via_symbols
