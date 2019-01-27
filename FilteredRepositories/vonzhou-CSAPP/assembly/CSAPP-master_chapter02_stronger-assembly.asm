	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_stronger               ## -- Begin function stronger
	.p2align	4, 0x90
_stronger:                              ## @stronger
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rdi, qword ptr [rbp - 8]
	call	_strlen
	mov	rdi, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 24], rax ## 8-byte Spill
	call	_strlen
	mov	rsi, qword ptr [rbp - 24] ## 8-byte Reload
	sub	rsi, rax
	cmp	rsi, 0
	seta	cl
	and	cl, 1
	movzx	eax, cl
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
	sub	rsp, 32
	mov	dword ptr [rbp - 4], 0
	lea	rax, [rip + L_.str]
	mov	qword ptr [rbp - 16], rax
	lea	rax, [rip + L_.str.1]
	mov	qword ptr [rbp - 24], rax
	mov	rdi, qword ptr [rbp - 16]
	mov	rsi, qword ptr [rbp - 24]
	call	_stronger
	lea	rdi, [rip + L_.str.2]
	mov	esi, eax
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
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"abc"

L_.str.1:                               ## @.str.1
	.asciz	"abcdef"

L_.str.2:                               ## @.str.2
	.asciz	"stringer = %d\n"


.subsections_via_symbols
