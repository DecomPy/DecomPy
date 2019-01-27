	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_cache_control          ## -- Begin function cache_control
	.p2align	4, 0x90
_cache_control:                         ## @cache_control
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	eax, 2147483648
	mov	ecx, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 16], rcx
	mov	dword ptr [rbp - 20], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 20], 32768
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 16]
	add	rax, 32
	mov	qword ptr [rbp - 16], rax
	mov	dword ptr [rbp - 24], ecx ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 32
	mov	dword ptr [rbp - 20], eax
	jmp	LBB0_1
LBB0_4:
	xor	eax, eax
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
