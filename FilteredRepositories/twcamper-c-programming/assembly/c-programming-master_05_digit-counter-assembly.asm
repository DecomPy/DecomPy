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
	sub	rsp, 32
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 8]
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	cmp	dword ptr [rbp - 8], 1
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	jge	LBB0_2
## %bb.1:
	imul	eax, dword ptr [rbp - 8], -1
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	jmp	LBB0_3
LBB0_2:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
LBB0_3:
	mov	eax, dword ptr [rbp - 28] ## 4-byte Reload
	mov	dword ptr [rbp - 12], eax
	cmp	dword ptr [rbp - 12], 10
	jge	LBB0_5
## %bb.4:
	mov	dword ptr [rbp - 16], 1
	jmp	LBB0_14
LBB0_5:
	cmp	dword ptr [rbp - 12], 100
	jge	LBB0_7
## %bb.6:
	mov	dword ptr [rbp - 16], 2
	jmp	LBB0_13
LBB0_7:
	cmp	dword ptr [rbp - 12], 1000
	jge	LBB0_9
## %bb.8:
	mov	dword ptr [rbp - 16], 3
	jmp	LBB0_12
LBB0_9:
	cmp	dword ptr [rbp - 12], 10000
	jge	LBB0_11
## %bb.10:
	mov	dword ptr [rbp - 16], 4
LBB0_11:
	jmp	LBB0_12
LBB0_12:
	jmp	LBB0_13
LBB0_13:
	jmp	LBB0_14
LBB0_14:
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 16]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	xor	edx, edx
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	mov	eax, edx
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter a number: "

L_.str.1:                               ## @.str.1
	.asciz	"%d"

L_.str.2:                               ## @.str.2
	.asciz	"The number %d has %d digits\n"


.subsections_via_symbols
