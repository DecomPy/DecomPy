	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_print_array            ## -- Begin function print_array
	.p2align	4, 0x90
_print_array:                           ## @print_array
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 4], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 4], 5
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 4]
	lea	rcx, [rip + _array]
	movsd	xmm0, qword ptr [rcx + 8*rax] ## xmm0 = mem[0],zero
	lea	rdi, [rip + L_.str]
	mov	al, 1
	call	_printf
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_1
LBB0_4:
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_cmp                    ## -- Begin function cmp
	.p2align	4, 0x90
_cmp:                                   ## @cmp
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	rsi, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 32], rsi
	mov	rsi, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 40], rsi
	mov	rsi, qword ptr [rbp - 32]
	movsd	xmm0, qword ptr [rsi]   ## xmm0 = mem[0],zero
	mov	rsi, qword ptr [rbp - 40]
	ucomisd	xmm0, qword ptr [rsi]
	jne	LBB1_2
	jp	LBB1_2
## %bb.1:
	mov	dword ptr [rbp - 4], 0
	jmp	LBB1_5
LBB1_2:
	mov	rax, qword ptr [rbp - 32]
	movsd	xmm0, qword ptr [rax]   ## xmm0 = mem[0],zero
	mov	rax, qword ptr [rbp - 40]
	movsd	xmm1, qword ptr [rax]   ## xmm1 = mem[0],zero
	ucomisd	xmm1, xmm0
	jbe	LBB1_4
## %bb.3:
	mov	dword ptr [rbp - 4], -1
	jmp	LBB1_5
LBB1_4:
	mov	dword ptr [rbp - 4], 1
LBB1_5:
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
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	call	_print_array
	lea	rsi, [rip + _array]
	mov	eax, 5
	mov	edi, eax
	mov	eax, 8
	mov	edx, eax
	mov	qword ptr [rbp - 32], rdi ## 8-byte Spill
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 32] ## 8-byte Reload
	lea	rcx, [rip + _cmp]
	call	_qsort
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	call	_print_array
	xor	eax, eax
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_array                  ## @array
	.p2align	4
_array:
	.quad	4607182418800017408     ## double 1
	.quad	4619927605745475912     ## double 7.3200000000000002
	.quad	-4608465944693817999    ## double -3.4300000000000002
	.quad	4621087282649523814     ## double 8.6999999999999993
	.quad	4621813488089437307     ## double 9.9900000000000002

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"array[i]:%f\n"

L_.str.1:                               ## @.str.1
	.asciz	"Avant qsort\n\n"

L_.str.2:                               ## @.str.2
	.asciz	"Apr\303\250s qsort\n\n"


.subsections_via_symbols
