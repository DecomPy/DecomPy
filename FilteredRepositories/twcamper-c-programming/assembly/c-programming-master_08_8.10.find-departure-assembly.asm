	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
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
	sub	rsp, 144
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 84], 0
	mov	rax, qword ptr [rip + l_main.departures]
	mov	qword ptr [rbp - 48], rax
	mov	rax, qword ptr [rip + l_main.departures+8]
	mov	qword ptr [rbp - 40], rax
	mov	rax, qword ptr [rip + l_main.departures+16]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rip + l_main.departures+24]
	mov	qword ptr [rbp - 24], rax
	mov	rax, qword ptr [rip + l_main.arrivals]
	mov	qword ptr [rbp - 80], rax
	mov	rax, qword ptr [rip + l_main.arrivals+8]
	mov	qword ptr [rbp - 72], rax
	mov	rax, qword ptr [rip + l_main.arrivals+16]
	mov	qword ptr [rbp - 64], rax
	mov	rax, qword ptr [rip + l_main.arrivals+24]
	mov	qword ptr [rbp - 56], rax
	mov	dword ptr [rbp - 112], 1439
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 100]
	lea	rdx, [rbp - 104]
	mov	dword ptr [rbp - 116], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	imul	ecx, dword ptr [rbp - 100], 60
	add	ecx, dword ptr [rbp - 104]
	mov	dword ptr [rbp - 108], ecx
	mov	dword ptr [rbp - 88], 0
	mov	dword ptr [rbp - 96], 0
	mov	dword ptr [rbp - 120], eax ## 4-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 96], 8
	jge	LBB0_6
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 108]
	movsxd	rcx, dword ptr [rbp - 96]
	sub	eax, dword ptr [rbp + 4*rcx - 48]
	mov	edi, eax
	call	_abs
	mov	dword ptr [rbp - 92], eax
	mov	eax, dword ptr [rbp - 92]
	cmp	eax, dword ptr [rbp - 112]
	jge	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 92]
	mov	dword ptr [rbp - 112], eax
	mov	eax, dword ptr [rbp - 96]
	mov	dword ptr [rbp - 88], eax
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_5
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 96]
	add	eax, 1
	mov	dword ptr [rbp - 96], eax
	jmp	LBB0_1
LBB0_6:
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	movsxd	rdi, dword ptr [rbp - 88]
	mov	edi, dword ptr [rbp + 4*rdi - 48]
	mov	dword ptr [rbp - 124], eax ## 4-byte Spill
	call	_print_am_pm
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	movsxd	rdi, dword ptr [rbp - 88]
	mov	edi, dword ptr [rbp + 4*rdi - 80]
	mov	dword ptr [rbp - 128], eax ## 4-byte Spill
	call	_print_am_pm
	lea	rdi, [rip + L_.str.4]
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdi, qword ptr [rdi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rdi, rcx
	mov	dword ptr [rbp - 132], eax ## 4-byte Spill
	jne	LBB0_8
## %bb.7:
	xor	eax, eax
	add	rsp, 144
	pop	rbp
	ret
LBB0_8:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_print_am_pm            ## -- Begin function print_am_pm
	.p2align	4, 0x90
_print_am_pm:                           ## @print_am_pm
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	dword ptr [rbp - 4], edi
	mov	eax, dword ptr [rbp - 4]
	cdq
	mov	edi, 60
	idiv	edi
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 4]
	cdq
	idiv	edi
	mov	dword ptr [rbp - 12], edx
	mov	cx, word ptr [rip + L_print_am_pm.meridian]
	mov	word ptr [rbp - 15], cx
	mov	sil, byte ptr [rip + L_print_am_pm.meridian+2]
	mov	byte ptr [rbp - 13], sil
	cmp	dword ptr [rbp - 8], 12
	jl	LBB1_2
## %bb.1:
	mov	byte ptr [rbp - 15], 80
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 12
	mov	dword ptr [rbp - 8], eax
LBB1_2:
	cmp	dword ptr [rbp - 8], 0
	jne	LBB1_4
## %bb.3:
	mov	dword ptr [rbp - 8], 12
LBB1_4:
	lea	rcx, [rbp - 15]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 12]
	lea	rdi, [rip + L_.str.5]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @main.departures
l_main.departures:
	.long	480                     ## 0x1e0
	.long	583                     ## 0x247
	.long	679                     ## 0x2a7
	.long	767                     ## 0x2ff
	.long	840                     ## 0x348
	.long	945                     ## 0x3b1
	.long	1140                    ## 0x474
	.long	1305                    ## 0x519

	.p2align	4               ## @main.arrivals
l_main.arrivals:
	.long	616                     ## 0x268
	.long	712                     ## 0x2c8
	.long	811                     ## 0x32b
	.long	900                     ## 0x384
	.long	968                     ## 0x3c8
	.long	1075                    ## 0x433
	.long	1280                    ## 0x500
	.long	1438                    ## 0x59e

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Request departure time: (24hr): "

L_.str.1:                               ## @.str.1
	.asciz	"%2d:%2d"

L_.str.2:                               ## @.str.2
	.asciz	"Closest departure time is "

L_.str.3:                               ## @.str.3
	.asciz	", arriving at "

L_.str.4:                               ## @.str.4
	.asciz	"\n"

L_print_am_pm.meridian:                 ## @print_am_pm.meridian
	.asciz	"AM"

L_.str.5:                               ## @.str.5
	.asciz	"%d:%.2d %s"


.subsections_via_symbols
