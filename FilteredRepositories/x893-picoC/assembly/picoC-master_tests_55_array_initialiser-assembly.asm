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
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 52], 0
	mov	rax, qword ptr [rip + l_main.fred]
	mov	qword ptr [rbp - 20], rax
	mov	ecx, dword ptr [rip + l_main.fred+8]
	mov	dword ptr [rbp - 12], ecx
	mov	rax, qword ptr [rip + l_main.joe]
	mov	qword ptr [rbp - 48], rax
	mov	rax, qword ptr [rip + l_main.joe+8]
	mov	qword ptr [rbp - 40], rax
	mov	rax, qword ptr [rip + l_main.joe+16]
	mov	qword ptr [rbp - 32], rax
	mov	esi, dword ptr [rbp - 20]
	mov	edx, dword ptr [rbp - 16]
	mov	ecx, dword ptr [rbp - 12]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	movsd	xmm0, qword ptr [rbp - 48] ## xmm0 = mem[0],zero
	movsd	xmm1, qword ptr [rbp - 40] ## xmm1 = mem[0],zero
	movsd	xmm2, qword ptr [rbp - 32] ## xmm2 = mem[0],zero
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
	mov	al, 3
	call	_printf
	mov	rdi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdi, qword ptr [rdi]
	mov	r8, qword ptr [rbp - 8]
	cmp	rdi, r8
	mov	dword ptr [rbp - 60], eax ## 4-byte Spill
	jne	LBB0_2
## %bb.1:
	xor	eax, eax
	add	rsp, 64
	pop	rbp
	ret
LBB0_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	2               ## @main.fred
l_main.fred:
	.long	12                      ## 0xc
	.long	34                      ## 0x22
	.long	56                      ## 0x38

	.p2align	4               ## @main.joe
l_main.joe:
	.quad	4627279732137158246     ## double 23.399999999999999
	.quad	4633176632899246490     ## double 56.700000000000003
	.quad	4635963235168681984     ## double 89

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d %d %d\n"

L_.str.1:                               ## @.str.1
	.asciz	"%f %f %f\n"


.subsections_via_symbols
