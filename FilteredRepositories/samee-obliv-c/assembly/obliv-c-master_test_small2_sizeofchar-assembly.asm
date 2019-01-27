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
	sub	rsp, 4128
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 4116], 0
	mov	dword ptr [rbp - 4120], 4
	movsxd	rax, dword ptr [rbp - 4120]
	cmp	rax, 4
	sete	cl
	xor	cl, -1
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	LBB0_2
## %bb.1:
	lea	rdi, [rip + L___func__.main]
	lea	rsi, [rip + L_.str]
	lea	rcx, [rip + L_.str.1]
	mov	edx, 15
	call	___assert_rtn
LBB0_2:
	jmp	LBB0_3
LBB0_3:
	mov	dword ptr [rbp - 4124], 1
	movsxd	rax, dword ptr [rbp - 4124]
	cmp	rax, 1
	sete	cl
	xor	cl, -1
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	LBB0_5
## %bb.4:
	lea	rdi, [rip + L___func__.main]
	lea	rsi, [rip + L_.str]
	lea	rcx, [rip + L_.str.2]
	mov	edx, 18
	call	___assert_rtn
LBB0_5:
	jmp	LBB0_6
LBB0_6:
	mov	dword ptr [rbp - 4128], -1
	cmp	dword ptr [rbp - 4128], -1
	sete	al
	xor	al, -1
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	LBB0_8
## %bb.7:
	lea	rdi, [rip + L___func__.main]
	lea	rsi, [rip + L_.str]
	lea	rcx, [rip + L_.str.3]
	mov	edx, 25
	call	___assert_rtn
LBB0_8:
	jmp	LBB0_9
LBB0_9:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB0_11
## %bb.10:
	xor	eax, eax
	add	rsp, 4128
	pop	rbp
	ret
LBB0_11:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L___func__.main:                        ## @__func__.main
	.asciz	"main"

L_.str:                                 ## @.str
	.asciz	"Repositories/samee-obliv-c/Unfiltered/obliv-c-master_test_small2_sizeofchar.c"

L_.str.1:                               ## @.str.1
	.asciz	"sz1 == sizeof(int)"

L_.str.2:                               ## @.str.2
	.asciz	"sz2 == sizeof(char)"

L_.str.3:                               ## @.str.3
	.asciz	"(int)i == (int)-1"


.subsections_via_symbols
