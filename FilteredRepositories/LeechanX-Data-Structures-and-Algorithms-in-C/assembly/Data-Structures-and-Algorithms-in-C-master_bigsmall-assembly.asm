	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_method1                ## -- Begin function method1
	.p2align	4, 0x90
_method1:                               ## @method1
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	dword ptr [rbp - 4], 1
	lea	rax, [rbp - 4]
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 16]
	cmp	byte ptr [rax], 0
	je	LBB0_2
## %bb.1:
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	jmp	LBB0_3
LBB0_2:
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
LBB0_3:
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_method2                ## -- Begin function method2
	.p2align	4, 0x90
_method2:                               ## @method2
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	word ptr [rbp - 8], 1
	cmp	byte ptr [rbp - 8], 0
	je	LBB1_2
## %bb.1:
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	jmp	LBB1_3
LBB1_2:
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
LBB1_3:
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_method3                ## -- Begin function method3
	.p2align	4, 0x90
_method3:                               ## @method3
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	word ptr [rbp - 2], -32768
	mov	word ptr [rbp - 4], 0
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	lea	rdi, [rbp - 5]
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	call	_gets
	movzx	ecx, word ptr [rbp - 4]
	movzx	edx, word ptr [rbp - 2]
	cmp	ecx, edx
	mov	qword ptr [rbp - 24], rax ## 8-byte Spill
	jl	LBB2_2
## %bb.1:
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	jmp	LBB2_3
LBB2_2:
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
LBB2_3:
	add	rsp, 32
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
	call	_method1
	call	_method2
	call	_method3
	xor	eax, eax
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"\345\260\217\347\253\257\n"

L_.str.1:                               ## @.str.1
	.asciz	"\345\244\247\347\253\257\n"

L_.str.2:                               ## @.str.2
	.asciz	"\350\276\223\345\205\2452\345\255\227\350\212\202\345\255\227\347\254\246\344\270\262\357\274\201\n"


.subsections_via_symbols
