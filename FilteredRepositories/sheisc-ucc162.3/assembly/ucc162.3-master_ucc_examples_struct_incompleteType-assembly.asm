	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
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
	sub	rsp, 32
	xor	eax, eax
	mov	esi, eax
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	ecx, 4
	mov	esi, ecx
	lea	rdi, [rip + L_.str]
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, 8
	mov	esi, ecx
	lea	rdi, [rip + L_.str]
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
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
	xor	eax, eax
	mov	edi, eax
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], 0
	call	_f
	mov	eax, 40
	mov	esi, eax
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d \n"

L_.str.1:                               ## @.str.1
	.asciz	"sizeof(struct A) = %d  \n"


.subsections_via_symbols
