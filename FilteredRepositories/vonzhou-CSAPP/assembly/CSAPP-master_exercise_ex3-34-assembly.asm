	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_rfun                   ## -- Begin function rfun
	.p2align	4, 0x90
_rfun:                                  ## @rfun
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
	jne	LBB0_2
## %bb.1:
	mov	dword ptr [rbp - 4], 0
	jmp	LBB0_3
LBB0_2:
	mov	eax, dword ptr [rbp - 8]
	shr	eax, 1
	mov	dword ptr [rbp - 12], eax
	mov	edi, dword ptr [rbp - 12]
	call	_rfun
	mov	dword ptr [rbp - 16], eax
	mov	eax, dword ptr [rbp - 16]
	mov	edi, dword ptr [rbp - 8]
	and	edi, 1
	add	eax, edi
	mov	dword ptr [rbp - 4], eax
LBB0_3:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 16
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
	mov	dword ptr [rbp - 8], 115
	mov	edi, dword ptr [rbp - 8]
	call	_rfun
	mov	dword ptr [rbp - 12], eax
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 12]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	xor	edx, edx
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	mov	eax, edx
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"0x%X: %d\n"


.subsections_via_symbols
