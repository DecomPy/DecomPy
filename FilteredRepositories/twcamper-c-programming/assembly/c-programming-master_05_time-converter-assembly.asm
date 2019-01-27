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
	mov	ax, word ptr [rip + L_main.meridian]
	mov	word ptr [rbp - 15], ax
	mov	cl, byte ptr [rip + L_main.meridian+2]
	mov	byte ptr [rbp - 13], cl
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 8]
	lea	rdx, [rbp - 12]
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	cmp	dword ptr [rbp - 8], 12
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	jl	LBB0_2
## %bb.1:
	mov	byte ptr [rbp - 15], 80
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 12
	mov	dword ptr [rbp - 8], eax
LBB0_2:
	cmp	dword ptr [rbp - 8], 0
	jne	LBB0_4
## %bb.3:
	mov	dword ptr [rbp - 8], 12
LBB0_4:
	lea	rcx, [rbp - 15]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 12]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	xor	edx, edx
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	eax, edx
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_main.meridian:                        ## @main.meridian
	.asciz	"AM"

L_.str:                                 ## @.str
	.asciz	"Enter a 24-hour time: "

L_.str.1:                               ## @.str.1
	.asciz	"%d:%d"

L_.str.2:                               ## @.str.2
	.asciz	"Equivalent 12-hour time: %d:%.2d %s\n"


.subsections_via_symbols
