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
	sub	rsp, 64
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], 0
	mov	dword ptr [rbp - 24], 0
	mov	dword ptr [rbp - 28], 0
	mov	dword ptr [rbp - 32], 1
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 32]
	cmp	eax, dword ptr [rbp - 8]
	jge	LBB0_13
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 32]
	mov	rdi, qword ptr [rax + 8*rcx]
	lea	rsi, [rip + L_.str]
	call	_strcmp
	cmp	eax, 0
	jne	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	dword ptr [rbp - 20], 1
	jmp	LBB0_11
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 32]
	mov	rdi, qword ptr [rax + 8*rcx]
	lea	rsi, [rip + L_.str.1]
	call	_strcmp
	cmp	eax, 0
	jne	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	dword ptr [rbp - 24], 1
	jmp	LBB0_10
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 32]
	mov	rdi, qword ptr [rax + 8*rcx]
	lea	rsi, [rip + L_.str.2]
	call	_strcmp
	cmp	eax, 0
	jne	LBB0_8
## %bb.7:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	dword ptr [rbp - 24], 1
	jmp	LBB0_9
LBB0_8:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rip + ___stderrp@GOTPCREL]
	mov	dword ptr [rbp - 28], 1
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 32]
	mov	rdx, qword ptr [rax + 8*rcx]
	lea	rsi, [rip + L_.str.3]
	mov	al, 0
	call	_fprintf
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
LBB0_9:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_10
LBB0_10:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_11
LBB0_11:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_12
LBB0_12:                                ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 32]
	add	eax, 1
	mov	dword ptr [rbp - 32], eax
	jmp	LBB0_1
LBB0_13:
	cmp	dword ptr [rbp - 28], 0
	je	LBB0_15
## %bb.14:
	mov	rax, qword ptr [rip + ___stderrp@GOTPCREL]
	mov	rdi, qword ptr [rax]
	lea	rsi, [rip + L_.str.4]
	mov	al, 0
	call	_fprintf
	mov	dword ptr [rbp - 4], 1
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	jmp	LBB0_21
LBB0_15:
	cmp	dword ptr [rbp - 20], 0
	je	LBB0_17
## %bb.16:
	lea	rdi, [rip + L_.str.5]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	jmp	LBB0_21
LBB0_17:
	lea	rdi, [rip + L_.str.6]
	mov	al, 0
	call	_printf
	cmp	dword ptr [rbp - 24], 0
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
	je	LBB0_19
## %bb.18:
	lea	rdi, [rip + L_.str.7]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	jmp	LBB0_20
LBB0_19:
	lea	rdi, [rip + L_.str.8]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
LBB0_20:
	mov	dword ptr [rbp - 4], 0
LBB0_21:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 64
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"--help"

L_.str.1:                               ## @.str.1
	.asciz	"-i"

L_.str.2:                               ## @.str.2
	.asciz	"--serve-icecream"

L_.str.3:                               ## @.str.3
	.asciz	"Unknown switch: '%s'\n"

L_.str.4:                               ## @.str.4
	.asciz	"Aborting...\n"

L_.str.5:                               ## @.str.5
	.asciz	"Usage: ./icecream OPTIONS...\n   -i, --serve-icecream  Not as exciting as it sounds\n\n"

L_.str.6:                               ## @.str.6
	.asciz	"Do you get icecream? "

L_.str.7:                               ## @.str.7
	.asciz	"YES!!!\n"

L_.str.8:                               ## @.str.8
	.asciz	"Sorry, try again next-time.\n"


.subsections_via_symbols
