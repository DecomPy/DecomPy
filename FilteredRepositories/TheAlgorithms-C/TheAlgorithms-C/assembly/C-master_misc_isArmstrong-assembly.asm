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
	mov	dword ptr [rbp - 12], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 8]
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	mov	ecx, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 20], ecx
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 8], 0
	je	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 8]
	cdq
	mov	ecx, 10
	idiv	ecx
	mov	dword ptr [rbp - 16], edx
	mov	edx, dword ptr [rbp - 12]
	mov	esi, dword ptr [rbp - 16]
	imul	esi, dword ptr [rbp - 16]
	imul	esi, dword ptr [rbp - 16]
	add	edx, esi
	mov	dword ptr [rbp - 12], edx
	mov	edx, dword ptr [rbp - 8]
	mov	eax, edx
	cdq
	idiv	ecx
	mov	dword ptr [rbp - 8], eax
	jmp	LBB0_1
LBB0_3:
	mov	eax, dword ptr [rbp - 12]
	cmp	eax, dword ptr [rbp - 20]
	jne	LBB0_5
## %bb.4:
	mov	esi, dword ptr [rbp - 20]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	jmp	LBB0_6
LBB0_5:
	mov	esi, dword ptr [rbp - 20]
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
LBB0_6:
	xor	eax, eax
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter number: "

L_.str.1:                               ## @.str.1
	.asciz	"%d"

L_.str.2:                               ## @.str.2
	.asciz	"%d is an armstrong number!\n"

L_.str.3:                               ## @.str.3
	.asciz	"%d is not an armstrong number!\n"


.subsections_via_symbols
