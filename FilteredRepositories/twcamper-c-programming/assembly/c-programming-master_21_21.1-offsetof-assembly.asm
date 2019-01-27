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
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	esi, ecx
	mov	ecx, 16
	mov	edx, ecx
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	esi, ecx
	mov	ecx, 1
	mov	edx, ecx
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, 4
	mov	esi, ecx
	mov	ecx, 8
	mov	edx, ecx
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, 8
	mov	esi, ecx
	mov	ecx, 4
	mov	edx, ecx
	lea	rdi, [rip + L_.str.4]
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, 12
	mov	esi, ecx
	mov	ecx, 4
	mov	edx, ecx
	lea	rdi, [rip + L_.str.5]
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"        offset   size\n"

L_.str.1:                               ## @.str.1
	.asciz	"struct s:  %ld\t%ld\n"

L_.str.2:                               ## @.str.2
	.asciz	"s.a     :  %ld\t%ld\n"

L_.str.3:                               ## @.str.3
	.asciz	"s.b     :  %ld\t%ld\n"

L_.str.4:                               ## @.str.4
	.asciz	"s.b[1]  :  %ld\t%ld\n"

L_.str.5:                               ## @.str.5
	.asciz	"s.c     :  %ld\t%ld\n"


.subsections_via_symbols
