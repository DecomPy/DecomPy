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
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rip + _y], 0
	jle	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rip + _x]
	add	eax, dword ptr [rip + _y]
	mov	dword ptr [rip + _y], eax
	jmp	LBB0_1
LBB0_3:
	mov	eax, dword ptr [rip + _y]
	mov	ecx, dword ptr [rip + _x]
	add	ecx, 1
	cmp	eax, ecx
	je	LBB0_5
## %bb.4:
	call	_abort
LBB0_5:
	xor	edi, edi
	call	_exit
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_x                      ## @x
	.p2align	2
_x:
	.long	4294967295              ## 0xffffffff

	.globl	_y                      ## @y
	.p2align	2
_y:
	.long	1                       ## 0x1


.subsections_via_symbols
