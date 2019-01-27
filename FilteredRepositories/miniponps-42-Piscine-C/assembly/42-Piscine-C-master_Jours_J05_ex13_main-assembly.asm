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
	sub	rsp, 320
	mov	eax, 200
	mov	ecx, eax
	lea	rdx, [rbp - 272]
	lea	rsi, [rbp - 208]
	mov	eax, 55
	mov	edi, eax
	mov	r8, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	r8, qword ptr [r8]
	mov	qword ptr [rbp - 8], r8
	mov	dword ptr [rbp - 276], 0
	mov	r8, rsi
	mov	qword ptr [rbp - 288], rdi ## 8-byte Spill
	mov	rdi, r8
	lea	r8, [rip + l_main.dest]
	mov	qword ptr [rbp - 296], rsi ## 8-byte Spill
	mov	rsi, r8
	mov	qword ptr [rbp - 304], rdx ## 8-byte Spill
	mov	rdx, rcx
	mov	qword ptr [rbp - 312], rcx ## 8-byte Spill
	call	_memcpy
	mov	rcx, qword ptr [rbp - 304] ## 8-byte Reload
	mov	rdi, rcx
	lea	rsi, [rip + l_main.src]
	mov	rdx, qword ptr [rbp - 288] ## 8-byte Reload
	call	_memcpy
	mov	rdi, qword ptr [rbp - 296] ## 8-byte Reload
	mov	rsi, qword ptr [rbp - 304] ## 8-byte Reload
	mov	rdx, qword ptr [rbp - 312] ## 8-byte Reload
	call	___strcat_chk
	lea	rdi, [rip + L_.str]
	mov	rsi, rax
	mov	al, 0
	call	_printf
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	mov	dword ptr [rbp - 316], eax ## 4-byte Spill
	jne	LBB0_2
## %bb.1:
	xor	eax, eax
	add	rsp, 320
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
	.asciz	"testestestest\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

	.p2align	4               ## @main.src
l_main.src:
	.asciz	"42adasd\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%s\n"


.subsections_via_symbols
