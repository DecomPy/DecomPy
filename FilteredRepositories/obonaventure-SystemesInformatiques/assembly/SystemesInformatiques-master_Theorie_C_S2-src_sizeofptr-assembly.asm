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
	sub	rsp, 80
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, 8
	mov	esi, ecx
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, 8
	mov	esi, ecx
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, 8
	mov	esi, ecx
	lea	rdi, [rip + L_.str.4]
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, 8
	mov	esi, ecx
	lea	rdi, [rip + L_.str.5]
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, 8
	mov	esi, ecx
	lea	rdi, [rip + L_.str.6]
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, 8
	mov	esi, ecx
	lea	rdi, [rip + L_.str.7]
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, 8
	mov	esi, ecx
	lea	rdi, [rip + L_.str.8]
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, 8
	mov	esi, ecx
	lea	rdi, [rip + L_.str.9]
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, 8
	mov	esi, ecx
	lea	rdi, [rip + L_.str.10]
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, 8
	mov	esi, ecx
	lea	rdi, [rip + L_.str.11]
	mov	dword ptr [rbp - 60], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, 8
	mov	esi, ecx
	lea	rdi, [rip + L_.str.12]
	mov	dword ptr [rbp - 64], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, 8
	mov	esi, ecx
	lea	rdi, [rip + L_.str.13]
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, 8
	mov	esi, ecx
	lea	rdi, [rip + L_.str.14]
	mov	dword ptr [rbp - 72], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 76], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 80
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Type\t\t\tTaille\n"

L_.str.1:                               ## @.str.1
	.asciz	"\n"

L_.str.2:                               ## @.str.2
	.asciz	"char *\t\t\t%ld octet(s)\n"

L_.str.3:                               ## @.str.3
	.asciz	"unsigned char *\t\t%ld octet(s)\n"

L_.str.4:                               ## @.str.4
	.asciz	"short *\t\t\t%ld octet(s)\n"

L_.str.5:                               ## @.str.5
	.asciz	"unsigned short *\t%ld octet(s)\n"

L_.str.6:                               ## @.str.6
	.asciz	"int *\t\t\t%ld octet(s)\n"

L_.str.7:                               ## @.str.7
	.asciz	"unsigned int *\t\t%ld octet(s)\n"

L_.str.8:                               ## @.str.8
	.asciz	"long *\t\t\t%ld octet(s)\n"

L_.str.9:                               ## @.str.9
	.asciz	"unsigned long *\t\t%ld octet(s)\n"

L_.str.10:                              ## @.str.10
	.asciz	"long long *\t\t%ld octet(s)\n"

L_.str.11:                              ## @.str.11
	.asciz	"unsigned long long *\t%ld octet(s)\n"

L_.str.12:                              ## @.str.12
	.asciz	"float *\t\t\t%ld octet(s)\n"

L_.str.13:                              ## @.str.13
	.asciz	"double *\t\t%ld octet(s)\n"

L_.str.14:                              ## @.str.14
	.asciz	"long double *\t\t%ld octet(s)\n"


.subsections_via_symbols
