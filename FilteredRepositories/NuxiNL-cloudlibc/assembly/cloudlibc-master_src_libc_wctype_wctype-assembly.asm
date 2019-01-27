	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_wctype                 ## -- Begin function wctype
	.p2align	4, 0x90
_wctype:                                ## @wctype
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
	mov	rax, qword ptr [rip + _iswalnum@GOTPCREL]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	jmp	LBB0_25
LBB0_2:
	mov	rdi, qword ptr [rbp - 16]
	lea	rsi, [rip + L_.str.1]
	call	_strcmp
	cmp	eax, 0
	jne	LBB0_4
## %bb.3:
	mov	rax, qword ptr [rip + _iswalpha@GOTPCREL]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	jmp	LBB0_25
LBB0_4:
	mov	rdi, qword ptr [rbp - 16]
	lea	rsi, [rip + L_.str.2]
	call	_strcmp
	cmp	eax, 0
	jne	LBB0_6
## %bb.5:
	mov	rax, qword ptr [rip + _iswblank@GOTPCREL]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	jmp	LBB0_25
LBB0_6:
	mov	rdi, qword ptr [rbp - 16]
	lea	rsi, [rip + L_.str.3]
	call	_strcmp
	cmp	eax, 0
	jne	LBB0_8
## %bb.7:
	mov	rax, qword ptr [rip + _iswcntrl@GOTPCREL]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	jmp	LBB0_25
LBB0_8:
	mov	rdi, qword ptr [rbp - 16]
	lea	rsi, [rip + L_.str.4]
	call	_strcmp
	cmp	eax, 0
	jne	LBB0_10
## %bb.9:
	mov	rax, qword ptr [rip + _iswdigit@GOTPCREL]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	jmp	LBB0_25
LBB0_10:
	mov	rdi, qword ptr [rbp - 16]
	lea	rsi, [rip + L_.str.5]
	call	_strcmp
	cmp	eax, 0
	jne	LBB0_12
## %bb.11:
	mov	rax, qword ptr [rip + _iswgraph@GOTPCREL]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	jmp	LBB0_25
LBB0_12:
	mov	rdi, qword ptr [rbp - 16]
	lea	rsi, [rip + L_.str.6]
	call	_strcmp
	cmp	eax, 0
	jne	LBB0_14
## %bb.13:
	mov	rax, qword ptr [rip + _iswlower@GOTPCREL]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	jmp	LBB0_25
LBB0_14:
	mov	rdi, qword ptr [rbp - 16]
	lea	rsi, [rip + L_.str.7]
	call	_strcmp
	cmp	eax, 0
	jne	LBB0_16
## %bb.15:
	mov	rax, qword ptr [rip + _iswprint@GOTPCREL]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	jmp	LBB0_25
LBB0_16:
	mov	rdi, qword ptr [rbp - 16]
	lea	rsi, [rip + L_.str.8]
	call	_strcmp
	cmp	eax, 0
	jne	LBB0_18
## %bb.17:
	mov	rax, qword ptr [rip + _iswpunct@GOTPCREL]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	jmp	LBB0_25
LBB0_18:
	mov	rdi, qword ptr [rbp - 16]
	lea	rsi, [rip + L_.str.9]
	call	_strcmp
	cmp	eax, 0
	jne	LBB0_20
## %bb.19:
	mov	rax, qword ptr [rip + _iswspace@GOTPCREL]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	jmp	LBB0_25
LBB0_20:
	mov	rdi, qword ptr [rbp - 16]
	lea	rsi, [rip + L_.str.10]
	call	_strcmp
	cmp	eax, 0
	jne	LBB0_22
## %bb.21:
	mov	rax, qword ptr [rip + _iswupper@GOTPCREL]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	jmp	LBB0_25
LBB0_22:
	mov	rdi, qword ptr [rbp - 16]
	lea	rsi, [rip + L_.str.11]
	call	_strcmp
	cmp	eax, 0
	jne	LBB0_24
## %bb.23:
	mov	rax, qword ptr [rip + _iswxdigit@GOTPCREL]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	jmp	LBB0_25
LBB0_24:
	mov	dword ptr [rbp - 4], 0
LBB0_25:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"alnum"

L_.str.1:                               ## @.str.1
	.asciz	"alpha"

L_.str.2:                               ## @.str.2
	.asciz	"blank"

L_.str.3:                               ## @.str.3
	.asciz	"cntrl"

L_.str.4:                               ## @.str.4
	.asciz	"digit"

L_.str.5:                               ## @.str.5
	.asciz	"graph"

L_.str.6:                               ## @.str.6
	.asciz	"lower"

L_.str.7:                               ## @.str.7
	.asciz	"print"

L_.str.8:                               ## @.str.8
	.asciz	"punct"

L_.str.9:                               ## @.str.9
	.asciz	"space"

L_.str.10:                              ## @.str.10
	.asciz	"upper"

L_.str.11:                              ## @.str.11
	.asciz	"xdigit"


.subsections_via_symbols
