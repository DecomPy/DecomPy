	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_usage                  ## -- Begin function usage
	.p2align	4, 0x90
_usage:                                 ## @usage
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4], eax ## 4-byte Spill
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_twotimes               ## -- Begin function twotimes
	.p2align	4, 0x90
_twotimes:                              ## @twotimes
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	shl	edi, 1
	mov	eax, edi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_two_times              ## -- Begin function two_times
	.p2align	4, 0x90
_two_times:                             ## @two_times
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	shl	edi, 1
	mov	dword ptr [rbp - 4], edi
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_times_two              ## -- Begin function times_two
	.p2align	4, 0x90
_times_two:                             ## @times_two
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi]
	mov	rdi, qword ptr [rbp - 8]
	add	eax, dword ptr [rdi]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_timestwo               ## -- Begin function timestwo
	.p2align	4, 0x90
_timestwo:                              ## @timestwo
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi]
	mov	rdi, qword ptr [rbp - 8]
	add	eax, dword ptr [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi], eax
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_f                      ## -- Begin function f
	.p2align	4, 0x90
_f:                                     ## @f
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	dword ptr [rbp - 4], 1252
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	lea	rdi, [rbp - 4]
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
	call	_times_two
	lea	rdi, [rip + L_.str.2]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rbp - 4]
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	call	_timestwo
	lea	rdi, [rip + L_.str.4]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rip + L_.str.5]
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_plusun                 ## -- Begin function plusun
	.p2align	4, 0x90
_plusun:                                ## @plusun
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], 0
LBB6_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 20]
	cmp	eax, dword ptr [rbp - 4]
	jge	LBB6_4
## %bb.2:                               ##   in Loop: Header=BB6_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	edx, dword ptr [rax + 4*rcx]
	add	edx, 1
	mov	dword ptr [rax + 4*rcx], edx
## %bb.3:                               ##   in Loop: Header=BB6_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB6_1
LBB6_4:
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
	mov	dword ptr [rbp - 20], 1252
	call	_f
	xor	eax, eax
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Usage : ...\n"

L_.str.1:                               ## @.str.1
	.asciz	"i:%d\n"

L_.str.2:                               ## @.str.2
	.asciz	"times_two(&i)=%d\n"

L_.str.3:                               ## @.str.3
	.asciz	"apr\303\250s times_two, i:%d\n"

L_.str.4:                               ## @.str.4
	.asciz	"timestwo(&i)=%d\n"

L_.str.5:                               ## @.str.5
	.asciz	"apr\303\250s timestwo, i:%d\n"


.subsections_via_symbols
