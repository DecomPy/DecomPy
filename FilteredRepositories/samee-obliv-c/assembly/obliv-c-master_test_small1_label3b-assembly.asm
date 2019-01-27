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
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], 0
Ltmp0:                                  ## Block address taken
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_4 Depth 2
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	mov	rcx, qword ptr [rip + _main.array+8]
	mov	qword ptr [rbp - 16], rcx ## 8-byte Spill
	jmp	LBB0_4
Ltmp1:                                  ## Block address taken
LBB0_2:                                 ##   in Loop: Header=BB0_4 Depth=2
	mov	eax, dword ptr [rbp - 8]
	add	eax, 2
	mov	dword ptr [rbp - 8], eax
	mov	rcx, qword ptr [rip + _main.array+16]
	mov	qword ptr [rbp - 16], rcx ## 8-byte Spill
	jmp	LBB0_4
Ltmp2:                                  ## Block address taken
LBB0_3:
	mov	eax, dword ptr [rbp - 8]
	add	eax, 3
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 6
	pop	rbp
	ret
LBB0_4:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	rax, qword ptr [rbp - 16] ## 8-byte Reload
	jmp	rax
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.p2align	4               ## @main.array
_main.array:
	.quad	Ltmp0
	.quad	Ltmp1
	.quad	Ltmp2


.subsections_via_symbols
