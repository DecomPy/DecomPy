	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_push_one               ## -- Begin function push_one
	.p2align	4, 0x90
_push_one:                              ## @push_one
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	rax, qword ptr [rip + _stack_one@GOTPCREL]
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rip + _sp_one]
	add	ecx, 1
	mov	dword ptr [rip + _sp_one], ecx
	movsxd	rdx, ecx
	mov	dword ptr [rax + 4*rdx], edi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_pop_one                ## -- Begin function pop_one
	.p2align	4, 0x90
_pop_one:                               ## @pop_one
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	rax, qword ptr [rip + _stack_one@GOTPCREL]
	mov	ecx, dword ptr [rip + _sp_one]
	mov	edx, ecx
	add	edx, -1
	mov	dword ptr [rip + _sp_one], edx
	movsxd	rsi, ecx
	mov	eax, dword ptr [rax + 4*rsi]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_empty_one              ## -- Begin function empty_one
	.p2align	4, 0x90
_empty_one:                             ## @empty_one
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	cmp	dword ptr [rip + _sp_one], -1
	sete	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_full_one               ## -- Begin function full_one
	.p2align	4, 0x90
_full_one:                              ## @full_one
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	cmp	dword ptr [rip + _sp_one], 99
	sete	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_push_two               ## -- Begin function push_two
	.p2align	4, 0x90
_push_two:                              ## @push_two
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	rax, qword ptr [rip + _stack_two@GOTPCREL]
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rip + _sp_two]
	add	ecx, 1
	mov	dword ptr [rip + _sp_two], ecx
	movsxd	rdx, ecx
	mov	dword ptr [rax + 4*rdx], edi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_pop_two                ## -- Begin function pop_two
	.p2align	4, 0x90
_pop_two:                               ## @pop_two
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	rax, qword ptr [rip + _stack_two@GOTPCREL]
	mov	ecx, dword ptr [rip + _sp_two]
	mov	edx, ecx
	add	edx, -1
	mov	dword ptr [rip + _sp_two], edx
	movsxd	rsi, ecx
	mov	eax, dword ptr [rax + 4*rsi]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_empty_two              ## -- Begin function empty_two
	.p2align	4, 0x90
_empty_two:                             ## @empty_two
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	cmp	dword ptr [rip + _sp_two], -1
	sete	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_full_two               ## -- Begin function full_two
	.p2align	4, 0x90
_full_two:                              ## @full_two
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	cmp	dword ptr [rip + _sp_two], 99
	sete	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_enqueue                ## -- Begin function enqueue
	.p2align	4, 0x90
_enqueue:                               ## @enqueue
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 4], edi
	call	_full_queue
	cmp	eax, 0
	je	LBB8_2
## %bb.1:
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
	jmp	LBB8_10
LBB8_2:
	call	_full_one
	cmp	eax, 0
	jne	LBB8_4
## %bb.3:
	mov	edi, dword ptr [rbp - 4]
	call	_push_one
	jmp	LBB8_10
LBB8_4:
	jmp	LBB8_5
LBB8_5:                                 ## =>This Inner Loop Header: Depth=1
	call	_full_two
	xor	ecx, ecx
	mov	dl, cl
	cmp	eax, 0
	mov	byte ptr [rbp - 9], dl  ## 1-byte Spill
	jne	LBB8_7
## %bb.6:                               ##   in Loop: Header=BB8_5 Depth=1
	call	_empty_one
	cmp	eax, 0
	setne	cl
	xor	cl, -1
	mov	byte ptr [rbp - 9], cl  ## 1-byte Spill
LBB8_7:                                 ##   in Loop: Header=BB8_5 Depth=1
	mov	al, byte ptr [rbp - 9]  ## 1-byte Reload
	test	al, 1
	jne	LBB8_8
	jmp	LBB8_9
LBB8_8:                                 ##   in Loop: Header=BB8_5 Depth=1
	call	_pop_one
	mov	edi, eax
	call	_push_two
	jmp	LBB8_5
LBB8_9:
	mov	edi, dword ptr [rbp - 4]
	call	_push_one
LBB8_10:
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_dequeue                ## -- Begin function dequeue
	.p2align	4, 0x90
_dequeue:                               ## @dequeue
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	call	_empty_two
	cmp	eax, 0
	je	LBB9_5
## %bb.1:
	jmp	LBB9_2
LBB9_2:                                 ## =>This Inner Loop Header: Depth=1
	call	_empty_one
	cmp	eax, 0
	setne	cl
	xor	cl, -1
	test	cl, 1
	jne	LBB9_3
	jmp	LBB9_4
LBB9_3:                                 ##   in Loop: Header=BB9_2 Depth=1
	call	_pop_one
	mov	dword ptr [rbp - 8], eax
	mov	edi, dword ptr [rbp - 8]
	call	_push_two
	jmp	LBB9_2
LBB9_4:
	jmp	LBB9_5
LBB9_5:
	call	_empty_two
	cmp	eax, 0
	je	LBB9_7
## %bb.6:
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4], -1
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	jmp	LBB9_9
LBB9_7:
	call	_pop_two
	mov	dword ptr [rbp - 8], eax
## %bb.8:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
LBB9_9:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_empty_queue            ## -- Begin function empty_queue
	.p2align	4, 0x90
_empty_queue:                           ## @empty_queue
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	call	_empty_one
	xor	ecx, ecx
	mov	dl, cl
	cmp	eax, 0
	mov	byte ptr [rbp - 1], dl  ## 1-byte Spill
	je	LBB10_2
## %bb.1:
	call	_empty_two
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 1], cl  ## 1-byte Spill
LBB10_2:
	mov	al, byte ptr [rbp - 1]  ## 1-byte Reload
	and	al, 1
	movzx	eax, al
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_full_queue             ## -- Begin function full_queue
	.p2align	4, 0x90
_full_queue:                            ## @full_queue
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	call	_full_one
	xor	ecx, ecx
	mov	dl, cl
	cmp	eax, 0
	mov	byte ptr [rbp - 1], dl  ## 1-byte Spill
	je	LBB11_2
## %bb.1:
	call	_full_two
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 1], cl  ## 1-byte Spill
LBB11_2:
	mov	al, byte ptr [rbp - 1]  ## 1-byte Reload
	and	al, 1
	movzx	eax, al
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
	sub	rsp, 80
	lea	rax, [rip + l_main.data]
	mov	ecx, 40
	mov	edx, ecx
	mov	r8, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	r8, qword ptr [r8]
	mov	qword ptr [rbp - 8], r8
	mov	dword ptr [rbp - 52], 0
	mov	dword ptr [rbp - 56], edi
	mov	qword ptr [rbp - 64], rsi
	lea	rsi, [rbp - 48]
	mov	rdi, rsi
	mov	rsi, rax
	call	_memcpy
	mov	dword ptr [rbp - 68], 10
	mov	dword ptr [rbp - 72], 0
LBB12_1:                                ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 72], 6
	jge	LBB12_3
## %bb.2:                               ##   in Loop: Header=BB12_1 Depth=1
	mov	eax, dword ptr [rbp - 72]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [rbp - 72], ecx
	movsxd	rdx, eax
	mov	edi, dword ptr [rbp + 4*rdx - 48]
	call	_enqueue
	jmp	LBB12_1
LBB12_3:
	jmp	LBB12_4
LBB12_4:                                ## =>This Inner Loop Header: Depth=1
	call	_empty_queue
	cmp	eax, 0
	setne	cl
	xor	cl, -1
	test	cl, 1
	jne	LBB12_5
	jmp	LBB12_6
LBB12_5:                                ##   in Loop: Header=BB12_4 Depth=1
	call	_dequeue
	lea	rdi, [rip + L_.str.2]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 76], eax ## 4-byte Spill
	jmp	LBB12_4
LBB12_6:
	jmp	LBB12_7
LBB12_7:                                ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 72]
	cmp	eax, dword ptr [rbp - 68]
	jge	LBB12_9
## %bb.8:                               ##   in Loop: Header=BB12_7 Depth=1
	mov	eax, dword ptr [rbp - 72]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [rbp - 72], ecx
	movsxd	rdx, eax
	mov	edi, dword ptr [rbp + 4*rdx - 48]
	call	_enqueue
	jmp	LBB12_7
LBB12_9:
	jmp	LBB12_10
LBB12_10:                               ## =>This Inner Loop Header: Depth=1
	call	_empty_queue
	cmp	eax, 0
	setne	cl
	xor	cl, -1
	test	cl, 1
	jne	LBB12_11
	jmp	LBB12_12
LBB12_11:                               ##   in Loop: Header=BB12_10 Depth=1
	call	_dequeue
	lea	rdi, [rip + L_.str.2]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 80], eax ## 4-byte Spill
	jmp	LBB12_10
LBB12_12:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB12_14
## %bb.13:
	xor	eax, eax
	add	rsp, 80
	pop	rbp
	ret
LBB12_14:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_sp_one                 ## @sp_one
	.p2align	2
_sp_one:
	.long	4294967295              ## 0xffffffff

	.comm	_stack_one,400,4        ## @stack_one
	.globl	_sp_two                 ## @sp_two
	.p2align	2
_sp_two:
	.long	4294967295              ## 0xffffffff

	.comm	_stack_two,400,4        ## @stack_two
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Full!\n"

L_.str.1:                               ## @.str.1
	.asciz	"Queue empty.\n"

	.section	__TEXT,__const
	.p2align	4               ## @main.data
l_main.data:
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	3                       ## 0x3
	.long	4                       ## 0x4
	.long	5                       ## 0x5
	.long	6                       ## 0x6
	.long	7                       ## 0x7
	.long	8                       ## 0x8
	.long	9                       ## 0x9
	.long	10                      ## 0xa

	.section	__TEXT,__cstring,cstring_literals
L_.str.2:                               ## @.str.2
	.asciz	"%d\n"


.subsections_via_symbols
