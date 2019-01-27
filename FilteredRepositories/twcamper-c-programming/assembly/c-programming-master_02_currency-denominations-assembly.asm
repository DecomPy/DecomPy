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
	sub	rsp, 64
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 8]
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	mov	ecx, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	mov	eax, ecx
	cdq
	mov	ecx, 20
	idiv	ecx
	mov	dword ptr [rbp - 16], eax
	mov	eax, dword ptr [rbp - 8]
	cdq
	idiv	ecx
	mov	dword ptr [rbp - 12], edx
	mov	ecx, dword ptr [rbp - 12]
	mov	eax, ecx
	cdq
	mov	ecx, 10
	idiv	ecx
	mov	dword ptr [rbp - 20], eax
	mov	eax, dword ptr [rbp - 12]
	cdq
	idiv	ecx
	mov	dword ptr [rbp - 12], edx
	mov	ecx, dword ptr [rbp - 12]
	mov	eax, ecx
	cdq
	mov	ecx, 5
	idiv	ecx
	mov	dword ptr [rbp - 24], eax
	mov	eax, dword ptr [rbp - 12]
	cdq
	idiv	ecx
	mov	dword ptr [rbp - 12], edx
	mov	ecx, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 28], ecx
	mov	esi, dword ptr [rbp - 16]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 20]
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 24]
	lea	rdi, [rip + L_.str.4]
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 28]
	lea	rdi, [rip + L_.str.5]
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 64
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
