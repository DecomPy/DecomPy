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
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 8]
	lea	rdx, [rbp - 12]
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	mov	ecx, dword ptr [rbp - 8]
	add	ecx, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 8], ecx
	mov	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 12], ecx
	mov	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 8], ecx
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 12]
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter value of x and y: "

L_.str.1:                               ## @.str.1
	.asciz	"%d%d"

L_.str.2:                               ## @.str.2
	.asciz	"x = %d y = %d\n"


.subsections_via_symbols
