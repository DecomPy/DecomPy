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
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	edi, 3
	mov	esi, 97
	mov	edx, 98
	mov	ecx, 99
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
	call	_t
	xor	eax, eax
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_t                      ## -- Begin function t
	.p2align	4, 0x90
_t:                                     ## @t
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	al, cl
	mov	r8b, dl
	mov	r9b, sil
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], r9b
	mov	byte ptr [rbp - 6], r8b
	mov	byte ptr [rbp - 7], al
	cmp	dword ptr [rbp - 4], 1
	jne	LBB1_2
## %bb.1:
	movsx	esi, byte ptr [rbp - 5]
	movsx	edx, byte ptr [rbp - 7]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	jmp	LBB1_3
LBB1_2:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 1
	mov	cl, byte ptr [rbp - 5]
	mov	dl, byte ptr [rbp - 7]
	mov	edi, eax
	movsx	esi, cl
	movsx	edx, dl
	movsx	ecx, byte ptr [rbp - 6]
	call	_t
	mov	r8b, byte ptr [rbp - 5]
	mov	r9b, byte ptr [rbp - 6]
	mov	edi, 1
	movsx	esi, r8b
	movsx	edx, r9b
	movsx	ecx, byte ptr [rbp - 7]
	call	_t
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 1
	mov	r8b, byte ptr [rbp - 6]
	mov	r9b, byte ptr [rbp - 5]
	mov	edi, eax
	movsx	esi, r8b
	movsx	edx, r9b
	movsx	ecx, byte ptr [rbp - 7]
	call	_t
LBB1_3:
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Moves\n"

L_.str.1:                               ## @.str.1
	.asciz	"%c --> %c\n"


.subsections_via_symbols
