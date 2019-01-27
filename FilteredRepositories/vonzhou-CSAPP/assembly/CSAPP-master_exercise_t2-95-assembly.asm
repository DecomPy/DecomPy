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
	mov	dword ptr [rbp - 20], -2147483648
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 20]
	cvtsi2ss	xmm0, eax
	movss	dword ptr [rbp - 8], xmm0
	movss	xmm0, dword ptr [rbp - 8] ## xmm0 = mem[0],zero,zero,zero
	call	_f2u
	mov	dword ptr [rbp - 12], eax
	mov	edi, dword ptr [rbp - 20]
	call	_float_i2f
	mov	dword ptr [rbp - 16], eax
	mov	eax, dword ptr [rbp - 12]
	cmp	eax, dword ptr [rbp - 16]
	je	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	esi, dword ptr [rbp - 16]
	mov	edx, dword ptr [rbp - 20]
	mov	ecx, dword ptr [rbp - 12]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
LBB0_3:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_4
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [rbp - 20], ecx
	cmp	eax, 2147483647
	jne	LBB0_1
## %bb.5:
	xor	eax, eax
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"BAD: 0x%X, 0x%X, 0x%X\n"


.subsections_via_symbols
