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
	mov	esi, dword ptr [rip + _i]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 8], 1
	mov	esi, dword ptr [rbp - 8]
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 8]
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 12], 2
	mov	esi, dword ptr [rbp - 12]
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 12]
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 16], 3
	mov	esi, dword ptr [rbp - 16]
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 16]
	lea	rdi, [rip + L_.str.4]
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], 4
	mov	esi, dword ptr [rbp - 20]
	lea	rdi, [rip + L_.str.4]
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 8]
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	xor	esi, esi
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
	mov	eax, esi
	add	rsp, 64
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_i                      ## @i
.zerofill __DATA,__common,_i,4,2
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Global %d\n"

L_.str.1:                               ## @.str.1
	.asciz	"Main %d\n"

L_.str.2:                               ## @.str.2
	.asciz	"First Block %d\n"

L_.str.3:                               ## @.str.3
	.asciz	"Second Block %d\n"

L_.str.4:                               ## @.str.4
	.asciz	"Innermost Block %d\n"


.subsections_via_symbols
