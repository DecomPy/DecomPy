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
	lea	rdi, [rip + L_.str]
	lea	rsi, [rbp - 8]
	mov	al, 0
	call	_scanf
	mov	ecx, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 12], ecx
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 12], 1
	je	LBB0_6
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	cdq
	mov	ecx, 2
	idiv	ecx
	cmp	edx, 0
	jne	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	cdq
	mov	ecx, 2
	idiv	ecx
	mov	dword ptr [rbp - 12], eax
	mov	esi, dword ptr [rbp - 12]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	jmp	LBB0_5
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	imul	eax, dword ptr [rbp - 12], 3
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	mov	esi, dword ptr [rbp - 12]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_1
LBB0_6:
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
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
	.asciz	"%d->"

L_.str.2:                               ## @.str.2
	.asciz	"1"


.subsections_via_symbols
