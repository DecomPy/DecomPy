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
	mov	rax, qword ptr [rip + _dt@GOTPCREL]
	mov	dword ptr [rbp - 4], 0
	mov	cl, byte ptr [rax + 4]
	and	cl, -2
	or	cl, 1
	mov	byte ptr [rax + 4], cl
	mov	cl, byte ptr [rax + 4]
	and	cl, 1
	movzx	esi, cl
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
	.comm	_dt,8,2                 ## @dt
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d \n"


.subsections_via_symbols
