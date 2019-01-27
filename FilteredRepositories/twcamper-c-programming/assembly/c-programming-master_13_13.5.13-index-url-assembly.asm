	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_build_index_url        ## -- Begin function build_index_url
	.p2align	4, 0x90
_build_index_url:                       ## @build_index_url
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	rdx, -1
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rdi, qword ptr [rbp - 16]
	lea	rsi, [rip + L_.str]
	call	___strcpy_chk
	mov	rdx, -1
	mov	rdi, qword ptr [rbp - 16]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rax ## 8-byte Spill
	call	___strcat_chk
	mov	rdx, -1
	mov	rdi, qword ptr [rbp - 16]
	lea	rsi, [rip + L_.str.1]
	mov	qword ptr [rbp - 32], rax ## 8-byte Spill
	call	___strcat_chk
	mov	qword ptr [rbp - 40], rax ## 8-byte Spill
	add	rsp, 48
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
	sub	rsp, 304
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 276], 0
	mov	dword ptr [rbp - 280], edi
	mov	qword ptr [rbp - 288], rsi
	cmp	dword ptr [rbp - 280], 2
	je	LBB1_2
## %bb.1:
	mov	rax, qword ptr [rip + ___stderrp@GOTPCREL]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 288]
	mov	rdx, qword ptr [rax]
	lea	rsi, [rip + L_.str.2]
	mov	al, 0
	call	_fprintf
	mov	dword ptr [rbp - 276], 1
	mov	dword ptr [rbp - 292], eax ## 4-byte Spill
	jmp	LBB1_3
LBB1_2:
	lea	rsi, [rbp - 272]
	mov	rax, qword ptr [rbp - 288]
	mov	rdi, qword ptr [rax + 8]
	call	_build_index_url
	lea	rsi, [rbp - 272]
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 276], 0
	mov	dword ptr [rbp - 296], eax ## 4-byte Spill
LBB1_3:
	mov	eax, dword ptr [rbp - 276]
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	mov	dword ptr [rbp - 300], eax ## 4-byte Spill
	jne	LBB1_5
## %bb.4:
	mov	eax, dword ptr [rbp - 300] ## 4-byte Reload
	add	rsp, 304
	pop	rbp
	ret
LBB1_5:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"http://www."

L_.str.1:                               ## @.str.1
	.asciz	"/index.html"

L_.str.2:                               ## @.str.2
	.asciz	"Usage: %s <domain>\n"

L_.str.3:                               ## @.str.3
	.asciz	"%s\n"


.subsections_via_symbols
