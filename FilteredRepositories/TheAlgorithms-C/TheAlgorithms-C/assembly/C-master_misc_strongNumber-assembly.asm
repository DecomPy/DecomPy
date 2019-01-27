	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_strng                  ## -- Begin function strng
	.p2align	4, 0x90
_strng:                                 ## @strng
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 12], 0
	mov	dword ptr [rbp - 24], 1
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
	cmp	dword ptr [rbp - 4], 0
	jle	LBB0_7
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	dword ptr [rbp - 24], 1
	mov	eax, dword ptr [rbp - 4]
	cdq
	mov	ecx, 10
	idiv	ecx
	mov	dword ptr [rbp - 16], edx
	mov	dword ptr [rbp - 20], 1
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	eax, dword ptr [rbp - 20]
	cmp	eax, dword ptr [rbp - 16]
	jg	LBB0_6
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	mov	eax, dword ptr [rbp - 24]
	imul	eax, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 24], eax
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=2
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB0_3
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 4]
	cdq
	mov	ecx, 10
	idiv	ecx
	mov	dword ptr [rbp - 4], eax
	mov	eax, dword ptr [rbp - 12]
	add	eax, dword ptr [rbp - 24]
	mov	dword ptr [rbp - 12], eax
	jmp	LBB0_1
LBB0_7:
	mov	eax, dword ptr [rbp - 12]
	cmp	eax, dword ptr [rbp - 8]
	jne	LBB0_9
## %bb.8:
	mov	esi, dword ptr [rbp - 8]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	jmp	LBB0_10
LBB0_9:
	mov	esi, dword ptr [rbp - 8]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
LBB0_10:
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
	sub	rsp, 16
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.3]
	lea	rsi, [rbp - 4]
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	mov	edi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	call	_strng
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d is a strong number"

L_.str.1:                               ## @.str.1
	.asciz	"%d is not a strong number"

L_.str.2:                               ## @.str.2
	.asciz	"Enter the number to check"

L_.str.3:                               ## @.str.3
	.asciz	"%d"


.subsections_via_symbols
