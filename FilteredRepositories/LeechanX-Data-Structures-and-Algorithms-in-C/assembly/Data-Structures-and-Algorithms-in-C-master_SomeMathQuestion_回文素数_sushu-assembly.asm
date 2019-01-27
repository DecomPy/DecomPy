	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_create_flag            ## -- Begin function create_flag
	.p2align	4, 0x90
_create_flag:                           ## @create_flag
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], 2
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_4 Depth 2
	cmp	dword ptr [rbp - 4], 50000
	jg	LBB0_10
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 4]
	lea	rcx, [rip + _flag]
	cmp	dword ptr [rcx + 4*rax], 0
	jne	LBB0_8
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 4]
	shl	eax, 1
	mov	dword ptr [rbp - 8], eax
LBB0_4:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	dword ptr [rbp - 8], 100000
	jge	LBB0_7
## %bb.5:                               ##   in Loop: Header=BB0_4 Depth=2
	movsxd	rax, dword ptr [rbp - 8]
	lea	rcx, [rip + _flag]
	mov	dword ptr [rcx + 4*rax], 1
## %bb.6:                               ##   in Loop: Header=BB0_4 Depth=2
	mov	eax, dword ptr [rbp - 4]
	add	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 8], eax
	jmp	LBB0_4
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_8
LBB0_8:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_9
LBB0_9:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_1
LBB0_10:
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_isPrim                 ## -- Begin function isPrim
	.p2align	4, 0x90
_isPrim:                                ## @isPrim
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	eax, edi
	lea	rcx, [rip + _flag]
	cmp	dword ptr [rcx + 4*rax], 0
	setne	dl
	xor	dl, -1
	and	dl, 1
	movzx	eax, dl
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.p2align	4               ## @flag
_flag:
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.space	399996


.subsections_via_symbols
