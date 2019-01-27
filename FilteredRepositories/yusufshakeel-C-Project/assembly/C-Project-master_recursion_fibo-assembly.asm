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
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 8]
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	mov	edi, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	call	_fibo
	mov	dword ptr [rbp - 12], eax
	mov	esi, dword ptr [rbp - 12]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	edi, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	call	_nonRecFibo
	mov	dword ptr [rbp - 12], eax
	mov	esi, dword ptr [rbp - 12]
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	xor	esi, esi
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	eax, esi
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_fibo                   ## -- Begin function fibo
	.p2align	4, 0x90
_fibo:                                  ## @fibo
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 8], edi
	cmp	dword ptr [rbp - 8], 1
	jg	LBB1_2
## %bb.1:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	jmp	LBB1_3
LBB1_2:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 1
	mov	edi, eax
	call	_fibo
	mov	edi, dword ptr [rbp - 8]
	sub	edi, 2
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	call	_fibo
	mov	edi, dword ptr [rbp - 12] ## 4-byte Reload
	add	edi, eax
	mov	dword ptr [rbp - 4], edi
LBB1_3:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_nonRecFibo             ## -- Begin function nonRecFibo
	.p2align	4, 0x90
_nonRecFibo:                            ## @nonRecFibo
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 8], edi
	cmp	dword ptr [rbp - 8], 1
	jg	LBB2_2
## %bb.1:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	jmp	LBB2_8
LBB2_2:
	mov	dword ptr [rbp - 16], 0
	mov	dword ptr [rbp - 20], 1
	mov	dword ptr [rbp - 24], 0
	mov	dword ptr [rbp - 12], 2
LBB2_3:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 12]
	cmp	eax, dword ptr [rbp - 8]
	jg	LBB2_6
## %bb.4:                               ##   in Loop: Header=BB2_3 Depth=1
	mov	eax, dword ptr [rbp - 16]
	add	eax, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 24], eax
	mov	eax, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 16], eax
	mov	eax, dword ptr [rbp - 24]
	mov	dword ptr [rbp - 20], eax
## %bb.5:                               ##   in Loop: Header=BB2_3 Depth=1
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	LBB2_3
LBB2_6:
	jmp	LBB2_7
LBB2_7:
	mov	eax, dword ptr [rbp - 24]
	mov	dword ptr [rbp - 4], eax
LBB2_8:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter n: "

L_.str.1:                               ## @.str.1
	.asciz	"%d"

L_.str.2:                               ## @.str.2
	.asciz	"Recursive Fibo: %d\n"

L_.str.3:                               ## @.str.3
	.asciz	"Non-Recursive Fibo: %d\n"


.subsections_via_symbols
