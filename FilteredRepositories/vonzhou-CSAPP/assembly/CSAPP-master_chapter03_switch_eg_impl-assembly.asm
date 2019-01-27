	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_switch_eg_impl         ## -- Begin function switch_eg_impl
	.p2align	4, 0x90
_switch_eg_impl:                        ## @switch_eg_impl
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 12], esi
	mov	esi, dword ptr [rbp - 12]
	sub	esi, 100
	mov	dword ptr [rbp - 16], esi
	cmp	dword ptr [rbp - 16], 6
	jbe	LBB0_2
## %bb.1:
	jmp	LBB0_3
LBB0_2:
	mov	eax, dword ptr [rbp - 16]
	mov	ecx, eax
	lea	rdx, [rip + _switch_eg_impl.jt]
	mov	rcx, qword ptr [rdx + 8*rcx]
	mov	qword ptr [rbp - 32], rcx ## 8-byte Spill
	jmp	LBB0_11
Ltmp0:                                  ## Block address taken
LBB0_3:
	mov	dword ptr [rbp - 20], 0
	jmp	LBB0_10
Ltmp1:                                  ## Block address taken
LBB0_4:
	mov	dword ptr [rbp - 20], 0
	jmp	LBB0_7
Ltmp2:                                  ## Block address taken
LBB0_5:
	imul	eax, dword ptr [rbp - 8], 13
	mov	dword ptr [rbp - 20], eax
	jmp	LBB0_9
Ltmp3:                                  ## Block address taken
LBB0_6:
	mov	eax, dword ptr [rbp - 8]
	add	eax, 10
	mov	dword ptr [rbp - 20], eax
LBB0_7:
	mov	eax, dword ptr [rbp - 20]
	add	eax, 11
	mov	dword ptr [rbp - 20], eax
	jmp	LBB0_9
Ltmp4:                                  ## Block address taken
LBB0_8:
	mov	eax, dword ptr [rbp - 8]
	imul	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 20], eax
LBB0_9:
	mov	eax, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 4], eax
LBB0_10:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
LBB0_11:
	mov	rax, qword ptr [rbp - 32] ## 8-byte Reload
	jmp	rax
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.p2align	4               ## @switch_eg_impl.jt
_switch_eg_impl.jt:
	.quad	Ltmp2
	.quad	Ltmp0
	.quad	Ltmp3
	.quad	Ltmp1
	.quad	Ltmp4
	.quad	Ltmp0
	.quad	Ltmp4


.subsections_via_symbols
