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
	lea	rax, [rip + _fps]
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rip + _str+8]
	movsx	esi, byte ptr [rax + 2]
	mov	rax, qword ptr [rip + _str+8]
	movsx	edx, byte ptr [rax + 2]
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rip + _fps+48]
	movsd	xmm0, qword ptr [rdi]   ## xmm0 = mem[0],zero
	mov	rdi, qword ptr [rip + _fps+48]
	movsd	xmm1, qword ptr [rdi]   ## xmm1 = mem[0],zero
	lea	rdi, [rip + L_.str.4]
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	al, 2
	call	_printf
	mov	rdi, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rdi + 48]
	movsd	xmm0, qword ptr [rdi]   ## xmm0 = mem[0],zero
	mov	rdi, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rdi + 48]
	movsd	xmm1, qword ptr [rdi]   ## xmm1 = mem[0],zero
	lea	rdi, [rip + L_.str.4]
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	mov	al, 2
	call	_printf
	xor	edx, edx
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	eax, edx
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"11111111"

L_.str.1:                               ## @.str.1
	.asciz	"22222222"

L_.str.2:                               ## @.str.2
	.asciz	"33333333"

	.section	__DATA,__data
	.globl	_str                    ## @str
	.p2align	4
_str:
	.quad	L_.str
	.quad	L_.str.1
	.quad	L_.str.2

	.globl	_a                      ## @a
	.p2align	3
_a:
	.quad	4607182418800017408     ## double 1

	.globl	_b                      ## @b
	.p2align	3
_b:
	.quad	4611686018427387904     ## double 2

	.globl	_c                      ## @c
	.p2align	3
_c:
	.quad	4613937818241073152     ## double 3

	.globl	_fps                    ## @fps
	.p2align	4
_fps:
	.quad	_a
	.quad	_b
	.quad	_c
	.quad	_a
	.quad	_b
	.quad	_c
	.quad	_a
	.quad	_b
	.quad	_c
	.quad	_a
	.quad	_b
	.quad	_c

	.section	__TEXT,__cstring,cstring_literals
L_.str.3:                               ## @.str.3
	.asciz	"%x %x\n"

L_.str.4:                               ## @.str.4
	.asciz	"%f %f\n"


.subsections_via_symbols
