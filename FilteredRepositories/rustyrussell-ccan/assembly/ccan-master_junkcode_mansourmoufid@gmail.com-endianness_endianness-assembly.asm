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
	mov	dword ptr [rbp - 4], 0
	movzx	eax, byte ptr [rip + _main.one]
	mov	ecx, 1
	cmp	ecx, eax
	jne	LBB0_2
## %bb.1:
	mov	dword ptr [rbp - 4], 0
	jmp	LBB0_3
LBB0_2:
	mov	dword ptr [rbp - 4], 1
LBB0_3:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	3               ## @main.one
_main.one:
	.quad	1                       ## 0x1


.subsections_via_symbols
