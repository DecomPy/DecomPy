	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_print_comparison       ## -- Begin function print_comparison
	.p2align	4, 0x90
_print_comparison:                      ## @print_comparison
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
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 16]
	call	_str_cmp
	mov	dword ptr [rbp - 20], eax
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 16]
	cmp	dword ptr [rbp - 20], 0
	sete	cl
	and	cl, 1
	movzx	ecx, cl
	mov	r8d, dword ptr [rbp - 20]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_str_cmp                ## -- Begin function str_cmp
	.p2align	4, 0x90
_str_cmp:                               ## @str_cmp
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsx	ecx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 24]
	movsx	edx, byte ptr [rax]
	cmp	ecx, edx
	jne	LBB1_6
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	cmp	byte ptr [rax], 0
	jne	LBB1_4
## %bb.3:
	mov	dword ptr [rbp - 4], 0
	jmp	LBB1_7
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_5
LBB1_5:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	add	rax, 1
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 24]
	add	rax, 1
	mov	qword ptr [rbp - 24], rax
	jmp	LBB1_1
LBB1_6:
	mov	rax, qword ptr [rbp - 16]
	movsx	ecx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 24]
	movsx	edx, byte ptr [rax]
	sub	ecx, edx
	mov	dword ptr [rbp - 4], ecx
LBB1_7:
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
	sub	rsp, 48
	mov	dword ptr [rbp - 4], 0
	lea	rax, [rip + L_.str.1]
	mov	qword ptr [rbp - 16], rax
	lea	rax, [rip + L_.str.2]
	mov	qword ptr [rbp - 24], rax
	lea	rax, [rip + L_.str.3]
	mov	qword ptr [rbp - 32], rax
	lea	rax, [rip + L_.str.4]
	mov	qword ptr [rbp - 40], rax
	mov	rdi, qword ptr [rbp - 16]
	mov	rsi, qword ptr [rbp - 24]
	call	_print_comparison
	mov	rdi, qword ptr [rbp - 16]
	lea	rsi, [rip + L_.str.1]
	call	_print_comparison
	mov	rdi, qword ptr [rbp - 24]
	mov	rsi, qword ptr [rbp - 16]
	call	_print_comparison
	mov	rdi, qword ptr [rbp - 16]
	mov	rsi, qword ptr [rbp - 32]
	call	_print_comparison
	mov	rdi, qword ptr [rbp - 16]
	mov	rsi, qword ptr [rbp - 40]
	call	_print_comparison
	mov	rdi, qword ptr [rbp - 40]
	mov	rsi, qword ptr [rbp - 32]
	call	_print_comparison
	mov	rdi, qword ptr [rbp - 32]
	mov	rsi, qword ptr [rbp - 40]
	call	_print_comparison
	xor	eax, eax
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%s == %s? %d:(%d)\n"

L_.str.1:                               ## @.str.1
	.asciz	"abc"

L_.str.2:                               ## @.str.2
	.asciz	"ABC"

L_.str.3:                               ## @.str.3
	.asciz	"0123"

L_.str.4:                               ## @.str.4
	.asciz	"abcd"


.subsections_via_symbols
