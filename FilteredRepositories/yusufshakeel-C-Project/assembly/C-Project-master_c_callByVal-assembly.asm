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
	mov	dword ptr [rbp - 8], 10
	mov	dword ptr [rbp - 12], 20
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 12]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	call	_callByVal
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 12]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	xor	edx, edx
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	eax, edx
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_callByVal              ## -- Begin function callByVal
	.p2align	4, 0x90
_callByVal:                             ## @callByVal
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 12], esi
	mov	esi, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], esi
	mov	esi, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 8], esi
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Value before swap: x=%d\ty=%d\n"

L_.str.1:                               ## @.str.1
	.asciz	"Value after swap: x=%d\ty=%d\n"

L_.str.2:                               ## @.str.2
	.asciz	"From call by value\n"

L_.str.3:                               ## @.str.3
	.asciz	"x=%d\ty=%d\n"


.subsections_via_symbols
