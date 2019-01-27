	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_os_thread_yield        ## -- Begin function os_thread_yield
	.p2align	4, 0x90
_os_thread_yield:                       ## @os_thread_yield
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	xor	eax, eax
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	___flash_acquire        ## -- Begin function __flash_acquire
	.p2align	4, 0x90
___flash_acquire:                       ## @__flash_acquire
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	___flash_release        ## -- Begin function __flash_release
	.p2align	4, 0x90
___flash_release:                       ## @__flash_release
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_periph_lock            ## -- Begin function periph_lock
	.p2align	4, 0x90
_periph_lock:                           ## @periph_lock
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_periph_unlock          ## -- Begin function periph_unlock
	.p2align	4, 0x90
_periph_unlock:                         ## @periph_unlock
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
