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
	sub	rsp, 48
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	al, 0
	call	_getpid
	mov	edi, eax
	call	_srandom
	mov	dword ptr [rbp - 20], 0
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
	cmp	dword ptr [rbp - 20], 10
	jge	LBB0_8
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	dword ptr [rbp - 24], 0
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	dword ptr [rbp - 24], 10
	jge	LBB0_6
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	call	_random
	mov	rcx, qword ptr [rip + _m@GOTPCREL]
	mov	edx, eax
	movsxd	rax, dword ptr [rbp - 20]
	imul	rax, rax, 40
	add	rcx, rax
	movsxd	rax, dword ptr [rbp - 24]
	mov	dword ptr [rcx + 4*rax], edx
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=2
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB0_3
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_7
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB0_1
LBB0_8:
	mov	dword ptr [rbp - 28], 0
	mov	dword ptr [rbp - 32], 0
LBB0_9:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_11 Depth 2
	cmp	dword ptr [rbp - 32], 10
	jge	LBB0_18
## %bb.10:                              ##   in Loop: Header=BB0_9 Depth=1
	mov	dword ptr [rbp - 36], 0
LBB0_11:                                ##   Parent Loop BB0_9 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	dword ptr [rbp - 36], 10
	jge	LBB0_16
## %bb.12:                              ##   in Loop: Header=BB0_11 Depth=2
	mov	rax, qword ptr [rip + _m@GOTPCREL]
	movsxd	rcx, dword ptr [rbp - 32]
	imul	rcx, rcx, 40
	add	rax, rcx
	movsxd	rcx, dword ptr [rbp - 36]
	cmp	dword ptr [rax + 4*rcx], 2100000000
	jle	LBB0_14
## %bb.13:
	mov	rax, qword ptr [rip + _m@GOTPCREL]
	movsxd	rcx, dword ptr [rbp - 32]
	imul	rcx, rcx, 40
	add	rax, rcx
	movsxd	rcx, dword ptr [rbp - 36]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	dword ptr [rbp - 28], edx
	jmp	LBB0_19
LBB0_14:                                ##   in Loop: Header=BB0_11 Depth=2
	jmp	LBB0_15
LBB0_15:                                ##   in Loop: Header=BB0_11 Depth=2
	mov	eax, dword ptr [rbp - 36]
	add	eax, 1
	mov	dword ptr [rbp - 36], eax
	jmp	LBB0_11
LBB0_16:                                ##   in Loop: Header=BB0_9 Depth=1
	jmp	LBB0_17
LBB0_17:                                ##   in Loop: Header=BB0_9 Depth=1
	mov	eax, dword ptr [rbp - 32]
	add	eax, 1
	mov	dword ptr [rbp - 32], eax
	jmp	LBB0_9
LBB0_18:
	mov	edx, dword ptr [rbp - 28]
	lea	rdi, [rip + L_.str]
	mov	esi, 2100000000
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	jmp	LBB0_20
LBB0_19:
	mov	edx, dword ptr [rbp - 28]
	lea	rdi, [rip + L_.str.1]
	mov	esi, 2100000000
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
LBB0_20:
	xor	eax, eax
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.comm	_m,400,4                ## @m
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"aucune valeur sup\303\251rieure \303\240 %d\n"

L_.str.1:                               ## @.str.1
	.asciz	"premi\303\250re valeur sup\303\251rieure \303\240 %d : %d\n"


.subsections_via_symbols
