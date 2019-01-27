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
	call	_fact
	mov	dword ptr [rbp - 12], eax
	mov	esi, dword ptr [rbp - 12]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	edi, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	call	_nonRecFact
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
	.globl	_fact                   ## -- Begin function fact
	.p2align	4, 0x90
_fact:                                  ## @fact
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 8], edi
	cmp	dword ptr [rbp - 8], 0
	je	LBB1_2
## %bb.1:
	cmp	dword ptr [rbp - 8], 1
	jne	LBB1_3
LBB1_2:
	mov	dword ptr [rbp - 4], 1
	jmp	LBB1_4
LBB1_3:
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 8]
	sub	ecx, 1
	mov	edi, ecx
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	call	_fact
	mov	ecx, dword ptr [rbp - 12] ## 4-byte Reload
	imul	ecx, eax
	mov	dword ptr [rbp - 4], ecx
LBB1_4:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_nonRecFact             ## -- Begin function nonRecFact
	.p2align	4, 0x90
_nonRecFact:                            ## @nonRecFact
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 12], 1
	mov	dword ptr [rbp - 8], 1
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 4]
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 8]
	imul	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 12], eax
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	jmp	LBB2_1
LBB2_4:
	mov	eax, dword ptr [rbp - 12]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter n:  "

L_.str.1:                               ## @.str.1
	.asciz	"%d"

L_.str.2:                               ## @.str.2
	.asciz	"Recursive fact: %d\n"

L_.str.3:                               ## @.str.3
	.asciz	"Non-Recursive fact: %d\n"


.subsections_via_symbols
