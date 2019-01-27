	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_show_bytes             ## -- Begin function show_bytes
	.p2align	4, 0x90
_show_bytes:                            ## @show_bytes
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 16], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 16]
	cmp	eax, dword ptr [rbp - 12]
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	movzx	esi, byte ptr [rax + rcx]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB0_1
LBB0_4:
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_show_int               ## -- Begin function show_int
	.p2align	4, 0x90
_show_int:                              ## @show_int
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 4], edi
	lea	rax, [rbp - 4]
	mov	rdi, rax
	mov	esi, 4
	call	_show_bytes
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_show_float             ## -- Begin function show_float
	.p2align	4, 0x90
_show_float:                            ## @show_float
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	movss	dword ptr [rbp - 4], xmm0
	lea	rax, [rbp - 4]
	mov	rdi, rax
	mov	esi, 4
	call	_show_bytes
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_show_pointer           ## -- Begin function show_pointer
	.p2align	4, 0x90
_show_pointer:                          ## @show_pointer
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rbp - 8]
	mov	esi, 8
	call	_show_bytes
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
	mov	word ptr [rbp - 6], -12345
	mov	ax, word ptr [rbp - 6]
	mov	word ptr [rbp - 8], ax
	movsx	ecx, word ptr [rbp - 6]
	mov	dword ptr [rbp - 12], ecx
	movzx	ecx, word ptr [rbp - 8]
	mov	dword ptr [rbp - 16], ecx
	movsx	esi, word ptr [rbp - 6]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	lea	rdi, [rbp - 6]
	mov	esi, 2
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	call	_show_bytes
	movzx	esi, word ptr [rbp - 8]
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	lea	rdi, [rbp - 8]
	mov	esi, 2
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	call	_show_bytes
	mov	esi, dword ptr [rbp - 12]
	lea	rdi, [rip + L_.str.4]
	mov	al, 0
	call	_printf
	lea	rdi, [rbp - 12]
	mov	esi, 4
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	call	_show_bytes
	mov	esi, dword ptr [rbp - 16]
	lea	rdi, [rip + L_.str.5]
	mov	al, 0
	call	_printf
	lea	rdi, [rbp - 16]
	mov	esi, 4
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	call	_show_bytes
	xor	eax, eax
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	" %.2x"

L_.str.1:                               ## @.str.1
	.asciz	"\n"

L_.str.2:                               ## @.str.2
	.asciz	"xs = %d:\t"

L_.str.3:                               ## @.str.3
	.asciz	"usx = %u:\t"

L_.str.4:                               ## @.str.4
	.asciz	"x = %d:\t"

L_.str.5:                               ## @.str.5
	.asciz	"ux = %u:\t"


.subsections_via_symbols
