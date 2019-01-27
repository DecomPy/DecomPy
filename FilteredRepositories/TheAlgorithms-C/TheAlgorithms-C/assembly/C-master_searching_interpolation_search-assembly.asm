	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_interpolationSearch    ## -- Begin function interpolationSearch
	.p2align	4, 0x90
_interpolationSearch:                   ## @interpolationSearch
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
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 28]
	cmp	eax, dword ptr [rbp - 20]
	jge	LBB0_5
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 28]
	mov	edx, dword ptr [rax + 4*rcx]
	cmp	edx, dword ptr [rbp - 24]
	jne	LBB0_4
## %bb.3:
	mov	eax, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_6
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	dword ptr [rbp - 28], eax
	jmp	LBB0_1
LBB0_5:
	mov	dword ptr [rbp - 4], -1
LBB0_6:
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
	sub	rsp, 112
	lea	rax, [rip + l_main.arr]
	mov	ecx, 60
	mov	edx, ecx
	mov	rsi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	dword ptr [rbp - 84], 0
	lea	rsi, [rbp - 80]
	mov	rdi, rsi
	mov	rsi, rax
	call	_memcpy
	mov	dword ptr [rbp - 92], 15
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 88]
	mov	dword ptr [rbp - 100], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	lea	rdi, [rbp - 80]
	mov	esi, dword ptr [rbp - 92]
	mov	edx, dword ptr [rbp - 88]
	mov	dword ptr [rbp - 104], eax ## 4-byte Spill
	call	_interpolationSearch
	mov	dword ptr [rbp - 96], eax
	cmp	dword ptr [rbp - 96], -1
	je	LBB1_2
## %bb.1:
	mov	eax, dword ptr [rbp - 96]
	add	eax, 1
	lea	rdi, [rip + L_.str.2]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 108], eax ## 4-byte Spill
	jmp	LBB1_3
LBB1_2:
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 112], eax ## 4-byte Spill
LBB1_3:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB1_5
## %bb.4:
	xor	eax, eax
	add	rsp, 112
	pop	rbp
	ret
LBB1_5:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @main.arr
l_main.arr:
	.long	10                      ## 0xa
	.long	12                      ## 0xc
	.long	13                      ## 0xd
	.long	16                      ## 0x10
	.long	18                      ## 0x12
	.long	19                      ## 0x13
	.long	20                      ## 0x14
	.long	21                      ## 0x15
	.long	22                      ## 0x16
	.long	23                      ## 0x17
	.long	24                      ## 0x18
	.long	33                      ## 0x21
	.long	35                      ## 0x23
	.long	42                      ## 0x2a
	.long	47                      ## 0x2f

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter the no, to be searched"

L_.str.1:                               ## @.str.1
	.asciz	"%d"

L_.str.2:                               ## @.str.2
	.asciz	"Element found at position %d"

L_.str.3:                               ## @.str.3
	.asciz	"Element not found."


.subsections_via_symbols
