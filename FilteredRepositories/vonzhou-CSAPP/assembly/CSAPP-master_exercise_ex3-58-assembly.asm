	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_switch3                ## -- Begin function switch3
	.p2align	4, 0x90
_switch3:                               ## @switch3
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], edx
	mov	dword ptr [rbp - 24], 0
	mov	edx, dword ptr [rbp - 20]
	mov	esi, edx
	mov	rdi, rsi
	sub	rdi, 4
	mov	qword ptr [rbp - 32], rsi ## 8-byte Spill
	mov	qword ptr [rbp - 40], rdi ## 8-byte Spill
	ja	LBB0_6
## %bb.8:
	lea	rax, [rip + LJTI0_0]
	mov	rcx, qword ptr [rbp - 32] ## 8-byte Reload
	movsxd	rdx, dword ptr [rax + 4*rcx]
	add	rdx, rax
	jmp	rdx
LBB0_1:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 24], ecx
	mov	rax, qword ptr [rbp - 16]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], ecx
	jmp	LBB0_7
LBB0_2:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 16]
	add	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 24], ecx
	mov	ecx, dword ptr [rbp - 24]
	mov	rax, qword ptr [rbp - 16]
	mov	dword ptr [rax], ecx
	jmp	LBB0_7
LBB0_3:
	mov	rax, qword ptr [rbp - 16]
	mov	dword ptr [rax], 15
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 24], ecx
	jmp	LBB0_7
LBB0_4:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 16]
	mov	dword ptr [rax], ecx
LBB0_5:
	mov	dword ptr [rbp - 24], 17
LBB0_6:
	jmp	LBB0_7
LBB0_7:
	mov	eax, dword ptr [rbp - 24]
	pop	rbp
	ret
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
.set L0_0_set_1, LBB0_1-LJTI0_0
.set L0_0_set_2, LBB0_2-LJTI0_0
.set L0_0_set_3, LBB0_3-LJTI0_0
.set L0_0_set_4, LBB0_4-LJTI0_0
.set L0_0_set_5, LBB0_5-LJTI0_0
LJTI0_0:
	.long	L0_0_set_1
	.long	L0_0_set_2
	.long	L0_0_set_3
	.long	L0_0_set_4
	.long	L0_0_set_5
	.end_data_region
                                        ## -- End function

.subsections_via_symbols
