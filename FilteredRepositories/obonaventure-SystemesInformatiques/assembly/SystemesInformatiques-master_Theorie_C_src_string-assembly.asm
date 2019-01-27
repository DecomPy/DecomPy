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
	sub	rsp, 48
	lea	rax, [rbp - 18]
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 8], rcx
	mov	dword ptr [rbp - 24], 0
	mov	dword ptr [rbp - 28], edi
	mov	qword ptr [rbp - 40], rsi
	mov	byte ptr [rbp - 18], 106
	mov	byte ptr [rbp - 17], 97
	mov	byte ptr [rbp - 16], 118
	mov	byte ptr [rbp - 15], 97
	mov	byte ptr [rbp - 14], 0
	lea	rdi, [rip + L_.str]
	mov	rsi, rax
	mov	al, 0
	call	_printf
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rcx, rsi
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	jne	LBB0_2
## %bb.1:
	xor	eax, eax
	add	rsp, 48
	pop	rbp
	ret
LBB0_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"String : %s\n"


.subsections_via_symbols
