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
	call	_a
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
	call	_b
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	call	_c
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	call	_d
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	call	_e
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	call	_f
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	call	_inc
	xor	ecx, ecx
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
