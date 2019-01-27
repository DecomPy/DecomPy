	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_empty                  ## -- Begin function empty
	.p2align	4, 0x90
_empty:                                 ## @empty
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_oneline                ## -- Begin function oneline
	.p2align	4, 0x90
_oneline:                               ## @oneline
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	rax, qword ptr [rip + ___stderrp@GOTPCREL]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rip + L_.str]
	mov	al, 0
	call	_fprintf
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_detailed               ## -- Begin function detailed
	.p2align	4, 0x90
_detailed:                              ## @detailed
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	rax, qword ptr [rip + ___stderrp@GOTPCREL]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rip + L_.str]
	mov	al, 0
	call	_fprintf
	mov	rdx, qword ptr [rip + ___stderrp@GOTPCREL]
	mov	rdi, qword ptr [rdx]
	mov	edx, dword ptr [rip + _g]
	lea	rsi, [rip + L_.str.1]
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	mov	al, 0
	call	_fprintf
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	add	rsp, 16
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
	cmp	dword ptr [rbp - 8], 2
	je	LBB3_2
## %bb.1:
	mov	dword ptr [rbp - 4], 1
	jmp	LBB3_6
LBB3_2:
	mov	rax, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rax + 8]
	call	_atoi
	mov	rdi, qword ptr [rip + _debug_level@GOTPCREL]
	mov	dword ptr [rdi], eax
	cmp	dword ptr [rdi], 0
	jl	LBB3_4
## %bb.3:
	mov	rax, qword ptr [rip + _debug_level@GOTPCREL]
	cmp	dword ptr [rax], 2
	jle	LBB3_5
LBB3_4:
	mov	dword ptr [rbp - 4], 1
	jmp	LBB3_6
LBB3_5:
	mov	rax, qword ptr [rip + _debug_level@GOTPCREL]
	movsxd	rax, dword ptr [rax]
	lea	rcx, [rip + _debug_print]
	mov	rsi, qword ptr [rcx + 8*rax]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	rcx, qword ptr [rip + _debug_level@GOTPCREL]
	movsxd	rcx, dword ptr [rcx]
	lea	rdi, [rip + L_.str.3]
	lea	rsi, [rip + _debug_print]
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	call	qword ptr [rsi + 8*rcx]
	mov	dword ptr [rbp - 4], 0
LBB3_6:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_g                      ## @g
	.p2align	2
_g:
	.long	1                       ## 0x1

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"debug: %s\n"

L_.str.1:                               ## @.str.1
	.asciz	"g=%d\n"

	.section	__DATA,__data
	.globl	_debug_print            ## @debug_print
	.p2align	4
_debug_print:
	.quad	_empty
	.quad	_oneline
	.quad	_detailed

	.comm	_debug_level,4,2        ## @debug_level
	.section	__TEXT,__cstring,cstring_literals
L_.str.2:                               ## @.str.2
	.asciz	"fct debug_print : %p\n"

L_.str.3:                               ## @.str.3
	.asciz	"Hello"


.subsections_via_symbols
