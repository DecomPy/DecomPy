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
	lea	rax, [rbp - 8]
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
	.globl	_simple_show_a          ## -- Begin function simple_show_a
	.p2align	4, 0x90
_simple_show_a:                         ## @simple_show_a
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 4], -2023406815
	lea	rax, [rbp - 4]
	mov	qword ptr [rbp - 16], rax
	mov	rdi, qword ptr [rbp - 16]
	mov	esi, 1
	call	_show_bytes
	mov	rdi, qword ptr [rbp - 16]
	mov	esi, 2
	call	_show_bytes
	mov	rdi, qword ptr [rbp - 16]
	mov	esi, 3
	call	_show_bytes
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_simple_show_b          ## -- Begin function simple_show_b
	.p2align	4, 0x90
_simple_show_b:                         ## @simple_show_b
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 4], 305419896
	lea	rax, [rbp - 4]
	mov	qword ptr [rbp - 16], rax
	mov	rdi, qword ptr [rbp - 16]
	mov	esi, 1
	call	_show_bytes
	mov	rdi, qword ptr [rbp - 16]
	mov	esi, 2
	call	_show_bytes
	mov	rdi, qword ptr [rbp - 16]
	mov	esi, 3
	call	_show_bytes
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_float_eg               ## -- Begin function float_eg
	.p2align	4, 0x90
_float_eg:                              ## @float_eg
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 4], 3490593
	mov	eax, dword ptr [rbp - 4]
	cvtsi2ss	xmm0, eax
	movss	dword ptr [rbp - 8], xmm0
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	edi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	call	_show_int
	movss	xmm0, dword ptr [rbp - 8] ## xmm0 = mem[0],zero,zero,zero
	call	_show_float
	mov	dword ptr [rbp - 4], 3510593
	mov	eax, dword ptr [rbp - 4]
	cvtsi2ss	xmm0, eax
	movss	dword ptr [rbp - 8], xmm0
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	edi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	call	_show_int
	movss	xmm0, dword ptr [rbp - 8] ## xmm0 = mem[0],zero,zero,zero
	call	_show_float
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_string_ueg             ## -- Begin function string_ueg
	.p2align	4, 0x90
_string_ueg:                            ## @string_ueg
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	lea	rax, [rip + L_.str.3]
	mov	qword ptr [rbp - 8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rdi ## 8-byte Spill
	mov	rdi, rax
	call	_strlen
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 16] ## 8-byte Reload
	mov	esi, ecx
	call	_show_bytes
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_string_leg             ## -- Begin function string_leg
	.p2align	4, 0x90
_string_leg:                            ## @string_leg
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	lea	rax, [rip + L_.str.4]
	mov	qword ptr [rbp - 8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rdi ## 8-byte Spill
	mov	rdi, rax
	call	_strlen
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 16] ## 8-byte Reload
	mov	esi, ecx
	call	_show_bytes
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_show_twocomp           ## -- Begin function show_twocomp
	.p2align	4, 0x90
_show_twocomp:                          ## @show_twocomp
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	xor	eax, eax
	mov	word ptr [rbp - 2], 12345
	movsx	ecx, word ptr [rbp - 2]
	sub	eax, ecx
	mov	dx, ax
	mov	word ptr [rbp - 4], dx
	lea	rsi, [rbp - 2]
	mov	rdi, rsi
	mov	esi, 2
	call	_show_bytes
	lea	rdi, [rbp - 4]
	mov	esi, 2
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
	sub	rsp, 48
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], 12345
	cmp	dword ptr [rbp - 8], 1
	jle	LBB11_4
## %bb.1:
	cmp	dword ptr [rbp - 8], 1
	jle	LBB11_3
## %bb.2:
	xor	eax, eax
	mov	esi, eax
	xor	edx, edx
	mov	rcx, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rcx + 8]
	call	_strtol
	mov	edx, eax
	mov	dword ptr [rbp - 20], edx
LBB11_3:
	lea	rdi, [rip + L_.str.5]
	mov	al, 0
	call	_printf
	mov	edi, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	call	_test_show_bytes
	jmp	LBB11_5
LBB11_4:
	lea	rdi, [rip + L_.str.6]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	call	_show_twocomp
	lea	rdi, [rip + L_.str.7]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	call	_simple_show_a
	lea	rdi, [rip + L_.str.8]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	call	_simple_show_b
	lea	rdi, [rip + L_.str.9]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	call	_float_eg
	lea	rdi, [rip + L_.str.10]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	call	_string_ueg
	lea	rdi, [rip + L_.str.11]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
	call	_string_leg
LBB11_5:
	xor	eax, eax
	add	rsp, 48
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
	.asciz	"For x = %d\n"

L_.str.3:                               ## @.str.3
	.asciz	"ABCDEF"

L_.str.4:                               ## @.str.4
	.asciz	"abcdef"

L_.str.5:                               ## @.str.5
	.asciz	"calling test_show_bytes\n"

L_.str.6:                               ## @.str.6
	.asciz	"calling show_twocomp\n"

L_.str.7:                               ## @.str.7
	.asciz	"Calling simple_show_a\n"

L_.str.8:                               ## @.str.8
	.asciz	"Calling simple_show_b\n"

L_.str.9:                               ## @.str.9
	.asciz	"Calling float_eg\n"

L_.str.10:                              ## @.str.10
	.asciz	"Calling string_ueg\n"

L_.str.11:                              ## @.str.11
	.asciz	"Calling string_leg\n"


.subsections_via_symbols
