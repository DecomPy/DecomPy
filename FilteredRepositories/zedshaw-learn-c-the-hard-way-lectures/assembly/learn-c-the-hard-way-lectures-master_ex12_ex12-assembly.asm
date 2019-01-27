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
	sub	rsp, 112
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 8], rdx
	mov	dword ptr [rbp - 48], 0
	mov	dword ptr [rbp - 52], edi
	mov	qword ptr [rbp - 64], rsi
	mov	rdx, qword ptr [rip + l_main.areas]
	mov	qword ptr [rbp - 32], rdx
	mov	rdx, qword ptr [rip + l_main.areas+8]
	mov	qword ptr [rbp - 24], rdx
	mov	eax, dword ptr [rip + l_main.areas+16]
	mov	dword ptr [rbp - 16], eax
	mov	eax, dword ptr [rip + L_main.name]
	mov	dword ptr [rbp - 68], eax
	mov	rdx, qword ptr [rip + l_main.full_name]
	mov	qword ptr [rbp - 43], rdx
	mov	r8w, word ptr [rip + l_main.full_name+8]
	mov	word ptr [rbp - 35], r8w
	mov	r9b, byte ptr [rip + l_main.full_name+10]
	mov	byte ptr [rbp - 33], r9b
	lea	rdi, [rip + L_.str]
	mov	rsi, rcx
	mov	al, 0
	call	_printf
	mov	r10d, 20
	mov	esi, r10d
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 72], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	r10d, 5
	mov	esi, r10d
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 76], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 32]
	mov	edx, dword ptr [rbp - 28]
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 80], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	edx, 1
	mov	esi, edx
	lea	rdi, [rip + L_.str.4]
	mov	dword ptr [rbp - 84], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	edx, 4
	mov	esi, edx
	lea	rdi, [rip + L_.str.5]
	mov	dword ptr [rbp - 88], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	edx, 4
	mov	esi, edx
	lea	rdi, [rip + L_.str.6]
	mov	dword ptr [rbp - 92], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	edx, 11
	mov	esi, edx
	lea	rdi, [rip + L_.str.7]
	mov	dword ptr [rbp - 96], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	edx, 11
	mov	esi, edx
	lea	rdi, [rip + L_.str.6]
	mov	dword ptr [rbp - 100], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdx, [rbp - 43]
	lea	rsi, [rbp - 68]
	mov	byte ptr [rbp - 31], 88
	lea	rdi, [rip + L_.str.8]
	mov	dword ptr [rbp - 104], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	mov	dword ptr [rbp - 108], eax ## 4-byte Spill
	jne	LBB0_2
## %bb.1:
	xor	eax, eax
	add	rsp, 112
	pop	rbp
	ret
LBB0_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @main.areas
l_main.areas:
	.long	10                      ## 0xa
	.long	12                      ## 0xc
	.long	13                      ## 0xd
	.long	14                      ## 0xe
	.long	20                      ## 0x14

	.section	__TEXT,__cstring,cstring_literals
L_main.name:                            ## @main.name
	.asciz	"Zed"

	.section	__TEXT,__const
l_main.full_name:                       ## @main.full_name
	.ascii	"Zed A. Shaw"

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"The size of an int: %ld\n"

L_.str.1:                               ## @.str.1
	.asciz	"The size of areas (int[]): %ld\n"

L_.str.2:                               ## @.str.2
	.asciz	"The number of ints in areas: %ld\n"

L_.str.3:                               ## @.str.3
	.asciz	"The first area is %d, the 2nd %d.\n"

L_.str.4:                               ## @.str.4
	.asciz	"The size of a char: %ld\n"

L_.str.5:                               ## @.str.5
	.asciz	"The size of name (char[]): %ld\n"

L_.str.6:                               ## @.str.6
	.asciz	"The number of chars: %ld\n"

L_.str.7:                               ## @.str.7
	.asciz	"The size of full_name (char[]): %ld\n"

L_.str.8:                               ## @.str.8
	.asciz	"name=\"%s\" and full_name=\"%s\"\n"


.subsections_via_symbols
