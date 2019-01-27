	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_toi                    ## -- Begin function toi
	.p2align	4, 0x90
_toi:                                   ## @toi
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movsx	edi, byte ptr [rbp - 1]
	sub	edi, 48
	mov	eax, edi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_get_ones               ## -- Begin function get_ones
	.p2align	4, 0x90
_get_ones:                              ## @get_ones
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 96
	mov	al, dil
	lea	rcx, [rip + l_get_ones.ones]
	mov	edi, 72
	mov	edx, edi
	mov	rsi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	byte ptr [rbp - 81], al
	lea	rsi, [rbp - 80]
	mov	rdi, rsi
	mov	rsi, rcx
	call	_memcpy
	movsx	edi, byte ptr [rbp - 81]
	call	_toi
	sub	eax, 1
	movsxd	rcx, eax
	mov	rax, qword ptr [rbp + 8*rcx - 80]
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	mov	qword ptr [rbp - 96], rax ## 8-byte Spill
	jne	LBB1_2
## %bb.1:
	mov	rax, qword ptr [rbp - 96] ## 8-byte Reload
	add	rsp, 96
	pop	rbp
	ret
LBB1_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_get_tens               ## -- Begin function get_tens
	.p2align	4, 0x90
_get_tens:                              ## @get_tens
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 96
	mov	al, dil
	lea	rcx, [rip + l_get_tens.tens]
	mov	edi, 64
	mov	edx, edi
	mov	rsi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	byte ptr [rbp - 81], al
	lea	rsi, [rbp - 80]
	mov	rdi, rsi
	mov	rsi, rcx
	call	_memcpy
	movsx	edi, byte ptr [rbp - 81]
	call	_toi
	sub	eax, 2
	movsxd	rcx, eax
	mov	rax, qword ptr [rbp + 8*rcx - 80]
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	mov	qword ptr [rbp - 96], rax ## 8-byte Spill
	jne	LBB2_2
## %bb.1:
	mov	rax, qword ptr [rbp - 96] ## 8-byte Reload
	add	rsp, 96
	pop	rbp
	ret
LBB2_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_get_teens              ## -- Begin function get_teens
	.p2align	4, 0x90
_get_teens:                             ## @get_teens
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 112
	mov	al, dil
	lea	rcx, [rip + l_get_teens.teens]
	mov	edi, 80
	mov	edx, edi
	mov	rsi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	byte ptr [rbp - 97], al
	lea	rsi, [rbp - 96]
	mov	rdi, rsi
	mov	rsi, rcx
	call	_memcpy
	movsx	edi, byte ptr [rbp - 97]
	call	_toi
	movsxd	rcx, eax
	mov	rax, qword ptr [rbp + 8*rcx - 96]
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	mov	qword ptr [rbp - 112], rax ## 8-byte Spill
	jne	LBB3_2
## %bb.1:
	mov	rax, qword ptr [rbp - 112] ## 8-byte Reload
	add	rsp, 112
	pop	rbp
	ret
LBB3_2:
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
	sub	rsp, 48
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rip + L_.str.27]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.28]
	lea	rsi, [rbp - 6]
	lea	rdx, [rbp - 5]
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	movsx	ecx, byte ptr [rbp - 6]
	cmp	ecx, 49
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	jne	LBB4_2
## %bb.1:
	movsx	edi, byte ptr [rbp - 5]
	call	_get_teens
	lea	rdi, [rip + L_.str.29]
	mov	rsi, rax
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	jmp	LBB4_6
LBB4_2:
	movsx	eax, byte ptr [rbp - 5]
	cmp	eax, 48
	jne	LBB4_4
## %bb.3:
	movsx	edi, byte ptr [rbp - 6]
	call	_get_tens
	lea	rdi, [rip + L_.str.29]
	mov	rsi, rax
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	jmp	LBB4_5
LBB4_4:
	movsx	edi, byte ptr [rbp - 6]
	call	_get_tens
	movsx	edi, byte ptr [rbp - 5]
	mov	qword ptr [rbp - 32], rax ## 8-byte Spill
	call	_get_ones
	lea	rdi, [rip + L_.str.30]
	mov	rsi, qword ptr [rbp - 32] ## 8-byte Reload
	mov	rdx, rax
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
LBB4_5:
	jmp	LBB4_6
LBB4_6:
	xor	eax, eax
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"one"

L_.str.1:                               ## @.str.1
	.asciz	"two"

L_.str.2:                               ## @.str.2
	.asciz	"three"

L_.str.3:                               ## @.str.3
	.asciz	"four"

L_.str.4:                               ## @.str.4
	.asciz	"five"

L_.str.5:                               ## @.str.5
	.asciz	"six"

L_.str.6:                               ## @.str.6
	.asciz	"seven"

L_.str.7:                               ## @.str.7
	.asciz	"eight"

L_.str.8:                               ## @.str.8
	.asciz	"nine"

	.section	__DATA,__const
	.p2align	4               ## @get_ones.ones
l_get_ones.ones:
	.quad	L_.str
	.quad	L_.str.1
	.quad	L_.str.2
	.quad	L_.str.3
	.quad	L_.str.4
	.quad	L_.str.5
	.quad	L_.str.6
	.quad	L_.str.7
	.quad	L_.str.8

	.section	__TEXT,__cstring,cstring_literals
L_.str.9:                               ## @.str.9
	.asciz	"twenty"

L_.str.10:                              ## @.str.10
	.asciz	"thirty"

L_.str.11:                              ## @.str.11
	.asciz	"forty"

L_.str.12:                              ## @.str.12
	.asciz	"fifty"

L_.str.13:                              ## @.str.13
	.asciz	"sixty"

L_.str.14:                              ## @.str.14
	.asciz	"seventy"

L_.str.15:                              ## @.str.15
	.asciz	"eighty"

L_.str.16:                              ## @.str.16
	.asciz	"ninety"

	.section	__DATA,__const
	.p2align	4               ## @get_tens.tens
l_get_tens.tens:
	.quad	L_.str.9
	.quad	L_.str.10
	.quad	L_.str.11
	.quad	L_.str.12
	.quad	L_.str.13
	.quad	L_.str.14
	.quad	L_.str.15
	.quad	L_.str.16

	.section	__TEXT,__cstring,cstring_literals
L_.str.17:                              ## @.str.17
	.asciz	"ten"

L_.str.18:                              ## @.str.18
	.asciz	"eleven"

L_.str.19:                              ## @.str.19
	.asciz	"twelve"

L_.str.20:                              ## @.str.20
	.asciz	"thirteen"

L_.str.21:                              ## @.str.21
	.asciz	"fourteen"

L_.str.22:                              ## @.str.22
	.asciz	"fifteen"

L_.str.23:                              ## @.str.23
	.asciz	"sixteen"

L_.str.24:                              ## @.str.24
	.asciz	"seventeen"

L_.str.25:                              ## @.str.25
	.asciz	"eighteen"

L_.str.26:                              ## @.str.26
	.asciz	"nineteen"

	.section	__DATA,__const
	.p2align	4               ## @get_teens.teens
l_get_teens.teens:
	.quad	L_.str.17
	.quad	L_.str.18
	.quad	L_.str.19
	.quad	L_.str.20
	.quad	L_.str.21
	.quad	L_.str.22
	.quad	L_.str.23
	.quad	L_.str.24
	.quad	L_.str.25
	.quad	L_.str.26

	.section	__TEXT,__cstring,cstring_literals
L_.str.27:                              ## @.str.27
	.asciz	"Enter a two-digit number: "

L_.str.28:                              ## @.str.28
	.asciz	"%1c%1c"

L_.str.29:                              ## @.str.29
	.asciz	"%s\n"

L_.str.30:                              ## @.str.30
	.asciz	"%s-%s\n"


.subsections_via_symbols
