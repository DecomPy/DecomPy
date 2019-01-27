	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_PrintAll               ## -- Begin function PrintAll
	.p2align	4, 0x90
_PrintAll:                              ## @PrintAll
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 4], 4
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rip + _A@GOTPCREL]
	movsxd	rcx, dword ptr [rbp - 4]
	mov	esi, dword ptr [rax + 4*rcx]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_1
LBB0_4:
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 4], 4
	jge	LBB0_8
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	mov	rax, qword ptr [rip + _B@GOTPCREL]
	movsxd	rcx, dword ptr [rbp - 4]
	mov	esi, dword ptr [rax + 4*rcx]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
## %bb.7:                               ##   in Loop: Header=BB0_5 Depth=1
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_5
LBB0_8:
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.4]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
LBB0_9:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 4], 4
	jge	LBB0_12
## %bb.10:                              ##   in Loop: Header=BB0_9 Depth=1
	mov	rax, qword ptr [rip + _C@GOTPCREL]
	movsxd	rcx, dword ptr [rbp - 4]
	mov	esi, dword ptr [rax + 4*rcx]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
## %bb.11:                              ##   in Loop: Header=BB0_9 Depth=1
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_9
LBB0_12:
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.5]
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_Move                   ## -- Begin function Move
	.p2align	4, 0x90
_Move:                                  ## @Move
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 20], 4
	mov	byte ptr [rbp - 25], cl ## 1-byte Spill
	jge	LBB1_3
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	cmp	dword ptr [rax + 4*rcx], 0
	sete	dl
	mov	byte ptr [rbp - 25], dl ## 1-byte Spill
LBB1_3:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	al, byte ptr [rbp - 25] ## 1-byte Reload
	test	al, 1
	jne	LBB1_4
	jmp	LBB1_5
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB1_1
LBB1_5:
	jmp	LBB1_6
LBB1_6:                                 ## =>This Inner Loop Header: Depth=1
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 24], 4
	mov	byte ptr [rbp - 26], cl ## 1-byte Spill
	jge	LBB1_8
## %bb.7:                               ##   in Loop: Header=BB1_6 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 24]
	cmp	dword ptr [rax + 4*rcx], 0
	sete	dl
	mov	byte ptr [rbp - 26], dl ## 1-byte Spill
LBB1_8:                                 ##   in Loop: Header=BB1_6 Depth=1
	mov	al, byte ptr [rbp - 26] ## 1-byte Reload
	test	al, 1
	jne	LBB1_9
	jmp	LBB1_10
LBB1_9:                                 ##   in Loop: Header=BB1_6 Depth=1
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB1_6
LBB1_10:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	rax, qword ptr [rbp - 16]
	mov	esi, dword ptr [rbp - 24]
	sub	esi, 1
	movsxd	rcx, esi
	mov	dword ptr [rax + 4*rcx], edx
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	dword ptr [rax + 4*rcx], 0
	call	_PrintAll
	mov	rax, qword ptr [rbp - 16]
	mov	edx, dword ptr [rbp - 24]
	sub	edx, 1
	movsxd	rcx, edx
	mov	eax, dword ptr [rax + 4*rcx]
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_Hanoi                  ## -- Begin function Hanoi
	.p2align	4, 0x90
_Hanoi:                                 ## @Hanoi
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	mov	qword ptr [rbp - 32], rcx
	cmp	dword ptr [rbp - 4], 1
	jne	LBB2_2
## %bb.1:
	mov	rdi, qword ptr [rbp - 16]
	mov	rsi, qword ptr [rbp - 24]
	call	_Move
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	jmp	LBB2_3
LBB2_2:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 1
	mov	rsi, qword ptr [rbp - 16]
	mov	rdx, qword ptr [rbp - 32]
	mov	rcx, qword ptr [rbp - 24]
	mov	edi, eax
	call	_Hanoi
	mov	rdi, qword ptr [rbp - 16]
	mov	rsi, qword ptr [rbp - 24]
	call	_Move
	mov	r8d, dword ptr [rbp - 4]
	sub	r8d, 1
	mov	rsi, qword ptr [rbp - 32]
	mov	rdx, qword ptr [rbp - 24]
	mov	rcx, qword ptr [rbp - 16]
	mov	edi, r8d
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	call	_Hanoi
LBB2_3:
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
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
	sub	rsp, 32
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], 0
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 8], 4
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	mov	rax, qword ptr [rip + _A@GOTPCREL]
	mov	ecx, dword ptr [rbp - 8]
	add	ecx, 1
	movsxd	rdx, dword ptr [rbp - 8]
	mov	dword ptr [rax + 4*rdx], ecx
## %bb.3:                               ##   in Loop: Header=BB3_1 Depth=1
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	jmp	LBB3_1
LBB3_4:
	mov	dword ptr [rbp - 8], 0
LBB3_5:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 8], 4
	jge	LBB3_8
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	mov	rax, qword ptr [rip + _B@GOTPCREL]
	movsxd	rcx, dword ptr [rbp - 8]
	mov	dword ptr [rax + 4*rcx], 0
## %bb.7:                               ##   in Loop: Header=BB3_5 Depth=1
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	jmp	LBB3_5
LBB3_8:
	mov	dword ptr [rbp - 8], 0
LBB3_9:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 8], 4
	jge	LBB3_12
## %bb.10:                              ##   in Loop: Header=BB3_9 Depth=1
	mov	rax, qword ptr [rip + _C@GOTPCREL]
	movsxd	rcx, dword ptr [rbp - 8]
	mov	dword ptr [rax + 4*rcx], 0
## %bb.11:                              ##   in Loop: Header=BB3_9 Depth=1
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	jmp	LBB3_9
LBB3_12:
	lea	rdi, [rip + L_.str.6]
	mov	esi, 4
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.7]
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	call	_PrintAll
	lea	rdi, [rip + L_.str.8]
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rip + _A@GOTPCREL]
	mov	rdx, qword ptr [rip + _B@GOTPCREL]
	mov	rcx, qword ptr [rip + _C@GOTPCREL]
	mov	edi, 4
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	call	_Hanoi
	xor	eax, eax
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"A: "

L_.str.1:                               ## @.str.1
	.asciz	" %d "

	.comm	_A,16,4                 ## @A
L_.str.2:                               ## @.str.2
	.asciz	"\n"

L_.str.3:                               ## @.str.3
	.asciz	"B: "

	.comm	_B,16,4                 ## @B
L_.str.4:                               ## @.str.4
	.asciz	"C: "

	.comm	_C,16,4                 ## @C
L_.str.5:                               ## @.str.5
	.asciz	"------------------------------------------\n"

L_.str.6:                               ## @.str.6
	.asciz	"Solution of Tower of Hanoi Problem with %d Disks\n\n"

L_.str.7:                               ## @.str.7
	.asciz	"Starting state:\n"

L_.str.8:                               ## @.str.8
	.asciz	"\n\nSubsequent states:\n\n"


.subsections_via_symbols
