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
	cmp	dword ptr [rbp - 8], 3
	jge	LBB0_2
## %bb.1:
	mov	rax, qword ptr [rip + ___stderrp@GOTPCREL]
	mov	rdi, qword ptr [rax]
	lea	rsi, [rip + L_.str]
	mov	al, 0
	call	_fprintf
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
LBB0_2:
	mov	dword ptr [rbp - 20], 0
	mov	dword ptr [rbp - 24], 1
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 8]
	jge	LBB0_6
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 24]
	mov	rdi, qword ptr [rax + 8*rcx]
	call	_atoi
	add	eax, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 20], eax
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=1
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB0_3
LBB0_6:
	mov	esi, dword ptr [rbp - 20]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	xor	esi, esi
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	mov	eax, esi
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Use more than 1 argument\n"

L_.str.1:                               ## @.str.1
	.asciz	"Total: %d\n"


.subsections_via_symbols
