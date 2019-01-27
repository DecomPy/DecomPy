	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI0_0:
	.quad	4633187891898314916     ## double 56.780000000000001
LCPI0_1:
	.quad	4623136420479977390     ## double 12.34
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
	sub	rsp, 16
	mov	rax, qword ptr [rip + _point_array@GOTPCREL]
	movsd	xmm0, qword ptr [rip + LCPI0_0] ## xmm0 = mem[0],zero
	movsd	xmm1, qword ptr [rip + LCPI0_1] ## xmm1 = mem[0],zero
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], 10
	movsxd	rcx, dword ptr [rbp - 8]
	shl	rcx, 4
	mov	rdx, rax
	add	rdx, rcx
	movsd	qword ptr [rdx], xmm1
	movsxd	rcx, dword ptr [rbp - 8]
	shl	rcx, 4
	mov	rdx, rax
	add	rdx, rcx
	movsd	qword ptr [rdx + 8], xmm0
	movsxd	rcx, dword ptr [rbp - 8]
	shl	rcx, 4
	mov	rdx, rax
	add	rdx, rcx
	movsd	xmm0, qword ptr [rdx]   ## xmm0 = mem[0],zero
	movsxd	rcx, dword ptr [rbp - 8]
	shl	rcx, 4
	add	rax, rcx
	movsd	xmm1, qword ptr [rax + 8] ## xmm1 = mem[0],zero
	lea	rdi, [rip + L_.str]
	mov	al, 2
	call	_printf
	xor	esi, esi
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	mov	eax, esi
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.comm	_point_array,1600,4     ## @point_array
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%f, %f\n"


.subsections_via_symbols
