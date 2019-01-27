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
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 8]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	mov	edi, dword ptr [rbp - 8]
	lea	rsi, [rbp - 12]
	lea	rdx, [rbp - 16]
	lea	rcx, [rbp - 20]
	lea	r8, [rbp - 24]
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	call	_pay_amount
	mov	esi, dword ptr [rbp - 12]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 16]
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 20]
	lea	rdi, [rip + L_.str.4]
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 24]
	lea	rdi, [rip + L_.str.5]
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	xor	esi, esi
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
	mov	eax, esi
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_pay_amount             ## -- Begin function pay_amount
	.p2align	4, 0x90
_pay_amount:                            ## @pay_amount
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	mov	qword ptr [rbp - 32], rcx
	mov	qword ptr [rbp - 40], r8
	mov	eax, dword ptr [rbp - 4]
	cdq
	mov	edi, 20
	idiv	edi
	mov	rcx, qword ptr [rbp - 16]
	mov	dword ptr [rcx], eax
	mov	eax, dword ptr [rbp - 4]
	cdq
	idiv	edi
	mov	dword ptr [rbp - 44], edx
	mov	edx, dword ptr [rbp - 44]
	mov	eax, edx
	cdq
	mov	edi, 10
	idiv	edi
	mov	rcx, qword ptr [rbp - 24]
	mov	dword ptr [rcx], eax
	mov	eax, dword ptr [rbp - 44]
	cdq
	idiv	edi
	mov	dword ptr [rbp - 44], edx
	mov	edx, dword ptr [rbp - 44]
	mov	eax, edx
	cdq
	mov	edi, 5
	idiv	edi
	mov	rcx, qword ptr [rbp - 32]
	mov	dword ptr [rcx], eax
	mov	eax, dword ptr [rbp - 44]
	cdq
	idiv	edi
	mov	dword ptr [rbp - 44], edx
	mov	edx, dword ptr [rbp - 44]
	mov	rcx, qword ptr [rbp - 40]
	mov	dword ptr [rcx], edx
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter a dollar amount: "

L_.str.1:                               ## @.str.1
	.asciz	"%d"

L_.str.2:                               ## @.str.2
	.asciz	"$20 bills: %d\n"

L_.str.3:                               ## @.str.3
	.asciz	"$10 bills: %d\n"

L_.str.4:                               ## @.str.4
	.asciz	"$5 bills: %d\n"

L_.str.5:                               ## @.str.5
	.asciz	"$1 bills: %d\n"


.subsections_via_symbols
