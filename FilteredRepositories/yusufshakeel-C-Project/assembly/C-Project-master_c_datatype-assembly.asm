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
	lea	rsi, [rbp - 5]
	lea	rdx, [rbp - 12]
	lea	rcx, [rbp - 16]
	lea	r8, [rbp - 24]
	mov	al, 0
	call	_scanf
	movsx	esi, byte ptr [rbp - 5]
	mov	edx, dword ptr [rbp - 12]
	movss	xmm0, dword ptr [rbp - 16] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	movsd	xmm1, qword ptr [rbp - 24] ## xmm1 = mem[0],zero
	lea	rdi, [rip + L_.str]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	al, 2
	call	_printf
	xor	edx, edx
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	mov	eax, edx
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%c %d %f %lf"


.subsections_via_symbols
