	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_main_without__main     ## -- Begin function main_without__main
	.p2align	4, 0x90
_main_without__main:                    ## @main_without__main
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 192
	call	_foo
	mov	dword ptr [rbp - 4], eax
	call	_foo
	mov	dword ptr [rbp - 8], eax
	call	_foo
	mov	dword ptr [rbp - 12], eax
	call	_foo
	mov	dword ptr [rbp - 16], eax
	call	_dfoo
	cvtsd2ss	xmm0, xmm0
	movss	dword ptr [rbp - 20], xmm0
	call	_dfoo
	cvtsd2ss	xmm0, xmm0
	movss	dword ptr [rbp - 24], xmm0
	call	_dfoo
	movsd	qword ptr [rbp - 32], xmm0
	call	_dfoo
	movsd	qword ptr [rbp - 40], xmm0
	mov	eax, dword ptr [rbp - 4]
	imul	eax, dword ptr [rbp - 8]
	mov	edi, eax
	call	_discard
	mov	edi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	mov	eax, edi
	cdq
	idiv	dword ptr [rbp - 8]
	mov	edi, eax
	call	_discard
	mov	edi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
	mov	eax, edi
	cdq
	idiv	dword ptr [rbp - 8]
	mov	edi, edx
	call	_discard
	mov	edx, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	mov	eax, edx
	xor	edx, edx
	div	dword ptr [rbp - 16]
	mov	edi, eax
	call	_discard
	mov	edi, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
	mov	eax, edi
	xor	edi, edi
	mov	edx, edi
	div	dword ptr [rbp - 16]
	mov	edi, edx
	call	_discard
	mov	edx, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
                                        ## kill: def $cl killed $ecx
	sar	edx, cl
	mov	edi, edx
	mov	dword ptr [rbp - 60], eax ## 4-byte Spill
	call	_discard
	mov	edx, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
                                        ## kill: def $cl killed $ecx
	shl	edx, cl
	mov	edi, edx
	mov	dword ptr [rbp - 64], eax ## 4-byte Spill
	call	_discard
	mov	edx, dword ptr [rbp - 12]
	mov	ecx, dword ptr [rbp - 16]
                                        ## kill: def $cl killed $ecx
	shr	edx, cl
	mov	edi, edx
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
	call	_discard
	mov	edx, dword ptr [rbp - 12]
	mov	ecx, dword ptr [rbp - 16]
                                        ## kill: def $cl killed $ecx
	shl	edx, cl
	mov	edi, edx
	mov	dword ptr [rbp - 72], eax ## 4-byte Spill
	call	_discard
	movsd	xmm0, qword ptr [rbp - 32] ## xmm0 = mem[0],zero
	addsd	xmm0, qword ptr [rbp - 40]
	mov	dword ptr [rbp - 76], eax ## 4-byte Spill
	call	_ddiscard
	movsd	xmm0, qword ptr [rbp - 32] ## xmm0 = mem[0],zero
	subsd	xmm0, qword ptr [rbp - 40]
	mov	dword ptr [rbp - 80], eax ## 4-byte Spill
	call	_ddiscard
	movsd	xmm0, qword ptr [rbp - 32] ## xmm0 = mem[0],zero
	mulsd	xmm0, qword ptr [rbp - 40]
	mov	dword ptr [rbp - 84], eax ## 4-byte Spill
	call	_ddiscard
	movsd	xmm0, qword ptr [rbp - 32] ## xmm0 = mem[0],zero
	divsd	xmm0, qword ptr [rbp - 40]
	mov	dword ptr [rbp - 88], eax ## 4-byte Spill
	call	_ddiscard
	movsd	xmm0, qword ptr [rbp - 32] ## xmm0 = mem[0],zero
	movq	rsi, xmm0
	movabs	r8, -9223372036854775808
	xor	rsi, r8
	movq	xmm0, rsi
	mov	dword ptr [rbp - 92], eax ## 4-byte Spill
	call	_ddiscard
	movss	xmm0, dword ptr [rbp - 20] ## xmm0 = mem[0],zero,zero,zero
	addss	xmm0, dword ptr [rbp - 24]
	cvtss2sd	xmm0, xmm0
	mov	dword ptr [rbp - 96], eax ## 4-byte Spill
	call	_ddiscard
	movss	xmm0, dword ptr [rbp - 20] ## xmm0 = mem[0],zero,zero,zero
	subss	xmm0, dword ptr [rbp - 24]
	cvtss2sd	xmm0, xmm0
	mov	dword ptr [rbp - 100], eax ## 4-byte Spill
	call	_ddiscard
	movss	xmm0, dword ptr [rbp - 20] ## xmm0 = mem[0],zero,zero,zero
	mulss	xmm0, dword ptr [rbp - 24]
	cvtss2sd	xmm0, xmm0
	mov	dword ptr [rbp - 104], eax ## 4-byte Spill
	call	_ddiscard
	movss	xmm0, dword ptr [rbp - 20] ## xmm0 = mem[0],zero,zero,zero
	divss	xmm0, dword ptr [rbp - 24]
	cvtss2sd	xmm0, xmm0
	mov	dword ptr [rbp - 108], eax ## 4-byte Spill
	call	_ddiscard
	movss	xmm0, dword ptr [rbp - 20] ## xmm0 = mem[0],zero,zero,zero
	movd	edx, xmm0
	xor	edx, 2147483648
	movd	xmm0, edx
	cvtss2sd	xmm0, xmm0
	mov	dword ptr [rbp - 112], eax ## 4-byte Spill
	call	_ddiscard
	cvttsd2si	edi, qword ptr [rbp - 32]
	mov	dword ptr [rbp - 116], eax ## 4-byte Spill
	call	_discard
	cvttss2si	edi, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 120], eax ## 4-byte Spill
	call	_discard
	mov	edx, dword ptr [rbp - 4]
	cvtsi2sd	xmm0, edx
	mov	dword ptr [rbp - 124], eax ## 4-byte Spill
	call	_ddiscard
	mov	edx, dword ptr [rbp - 4]
	cvtsi2ss	xmm0, edx
	cvtss2sd	xmm0, xmm0
	mov	dword ptr [rbp - 128], eax ## 4-byte Spill
	call	_ddiscard
	movsd	xmm0, qword ptr [rbp - 32] ## xmm0 = mem[0],zero
	cvtsd2ss	xmm0, xmm0
	cvtss2sd	xmm0, xmm0
	mov	dword ptr [rbp - 132], eax ## 4-byte Spill
	call	_ddiscard
	movsd	xmm0, qword ptr [rbp - 32] ## xmm0 = mem[0],zero
	ucomisd	xmm0, qword ptr [rbp - 40]
	sete	cl
	setnp	r9b
	and	cl, r9b
	and	cl, 1
	movzx	edi, cl
	mov	dword ptr [rbp - 136], eax ## 4-byte Spill
	call	_discard
	movsd	xmm0, qword ptr [rbp - 32] ## xmm0 = mem[0],zero
	movsd	xmm1, qword ptr [rbp - 40] ## xmm1 = mem[0],zero
	ucomisd	xmm1, xmm0
	seta	cl
	and	cl, 1
	movzx	edi, cl
	mov	dword ptr [rbp - 140], eax ## 4-byte Spill
	call	_discard
	movsd	xmm0, qword ptr [rbp - 32] ## xmm0 = mem[0],zero
	ucomisd	xmm0, qword ptr [rbp - 40]
	seta	cl
	and	cl, 1
	movzx	edi, cl
	mov	dword ptr [rbp - 144], eax ## 4-byte Spill
	call	_discard
	movsd	xmm0, qword ptr [rbp - 32] ## xmm0 = mem[0],zero
	ucomisd	xmm0, qword ptr [rbp - 40]
	setne	cl
	setp	r9b
	or	cl, r9b
	and	cl, 1
	movzx	edi, cl
	mov	dword ptr [rbp - 148], eax ## 4-byte Spill
	call	_discard
	movsd	xmm0, qword ptr [rbp - 32] ## xmm0 = mem[0],zero
	movsd	xmm1, qword ptr [rbp - 40] ## xmm1 = mem[0],zero
	ucomisd	xmm1, xmm0
	setae	cl
	and	cl, 1
	movzx	edi, cl
	mov	dword ptr [rbp - 152], eax ## 4-byte Spill
	call	_discard
	movsd	xmm0, qword ptr [rbp - 32] ## xmm0 = mem[0],zero
	ucomisd	xmm0, qword ptr [rbp - 40]
	setae	cl
	and	cl, 1
	movzx	edi, cl
	mov	dword ptr [rbp - 156], eax ## 4-byte Spill
	call	_discard
	movss	xmm0, dword ptr [rbp - 20] ## xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, dword ptr [rbp - 24]
	sete	cl
	setnp	r9b
	and	cl, r9b
	and	cl, 1
	movzx	edi, cl
	mov	dword ptr [rbp - 160], eax ## 4-byte Spill
	call	_discard
	movss	xmm0, dword ptr [rbp - 20] ## xmm0 = mem[0],zero,zero,zero
	movss	xmm1, dword ptr [rbp - 24] ## xmm1 = mem[0],zero,zero,zero
	ucomiss	xmm1, xmm0
	seta	cl
	and	cl, 1
	movzx	edi, cl
	mov	dword ptr [rbp - 164], eax ## 4-byte Spill
	call	_discard
	movss	xmm0, dword ptr [rbp - 20] ## xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, dword ptr [rbp - 24]
	seta	cl
	and	cl, 1
	movzx	edi, cl
	mov	dword ptr [rbp - 168], eax ## 4-byte Spill
	call	_discard
	movss	xmm0, dword ptr [rbp - 20] ## xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, dword ptr [rbp - 24]
	setne	cl
	setp	r9b
	or	cl, r9b
	and	cl, 1
	movzx	edi, cl
	mov	dword ptr [rbp - 172], eax ## 4-byte Spill
	call	_discard
	movss	xmm0, dword ptr [rbp - 20] ## xmm0 = mem[0],zero,zero,zero
	movss	xmm1, dword ptr [rbp - 24] ## xmm1 = mem[0],zero,zero,zero
	ucomiss	xmm1, xmm0
	setae	cl
	and	cl, 1
	movzx	edi, cl
	mov	dword ptr [rbp - 176], eax ## 4-byte Spill
	call	_discard
	movss	xmm0, dword ptr [rbp - 20] ## xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, dword ptr [rbp - 24]
	setae	cl
	and	cl, 1
	movzx	edi, cl
	mov	dword ptr [rbp - 180], eax ## 4-byte Spill
	call	_discard
	xor	edx, edx
	mov	dword ptr [rbp - 184], eax ## 4-byte Spill
	mov	eax, edx
	add	rsp, 192
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_discard                ## -- Begin function discard
	.p2align	4, 0x90
_discard:                               ## @discard
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 8], edi
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_ddiscard               ## -- Begin function ddiscard
	.p2align	4, 0x90
_ddiscard:                              ## @ddiscard
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movsd	qword ptr [rbp - 16], xmm0
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_foo                    ## -- Begin function foo
	.p2align	4, 0x90
_foo:                                   ## @foo
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	eax, dword ptr [rip + _foo.idx]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [rip + _foo.idx], ecx
	movsxd	rdx, eax
	lea	rsi, [rip + _foo.table]
	mov	eax, dword ptr [rsi + 4*rdx]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_dfoo                   ## -- Begin function dfoo
	.p2align	4, 0x90
_dfoo:                                  ## @dfoo
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	eax, dword ptr [rip + _dfoo.idx]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [rip + _dfoo.idx], ecx
	movsxd	rdx, eax
	lea	rsi, [rip + _dfoo.table]
	movsd	xmm0, qword ptr [rsi + 8*rdx] ## xmm0 = mem[0],zero
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_memcpy                 ## -- Begin function memcpy
	.p2align	4, 0x90
_memcpy:                                ## @memcpy
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
	.globl	start                   ## -- Begin function start
	.p2align	4, 0x90
start:                                  ## @"\01start"
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
	.globl	_start                  ## -- Begin function _start
	.p2align	4, 0x90
_start:                                 ## @"\01_start"
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
	.globl	__start                 ## -- Begin function __start
	.p2align	4, 0x90
__start:                                ## @"\01__start"
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
	.globl	_mainCRTStartup         ## -- Begin function mainCRTStartup
	.p2align	4, 0x90
_mainCRTStartup:                        ## @mainCRTStartup
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
	.section	__DATA,__data
	.p2align	4               ## @foo.table
_foo.table:
	.long	20                      ## 0x14
	.long	69                      ## 0x45
	.long	4                       ## 0x4
	.long	12                      ## 0xc

.zerofill __DATA,__bss,_foo.idx,4,2     ## @foo.idx
	.p2align	4               ## @dfoo.table
_dfoo.table:
	.quad	4626435307207026278     ## double 20.399999999999999
	.quad	4634623414279539261     ## double 69.959999999999994
	.quad	4616639978017495450     ## double 4.4000000000000004
	.quad	4641318366969346392     ## double 202.202

.zerofill __DATA,__bss,_dfoo.idx,4,2    ## @dfoo.idx

.subsections_via_symbols
