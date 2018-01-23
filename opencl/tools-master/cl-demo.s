	.file	"cl-demo.c"
	.text
	.type	get_timestamp, @function
get_timestamp:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	get_timestamp, .-get_timestamp
	.type	timestamp_diff_in_seconds, @function
timestamp_diff_in_seconds:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r8, %rdi
	movq	%rsi, -32(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	testq	%rax, %rax
	jns	.L3
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	subq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	leaq	1000000000(%rax), %rdx
	movq	-24(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -8(%rbp)
	jmp	.L4
.L3:
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -8(%rbp)
.L4:
	movq	-16(%rbp), %rax
	cvtsi2sdq	%rax, %xmm1
	movq	-8(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC0(%rip), %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movsd	-56(%rbp), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	timestamp_diff_in_seconds, .-timestamp_diff_in_seconds
	.section	.rodata
.LC1:
	.string	"need two arguments!\n"
.LC2:
	.string	"vec-add-soln.cl"
.LC3:
	.string	"sum"
.LC4:
	.string	"alloc x"
.LC5:
	.string	"alloc y"
.LC6:
	.string	"alloc z"
.LC7:
	.string	"cl-demo.c"
.LC8:
	.string	"clCreateBuffer"
	.align 8
.LC9:
	.string	"*** '%s' in '%s' on line %d failed with error '%s'.\n"
.LC10:
	.string	"clEnqueueWriteBuffer"
.LC11:
	.string	"clFinish"
.LC12:
	.string	"clSetKernelArg"
.LC13:
	.string	"clEnqueueNDRangeKernel"
.LC14:
	.string	"%f s\n"
.LC16:
	.string	"%f GB/s\n"
.LC17:
	.string	"clEnqueueReadBuffer"
.LC18:
	.string	"BAD %ld %f %f!\n"
.LC19:
	.string	"GOOD"
.LC20:
	.string	"clReleaseMemObject"
.LC21:
	.string	"clReleaseKernel"
.LC22:
	.string	"clReleaseCommandQueue"
.LC23:
	.string	"clReleaseContext"
	.text
	.globl	main
	.type	main, @function
main:
.LFB498:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$296, %rsp
	.cfi_offset 3, -24
	movl	%edi, -260(%rbp)
	movq	%rsi, -272(%rbp)
	cmpl	$3, -260(%rbp)
	je	.L7
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$20, %edx
	movl	$1, %esi
	movl	$.LC1, %edi
	call	fwrite
	call	abort
.L7:
	movq	-272(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atol
	movq	%rax, -160(%rbp)
	movq	-272(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -244(%rbp)
	movq	CHOOSE_INTERACTIVELY(%rip), %rsi
	movq	CHOOSE_INTERACTIVELY(%rip), %rax
	leaq	-144(%rbp), %rcx
	leaq	-152(%rbp), %rdx
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	create_context_on
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	print_device_info_from_queue
	movl	$.LC2, %edi
	call	read_file
	movq	%rax, -96(%rbp)
	movq	-152(%rbp), %rax
	movq	-96(%rbp), %rsi
	movl	$0, %ecx
	movl	$.LC3, %edx
	movq	%rax, %rdi
	call	kernel_from_string
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-160(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L8
	movl	$.LC4, %edi
	call	perror
	call	abort
.L8:
	movq	-160(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L9
	movl	$.LC5, %edi
	call	perror
	call	abort
.L9:
	movq	-160(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L10
	movl	$.LC6, %edi
	call	perror
	call	abort
.L10:
	movq	$0, -112(%rbp)
	jmp	.L11
.L16:
	movq	-112(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-112(%rbp), %rax
	testq	%rax, %rax
	js	.L12
	cvtsi2ssq	%rax, %xmm0
	jmp	.L13
.L12:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L13:
	movss	%xmm0, (%rcx)
	movq	-112(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-112(%rbp), %rax
	addq	%rax, %rax
	testq	%rax, %rax
	js	.L14
	cvtsi2ssq	%rax, %xmm0
	jmp	.L15
.L14:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L15:
	movss	%xmm0, (%rcx)
	addq	$1, -112(%rbp)
.L11:
	movq	-160(%rbp), %rax
	cmpq	-112(%rbp), %rax
	ja	.L16
	movq	-160(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-152(%rbp), %rax
	leaq	-252(%rbp), %rcx
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$1, %esi
	movq	%rax, %rdi
	call	clCreateBuffer
	movq	%rax, -136(%rbp)
	movl	-252(%rbp), %eax
	testl	%eax, %eax
	je	.L17
	movl	-252(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$53, %r8d
	movl	$.LC7, %ecx
	movl	$.LC8, %edx
	movl	$.LC9, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L17:
	movq	-160(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-152(%rbp), %rax
	leaq	-252(%rbp), %rcx
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$1, %esi
	movq	%rax, %rdi
	call	clCreateBuffer
	movq	%rax, -128(%rbp)
	movl	-252(%rbp), %eax
	testl	%eax, %eax
	je	.L18
	movl	-252(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$57, %r8d
	movl	$.LC7, %ecx
	movl	$.LC8, %edx
	movl	$.LC9, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L18:
	movq	-160(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-152(%rbp), %rax
	leaq	-252(%rbp), %rcx
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$1, %esi
	movq	%rax, %rdi
	call	clCreateBuffer
	movq	%rax, -120(%rbp)
	movl	-252(%rbp), %eax
	testl	%eax, %eax
	je	.L19
	movl	-252(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$61, %r8d
	movl	$.LC7, %ecx
	movl	$.LC8, %edx
	movl	$.LC9, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L19:
	movq	-160(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	movq	-136(%rbp), %rsi
	movq	-144(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	$0, 16(%rsp)
	movq	$0, 8(%rsp)
	movl	$0, (%rsp)
	movq	%rdx, %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	clEnqueueWriteBuffer
	movl	%eax, -240(%rbp)
	cmpl	$0, -240(%rbp)
	je	.L20
	movl	-240(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$69, %r8d
	movl	$.LC7, %ecx
	movl	$.LC10, %edx
	movl	$.LC9, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L20:
	movq	-160(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	movq	-128(%rbp), %rsi
	movq	-144(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	$0, 16(%rsp)
	movq	$0, 8(%rsp)
	movl	$0, (%rsp)
	movq	%rdx, %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	clEnqueueWriteBuffer
	movl	%eax, -236(%rbp)
	cmpl	$0, -236(%rbp)
	je	.L21
	movl	-236(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$74, %r8d
	movl	$.LC7, %ecx
	movl	$.LC10, %edx
	movl	$.LC9, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L21:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	clFinish
	movl	%eax, -232(%rbp)
	cmpl	$0, -232(%rbp)
	je	.L22
	movl	-232(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$80, %r8d
	movl	$.LC7, %ecx
	movl	$.LC11, %edx
	movl	$.LC9, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L22:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	get_timestamp
	movl	$0, -248(%rbp)
	jmp	.L23
.L29:
	leaq	-136(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	clSetKernelArg
	movl	%eax, -228(%rbp)
	cmpl	$0, -228(%rbp)
	je	.L24
	movl	-228(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$87, %r8d
	movl	$.LC7, %ecx
	movl	$.LC12, %edx
	movl	$.LC9, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L24:
	leaq	-128(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	$8, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	clSetKernelArg
	movl	%eax, -224(%rbp)
	cmpl	$0, -224(%rbp)
	je	.L25
	movl	-224(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$87, %r8d
	movl	$.LC7, %ecx
	movl	$.LC12, %edx
	movl	$.LC9, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L25:
	leaq	-120(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	$8, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	clSetKernelArg
	movl	%eax, -220(%rbp)
	cmpl	$0, -220(%rbp)
	je	.L26
	movl	-220(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$87, %r8d
	movl	$.LC7, %ecx
	movl	$.LC12, %edx
	movl	$.LC9, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L26:
	leaq	-160(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	$8, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	clSetKernelArg
	movl	%eax, -216(%rbp)
	cmpl	$0, -216(%rbp)
	je	.L27
	movl	-216(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$87, %r8d
	movl	$.LC7, %ecx
	movl	$.LC12, %edx
	movl	$.LC9, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L27:
	movq	$32, -176(%rbp)
	movq	-176(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	subq	$1, %rax
	movq	-176(%rbp), %rbx
	movl	$0, %edx
	divq	%rbx
	movq	%rax, %rdx
	movq	-176(%rbp), %rax
	imulq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-144(%rbp), %rax
	leaq	-176(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	$0, 16(%rsp)
	movq	$0, 8(%rsp)
	movl	$0, (%rsp)
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	clEnqueueNDRangeKernel
	movl	%eax, -212(%rbp)
	cmpl	$0, -212(%rbp)
	je	.L28
	movl	-212(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$93, %r8d
	movl	$.LC7, %ecx
	movl	$.LC13, %edx
	movl	$.LC9, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L28:
	addl	$1, -248(%rbp)
.L23:
	movl	-248(%rbp), %eax
	cmpl	-244(%rbp), %eax
	jl	.L29
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	clFinish
	movl	%eax, -208(%rbp)
	cmpl	$0, -208(%rbp)
	je	.L30
	movl	-208(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$96, %r8d
	movl	$.LC7, %ecx
	movl	$.LC11, %edx
	movl	$.LC9, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L30:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	get_timestamp
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	timestamp_diff_in_seconds
	cvtsi2sd	-244(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -280(%rbp)
	movsd	-280(%rbp), %xmm0
	movl	$.LC14, %edi
	movl	$1, %eax
	call	printf
	movq	-160(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	testq	%rax, %rax
	js	.L31
	cvtsi2sdq	%rax, %xmm0
	jmp	.L32
.L31:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L32:
	movsd	.LC15(%rip), %xmm1
	divsd	%xmm1, %xmm0
	divsd	-56(%rbp), %xmm0
	movl	$.LC16, %edi
	movl	$1, %eax
	call	printf
	movq	-160(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	movq	-120(%rbp), %rsi
	movq	-144(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	$0, 16(%rsp)
	movq	$0, 8(%rsp)
	movl	$0, (%rsp)
	movq	%rdx, %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	clEnqueueReadBuffer
	movl	%eax, -204(%rbp)
	cmpl	$0, -204(%rbp)
	je	.L33
	movl	-204(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$110, %r8d
	movl	$.LC7, %ecx
	movl	$.LC17, %edx
	movl	$.LC9, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L33:
	movq	$0, -104(%rbp)
	jmp	.L34
.L41:
	movq	-104(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movq	-104(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	testq	%rax, %rax
	js	.L35
	cvtsi2ssq	%rax, %xmm0
	jmp	.L36
.L35:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L36:
	ucomiss	%xmm0, %xmm1
	jp	.L49
	ucomiss	%xmm0, %xmm1
	je	.L50
.L49:
	movq	-104(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movq	-104(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	testq	%rax, %rax
	js	.L39
	cvtsi2ssq	%rax, %xmm0
	jmp	.L40
.L39:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L40:
	subss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm1
	movq	-104(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC18, %edi
	movl	$2, %eax
	call	printf
	call	abort
.L50:
	addq	$1, -104(%rbp)
.L34:
	movq	-160(%rbp), %rax
	cmpq	-104(%rbp), %rax
	ja	.L41
	movl	$.LC19, %edi
	call	puts
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	clReleaseMemObject
	movl	%eax, -200(%rbp)
	cmpl	$0, -200(%rbp)
	je	.L42
	movl	-200(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$123, %r8d
	movl	$.LC7, %ecx
	movl	$.LC20, %edx
	movl	$.LC9, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L42:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	clReleaseMemObject
	movl	%eax, -196(%rbp)
	cmpl	$0, -196(%rbp)
	je	.L43
	movl	-196(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$124, %r8d
	movl	$.LC7, %ecx
	movl	$.LC20, %edx
	movl	$.LC9, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L43:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	clReleaseMemObject
	movl	%eax, -192(%rbp)
	cmpl	$0, -192(%rbp)
	je	.L44
	movl	-192(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$125, %r8d
	movl	$.LC7, %ecx
	movl	$.LC20, %edx
	movl	$.LC9, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L44:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	clReleaseKernel
	movl	%eax, -188(%rbp)
	cmpl	$0, -188(%rbp)
	je	.L45
	movl	-188(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$126, %r8d
	movl	$.LC7, %ecx
	movl	$.LC21, %edx
	movl	$.LC9, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L45:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	clReleaseCommandQueue
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	je	.L46
	movl	-184(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$127, %r8d
	movl	$.LC7, %ecx
	movl	$.LC22, %edx
	movl	$.LC9, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L46:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	clReleaseContext
	movl	%eax, -180(%rbp)
	cmpl	$0, -180(%rbp)
	je	.L47
	movl	-180(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$128, %r8d
	movl	$.LC7, %ecx
	movl	$.LC23, %edx
	movl	$.LC9, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L47:
	movl	$0, %eax
	addq	$296, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	3894859413
	.long	1041313291
	.align 8
.LC15:
	.long	0
	.long	1104006501
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
