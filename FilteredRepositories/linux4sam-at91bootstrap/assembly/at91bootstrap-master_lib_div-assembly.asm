	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_division               ## -- Begin function division
	.p2align	4, 0x90
_division:                              ## @division
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 12], esi
	mov	qword ptr [rbp - 24], rdx
	mov	qword ptr [rbp - 32], rcx
	mov	dword ptr [rbp - 44], 0
	mov	byte ptr [rbp - 45], 0
	cmp	dword ptr [rbp - 12], 0
	jne	LBB0_2
## %bb.1:
	mov	dword ptr [rbp - 4], -1
	jmp	LBB0_20
LBB0_2:
	mov	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 12]
	jae	LBB0_4
## %bb.3:
	mov	rax, qword ptr [rbp - 24]
	mov	dword ptr [rax], 0
	mov	ecx, dword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 32]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 4], 0
	jmp	LBB0_20
LBB0_4:
	jmp	LBB0_5
LBB0_5:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_7 Depth 2
	mov	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 12]
	jb	LBB0_15
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	mov	dword ptr [rbp - 36], 0
	mov	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 40], eax
LBB0_7:                                 ##   Parent Loop BB0_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 40]
	jb	LBB0_12
## %bb.8:                               ##   in Loop: Header=BB0_7 Depth=2
	mov	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 40]
	cmp	eax, dword ptr [rbp - 40]
	jae	LBB0_10
## %bb.9:                               ##   in Loop: Header=BB0_5 Depth=1
	mov	ecx, dword ptr [rbp - 36]
                                        ## kill: def $cl killed $ecx
	mov	eax, 1
	shl	eax, cl
	add	eax, dword ptr [rbp - 44]
	mov	dword ptr [rbp - 44], eax
	mov	eax, dword ptr [rbp - 40]
	mov	edx, dword ptr [rbp - 8]
	sub	edx, eax
	mov	dword ptr [rbp - 8], edx
	mov	byte ptr [rbp - 45], 1
	jmp	LBB0_12
LBB0_10:                                ##   in Loop: Header=BB0_7 Depth=2
	jmp	LBB0_11
LBB0_11:                                ##   in Loop: Header=BB0_7 Depth=2
	mov	eax, dword ptr [rbp - 40]
	shl	eax, 1
	mov	dword ptr [rbp - 40], eax
	mov	eax, dword ptr [rbp - 36]
	add	eax, 1
	mov	dword ptr [rbp - 36], eax
	jmp	LBB0_7
LBB0_12:                                ##   in Loop: Header=BB0_5 Depth=1
	cmp	byte ptr [rbp - 45], 0
	je	LBB0_14
## %bb.13:                              ##   in Loop: Header=BB0_5 Depth=1
	jmp	LBB0_5
LBB0_14:                                ##   in Loop: Header=BB0_5 Depth=1
	mov	eax, dword ptr [rbp - 36]
	sub	eax, 1
	mov	ecx, eax
                                        ## kill: def $cl killed $ecx
	mov	eax, 1
	shl	eax, cl
	add	eax, dword ptr [rbp - 44]
	mov	dword ptr [rbp - 44], eax
	mov	eax, dword ptr [rbp - 40]
	shr	eax, 1
	mov	edx, dword ptr [rbp - 8]
	sub	edx, eax
	mov	dword ptr [rbp - 8], edx
	jmp	LBB0_5
LBB0_15:
	cmp	qword ptr [rbp - 24], 0
	je	LBB0_17
## %bb.16:
	mov	eax, dword ptr [rbp - 44]
	mov	rcx, qword ptr [rbp - 24]
	mov	dword ptr [rcx], eax
LBB0_17:
	cmp	qword ptr [rbp - 32], 0
	je	LBB0_19
## %bb.18:
	mov	eax, dword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 32]
	mov	dword ptr [rcx], eax
LBB0_19:
	mov	dword ptr [rbp - 4], 0
LBB0_20:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_div                    ## -- Begin function div
	.p2align	4, 0x90
_div:                                   ## @div
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 16], 0
	mov	dword ptr [rbp - 20], 0
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	lea	rdx, [rbp - 16]
	lea	rcx, [rbp - 20]
	call	_division
	mov	dword ptr [rbp - 24], eax
	cmp	dword ptr [rbp - 24], 0
	je	LBB1_2
## %bb.1:
	mov	dword ptr [rbp - 4], -1
	jmp	LBB1_3
LBB1_2:
	mov	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 4], eax
LBB1_3:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_mod                    ## -- Begin function mod
	.p2align	4, 0x90
_mod:                                   ## @mod
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 16], 0
	mov	dword ptr [rbp - 20], 0
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	lea	rdx, [rbp - 16]
	lea	rcx, [rbp - 20]
	call	_division
	mov	dword ptr [rbp - 24], eax
	cmp	dword ptr [rbp - 24], 0
	je	LBB2_2
## %bb.1:
	mov	dword ptr [rbp - 4], -1
	jmp	LBB2_3
LBB2_2:
	mov	eax, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 4], eax
LBB2_3:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
