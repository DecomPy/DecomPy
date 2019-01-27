	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_square                 ## -- Begin function square
	.p2align	4, 0x90
_square:                                ## @square
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movsd	qword ptr [rbp - 8], xmm0
	movsd	xmm0, qword ptr [rbp - 8] ## xmm0 = mem[0],zero
	mulsd	xmm0, qword ptr [rbp - 8]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function test_disp
LCPI1_0:
	.quad	4613937818241073152     ## double 3
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_test_disp
	.p2align	4, 0x90
_test_disp:                             ## @test_disp
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	movsd	xmm0, qword ptr [rip + LCPI1_0] ## xmm0 = mem[0],zero
	mov	dword ptr [rbp - 4], eax ## 4-byte Spill
	call	_square
	movsd	xmm1, qword ptr [rip + LCPI1_0] ## xmm1 = mem[0],zero
	lea	rdi, [rip + L_.str.1]
	movsd	qword ptr [rbp - 16], xmm0 ## 8-byte Spill
	movaps	xmm0, xmm1
	movsd	xmm1, qword ptr [rbp - 16] ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	mov	al, 2
	call	_printf
	lea	rdi, [rip + L_.str]
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_test_toupper           ## -- Begin function test_toupper
	.p2align	4, 0x90
_test_toupper:                          ## @test_toupper
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 64
	lea	rdi, [rip + L_.str.2]
	call	_puts
	mov	ecx, 5
	mov	edx, ecx
	lea	rdi, [rbp - 5]
	lea	rsi, [rip + L_.str.3]
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	call	___strcpy_chk
	mov	dword ptr [rbp - 12], 0
	mov	ecx, dword ptr [rbp - 12]
	add	ecx, 1
	mov	dword ptr [rbp - 12], ecx
	movsxd	rdx, ecx
	movsx	ecx, byte ptr [rbp + rdx - 5]
	mov	r8d, 97
	cmp	r8d, ecx
	mov	qword ptr [rbp - 24], rax ## 8-byte Spill
	jg	LBB2_3
## %bb.1:
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	movsxd	rcx, eax
	movsx	eax, byte ptr [rbp + rcx - 5]
	cmp	eax, 122
	jg	LBB2_3
## %bb.2:
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	movsxd	rcx, eax
	movsx	eax, byte ptr [rbp + rcx - 5]
	sub	eax, 97
	add	eax, 65
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	jmp	LBB2_4
LBB2_3:
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	movsxd	rcx, eax
	movsx	eax, byte ptr [rbp + rcx - 5]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
LBB2_4:
	mov	eax, dword ptr [rbp - 28] ## 4-byte Reload
	mov	edi, eax
	call	_putchar
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	call	_puts
	mov	ecx, 5
	mov	edx, ecx
	lea	rdi, [rbp - 5]
	lea	rsi, [rip + L_.str.4]
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	call	___strcpy_chk
	mov	dword ptr [rbp - 12], 0
	mov	ecx, dword ptr [rbp - 12]
	add	ecx, 1
	mov	dword ptr [rbp - 12], ecx
	movsxd	rdx, ecx
	movsx	ecx, byte ptr [rbp + rdx - 5]
	mov	r8d, 97
	cmp	r8d, ecx
	mov	qword ptr [rbp - 48], rax ## 8-byte Spill
	jg	LBB2_7
## %bb.5:
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	movsxd	rcx, eax
	movsx	eax, byte ptr [rbp + rcx - 5]
	cmp	eax, 122
	jg	LBB2_7
## %bb.6:
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	movsxd	rcx, eax
	movsx	eax, byte ptr [rbp + rcx - 5]
	sub	eax, 97
	add	eax, 65
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	jmp	LBB2_8
LBB2_7:
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	movsxd	rcx, eax
	movsx	eax, byte ptr [rbp + rcx - 5]
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
LBB2_8:
	mov	eax, dword ptr [rbp - 52] ## 4-byte Reload
	mov	edi, eax
	call	_putchar
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
	call	_puts
	mov	dword ptr [rbp - 60], eax ## 4-byte Spill
	add	rsp, 64
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_test_nelms_macro       ## -- Begin function test_nelms_macro
	.p2align	4, 0x90
_test_nelms_macro:                      ## @test_nelms_macro
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 44048
	xor	eax, eax
	mov	ecx, 4234
	mov	edx, ecx
	mov	ecx, 25872
	mov	esi, ecx
	mov	ecx, 8936
	mov	edi, ecx
	mov	ecx, 4936
	mov	r8d, ecx
	mov	r9, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	r9, qword ptr [r9]
	mov	qword ptr [rbp - 8], r9
	lea	r9, [rbp - 4944]
	mov	qword ptr [rbp - 44008], rdi ## 8-byte Spill
	mov	rdi, r9
	mov	qword ptr [rbp - 44016], rsi ## 8-byte Spill
	mov	esi, eax
	mov	qword ptr [rbp - 44024], rdx ## 8-byte Spill
	mov	rdx, r8
	mov	dword ptr [rbp - 44028], eax ## 4-byte Spill
	call	_memset
	lea	rdx, [rbp - 13888]
	mov	rdi, rdx
	mov	esi, dword ptr [rbp - 44028] ## 4-byte Reload
	mov	rdx, qword ptr [rbp - 44008] ## 8-byte Reload
	call	_memset
	lea	rdx, [rbp - 39760]
	mov	rdi, rdx
	mov	esi, dword ptr [rbp - 44028] ## 4-byte Reload
	mov	rdx, qword ptr [rbp - 44016] ## 8-byte Reload
	call	_memset
	lea	rdx, [rbp - 44000]
	mov	rdi, rdx
	mov	esi, dword ptr [rbp - 44028] ## 4-byte Reload
	mov	rdx, qword ptr [rbp - 44024] ## 8-byte Reload
	call	_memset
	lea	rdi, [rip + L_.str.5]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.6]
	mov	esi, 1234
	mov	dword ptr [rbp - 44032], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.7]
	mov	esi, 2234
	mov	dword ptr [rbp - 44036], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.8]
	mov	esi, 3234
	mov	dword ptr [rbp - 44040], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.9]
	mov	esi, 4234
	mov	dword ptr [rbp - 44044], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rdx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdx, qword ptr [rdx]
	mov	rdi, qword ptr [rbp - 8]
	cmp	rdx, rdi
	mov	dword ptr [rbp - 44048], eax ## 4-byte Spill
	jne	LBB3_2
## %bb.1:
	add	rsp, 44048
	pop	rbp
	ret
LBB3_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI4_0:
	.quad	4616414798224031744     ## double 4.2000001668930054
LCPI4_1:
	.quad	4610461039328743129     ## double 1.728
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
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
	movsd	xmm0, qword ptr [rip + LCPI4_1] ## xmm0 = mem[0],zero
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], 2
	mov	eax, dword ptr [rbp - 8]
	add	eax, 3
	mov	ecx, dword ptr [rbp - 8]
	add	ecx, 3
	imul	eax, ecx
	mov	ecx, dword ptr [rbp - 8]
	add	ecx, 3
	imul	eax, ecx
	lea	rdi, [rip + L_.str.10]
	mov	esi, eax
	mov	al, 1
	call	_printf
	lea	rdi, [rip + L_.str.11]
	mov	esi, 3
	mov	edx, 1
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	movsd	xmm0, qword ptr [rip + LCPI4_0] ## xmm0 = mem[0],zero
	lea	rdi, [rip + L_.str.12]
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	call	_test_nelms_macro
	call	_test_toupper
	call	_test_disp
	xor	eax, eax
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"\n"

L_.str.1:                               ## @.str.1
	.asciz	"square(%g) = %g\n"

L_.str.2:                               ## @.str.2
	.space	1

L_.str.3:                               ## @.str.3
	.asciz	"abcd"

L_.str.4:                               ## @.str.4
	.asciz	"0123"

L_.str.5:                               ## @.str.5
	.asciz	"\nTesting Arrays\n"

L_.str.6:                               ## @.str.6
	.asciz	"%d int\n"

L_.str.7:                               ## @.str.7
	.asciz	"%d float\n"

L_.str.8:                               ## @.str.8
	.asciz	"%d double\n"

L_.str.9:                               ## @.str.9
	.asciz	"%d char\n"

L_.str.10:                              ## @.str.10
	.asciz	"%.3f, %d\n"

L_.str.11:                              ## @.str.11
	.asciz	"%d, %d\n"

L_.str.12:                              ## @.str.12
	.asciz	"%.3f\n"


.subsections_via_symbols
