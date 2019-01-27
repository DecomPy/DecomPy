	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_times                  ## -- Begin function times
	.p2align	4, 0x90
_times:                                 ## @times
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	imul	esi, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 12], esi
	mov	esi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 12]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_fact                   ## -- Begin function fact
	.p2align	4, 0x90
_fact:                                  ## @fact
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	dword ptr [rbp - 8], edi
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 8]
	lea	rdi, [rip + L_.str.1]
	lea	rcx, [rbp - 8]
	mov	al, 0
	call	_printf
	cmp	dword ptr [rbp - 8], 1
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	jne	LBB1_2
## %bb.1:
	mov	esi, dword ptr [rbp - 8]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], esi
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	jmp	LBB1_3
LBB1_2:
	mov	esi, dword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 1
	lea	rdi, [rip + L_.str.3]
	mov	edx, eax
	mov	al, 0
	call	_printf
	mov	edx, dword ptr [rbp - 8]
	sub	edx, 1
	mov	edi, edx
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	call	_fact
	mov	dword ptr [rbp - 12], eax
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 12]
	lea	rdi, [rip + L_.str.4]
	mov	al, 0
	call	_printf
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	call	_times
	mov	dword ptr [rbp - 12], eax
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 12]
	lea	rdi, [rip + L_.str.5]
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 4], ecx
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
LBB1_3:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_compute                ## -- Begin function compute
	.p2align	4, 0x90
_compute:                               ## @compute
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	dword ptr [rbp - 4], 3
	lea	rdi, [rip + L_.str.6]
	lea	rsi, [rip + _fact]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.7]
	lea	rsi, [rip + _times]
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rip + L_.str.8]
	lea	rdx, [rbp - 4]
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	edi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	call	_fact
	mov	dword ptr [rbp - 8], eax
	mov	esi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	lea	rdi, [rip + L_.str.9]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_max                    ## -- Begin function max
	.p2align	4, 0x90
_max:                                   ## @max
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 12], esi
	mov	esi, dword ptr [rbp - 8]
	cmp	esi, dword ptr [rbp - 12]
	jle	LBB3_2
## %bb.1:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	jmp	LBB3_3
LBB3_2:
	mov	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 4], eax
LBB3_3:
	mov	eax, dword ptr [rbp - 4]
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
	lea	rax, [rip + _nombre]
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], 1252
	lea	rdi, [rip + L_.str.10]
	mov	rsi, rax
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rip + _msg@GOTPCREL]
	lea	rdi, [rip + L_.str.11]
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rsi, [rbp - 20]
	lea	rdi, [rip + L_.str.12]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.13]
	lea	rsi, [rip + _main]
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.14]
	lea	rsi, [rip + _max]
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.15]
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	call	_compute
	xor	eax, eax
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"\t[times(%d,%d)] : return(%d)\n"

L_.str.1:                               ## @.str.1
	.asciz	"[fact(%d)]: Valeur de n:%d, adresse: %p\n"

L_.str.2:                               ## @.str.2
	.asciz	"[fact(%d)]: return(1)\n"

L_.str.3:                               ## @.str.3
	.asciz	"[fact(%d)]: appel \303\240 fact(%d)\n"

L_.str.4:                               ## @.str.4
	.asciz	"[fact(%d)]: calcul de times(%d,%d)\n"

L_.str.5:                               ## @.str.5
	.asciz	"[fact(%d)]: return(%d)\n"

L_.str.6:                               ## @.str.6
	.asciz	"La fonction fact est \303\240 l'adresse : %p\n"

L_.str.7:                               ## @.str.7
	.asciz	"La fonction times est \303\240 l'adresse : %p\n"

L_.str.8:                               ## @.str.8
	.asciz	"La variable nombre vaut %d et est \303\240 l'adresse %p\n"

L_.str.9:                               ## @.str.9
	.asciz	"La factorielle de %d vaut %d\n"

	.section	__DATA,__data
	.globl	_matrix3                ## @matrix3
	.p2align	2
_matrix3:
	.long	1067869798              ## float 1.29999995
	.long	1075419546              ## float 2.4000001

	.section	__TEXT,__const
	.globl	_nombre                 ## @nombre
	.p2align	2
_nombre:
	.long	7                       ## 0x7

	.section	__TEXT,__cstring,cstring_literals
L_.str.10:                              ## @.str.10
	.asciz	"La variable nombre est \303\240 l'adresse : %p\n"

L_.str.11:                              ## @.str.11
	.asciz	"Le tableau msg est \303\240 l'adresse : %p\n"

	.comm	_msg,80,4               ## @msg
L_.str.12:                              ## @.str.12
	.asciz	"La variable locale f est \303\240 l'adresse : %p\n"

L_.str.13:                              ## @.str.13
	.asciz	"La fonction main est \303\240 l'adresse : %p\n"

L_.str.14:                              ## @.str.14
	.asciz	"La fonction max est \303\240 l'adresse : %p\n"

L_.str.15:                              ## @.str.15
	.asciz	"///FACT\n"

	.comm	_matrix1,16,4           ## @matrix1
	.comm	_fract,8,2              ## @fract

.subsections_via_symbols
