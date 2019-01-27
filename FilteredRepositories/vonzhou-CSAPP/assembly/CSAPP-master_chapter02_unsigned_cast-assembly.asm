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
	mov	word ptr [rbp - 6], -12345
	mov	ax, word ptr [rbp - 6]
	mov	word ptr [rbp - 8], ax
	movsx	esi, word ptr [rbp - 6]
	movzx	edx, word ptr [rbp - 8]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 12], -1
	mov	edx, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 16], edx
	mov	esi, dword ptr [rbp - 12]
	mov	edx, dword ptr [rbp - 16]
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	xor	edx, edx
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	mov	eax, edx
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"v=%d, uv=%u\n"

L_.str.1:                               ## @.str.1
	.asciz	"u=%u, tu=%d\n"


.subsections_via_symbols
