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
	sub	rsp, 48
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], 1252
	mov	dword ptr [rbp - 24], 0
	mov	esi, dword ptr [rbp - 20]
	mov	edx, dword ptr [rbp - 24]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rip + ___stdoutp@GOTPCREL]
	mov	rdi, qword ptr [rdi]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	call	_fflush
	mov	edx, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	mov	eax, edx
	cdq
	idiv	dword ptr [rbp - 24]
	lea	rdi, [rip + L_.str.1]
	mov	esi, eax
	mov	al, 0
	call	_printf
	xor	esi, esi
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	mov	eax, esi
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Calcul de : %d/%d\n"

L_.str.1:                               ## @.str.1
	.asciz	"R\303\251sultat : %d\n"


.subsections_via_symbols
