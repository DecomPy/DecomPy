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
	sub	rsp, 224
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 212], 0
	mov	dword ptr [rbp - 216], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 216], 16
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 216]
	cvtsi2ss	xmm0, eax
	movsxd	rcx, dword ptr [rbp - 216]
	movss	dword ptr [rbp + 4*rcx - 80], xmm0
	mov	eax, dword ptr [rbp - 216]
	cvtsi2ss	xmm0, eax
	movsxd	rcx, dword ptr [rbp - 216]
	movss	dword ptr [rbp + 4*rcx - 144], xmm0
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 216]
	add	eax, 1
	mov	dword ptr [rbp - 216], eax
	jmp	LBB0_1
LBB0_4:
	lea	rdx, [rbp - 208]
	lea	rsi, [rbp - 144]
	lea	rdi, [rbp - 80]
	mov	ecx, 16
	call	_p_add_f32
	mov	ecx, dword ptr [rbp - 212]
	mov	rdx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, rsi
	mov	dword ptr [rbp - 220], eax ## 4-byte Spill
	mov	dword ptr [rbp - 224], ecx ## 4-byte Spill
	jne	LBB0_6
## %bb.5:
	mov	eax, dword ptr [rbp - 224] ## 4-byte Reload
	add	rsp, 224
	pop	rbp
	ret
LBB0_6:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
