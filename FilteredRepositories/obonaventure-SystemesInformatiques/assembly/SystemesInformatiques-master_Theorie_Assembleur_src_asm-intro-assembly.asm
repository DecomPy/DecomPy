	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_add                    ## -- Begin function add
	.p2align	4, 0x90
_add:                                   ## @add
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	eax, dword ptr [rip + _global_i]
	add	eax, dword ptr [rip + _global_j]
	mov	dword ptr [rbp - 4], eax
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_sum                    ## -- Begin function sum
	.p2align	4, 0x90
_sum:                                   ## @sum
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	add	esi, dword ptr [rbp - 8]
	mov	eax, esi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_sumn                   ## -- Begin function sumn
	.p2align	4, 0x90
_sumn:                                  ## @sumn
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 8], edi
	cmp	dword ptr [rbp - 8], 0
	jle	LBB2_2
## %bb.1:
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 8]
	sub	ecx, 1
	mov	edi, ecx
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	call	_sumn
	mov	ecx, dword ptr [rbp - 12] ## 4-byte Reload
	add	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	jmp	LBB2_3
LBB2_2:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
LBB2_3:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_while_loop             ## -- Begin function while_loop
	.p2align	4, 0x90
_while_loop:                            ## @while_loop
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], 1
	mov	dword ptr [rbp - 8], 17
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 4]
	cmp	eax, dword ptr [rbp - 8]
	jge	LBB3_3
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	mov	eax, dword ptr [rbp - 4]
	add	eax, 2
	mov	dword ptr [rbp - 4], eax
	jmp	LBB3_1
LBB3_3:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2               ## -- Begin function main
LCPI4_0:
	.long	1065353216              ## float 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
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
	movss	xmm0, dword ptr [rip + LCPI4_0] ## xmm0 = mem[0],zero,zero,zero
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], 1
	movss	dword ptr [rbp - 24], xmm0
	mov	byte ptr [rbp - 25], 99
	call	_while_loop
	lea	rdi, [rip + L_.str]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	call	_add
	lea	rdi, [rip + L_.str.1]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	edi, 3
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	call	_sumn
	lea	rdi, [rip + L_.str.2]
	mov	esi, eax
	mov	al, 0
	call	_printf
	xor	esi, esi
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	mov	eax, esi
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_global_int             ## @global_int
	.p2align	2
_global_int:
	.long	1                       ## 0x1

	.globl	_global_i               ## @global_i
	.p2align	2
_global_i:
	.long	1                       ## 0x1

	.globl	_global_j               ## @global_j
	.p2align	2
_global_j:
	.long	1                       ## 0x1

	.globl	_global_float           ## @global_float
	.p2align	2
_global_float:
	.long	1065353216              ## float 1

	.globl	_global_char            ## @global_char
_global_char:
	.byte	99                      ## 0x63

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"while0=%d\n"

L_.str.1:                               ## @.str.1
	.asciz	"add=%d\n"

L_.str.2:                               ## @.str.2
	.asciz	"sumn(3)=%d\n"


.subsections_via_symbols
