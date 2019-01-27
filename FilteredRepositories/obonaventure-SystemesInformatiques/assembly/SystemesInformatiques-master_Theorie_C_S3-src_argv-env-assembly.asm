	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_print_var              ## -- Begin function print_var
	.p2align	4, 0x90
_print_var:                             ## @print_var
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	_getenv
	mov	qword ptr [rbp - 16], rax
	cmp	qword ptr [rbp - 16], 0
	je	LBB0_2
## %bb.1:
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 16]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	jmp	LBB0_3
LBB0_2:
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
LBB0_3:
	add	rsp, 32
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
	sub	rsp, 32
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	lea	rdi, [rip + L_.str.2]
	call	_getenv
	mov	qword ptr [rbp - 24], rax
	lea	rdi, [rip + L_.str.2]
	call	_print_var
	lea	rdi, [rip + L_.str.2]
	call	_unsetenv
	cmp	eax, 0
	je	LBB1_2
## %bb.1:
	mov	rax, qword ptr [rip + ___stderrp@GOTPCREL]
	mov	rdi, qword ptr [rax]
	lea	rsi, [rip + L_.str.3]
	xor	ecx, ecx
	mov	dl, cl
	mov	al, dl
	call	_fprintf
	mov	edi, 1
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	call	_exit
LBB1_2:
	lea	rdi, [rip + L_.str.2]
	call	_print_var
	mov	rsi, qword ptr [rbp - 24]
	lea	rdi, [rip + L_.str.2]
	mov	edx, 1
	call	_setenv
	cmp	eax, 0
	je	LBB1_4
## %bb.3:
	mov	rax, qword ptr [rip + ___stderrp@GOTPCREL]
	mov	rdi, qword ptr [rax]
	lea	rsi, [rip + L_.str.4]
	xor	ecx, ecx
	mov	dl, cl
	mov	al, dl
	call	_fprintf
	mov	edi, 1
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	call	_exit
LBB1_4:
	lea	rdi, [rip + L_.str.2]
	call	_print_var
	xor	eax, eax
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"La variable %s a la valeur : %s\n"

L_.str.1:                               ## @.str.1
	.asciz	"La variable %s n'a pas \303\251t\303\251 assign\303\251e\n"

L_.str.2:                               ## @.str.2
	.asciz	"PATH"

L_.str.3:                               ## @.str.3
	.asciz	"Erreur unsetenv\n"

L_.str.4:                               ## @.str.4
	.asciz	"Erreur setenv\n"


.subsections_via_symbols
