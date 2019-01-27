	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_g                      ## -- Begin function g
	.p2align	4, 0x90
_g:                                     ## @g
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 8], edi
	mov	esi, dword ptr [rbp - 8]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	cmp	dword ptr [rbp - 8], 1
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	je	LBB0_2
## %bb.1:
	cmp	dword ptr [rbp - 8], 2
	jne	LBB0_3
LBB0_2:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_6
LBB0_3:
	cmp	dword ptr [rbp - 8], 0
	jle	LBB0_5
## %bb.4:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 2
	mov	edi, eax
	call	_g
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_6
LBB0_5:
	mov	eax, dword ptr [rbp - 8]
	add	eax, 2
	mov	edi, eax
	call	_g
	mov	dword ptr [rbp - 4], eax
LBB0_6:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_f                      ## -- Begin function f
	.p2align	4, 0x90
_f:                                     ## @f
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 8], edi
	mov	esi, dword ptr [rbp - 8]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	cmp	dword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	jge	LBB1_2
## %bb.1:
	mov	eax, dword ptr [rbp - 8]
	add	eax, 5
	mov	edi, eax
	call	_g
	mov	dword ptr [rbp - 4], eax
	jmp	LBB1_3
LBB1_2:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 5
	mov	edi, eax
	call	_g
	mov	dword ptr [rbp - 4], eax
LBB1_3:
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
	mov	edi, 4294967287
	call	_f
	lea	rdi, [rip + L_.str.2]
	mov	esi, eax
	mov	al, 0
	call	_printf
	xor	esi, esi
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
	mov	eax, esi
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"g(%d)\n"

L_.str.1:                               ## @.str.1
	.asciz	"f(%d)\n"

L_.str.2:                               ## @.str.2
	.asciz	"f(-9) == %d\n"


.subsections_via_symbols
