	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_switch_prob            ## -- Begin function switch_prob
	.p2align	4, 0x90
_switch_prob:                           ## @switch_prob
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 12], esi
	mov	esi, dword ptr [rbp - 8]
	add	esi, -40
	mov	eax, esi
	sub	esi, 5
	mov	qword ptr [rbp - 24], rax ## 8-byte Spill
	mov	dword ptr [rbp - 28], esi ## 4-byte Spill
	ja	LBB0_6
## %bb.8:
	lea	rax, [rip + LJTI0_0]
	mov	rcx, qword ptr [rbp - 24] ## 8-byte Reload
	movsxd	rdx, dword ptr [rax + 4*rcx]
	add	rdx, rax
	jmp	rdx
LBB0_1:
	mov	eax, dword ptr [rbp - 4]
	shl	eax, 3
	mov	dword ptr [rbp - 12], eax
	jmp	LBB0_7
LBB0_2:
	mov	eax, dword ptr [rbp - 12]
	add	eax, 17
	mov	dword ptr [rbp - 12], eax
	jmp	LBB0_7
LBB0_3:
	mov	eax, dword ptr [rbp - 4]
	sar	eax, 3
	mov	dword ptr [rbp - 12], eax
	jmp	LBB0_7
LBB0_4:
	mov	eax, dword ptr [rbp - 4]
	imul	eax, dword ptr [rbp - 4]
	add	eax, 17
	mov	dword ptr [rbp - 12], eax
	jmp	LBB0_7
LBB0_5:
	imul	eax, dword ptr [rbp - 4], 49
	imul	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 12], eax
	jmp	LBB0_7
LBB0_6:
	mov	eax, dword ptr [rbp - 12]
	add	eax, 17
	mov	dword ptr [rbp - 12], eax
LBB0_7:
	mov	eax, dword ptr [rbp - 12]
	pop	rbp
	ret
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
.set L0_0_set_1, LBB0_1-LJTI0_0
.set L0_0_set_2, LBB0_2-LJTI0_0
.set L0_0_set_3, LBB0_3-LJTI0_0
.set L0_0_set_5, LBB0_5-LJTI0_0
.set L0_0_set_4, LBB0_4-LJTI0_0
LJTI0_0:
	.long	L0_0_set_1
	.long	L0_0_set_2
	.long	L0_0_set_1
	.long	L0_0_set_3
	.long	L0_0_set_5
	.long	L0_0_set_4
	.end_data_region
                                        ## -- End function

.subsections_via_symbols
