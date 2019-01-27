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
	.globl	_test_show_bytes        ## -- Begin function test_show_bytes
	.p2align	4, 0x90
_test_show_bytes:                       ## @test_show_bytes
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 8], edi
	mov	edi, dword ptr [rbp - 8]
	cvtsi2ss	xmm0, edi
	movss	dword ptr [rbp - 12], xmm0
	lea	rax, [rbp - 4]
	mov	qword ptr [rbp - 24], rax
	mov	edi, dword ptr [rbp - 8]
	call	_show_int
	movss	xmm0, dword ptr [rbp - 12] ## xmm0 = mem[0],zero,zero,zero
	call	_show_float
	mov	rax, qword ptr [rbp - 24]
	mov	rdi, rax
	call	_show_pointer
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
	mov	edi, 12345
	call	_test_show_bytes
	lea	rdi, [rip + L_.str.2]
	mov	esi, 6
	call	_show_bytes
	lea	rdi, [rip + L_.str.3]
	mov	qword ptr [rbp - 16], rdi
	mov	rdi, qword ptr [rbp - 16]
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 24], rdi ## 8-byte Spill
	mov	rdi, rax
	call	_strlen
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 24] ## 8-byte Reload
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
	.asciz	"12345"

L_.str.3:                               ## @.str.3
	.asciz	"abcdef"


.subsections_via_symbols
