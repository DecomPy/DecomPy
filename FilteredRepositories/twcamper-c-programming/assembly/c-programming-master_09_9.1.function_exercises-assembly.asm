	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_check                  ## -- Begin function check
	.p2align	4, 0x90
_check:                                 ## @check
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	xor	eax, eax
	mov	cl, al
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 12], edx
	cmp	dword ptr [rbp - 4], 0
	mov	byte ptr [rbp - 13], cl ## 1-byte Spill
	jl	LBB0_4
## %bb.1:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	cmp	eax, dword ptr [rbp - 12]
	mov	byte ptr [rbp - 13], cl ## 1-byte Spill
	jge	LBB0_4
## %bb.2:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 8], 0
	mov	byte ptr [rbp - 13], cl ## 1-byte Spill
	jl	LBB0_4
## %bb.3:
	mov	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 12]
	setl	cl
	mov	byte ptr [rbp - 13], cl ## 1-byte Spill
LBB0_4:
	mov	al, byte ptr [rbp - 13] ## 1-byte Reload
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_gcd                    ## -- Begin function gcd
	.p2align	4, 0x90
_gcd:                                   ## @gcd
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 8], 0
	je	LBB1_3
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 4]
	cdq
	idiv	dword ptr [rbp - 8]
	mov	dword ptr [rbp - 12], edx
	mov	edx, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], edx
	mov	edx, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 8], edx
	jmp	LBB1_1
LBB1_3:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_day_of_year            ## -- Begin function day_of_year
	.p2align	4, 0x90
_day_of_year:                           ## @day_of_year
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 96
	lea	rax, [rip + l_day_of_year.month_lengths]
	mov	ecx, 48
	mov	r8d, ecx
	mov	r9, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	r9, qword ptr [r9]
	mov	qword ptr [rbp - 8], r9
	mov	dword ptr [rbp - 68], edi
	mov	dword ptr [rbp - 72], esi
	mov	dword ptr [rbp - 76], edx
	lea	r9, [rbp - 64]
	mov	rdi, r9
	mov	rsi, rax
	mov	rdx, r8
	call	_memcpy
	mov	dword ptr [rbp - 84], 0
	mov	eax, dword ptr [rbp - 76]
	cdq
	mov	ecx, 4
	idiv	ecx
	cmp	edx, 0
	jne	LBB2_2
## %bb.1:
	mov	eax, dword ptr [rbp - 76]
	cdq
	mov	ecx, 100
	idiv	ecx
	cmp	edx, 0
	jne	LBB2_3
LBB2_2:
	mov	eax, dword ptr [rbp - 76]
	cdq
	mov	ecx, 400
	idiv	ecx
	cmp	edx, 0
	jne	LBB2_4
LBB2_3:
	mov	dword ptr [rbp - 60], 29
LBB2_4:
	mov	dword ptr [rbp - 80], 0
LBB2_5:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 80]
	mov	ecx, dword ptr [rbp - 68]
	sub	ecx, 1
	cmp	eax, ecx
	jge	LBB2_8
## %bb.6:                               ##   in Loop: Header=BB2_5 Depth=1
	movsxd	rax, dword ptr [rbp - 80]
	mov	ecx, dword ptr [rbp + 4*rax - 64]
	add	ecx, dword ptr [rbp - 84]
	mov	dword ptr [rbp - 84], ecx
## %bb.7:                               ##   in Loop: Header=BB2_5 Depth=1
	mov	eax, dword ptr [rbp - 80]
	add	eax, 1
	mov	dword ptr [rbp - 80], eax
	jmp	LBB2_5
LBB2_8:
	mov	eax, dword ptr [rbp - 84]
	add	eax, dword ptr [rbp - 72]
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	mov	dword ptr [rbp - 88], eax ## 4-byte Spill
	jne	LBB2_10
## %bb.9:
	mov	eax, dword ptr [rbp - 88] ## 4-byte Reload
	add	rsp, 96
	pop	rbp
	ret
LBB2_10:
	call	___stack_chk_fail
	ud2
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
	sub	rsp, 64
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 8]
	lea	rdx, [rbp - 12]
	lea	rcx, [rbp - 16]
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	mov	edx, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	call	_check
	lea	rdi, [rip + L_.str.2]
	mov	esi, eax
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.4]
	lea	rsi, [rbp - 8]
	lea	rdx, [rbp - 12]
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	call	_gcd
	lea	rdi, [rip + L_.str.5]
	mov	esi, eax
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.6]
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.7]
	lea	rsi, [rbp - 8]
	lea	rdx, [rbp - 12]
	lea	rcx, [rbp - 16]
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	mov	edx, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
	call	_day_of_year
	lea	rdi, [rip + L_.str.8]
	mov	esi, eax
	mov	al, 0
	call	_printf
	xor	edx, edx
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	mov	eax, edx
	add	rsp, 64
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @day_of_year.month_lengths
l_day_of_year.month_lengths:
	.long	31                      ## 0x1f
	.long	28                      ## 0x1c
	.long	31                      ## 0x1f
	.long	30                      ## 0x1e
	.long	31                      ## 0x1f
	.long	30                      ## 0x1e
	.long	31                      ## 0x1f
	.long	31                      ## 0x1f
	.long	30                      ## 0x1e
	.long	31                      ## 0x1f
	.long	30                      ## 0x1e
	.long	31                      ## 0x1f

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Exercise 9.2 - enter x, y, and n: "

L_.str.1:                               ## @.str.1
	.asciz	"%d %d %d"

L_.str.2:                               ## @.str.2
	.asciz	"Are x and y between 0 and n? %d\n"

L_.str.3:                               ## @.str.3
	.asciz	"Exercise 9.3 - enter m and n: "

L_.str.4:                               ## @.str.4
	.asciz	"%d %d"

L_.str.5:                               ## @.str.5
	.asciz	"Greatest Common Divisor: %d\n"

L_.str.6:                               ## @.str.6
	.asciz	"Exercise 9.4 - enter a date as mm/dd/yyyy: "

L_.str.7:                               ## @.str.7
	.asciz	"%d/%d/%d"

L_.str.8:                               ## @.str.8
	.asciz	"Day of Year: %d\n"


.subsections_via_symbols
