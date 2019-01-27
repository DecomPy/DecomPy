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
	sub	rsp, 304
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 276], 0
	lea	rax, [rip + L_.str]
	mov	qword ptr [rbp - 288], rax
	mov	rsi, qword ptr [rbp - 288]
	lea	rdi, [rip + L_.str.1]
	lea	rdx, [rbp - 272]
	mov	al, 0
	call	_sscanf
	lea	rdi, [rbp - 272]
	lea	rsi, [rip + L_.str.2]
	mov	dword ptr [rbp - 292], eax ## 4-byte Spill
	call	_strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, -1
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	LBB0_2
## %bb.1:
	lea	rdi, [rip + L___func__.main]
	lea	rsi, [rip + L_.str.3]
	lea	rcx, [rip + L_.str.4]
	mov	edx, 11
	call	___assert_rtn
LBB0_2:
	jmp	LBB0_3
LBB0_3:
	mov	rsi, qword ptr [rbp - 288]
	lea	rdi, [rip + L_.str.5]
	lea	rdx, [rbp - 272]
	mov	al, 0
	call	_sscanf
	lea	rdi, [rbp - 272]
	lea	rsi, [rip + L_.str.6]
	mov	dword ptr [rbp - 296], eax ## 4-byte Spill
	call	_strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, -1
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	LBB0_5
## %bb.4:
	lea	rdi, [rip + L___func__.main]
	lea	rsi, [rip + L_.str.3]
	lea	rcx, [rip + L_.str.7]
	mov	edx, 14
	call	___assert_rtn
LBB0_5:
	jmp	LBB0_6
LBB0_6:
	mov	rsi, qword ptr [rbp - 288]
	lea	rdi, [rip + L_.str.8]
	lea	rdx, [rbp - 272]
	mov	al, 0
	call	_sscanf
	lea	rdi, [rbp - 272]
	lea	rsi, [rip + L_.str.9]
	mov	dword ptr [rbp - 300], eax ## 4-byte Spill
	call	_strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, -1
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	LBB0_8
## %bb.7:
	lea	rdi, [rip + L___func__.main]
	lea	rsi, [rip + L_.str.3]
	lea	rcx, [rip + L_.str.10]
	mov	edx, 17
	call	___assert_rtn
LBB0_8:
	jmp	LBB0_9
LBB0_9:
	mov	rsi, qword ptr [rbp - 288]
	lea	rdi, [rip + L_.str.11]
	lea	rdx, [rbp - 272]
	mov	al, 0
	call	_sscanf
	lea	rdi, [rbp - 272]
	lea	rsi, [rip + L_.str.12]
	mov	dword ptr [rbp - 304], eax ## 4-byte Spill
	call	_strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, -1
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	LBB0_11
## %bb.10:
	lea	rdi, [rip + L___func__.main]
	lea	rsi, [rip + L_.str.3]
	lea	rcx, [rip + L_.str.13]
	mov	edx, 20
	call	___assert_rtn
LBB0_11:
	jmp	LBB0_12
LBB0_12:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB0_14
## %bb.13:
	xor	eax, eax
	add	rsp, 304
	pop	rbp
	ret
LBB0_14:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	" #%[0123456789,]"

L_.str.1:                               ## @.str.1
	.asciz	" #123"

L_.str.2:                               ## @.str.2
	.asciz	"123"

L___func__.main:                        ## @__func__.main
	.asciz	"main"

L_.str.3:                               ## @.str.3
	.asciz	"Repositories/twcamper-c-programming/Unfiltered/c-programming-master_22_22.3.8-parser.c"

L_.str.4:                               ## @.str.4
	.asciz	"strcmp(sales_rank, \"123\") == 0"

L_.str.5:                               ## @.str.5
	.asciz	" #999,999,901 "

L_.str.6:                               ## @.str.6
	.asciz	"999,999,901"

L_.str.7:                               ## @.str.7
	.asciz	"strcmp(sales_rank, \"999,999,901\") == 0"

L_.str.8:                               ## @.str.8
	.asciz	" #24,675"

L_.str.9:                               ## @.str.9
	.asciz	"24,675"

L_.str.10:                              ## @.str.10
	.asciz	"strcmp(sales_rank, \"24,675\") == 0"

L_.str.11:                              ## @.str.11
	.asciz	"#1"

L_.str.12:                              ## @.str.12
	.asciz	"1"

L_.str.13:                              ## @.str.13
	.asciz	"strcmp(sales_rank, \"1\") == 0"


.subsections_via_symbols
