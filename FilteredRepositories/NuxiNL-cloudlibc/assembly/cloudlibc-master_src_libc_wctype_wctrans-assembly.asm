	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_wctrans                ## -- Begin function wctrans
	.p2align	4, 0x90
_wctrans:                               ## @wctrans
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 16], rdi
	mov	rdi, qword ptr [rbp - 16]
	lea	rsi, [rip + L_.str]
	call	_strcmp
	cmp	eax, 0
	jne	LBB0_2
## %bb.1:
	mov	rax, qword ptr [rip + _towlower@GOTPCREL]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	jmp	LBB0_5
LBB0_2:
	mov	rdi, qword ptr [rbp - 16]
	lea	rsi, [rip + L_.str.1]
	call	_strcmp
	cmp	eax, 0
	jne	LBB0_4
## %bb.3:
	mov	rax, qword ptr [rip + _towupper@GOTPCREL]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	jmp	LBB0_5
LBB0_4:
	mov	dword ptr [rbp - 4], 0
LBB0_5:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"tolower"

L_.str.1:                               ## @.str.1
	.asciz	"toupper"


.subsections_via_symbols
