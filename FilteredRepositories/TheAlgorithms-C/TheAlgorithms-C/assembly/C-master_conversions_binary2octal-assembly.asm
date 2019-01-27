	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_three_digits           ## -- Begin function three_digits
	.p2align	4, 0x90
_three_digits:                          ## @three_digits
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 12], 0
	mov	dword ptr [rbp - 16], 1
	mov	dword ptr [rbp - 20], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 20], 3
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 4]
	cdq
	mov	ecx, 10
	idiv	ecx
	mov	dword ptr [rbp - 8], edx
	mov	edx, dword ptr [rbp - 8]
	imul	edx, dword ptr [rbp - 16]
	add	edx, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 12], edx
	imul	edx, dword ptr [rbp - 16], 10
	mov	dword ptr [rbp - 16], edx
	mov	edx, dword ptr [rbp - 4]
	mov	eax, edx
	cdq
	idiv	ecx
	mov	dword ptr [rbp - 4], eax
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB0_1
LBB0_4:
	mov	eax, dword ptr [rbp - 12]
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
	mov	dword ptr [rbp - 12], 0
	mov	dword ptr [rbp - 16], 1
	mov	dword ptr [rbp - 28], 0
	mov	dword ptr [rbp - 32], 1
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 8]
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
LBB1_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_6 Depth 2
	cmp	dword ptr [rbp - 8], 0
	jle	LBB1_9
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	cmp	dword ptr [rbp - 8], 111
	jle	LBB1_4
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	edi, dword ptr [rbp - 8]
	call	_three_digits
	mov	dword ptr [rbp - 24], eax
	jmp	LBB1_5
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 24], eax
LBB1_5:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 8]
	cdq
	mov	ecx, 1000
	idiv	ecx
	mov	dword ptr [rbp - 8], eax
	mov	dword ptr [rbp - 12], 0
	mov	dword ptr [rbp - 16], 1
LBB1_6:                                 ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	dword ptr [rbp - 24], 0
	jle	LBB1_8
## %bb.7:                               ##   in Loop: Header=BB1_6 Depth=2
	mov	eax, dword ptr [rbp - 24]
	cdq
	mov	ecx, 10
	idiv	ecx
	mov	dword ptr [rbp - 20], edx
	mov	edx, dword ptr [rbp - 24]
	mov	eax, edx
	cdq
	idiv	ecx
	mov	dword ptr [rbp - 24], eax
	mov	eax, dword ptr [rbp - 16]
	imul	eax, dword ptr [rbp - 20]
	add	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 12], eax
	mov	eax, dword ptr [rbp - 16]
	shl	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB1_6
LBB1_8:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	imul	eax, dword ptr [rbp - 32]
	add	eax, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 28], eax
	imul	eax, dword ptr [rbp - 32], 10
	mov	dword ptr [rbp - 32], eax
	jmp	LBB1_1
LBB1_9:
	mov	esi, dword ptr [rbp - 28]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	xor	esi, esi
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	mov	eax, esi
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter the binary no: "

L_.str.1:                               ## @.str.1
	.asciz	"%d"

L_.str.2:                               ## @.str.2
	.asciz	"\nOctal equivalent is: %d"


.subsections_via_symbols
