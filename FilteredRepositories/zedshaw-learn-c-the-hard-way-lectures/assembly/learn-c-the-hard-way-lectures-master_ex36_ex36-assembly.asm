	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_copy                   ## -- Begin function copy
	.p2align	4, 0x90
_copy:                                  ## @copy
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	dl, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	byte ptr [rax + rcx], dl
	movsx	esi, dl
	cmp	esi, 0
	je	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB0_1
LBB0_3:
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_safercopy              ## -- Begin function safercopy
	.p2align	4, 0x90
_safercopy:                             ## @safercopy
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], edx
	mov	qword ptr [rbp - 32], rcx
	mov	dword ptr [rbp - 36], 0
	mov	edx, dword ptr [rbp - 8]
	mov	edi, dword ptr [rbp - 20]
	sub	edi, 1
	cmp	edx, edi
	jle	LBB1_2
## %bb.1:
	mov	eax, dword ptr [rbp - 20]
	sub	eax, 1
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	jmp	LBB1_3
LBB1_2:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
LBB1_3:
	mov	eax, dword ptr [rbp - 44] ## 4-byte Reload
	mov	dword ptr [rbp - 40], eax
	cmp	dword ptr [rbp - 8], 0
	jl	LBB1_5
## %bb.4:
	cmp	dword ptr [rbp - 20], 0
	jg	LBB1_6
LBB1_5:
	mov	dword ptr [rbp - 4], -1
	jmp	LBB1_11
LBB1_6:
	mov	dword ptr [rbp - 36], 0
LBB1_7:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 36]
	cmp	eax, dword ptr [rbp - 40]
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 36]
	mov	dl, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 32]
	movsxd	rcx, dword ptr [rbp - 36]
	mov	byte ptr [rax + rcx], dl
## %bb.9:                               ##   in Loop: Header=BB1_7 Depth=1
	mov	eax, dword ptr [rbp - 36]
	add	eax, 1
	mov	dword ptr [rbp - 36], eax
	jmp	LBB1_7
LBB1_10:
	mov	rax, qword ptr [rbp - 32]
	mov	ecx, dword ptr [rbp - 20]
	sub	ecx, 1
	movsxd	rdx, ecx
	mov	byte ptr [rax + rdx], 0
	mov	ecx, dword ptr [rbp - 36]
	mov	dword ptr [rbp - 4], ecx
LBB1_11:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
