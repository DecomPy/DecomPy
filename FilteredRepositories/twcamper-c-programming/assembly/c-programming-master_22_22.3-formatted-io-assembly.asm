	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function ex_4
LCPI0_0:
	.quad	4726851940577705984     ## double 105493234
LCPI0_1:
	.quad	4673906463543437086     ## double 29748.6607
LCPI0_2:
	.quad	4635592821136205178     ## double 83.736099999999993
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_ex_4
	.p2align	4, 0x90
_ex_4:                                  ## @ex_4
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	lea	rax, [rip + L_.str]
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rip + L_.str.1]
	call	_puts
	movsd	xmm0, qword ptr [rip + LCPI0_2] ## xmm0 = mem[0],zero
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	call	_puts
	movsd	xmm0, qword ptr [rip + LCPI0_1] ## xmm0 = mem[0],zero
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	call	_puts
	movsd	xmm0, qword ptr [rip + LCPI0_0] ## xmm0 = mem[0],zero
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_ex_5                   ## -- Begin function ex_5
	.p2align	4, 0x90
_ex_5:                                  ## @ex_5
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	lea	rdi, [rip + L_.str.3]
	mov	esi, 12
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.4]
	mov	esi, 12
	mov	dword ptr [rbp - 4], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.3]
	mov	esi, 12345
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.4]
	mov	esi, 12345
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_wp                     ## -- Begin function wp
	.p2align	4, 0x90
_wp:                                    ## @wp
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	cmp	edi, 1
	lea	rax, [rip + L_.str.5]
	lea	rcx, [rip + L_.str.6]
	cmove	rcx, rax
	mov	esi, dword ptr [rbp - 4]
	mov	rdi, rcx
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_ex_6                   ## -- Begin function ex_6
	.p2align	4, 0x90
_ex_6:                                  ## @ex_6
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	edi, 1
	call	_wp
	mov	edi, 2
	call	_wp
	xor	edi, edi
	call	_wp
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_ex_7                   ## -- Begin function ex_7
	.p2align	4, 0x90
_ex_7:                                  ## @ex_7
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 80
	lea	rax, [rip + L_.str.7]
	mov	qword ptr [rbp - 8], rax
	lea	rax, [rip + L_.str.8]
	mov	qword ptr [rbp - 16], rax
	lea	rax, [rip + L_.str.9]
	mov	qword ptr [rbp - 24], rax
	lea	rax, [rip + L_.str.10]
	mov	qword ptr [rbp - 32], rax
	lea	rax, [rip + L_.str.11]
	mov	qword ptr [rbp - 40], rax
	lea	rax, [rip + L_.str.12]
	mov	qword ptr [rbp - 48], rax
	mov	dword ptr [rbp - 52], 0
	mov	dword ptr [rbp - 56], 0
	mov	dword ptr [rbp - 60], 0
	xorps	xmm0, xmm0
	movss	dword ptr [rbp - 64], xmm0
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 40]
	lea	rdx, [rbp - 52]
	lea	rcx, [rbp - 64]
	lea	r8, [rbp - 56]
	mov	al, 0
	call	_sscanf
	mov	dword ptr [rbp - 60], eax
	mov	rdi, qword ptr [rbp - 48]
	mov	esi, dword ptr [rbp - 52]
	movss	xmm0, dword ptr [rbp - 64] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	mov	edx, dword ptr [rbp - 56]
	mov	ecx, dword ptr [rbp - 60]
	mov	al, 1
	call	_printf
	mov	rdi, qword ptr [rbp - 16]
	mov	rsi, qword ptr [rbp - 40]
	lea	rdx, [rbp - 52]
	lea	rcx, [rbp - 64]
	lea	r8, [rbp - 56]
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
	mov	al, 0
	call	_sscanf
	mov	dword ptr [rbp - 60], eax
	mov	rdi, qword ptr [rbp - 48]
	mov	esi, dword ptr [rbp - 52]
	movss	xmm0, dword ptr [rbp - 64] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	mov	edx, dword ptr [rbp - 56]
	mov	ecx, dword ptr [rbp - 60]
	mov	al, 1
	call	_printf
	mov	rdi, qword ptr [rbp - 24]
	mov	rsi, qword ptr [rbp - 40]
	lea	rdx, [rbp - 52]
	lea	rcx, [rbp - 64]
	lea	r8, [rbp - 56]
	mov	dword ptr [rbp - 72], eax ## 4-byte Spill
	mov	al, 0
	call	_sscanf
	mov	dword ptr [rbp - 60], eax
	mov	rdi, qword ptr [rbp - 48]
	mov	esi, dword ptr [rbp - 52]
	movss	xmm0, dword ptr [rbp - 64] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	mov	edx, dword ptr [rbp - 56]
	mov	ecx, dword ptr [rbp - 60]
	mov	al, 1
	call	_printf
	mov	rdi, qword ptr [rbp - 32]
	mov	rsi, qword ptr [rbp - 40]
	lea	rdx, [rbp - 52]
	lea	rcx, [rbp - 64]
	lea	r8, [rbp - 56]
	mov	dword ptr [rbp - 76], eax ## 4-byte Spill
	mov	al, 0
	call	_sscanf
	mov	dword ptr [rbp - 60], eax
	mov	rdi, qword ptr [rbp - 48]
	mov	esi, dword ptr [rbp - 52]
	movss	xmm0, dword ptr [rbp - 64] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	mov	edx, dword ptr [rbp - 56]
	mov	ecx, dword ptr [rbp - 60]
	mov	al, 1
	call	_printf
	mov	dword ptr [rbp - 80], eax ## 4-byte Spill
	add	rsp, 80
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
	sub	rsp, 16
	mov	dword ptr [rbp - 4], 0
	call	_ex_4
	call	_ex_5
	call	_ex_6
	call	_ex_7
	xor	eax, eax
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%#012.5g\n"

L_.str.1:                               ## @.str.1
	.asciz	"00000083.736"

L_.str.2:                               ## @.str.2
	.asciz	"000000029748"

L_.str.3:                               ## @.str.3
	.asciz	"%.4d\n"

L_.str.4:                               ## @.str.4
	.asciz	"%04d\n"

L_.str.5:                               ## @.str.5
	.asciz	"%d widget\n"

L_.str.6:                               ## @.str.6
	.asciz	"%d widgets\n"

L_.str.7:                               ## @.str.7
	.asciz	"10 20 30\n"

L_.str.8:                               ## @.str.8
	.asciz	"1.0 2.0 3.0\n"

L_.str.9:                               ## @.str.9
	.asciz	"0.1 0.2 0.3\n"

L_.str.10:                              ## @.str.10
	.asciz	".1 .2 .3\n"

L_.str.11:                              ## @.str.11
	.asciz	"%d%f%d"

L_.str.12:                              ## @.str.12
	.asciz	"i: %d, f: %f, j: %d, n: %d\n"


.subsections_via_symbols
