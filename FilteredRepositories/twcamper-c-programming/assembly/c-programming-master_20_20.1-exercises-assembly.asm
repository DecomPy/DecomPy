	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ex_1                   ## -- Begin function ex_1
	.p2align	4, 0x90
_ex_1:                                  ## @ex_1
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	word ptr [rbp - 6], 0
	mov	word ptr [rbp - 2], 8
	mov	word ptr [rbp - 4], 9
	movzx	eax, word ptr [rbp - 2]
	movzx	ecx, word ptr [rbp - 4]
	add	ecx, 1
                                        ## kill: def $cl killed $ecx
	sar	eax, cl
	sar	eax, 1
	lea	rdi, [rip + L_.str]
	mov	esi, eax
	mov	al, 0
	call	_printf
	movzx	esi, word ptr [rbp - 2]
	sar	esi, 1
	movzx	edx, word ptr [rbp - 4]
	sar	edx, 1
	add	esi, edx
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	word ptr [rbp - 2], 1
	movzx	edx, word ptr [rbp - 2]
	movzx	esi, word ptr [rbp - 2]
	xor	esi, -1
	and	edx, esi
	lea	rdi, [rip + L_.str.2]
	mov	esi, edx
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	word ptr [rbp - 2], 2
	mov	word ptr [rbp - 4], 1
	mov	word ptr [rbp - 6], 0
	movzx	edx, word ptr [rbp - 2]
	xor	edx, -1
	movzx	esi, word ptr [rbp - 4]
	and	edx, esi
	movzx	esi, word ptr [rbp - 6]
	xor	edx, esi
	lea	rdi, [rip + L_.str.3]
	mov	esi, edx
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	movzx	edx, word ptr [rbp - 2]
	xor	edx, -1
	movzx	esi, word ptr [rbp - 4]
	and	edx, esi
	movzx	esi, word ptr [rbp - 6]
	xor	edx, esi
	lea	rdi, [rip + L_.str.4]
	mov	esi, edx
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	word ptr [rbp - 2], 7
	mov	word ptr [rbp - 4], 1
	mov	word ptr [rbp - 6], 9
	movzx	edx, word ptr [rbp - 2]
	movzx	esi, word ptr [rbp - 4]
	movzx	r8d, word ptr [rbp - 6]
	and	esi, r8d
	xor	edx, esi
	lea	rdi, [rip + L_.str.5]
	mov	esi, edx
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	movzx	edx, word ptr [rbp - 2]
	movzx	esi, word ptr [rbp - 4]
	movzx	r8d, word ptr [rbp - 6]
	and	esi, r8d
	xor	edx, esi
	lea	rdi, [rip + L_.str.4]
	mov	esi, edx
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_toggle                 ## -- Begin function toggle
	.p2align	4, 0x90
_toggle:                                ## @toggle
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	ax, si
	mov	cx, di
	mov	word ptr [rbp - 2], cx
	mov	word ptr [rbp - 4], ax
	movzx	ecx, word ptr [rbp - 4]
                                        ## kill: def $cl killed $ecx
	mov	esi, 1
	shl	esi, cl
	movzx	edi, word ptr [rbp - 2]
	xor	edi, esi
	mov	ax, di
	mov	word ptr [rbp - 2], ax
	movzx	eax, ax
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_ex_2                   ## -- Begin function ex_2
	.p2align	4, 0x90
_ex_2:                                  ## @ex_2
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	lea	rdi, [rip + L_.str.6]
	mov	al, 0
	call	_printf
	mov	word ptr [rbp - 2], 9
	movzx	edi, word ptr [rbp - 2]
	mov	esi, 4
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
	call	_toggle
	mov	word ptr [rbp - 2], ax
	movzx	esi, ax
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	movzx	edi, word ptr [rbp - 2]
	mov	esi, 4
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	call	_toggle
	mov	word ptr [rbp - 2], ax
	movzx	esi, ax
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	movzx	edi, word ptr [rbp - 2]
	mov	esi, 7
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	call	_toggle
	mov	word ptr [rbp - 2], ax
	movzx	esi, ax
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	movzx	edi, word ptr [rbp - 2]
	mov	esi, 7
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	call	_toggle
	mov	word ptr [rbp - 2], ax
	movzx	esi, ax
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_ex_4                   ## -- Begin function ex_4
	.p2align	4, 0x90
_ex_4:                                  ## @ex_4
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	lea	rdi, [rip + L_.str.7]
	mov	esi, 6299903
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4], eax ## 4-byte Spill
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_ex_5                   ## -- Begin function ex_5
	.p2align	4, 0x90
_ex_5:                                  ## @ex_5
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], 6299673
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, eax
	and	ecx, 255
	lea	rdi, [rip + L_.str.8]
	mov	esi, ecx
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rbp - 8]
	shr	rdi, 8
	mov	ecx, edi
	and	ecx, 255
	lea	rdi, [rip + L_.str.9]
	mov	esi, ecx
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rbp - 8]
	shr	rdi, 16
	mov	ecx, edi
	and	ecx, 255
	lea	rdi, [rip + L_.str.10]
	mov	esi, ecx
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
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
	sub	rsp, 16
	mov	dword ptr [rbp - 4], 0
	call	_ex_1
	call	_ex_2
	call	_ex_4
	call	_ex_5
	xor	eax, eax
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"ex 1a) Precedence! %d\n"

L_.str.1:                               ## @.str.1
	.asciz	"%d\n"

L_.str.2:                               ## @.str.2
	.asciz	"ex 1b) %d\n"

L_.str.3:                               ## @.str.3
	.asciz	"ex 1c) %d\n"

L_.str.4:                               ## @.str.4
	.asciz	"   ==) %d\n"

L_.str.5:                               ## @.str.5
	.asciz	"ex 1d) %d\n"

L_.str.6:                               ## @.str.6
	.asciz	"\nEx. 2\n"

L_.str.7:                               ## @.str.7
	.asciz	"%.4X\n"

L_.str.8:                               ## @.str.8
	.asciz	"Red: %.4X\n"

L_.str.9:                               ## @.str.9
	.asciz	"Blue: %.4X\n"

L_.str.10:                              ## @.str.10
	.asciz	"Green: %.4X\n"


.subsections_via_symbols
