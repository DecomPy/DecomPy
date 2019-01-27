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
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.1]
	mov	edx, 8
	lea	rcx, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.3]
	mov	edx, 4294967168
	lea	rcx, [rip + L_.str.4]
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.5]
	mov	edx, 127
	lea	rcx, [rip + L_.str.4]
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.6]
	mov	edx, 255
	lea	rcx, [rip + L_.str.4]
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.7]
	mov	edx, 4294967168
	lea	rcx, [rip + L_.str.4]
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.8]
	mov	edx, 127
	lea	rcx, [rip + L_.str.4]
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.9]
	mov	edx, 6
	lea	rcx, [rip + L_.str.10]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.11]
	mov	edx, 4294934528
	lea	rcx, [rip + L_.str.4]
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.12]
	mov	edx, 32767
	lea	rcx, [rip + L_.str.4]
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.13]
	mov	edx, 65535
	lea	rcx, [rip + L_.str.4]
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.14]
	mov	edx, 2147483648
	lea	rcx, [rip + L_.str.4]
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.15]
	mov	edx, 2147483647
	lea	rcx, [rip + L_.str.4]
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.16]
	lea	rsi, [rip + L_.str.17]
	mov	edx, 4294967295
	lea	rcx, [rip + L_.str.4]
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.18]
	lea	rsi, [rip + L_.str.19]
	movabs	rdx, -9223372036854775808
	lea	rcx, [rip + L_.str.4]
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.18]
	lea	rsi, [rip + L_.str.20]
	movabs	rdx, 9223372036854775807
	lea	rcx, [rip + L_.str.4]
	mov	dword ptr [rbp - 60], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.16]
	lea	rsi, [rip + L_.str.21]
	mov	rdx, -1
	lea	rcx, [rip + L_.str.4]
	mov	dword ptr [rbp - 64], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.22]
	lea	rsi, [rip + L_.str.23]
	movabs	rdx, -9223372036854775808
	lea	rcx, [rip + L_.str.4]
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.22]
	lea	rsi, [rip + L_.str.24]
	movabs	rdx, 9223372036854775807
	lea	rcx, [rip + L_.str.4]
	mov	dword ptr [rbp - 72], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.25]
	lea	rsi, [rip + L_.str.26]
	mov	rdx, -1
	lea	rcx, [rip + L_.str.4]
	mov	dword ptr [rbp - 76], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	xor	r8d, r8d
	mov	dword ptr [rbp - 80], eax ## 4-byte Spill
	mov	eax, r8d
	add	rsp, 80
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%-20s = %d %s\n"

L_.str.1:                               ## @.str.1
	.asciz	"CHAR_BIT"

L_.str.2:                               ## @.str.2
	.asciz	"bits"

L_.str.3:                               ## @.str.3
	.asciz	"SCHAR_MIN"

L_.str.4:                               ## @.str.4
	.asciz	"val"

L_.str.5:                               ## @.str.5
	.asciz	"SCHAR_MAX"

L_.str.6:                               ## @.str.6
	.asciz	"UCHAR_MAX"

L_.str.7:                               ## @.str.7
	.asciz	"CHAR_MIN"

L_.str.8:                               ## @.str.8
	.asciz	"CHAR_MAX"

L_.str.9:                               ## @.str.9
	.asciz	"MB_LEN_MAX"

L_.str.10:                              ## @.str.10
	.asciz	"bytes"

L_.str.11:                              ## @.str.11
	.asciz	"SHRT_MIN"

L_.str.12:                              ## @.str.12
	.asciz	"SHRT_MAX"

L_.str.13:                              ## @.str.13
	.asciz	"USHRT_MAX"

L_.str.14:                              ## @.str.14
	.asciz	"INT_MIN"

L_.str.15:                              ## @.str.15
	.asciz	"INT_MAX"

L_.str.16:                              ## @.str.16
	.asciz	"%-20s = %u %s\n"

L_.str.17:                              ## @.str.17
	.asciz	"UINT_MAX"

L_.str.18:                              ## @.str.18
	.asciz	"%-20s = %ld %s\n"

L_.str.19:                              ## @.str.19
	.asciz	"LONG_MIN"

L_.str.20:                              ## @.str.20
	.asciz	"LONG_MAX"

L_.str.21:                              ## @.str.21
	.asciz	"ULONG_MAX"

L_.str.22:                              ## @.str.22
	.asciz	"%-20s = %lld %s\n"

L_.str.23:                              ## @.str.23
	.asciz	"LLONG_MIN"

L_.str.24:                              ## @.str.24
	.asciz	"LLONG_MAX"

L_.str.25:                              ## @.str.25
	.asciz	"%-20s = %llu %s\n"

L_.str.26:                              ## @.str.26
	.asciz	"ULLONG_MAX"


.subsections_via_symbols
