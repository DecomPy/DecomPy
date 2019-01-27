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
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	cmp	dword ptr [rbp - 8], 2
	jge	LBB0_2
## %bb.1:
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4], 1
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	jmp	LBB0_8
LBB0_2:
	xor	eax, eax
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rcx + 8]
	mov	edx, 10
	call	_strtol
	mov	edx, eax
	mov	dword ptr [rbp - 20], edx
	cmp	dword ptr [rbp - 20], 0
	jg	LBB0_4
## %bb.3:
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4], 1
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	jmp	LBB0_8
LBB0_4:
	xor	eax, eax
	mov	edi, eax
	call	_time
	mov	ecx, eax
	mov	edi, ecx
	call	_srand
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 20], 0
	jle	LBB0_7
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	call	_rand
	cdq
	mov	ecx, 100000
	idiv	ecx
	lea	rdi, [rip + L_.str.2]
	mov	esi, edx
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rbp - 20]
	add	ecx, -1
	mov	dword ptr [rbp - 20], ecx
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	jmp	LBB0_5
LBB0_7:
	mov	dword ptr [rbp - 4], 0
LBB0_8:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"need a number\n"

L_.str.1:                               ## @.str.1
	.asciz	"need a positive number\n"

L_.str.2:                               ## @.str.2
	.asciz	"%d\n"


.subsections_via_symbols
