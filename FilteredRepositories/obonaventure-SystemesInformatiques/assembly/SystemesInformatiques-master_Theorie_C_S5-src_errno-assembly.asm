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
	xor	eax, eax
	mov	ecx, eax
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	rdi, rcx
	mov	rsi, rcx
	mov	edx, 1
	call	_setenv
	cmp	eax, 0
	je	LBB0_2
## %bb.1:
	mov	rax, qword ptr [rip + ___stderrp@GOTPCREL]
	mov	rdi, qword ptr [rax]
	mov	qword ptr [rbp - 24], rdi ## 8-byte Spill
	call	___error
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 28], edx ## 4-byte Spill
	call	___error
	mov	edi, dword ptr [rax]
	call	_strerror
	mov	rdi, qword ptr [rbp - 24] ## 8-byte Reload
	lea	rsi, [rip + L_.str]
	mov	edx, dword ptr [rbp - 28] ## 4-byte Reload
	mov	rcx, rax
	mov	al, 0
	call	_fprintf
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
LBB0_2:
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rip + L_.str.2]
	mov	edx, 1
	call	_setenv
	cmp	eax, 0
	je	LBB0_4
## %bb.3:
	mov	rax, qword ptr [rip + ___stderrp@GOTPCREL]
	mov	rdi, qword ptr [rax]
	mov	qword ptr [rbp - 40], rdi ## 8-byte Spill
	call	___error
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 44], edx ## 4-byte Spill
	call	___error
	mov	edi, dword ptr [rax]
	call	_strerror
	mov	rdi, qword ptr [rbp - 40] ## 8-byte Reload
	lea	rsi, [rip + L_.str]
	mov	edx, dword ptr [rbp - 44] ## 4-byte Reload
	mov	rcx, rax
	mov	al, 0
	call	_fprintf
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
LBB0_4:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Erreur : errno=%d %s\n"

L_.str.1:                               ## @.str.1
	.asciz	"PATH="

L_.str.2:                               ## @.str.2
	.asciz	"/usr/bin"


.subsections_via_symbols
