	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_sumn_iter              ## -- Begin function sumn_iter
	.p2align	4, 0x90
_sumn_iter:                             ## @sumn_iter
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 12], 1
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 12]
	cmp	eax, dword ptr [rbp - 4]
	jg	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	add	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 8], eax
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	LBB0_1
LBB0_4:
	mov	eax, dword ptr [rbp - 8]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_sumn                   ## -- Begin function sumn
	.p2align	4, 0x90
_sumn:                                  ## @sumn
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 8], edi
	cmp	dword ptr [rbp - 8], 1
	jg	LBB1_2
## %bb.1:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	jmp	LBB1_3
LBB1_2:
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 8]
	sub	ecx, 1
	mov	edi, ecx
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	call	_sumn
	mov	ecx, dword ptr [rbp - 12] ## 4-byte Reload
	add	ecx, eax
	mov	dword ptr [rbp - 4], ecx
LBB1_3:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
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
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	edi, 3
	call	_sumn
	mov	dword ptr [rip + _g], eax
	mov	edi, 3
	call	_sumn_iter
	xor	edi, edi
	mov	dword ptr [rip + _h], eax
	mov	eax, edi
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_g                      ## @g
.zerofill __DATA,__common,_g,4,2
	.globl	_h                      ## @h
.zerofill __DATA,__common,_h,4,2

.subsections_via_symbols
