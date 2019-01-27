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
	mov	dword ptr [rbp - 20], 0
	mov	rsi, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rsi + 16]
	call	_atoi
	mov	dword ptr [rbp - 20], eax
	mov	dword ptr [rbp - 24], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 24], 1000000
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_3
LBB0_3:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB0_1
LBB0_4:
	mov	esi, dword ptr [rbp - 20]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 24]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	eax, esi
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"--Processor %d says hello!--\n"


.subsections_via_symbols
