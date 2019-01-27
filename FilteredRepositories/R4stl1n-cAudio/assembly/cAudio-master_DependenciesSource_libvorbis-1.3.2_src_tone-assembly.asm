	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_usage                  ## -- Begin function usage
	.p2align	4, 0x90
_usage:                                 ## @usage
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	rax, qword ptr [rip + ___stderrp@GOTPCREL]
	mov	rdi, qword ptr [rax]
	lea	rsi, [rip + L_.str]
	xor	ecx, ecx
	mov	dl, cl
	mov	al, dl
	call	_fprintf
	mov	edi, 1
	mov	dword ptr [rbp - 4], eax ## 4-byte Spill
	call	_exit
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2               ## -- Begin function main
LCPI1_0:
	.long	1191181824              ## float 32767
LCPI1_1:
	.long	3338665984              ## float -32768
LCPI1_4:
	.long	1194083328              ## float 44100
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3
LCPI1_2:
	.quad	4614256656552045848     ## double 3.1415926535897931
LCPI1_3:
	.quad	4611686018427387904     ## double 2
LCPI1_5:
	.quad	4674736138332667904     ## double 32767
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
	sub	rsp, 96
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 12], 0
	mov	dword ptr [rbp - 16], edi
	mov	qword ptr [rbp - 24], rsi
	cmp	dword ptr [rbp - 16], 2
	jge	LBB1_2
## %bb.1:
	call	_usage
LBB1_2:
	mov	eax, dword ptr [rbp - 16]
	dec	eax
	movsxd	rcx, eax
	lea	rcx, [8*rcx + 15]
	and	rcx, -16
	mov	rdx, rsp
	sub	rdx, rcx
	mov	rsp, rdx
	mov	qword ptr [rbp - 40], rdx
	mov	eax, dword ptr [rbp - 16]
	dec	eax
	movsxd	rcx, eax
	lea	rcx, [8*rcx + 15]
	and	rcx, -16
	mov	rdx, rsp
	sub	rdx, rcx
	mov	rsp, rdx
	mov	qword ptr [rbp - 48], rdx
	mov	dword ptr [rbp - 28], 0
LBB1_3:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 28]
	add	ecx, 1
	movsxd	rdx, ecx
	cmp	qword ptr [rax + 8*rdx], 0
	je	LBB1_8
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=1
	mov	rax, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 28]
	add	ecx, 1
	movsxd	rdx, ecx
	mov	rdi, qword ptr [rax + 8*rdx]
	mov	esi, 44
	call	_strchr
	mov	qword ptr [rbp - 56], rax
	mov	rax, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 28]
	add	ecx, 1
	movsxd	rdx, ecx
	mov	rdi, qword ptr [rax + 8*rdx]
	call	_atof
	mov	rax, qword ptr [rbp - 40]
	movsxd	rdx, dword ptr [rbp - 28]
	movsd	qword ptr [rax + 8*rdx], xmm0
	cmp	qword ptr [rbp - 56], 0
	je	LBB1_6
## %bb.5:                               ##   in Loop: Header=BB1_3 Depth=1
	mov	rax, qword ptr [rbp - 56]
	add	rax, 1
	mov	rdi, rax
	call	_atof
	movsd	xmm1, qword ptr [rip + LCPI1_5] ## xmm1 = mem[0],zero
	mulsd	xmm0, xmm1
	mov	rax, qword ptr [rbp - 48]
	movsxd	rdi, dword ptr [rbp - 28]
	movsd	qword ptr [rax + 8*rdi], xmm0
	jmp	LBB1_7
LBB1_6:                                 ##   in Loop: Header=BB1_3 Depth=1
	movsd	xmm0, qword ptr [rip + LCPI1_5] ## xmm0 = mem[0],zero
	mov	rax, qword ptr [rbp - 48]
	movsxd	rcx, dword ptr [rbp - 28]
	movsd	qword ptr [rax + 8*rcx], xmm0
LBB1_7:                                 ##   in Loop: Header=BB1_3 Depth=1
	mov	rax, qword ptr [rip + ___stderrp@GOTPCREL]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 40]
	movsxd	rcx, dword ptr [rbp - 28]
	movsd	xmm0, qword ptr [rax + 8*rcx] ## xmm0 = mem[0],zero
	mov	rax, qword ptr [rbp - 48]
	movsxd	rcx, dword ptr [rbp - 28]
	movsd	xmm1, qword ptr [rax + 8*rcx] ## xmm1 = mem[0],zero
	lea	rsi, [rip + L_.str.1]
	mov	al, 2
	call	_fprintf
	mov	edx, dword ptr [rbp - 28]
	add	edx, 1
	mov	dword ptr [rbp - 28], edx
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
	jmp	LBB1_3
LBB1_8:
	mov	dword ptr [rbp - 28], 0
LBB1_9:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_11 Depth 2
	cmp	dword ptr [rbp - 28], 441000
	jge	LBB1_20
## %bb.10:                              ##   in Loop: Header=BB1_9 Depth=1
	xorps	xmm0, xmm0
	movss	dword ptr [rbp - 60], xmm0
	mov	dword ptr [rbp - 32], 0
LBB1_11:                                ##   Parent Loop BB1_9 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	eax, dword ptr [rbp - 32]
	mov	ecx, dword ptr [rbp - 16]
	sub	ecx, 1
	cmp	eax, ecx
	jge	LBB1_14
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	movsd	xmm0, qword ptr [rip + LCPI1_2] ## xmm0 = mem[0],zero
	movsd	xmm1, qword ptr [rip + LCPI1_3] ## xmm1 = mem[0],zero
	movss	xmm2, dword ptr [rip + LCPI1_4] ## xmm2 = mem[0],zero,zero,zero
	mov	rax, qword ptr [rbp - 48]
	movsxd	rcx, dword ptr [rbp - 32]
	movsd	xmm3, qword ptr [rax + 8*rcx] ## xmm3 = mem[0],zero
	mov	edx, dword ptr [rbp - 28]
	cvtsi2ss	xmm4, edx
	divss	xmm4, xmm2
	cvtss2sd	xmm2, xmm4
	mov	rax, qword ptr [rbp - 40]
	movsxd	rcx, dword ptr [rbp - 32]
	mulsd	xmm2, qword ptr [rax + 8*rcx]
	mulsd	xmm2, xmm1
	mulsd	xmm2, xmm0
	movaps	xmm0, xmm2
	movsd	qword ptr [rbp - 80], xmm3 ## 8-byte Spill
	call	_sin
	movsd	xmm1, qword ptr [rbp - 80] ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	mulsd	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 60] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	addsd	xmm0, xmm1
	cvtsd2ss	xmm0, xmm0
	movss	dword ptr [rbp - 60], xmm0
## %bb.13:                              ##   in Loop: Header=BB1_11 Depth=2
	mov	eax, dword ptr [rbp - 32]
	add	eax, 1
	mov	dword ptr [rbp - 32], eax
	jmp	LBB1_11
LBB1_14:                                ##   in Loop: Header=BB1_9 Depth=1
	movss	xmm0, dword ptr [rip + LCPI1_0] ## xmm0 = mem[0],zero,zero,zero
	movss	xmm1, dword ptr [rbp - 60] ## xmm1 = mem[0],zero,zero,zero
	cvtss2sd	xmm1, xmm1
	roundsd	xmm1, xmm1, 4
	cvttsd2si	eax, xmm1
	mov	dword ptr [rbp - 64], eax
	mov	eax, dword ptr [rbp - 64]
	cvtsi2ss	xmm1, eax
	ucomiss	xmm1, xmm0
	jbe	LBB1_16
## %bb.15:                              ##   in Loop: Header=BB1_9 Depth=1
	mov	dword ptr [rbp - 64], 32767
LBB1_16:                                ##   in Loop: Header=BB1_9 Depth=1
	movss	xmm0, dword ptr [rip + LCPI1_1] ## xmm0 = mem[0],zero,zero,zero
	mov	eax, dword ptr [rbp - 64]
	cvtsi2ss	xmm1, eax
	ucomiss	xmm0, xmm1
	jbe	LBB1_18
## %bb.17:                              ##   in Loop: Header=BB1_9 Depth=1
	mov	dword ptr [rbp - 64], -32768
LBB1_18:                                ##   in Loop: Header=BB1_9 Depth=1
	mov	rax, qword ptr [rip + ___stdoutp@GOTPCREL]
	mov	rdi, qword ptr [rax]
	mov	ecx, dword ptr [rbp - 64]
	and	ecx, 255
	mov	dl, cl
	movsx	edx, dl
	mov	ecx, dword ptr [rbp - 64]
	sar	ecx, 8
	and	ecx, 255
	mov	sil, cl
	movsx	ecx, sil
	mov	r8d, dword ptr [rbp - 64]
	and	r8d, 255
	mov	sil, r8b
	movsx	r8d, sil
	mov	r9d, dword ptr [rbp - 64]
	sar	r9d, 8
	and	r9d, 255
	mov	sil, r9b
	movsx	r9d, sil
	lea	rsi, [rip + L_.str.2]
	mov	al, 0
	call	_fprintf
	mov	dword ptr [rbp - 84], eax ## 4-byte Spill
## %bb.19:                              ##   in Loop: Header=BB1_9 Depth=1
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	dword ptr [rbp - 28], eax
	jmp	LBB1_9
LBB1_20:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB1_22
## %bb.21:
	xor	eax, eax
	mov	rsp, rbp
	pop	rbp
	ret
LBB1_22:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"tone <frequency_Hz>,[<amplitude>] [<frequency_Hz>,[<amplitude>]...]\n"

L_.str.1:                               ## @.str.1
	.asciz	"%g Hz, %g amp\n"

L_.str.2:                               ## @.str.2
	.asciz	"%c%c%c%c"


.subsections_via_symbols
