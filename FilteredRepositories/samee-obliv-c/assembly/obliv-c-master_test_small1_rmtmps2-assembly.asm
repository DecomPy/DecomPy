	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	___mmdrop               ## -- Begin function __mmdrop
	.p2align	4, 0x90
___mmdrop:                              ## @__mmdrop
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
	.globl	_mmput                  ## -- Begin function mmput
	.p2align	4, 0x90
_mmput:                                 ## @mmput
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	_atomic_dec_and_test
	cmp	eax, 0
	je	LBB1_2
## %bb.1:
	mov	rdi, qword ptr [rbp - 8]
	call	_mmdrop
LBB1_2:
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function atomic_dec_and_test
_atomic_dec_and_test:                   ## @atomic_dec_and_test
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	## InlineAsm Start
	dec	dword ptr [rdi]
	sete	byte ptr [rbp - 9]
	## InlineAsm End
	movzx	ecx, byte ptr [rbp - 9]
	cmp	ecx, 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function mmdrop
_mmdrop:                                ## @mmdrop
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, 4
	call	_atomic_dec_and_test
	cmp	eax, 0
	je	LBB3_2
## %bb.1:
	mov	rdi, qword ptr [rbp - 8]
	call	___mmdrop
LBB3_2:
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
	xor	eax, eax
	mov	dword ptr [rbp - 4], 0
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
