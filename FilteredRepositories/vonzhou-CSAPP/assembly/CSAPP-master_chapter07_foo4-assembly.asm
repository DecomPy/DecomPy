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
	sub	rsp, 16
	mov	rax, qword ptr [rip + _x@GOTPCREL]
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rax], 15213
	mov	al, 0
	call	_f
	mov	rcx, qword ptr [rip + _x@GOTPCREL]
	mov	esi, dword ptr [rcx]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	xor	esi, esi
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
	mov	eax, esi
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.comm	_x,4,2                  ## @x
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"x=%d\n"


.subsections_via_symbols
