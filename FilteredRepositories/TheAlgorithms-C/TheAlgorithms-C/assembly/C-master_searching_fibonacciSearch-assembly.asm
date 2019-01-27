	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_fibMonaccianSearch     ## -- Begin function fibMonaccianSearch
	.p2align	4, 0x90
_fibMonaccianSearch:                    ## @fibMonaccianSearch
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	dword ptr [rbp - 20], esi
	mov	dword ptr [rbp - 24], edx
	mov	dword ptr [rbp - 28], 0
	mov	dword ptr [rbp - 32], 1
	mov	edx, dword ptr [rbp - 28]
	add	edx, dword ptr [rbp - 32]
	mov	dword ptr [rbp - 36], edx
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 36]
	cmp	eax, dword ptr [rbp - 24]
	jge	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 32]
	mov	dword ptr [rbp - 28], eax
	mov	eax, dword ptr [rbp - 36]
	mov	dword ptr [rbp - 32], eax
	mov	eax, dword ptr [rbp - 28]
	add	eax, dword ptr [rbp - 32]
	mov	dword ptr [rbp - 36], eax
	jmp	LBB0_1
LBB0_3:
	mov	dword ptr [rbp - 40], -1
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 36], 1
	jle	LBB0_15
## %bb.5:                               ##   in Loop: Header=BB0_4 Depth=1
	mov	eax, dword ptr [rbp - 40]
	add	eax, dword ptr [rbp - 28]
	mov	ecx, dword ptr [rbp - 24]
	sub	ecx, 1
	cmp	eax, ecx
	jge	LBB0_7
## %bb.6:                               ##   in Loop: Header=BB0_4 Depth=1
	mov	eax, dword ptr [rbp - 40]
	add	eax, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
	jmp	LBB0_8
LBB0_7:                                 ##   in Loop: Header=BB0_4 Depth=1
	mov	eax, dword ptr [rbp - 24]
	sub	eax, 1
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
LBB0_8:                                 ##   in Loop: Header=BB0_4 Depth=1
	mov	eax, dword ptr [rbp - 48] ## 4-byte Reload
	mov	dword ptr [rbp - 44], eax
	mov	rcx, qword ptr [rbp - 16]
	movsxd	rdx, dword ptr [rbp - 44]
	mov	eax, dword ptr [rcx + 4*rdx]
	cmp	eax, dword ptr [rbp - 20]
	jge	LBB0_10
## %bb.9:                               ##   in Loop: Header=BB0_4 Depth=1
	mov	eax, dword ptr [rbp - 32]
	mov	dword ptr [rbp - 36], eax
	mov	eax, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 32], eax
	mov	eax, dword ptr [rbp - 36]
	sub	eax, dword ptr [rbp - 32]
	mov	dword ptr [rbp - 28], eax
	mov	eax, dword ptr [rbp - 44]
	mov	dword ptr [rbp - 40], eax
	jmp	LBB0_14
LBB0_10:                                ##   in Loop: Header=BB0_4 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 44]
	mov	edx, dword ptr [rax + 4*rcx]
	cmp	edx, dword ptr [rbp - 20]
	jle	LBB0_12
## %bb.11:                              ##   in Loop: Header=BB0_4 Depth=1
	mov	eax, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 36], eax
	mov	eax, dword ptr [rbp - 32]
	sub	eax, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 32], eax
	mov	eax, dword ptr [rbp - 36]
	sub	eax, dword ptr [rbp - 32]
	mov	dword ptr [rbp - 28], eax
	jmp	LBB0_13
LBB0_12:
	mov	eax, dword ptr [rbp - 44]
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_19
LBB0_13:                                ##   in Loop: Header=BB0_4 Depth=1
	jmp	LBB0_14
LBB0_14:                                ##   in Loop: Header=BB0_4 Depth=1
	jmp	LBB0_4
LBB0_15:
	cmp	dword ptr [rbp - 32], 0
	je	LBB0_18
## %bb.16:
	mov	rax, qword ptr [rbp - 16]
	mov	ecx, dword ptr [rbp - 40]
	add	ecx, 1
	movsxd	rdx, ecx
	mov	ecx, dword ptr [rax + 4*rdx]
	cmp	ecx, dword ptr [rbp - 20]
	jne	LBB0_18
## %bb.17:
	mov	eax, dword ptr [rbp - 40]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_19
LBB0_18:
	mov	dword ptr [rbp - 4], -1
LBB0_19:
	mov	eax, dword ptr [rbp - 4]
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
	sub	rsp, 96
	lea	rax, [rbp - 64]
	lea	rcx, [rip + l_main.arr]
	mov	edx, 44
                                        ## kill: def $rdx killed $edx
	mov	rsi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	dword ptr [rbp - 68], 0
	mov	rsi, rax
	mov	rdi, rsi
	mov	rsi, rcx
	mov	qword ptr [rbp - 88], rax ## 8-byte Spill
	call	_memcpy
	mov	dword ptr [rbp - 72], 11
	mov	dword ptr [rbp - 76], 85
	mov	esi, dword ptr [rbp - 76]
	mov	edx, dword ptr [rbp - 72]
	mov	rdi, qword ptr [rbp - 88] ## 8-byte Reload
	call	_fibMonaccianSearch
	lea	rdi, [rip + L_.str]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdi, qword ptr [rbp - 8]
	cmp	rcx, rdi
	mov	dword ptr [rbp - 92], eax ## 4-byte Spill
	jne	LBB1_2
## %bb.1:
	xor	eax, eax
	add	rsp, 96
	pop	rbp
	ret
LBB1_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @main.arr
l_main.arr:
	.long	10                      ## 0xa
	.long	22                      ## 0x16
	.long	35                      ## 0x23
	.long	40                      ## 0x28
	.long	45                      ## 0x2d
	.long	50                      ## 0x32
	.long	80                      ## 0x50
	.long	82                      ## 0x52
	.long	85                      ## 0x55
	.long	90                      ## 0x5a
	.long	100                     ## 0x64

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Found at index: %d"


.subsections_via_symbols
