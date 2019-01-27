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
	sub	rsp, 112
	lea	rsi, [rbp - 70]
	lea	rax, [rbp - 64]
	mov	ecx, 50
	mov	edx, ecx
	mov	rdi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 68], 0
	mov	rdi, rax
	lea	r8, [rip + l_main.dest]
	mov	qword ptr [rbp - 88], rsi ## 8-byte Spill
	mov	rsi, r8
	mov	qword ptr [rbp - 96], rax ## 8-byte Spill
	call	_memcpy
	mov	r9w, word ptr [rip + l_main.src]
	mov	word ptr [rbp - 70], r9w
	mov	dword ptr [rbp - 76], 434
	mov	edx, dword ptr [rbp - 76]
	mov	rdi, qword ptr [rbp - 96] ## 8-byte Reload
	mov	rsi, qword ptr [rbp - 88] ## 8-byte Reload
	call	_ft_strncat
	lea	rdi, [rip + L_.str]
	mov	rsi, rax
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 8]
	cmp	rsi, rdi
	mov	dword ptr [rbp - 100], eax ## 4-byte Spill
	jne	LBB0_2
## %bb.1:
	xor	eax, eax
	add	rsp, 112
	pop	rbp
	ret
LBB0_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @main.dest
l_main.dest:
	.asciz	"testestestest\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

l_main.src:                             ## @main.src
	.ascii	"42"

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%s\n"


.subsections_via_symbols
