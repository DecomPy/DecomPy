	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_fred                   ## -- Begin function fred
	.p2align	4, 0x90
_fred:                                  ## @fred
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	eax, edi
	sub	eax, 1
	mov	dword ptr [rbp - 8], edi ## 4-byte Spill
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	je	LBB0_1
	jmp	LBB0_6
LBB0_6:
	mov	eax, dword ptr [rbp - 8] ## 4-byte Reload
	sub	eax, 2
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	je	LBB0_2
	jmp	LBB0_7
LBB0_7:
	mov	eax, dword ptr [rbp - 8] ## 4-byte Reload
	sub	eax, 3
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	je	LBB0_3
	jmp	LBB0_4
LBB0_1:
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	jmp	LBB0_5
LBB0_2:
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	jmp	LBB0_4
LBB0_3:
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	jmp	LBB0_5
LBB0_4:
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
LBB0_5:
	add	rsp, 48
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
	mov	dword ptr [rbp - 4], 0
	mov	edi, 1
	call	_fred
	mov	edi, 2
	call	_fred
	mov	edi, 3
	call	_fred
	xor	eax, eax
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"1\n"

L_.str.1:                               ## @.str.1
	.asciz	"2\n"

L_.str.2:                               ## @.str.2
	.asciz	"3\n"

L_.str.3:                               ## @.str.3
	.asciz	"out\n"


.subsections_via_symbols
