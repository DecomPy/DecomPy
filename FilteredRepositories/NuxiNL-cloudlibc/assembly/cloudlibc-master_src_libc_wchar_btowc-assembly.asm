	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_btowc                  ## -- Begin function btowc
	.p2align	4, 0x90
_btowc:                                 ## @btowc
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 8], edi
	cmp	dword ptr [rbp - 8], 0
	jl	LBB0_2
## %bb.1:
	cmp	dword ptr [rbp - 8], 127
	jle	LBB0_3
LBB0_2:
	mov	dword ptr [rbp - 4], -1
	jmp	LBB0_4
LBB0_3:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
LBB0_4:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
