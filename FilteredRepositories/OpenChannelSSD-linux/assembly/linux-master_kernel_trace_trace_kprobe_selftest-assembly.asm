	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_kprobe_trace_selftest_target ## -- Begin function kprobe_trace_selftest_target
	.p2align	4, 0x90
_kprobe_trace_selftest_target:          ## @kprobe_trace_selftest_target
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 12], edx
	mov	dword ptr [rbp - 16], ecx
	mov	dword ptr [rbp - 20], r8d
	mov	dword ptr [rbp - 24], r9d
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, dword ptr [rbp - 8]
	add	ecx, dword ptr [rbp - 12]
	add	ecx, dword ptr [rbp - 16]
	add	ecx, dword ptr [rbp - 20]
	add	ecx, dword ptr [rbp - 24]
	mov	eax, ecx
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
