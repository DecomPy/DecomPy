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
	lea	rsi, [rip + L_.str]
	mov	qword ptr [rbp - 32], rsi
	mov	rdi, qword ptr [rbp - 32]
	lea	rsi, [rbp - 24]
	mov	edx, 10
	call	_strtol
	mov	qword ptr [rbp - 40], rax
	mov	rax, qword ptr [rbp - 24]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0
	je	LBB0_2
## %bb.1:
	mov	rax, qword ptr [rbp - 24]
	movsx	esi, byte ptr [rax]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
LBB0_2:
	mov	rsi, qword ptr [rbp - 32]
	mov	rdx, qword ptr [rbp - 40]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	lea	rdx, [rip + L_.str.3]
	mov	qword ptr [rbp - 32], rdx
	mov	rdi, qword ptr [rbp - 32]
	lea	rsi, [rbp - 24]
	mov	edx, 10
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
	call	_strtol
	mov	qword ptr [rbp - 40], rax
	mov	rax, qword ptr [rbp - 24]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0
	je	LBB0_4
## %bb.3:
	mov	rax, qword ptr [rbp - 24]
	movsx	esi, byte ptr [rax]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
LBB0_4:
	mov	rsi, qword ptr [rbp - 32]
	mov	rdx, qword ptr [rbp - 40]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 64
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"1252"

L_.str.1:                               ## @.str.1
	.asciz	"Caract\303\250re erronn\303\251 : %c\n"

L_.str.2:                               ## @.str.2
	.asciz	"Valeur convertie : %s -> %ld\n"

L_.str.3:                               ## @.str.3
	.asciz	"12m52"


.subsections_via_symbols
