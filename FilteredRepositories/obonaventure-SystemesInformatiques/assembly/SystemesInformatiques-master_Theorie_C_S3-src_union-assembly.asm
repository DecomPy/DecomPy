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
	sub	rsp, 48
	mov	eax, 8
	mov	ecx, eax
	mov	rdx, qword ptr [rip + _u@GOTPCREL]
	mov	r8, qword ptr [rip + _s@GOTPCREL]
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [r8], 1252
	mov	byte ptr [r8 + 4], 65
	mov	dword ptr [rdx], 1252
	mov	byte ptr [rdx], 90
	lea	rdi, [rip + L_.str]
	mov	rsi, rcx
	mov	al, 0
	call	_printf
	mov	r9d, 4
	mov	esi, r9d
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rcx, qword ptr [rip + _u@GOTPCREL]
	mov	dword ptr [rcx], 1252
	movsx	esi, byte ptr [rcx]
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	xor	esi, esi
	mov	dword ptr [rbp - 24], 0
	mov	dword ptr [rbp - 20], 1252
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	mov	eax, esi
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.comm	_s,8,2                  ## @s
	.comm	_u,4,2                  ## @u
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"sizeof(s_t) : %ld\n"

L_.str.1:                               ## @.str.1
	.asciz	"sizeof(u_t) : %ld\n"

L_.str.2:                               ## @.str.2
	.asciz	"char : %c\n"


.subsections_via_symbols
