	.file	"cl-helper.c"
	.section	.rodata
.LC0:
	.string	"success"
.LC1:
	.string	"device not found"
.LC2:
	.string	"device not available"
.LC3:
	.string	"device compiler not available"
.LC4:
	.string	"mem object allocation failure"
.LC5:
	.string	"out of resources"
.LC6:
	.string	"out of host memory"
.LC7:
	.string	"profiling info not available"
.LC8:
	.string	"mem copy overlap"
.LC9:
	.string	"image format mismatch"
.LC10:
	.string	"image format not supported"
.LC11:
	.string	"build program failure"
.LC12:
	.string	"map failure"
.LC13:
	.string	"invalid value"
.LC14:
	.string	"invalid device type"
.LC15:
	.string	"invalid platform"
.LC16:
	.string	"invalid device"
.LC17:
	.string	"invalid context"
.LC18:
	.string	"invalid queue properties"
.LC19:
	.string	"invalid command queue"
.LC20:
	.string	"invalid host ptr"
.LC21:
	.string	"invalid mem object"
	.align 8
.LC22:
	.string	"invalid image format descriptor"
.LC23:
	.string	"invalid image size"
.LC24:
	.string	"invalid sampler"
.LC25:
	.string	"invalid binary"
.LC26:
	.string	"invalid build options"
.LC27:
	.string	"invalid program"
.LC28:
	.string	"invalid program executable"
.LC29:
	.string	"invalid kernel name"
.LC30:
	.string	"invalid kernel definition"
.LC31:
	.string	"invalid kernel"
.LC32:
	.string	"invalid arg index"
.LC33:
	.string	"invalid arg value"
.LC34:
	.string	"invalid arg size"
.LC35:
	.string	"invalid kernel args"
.LC36:
	.string	"invalid work dimension"
.LC37:
	.string	"invalid work group size"
.LC38:
	.string	"invalid work item size"
.LC39:
	.string	"invalid global offset"
.LC40:
	.string	"invalid event wait list"
.LC41:
	.string	"invalid event"
.LC42:
	.string	"invalid operation"
.LC43:
	.string	"invalid gl object"
.LC44:
	.string	"invalid buffer size"
.LC45:
	.string	"invalid mip level"
.LC46:
	.string	"misaligned sub-buffer offset"
	.align 8
.LC47:
	.string	"exec status error for events in wait list"
.LC48:
	.string	"invalid global work size"
.LC49:
	.string	"invalid/unknown error code"
	.text
	.globl	cl_error_to_str
	.type	cl_error_to_str, @function
cl_error_to_str:
.LFB496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$63, %eax
	cmpl	$63, %eax
	ja	.L2
	movl	%eax, %eax
	movq	.L4(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L4:
	.quad	.L3
	.quad	.L5
	.quad	.L6
	.quad	.L7
	.quad	.L8
	.quad	.L9
	.quad	.L10
	.quad	.L11
	.quad	.L12
	.quad	.L13
	.quad	.L14
	.quad	.L15
	.quad	.L16
	.quad	.L17
	.quad	.L18
	.quad	.L19
	.quad	.L20
	.quad	.L21
	.quad	.L22
	.quad	.L23
	.quad	.L24
	.quad	.L25
	.quad	.L26
	.quad	.L27
	.quad	.L28
	.quad	.L29
	.quad	.L30
	.quad	.L31
	.quad	.L32
	.quad	.L33
	.quad	.L34
	.quad	.L35
	.quad	.L36
	.quad	.L37
	.quad	.L2
	.quad	.L2
	.quad	.L2
	.quad	.L2
	.quad	.L2
	.quad	.L2
	.quad	.L2
	.quad	.L2
	.quad	.L2
	.quad	.L2
	.quad	.L2
	.quad	.L2
	.quad	.L2
	.quad	.L2
	.quad	.L2
	.quad	.L38
	.quad	.L39
	.quad	.L40
	.quad	.L41
	.quad	.L42
	.quad	.L43
	.quad	.L44
	.quad	.L45
	.quad	.L46
	.quad	.L47
	.quad	.L48
	.quad	.L49
	.quad	.L50
	.quad	.L51
	.quad	.L52
	.text
.L52:
	movl	$.LC0, %eax
	jmp	.L53
.L51:
	movl	$.LC1, %eax
	jmp	.L53
.L50:
	movl	$.LC2, %eax
	jmp	.L53
.L49:
	movl	$.LC3, %eax
	jmp	.L53
.L48:
	movl	$.LC4, %eax
	jmp	.L53
.L47:
	movl	$.LC5, %eax
	jmp	.L53
.L46:
	movl	$.LC6, %eax
	jmp	.L53
.L45:
	movl	$.LC7, %eax
	jmp	.L53
.L44:
	movl	$.LC8, %eax
	jmp	.L53
.L43:
	movl	$.LC9, %eax
	jmp	.L53
.L42:
	movl	$.LC10, %eax
	jmp	.L53
.L41:
	movl	$.LC11, %eax
	jmp	.L53
.L40:
	movl	$.LC12, %eax
	jmp	.L53
.L37:
	movl	$.LC13, %eax
	jmp	.L53
.L36:
	movl	$.LC14, %eax
	jmp	.L53
.L35:
	movl	$.LC15, %eax
	jmp	.L53
.L34:
	movl	$.LC16, %eax
	jmp	.L53
.L33:
	movl	$.LC17, %eax
	jmp	.L53
.L32:
	movl	$.LC18, %eax
	jmp	.L53
.L31:
	movl	$.LC19, %eax
	jmp	.L53
.L30:
	movl	$.LC20, %eax
	jmp	.L53
.L29:
	movl	$.LC21, %eax
	jmp	.L53
.L28:
	movl	$.LC22, %eax
	jmp	.L53
.L27:
	movl	$.LC23, %eax
	jmp	.L53
.L26:
	movl	$.LC24, %eax
	jmp	.L53
.L25:
	movl	$.LC25, %eax
	jmp	.L53
.L24:
	movl	$.LC26, %eax
	jmp	.L53
.L23:
	movl	$.LC27, %eax
	jmp	.L53
.L22:
	movl	$.LC28, %eax
	jmp	.L53
.L21:
	movl	$.LC29, %eax
	jmp	.L53
.L20:
	movl	$.LC30, %eax
	jmp	.L53
.L19:
	movl	$.LC31, %eax
	jmp	.L53
.L18:
	movl	$.LC32, %eax
	jmp	.L53
.L17:
	movl	$.LC33, %eax
	jmp	.L53
.L16:
	movl	$.LC34, %eax
	jmp	.L53
.L15:
	movl	$.LC35, %eax
	jmp	.L53
.L14:
	movl	$.LC36, %eax
	jmp	.L53
.L13:
	movl	$.LC37, %eax
	jmp	.L53
.L12:
	movl	$.LC38, %eax
	jmp	.L53
.L11:
	movl	$.LC39, %eax
	jmp	.L53
.L10:
	movl	$.LC40, %eax
	jmp	.L53
.L9:
	movl	$.LC41, %eax
	jmp	.L53
.L8:
	movl	$.LC42, %eax
	jmp	.L53
.L7:
	movl	$.LC43, %eax
	jmp	.L53
.L6:
	movl	$.LC44, %eax
	jmp	.L53
.L5:
	movl	$.LC45, %eax
	jmp	.L53
.L39:
	movl	$.LC46, %eax
	jmp	.L53
.L38:
	movl	$.LC47, %eax
	jmp	.L53
.L3:
	movl	$.LC48, %eax
	jmp	.L53
.L2:
	movl	$.LC49, %eax
.L53:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	cl_error_to_str, .-cl_error_to_str
	.section	.rodata
.LC50:
	.string	"cl-helper.c"
.LC51:
	.string	"clGetPlatformIDs"
	.align 8
.LC52:
	.string	"*** '%s' in '%s' on line %d failed with error '%s'.\n"
.LC53:
	.string	"allocating platform array"
.LC54:
	.string	"clGetPlatformInfo"
.LC55:
	.string	"platform %d: vendor '%s'\n"
.LC56:
	.string	"clGetDeviceIDs"
.LC57:
	.string	"allocating device array"
.LC58:
	.string	"clGetDeviceInfo"
.LC59:
	.string	"  device %d: '%s'\n"
	.text
	.globl	print_platforms_devices
	.type	print_platforms_devices, @function
print_platforms_devices:
.LFB497:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2080, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-2072(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	clGetPlatformIDs
	movl	%eax, -2056(%rbp)
	cmpl	$0, -2056(%rbp)
	je	.L55
	movl	-2056(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$113, %r8d
	movl	$.LC50, %ecx
	movl	$.LC51, %edx
	movl	$.LC52, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L55:
	movl	-2072(%rbp), %eax
	movl	%eax, %eax
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -2032(%rbp)
	cmpq	$0, -2032(%rbp)
	jne	.L56
	movl	$.LC53, %edi
	call	perror
	call	abort
.L56:
	movl	-2072(%rbp), %eax
	movq	-2032(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	clGetPlatformIDs
	movl	%eax, -2052(%rbp)
	cmpl	$0, -2052(%rbp)
	je	.L57
	movl	-2052(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$120, %r8d
	movl	$.LC50, %ecx
	movl	$.LC51, %edx
	movl	$.LC52, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L57:
	movl	$0, -2064(%rbp)
	jmp	.L58
.L66:
	movl	-2064(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-2032(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	-2016(%rbp), %rdx
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$1000, %edx
	movl	$2307, %esi
	movq	%rax, %rdi
	call	clGetPlatformInfo
	movl	%eax, -2048(%rbp)
	cmpl	$0, -2048(%rbp)
	je	.L59
	movl	-2048(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$128, %r8d
	movl	$.LC50, %ecx
	movl	$.LC54, %edx
	movl	$.LC52, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L59:
	leaq	-2016(%rbp), %rdx
	movl	-2064(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC55, %edi
	movl	$0, %eax
	call	printf
	movl	-2064(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-2032(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	-2068(%rbp), %rdx
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$4294967295, %esi
	movq	%rax, %rdi
	call	clGetDeviceIDs
	movl	%eax, -2044(%rbp)
	cmpl	$0, -2044(%rbp)
	je	.L60
	movl	-2044(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$134, %r8d
	movl	$.LC50, %ecx
	movl	$.LC56, %edx
	movl	$.LC52, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L60:
	movl	-2068(%rbp), %eax
	movl	%eax, %eax
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -2024(%rbp)
	cmpq	$0, -2024(%rbp)
	jne	.L61
	movl	$.LC57, %edi
	call	perror
	call	abort
.L61:
	movl	-2068(%rbp), %edx
	movl	-2064(%rbp), %eax
	leaq	0(,%rax,8), %rcx
	movq	-2032(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	-2024(%rbp), %rcx
	movl	$0, %r8d
	movl	$4294967295, %esi
	movq	%rax, %rdi
	call	clGetDeviceIDs
	movl	%eax, -2040(%rbp)
	cmpl	$0, -2040(%rbp)
	je	.L62
	movl	-2040(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$142, %r8d
	movl	$.LC50, %ecx
	movl	$.LC56, %edx
	movl	$.LC52, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L62:
	movl	$0, -2060(%rbp)
	jmp	.L63
.L65:
	movl	-2060(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-2024(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	-1008(%rbp), %rdx
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$1000, %edx
	movl	$4139, %esi
	movq	%rax, %rdi
	call	clGetDeviceInfo
	movl	%eax, -2036(%rbp)
	cmpl	$0, -2036(%rbp)
	je	.L64
	movl	-2036(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$149, %r8d
	movl	$.LC50, %ecx
	movl	$.LC58, %edx
	movl	$.LC52, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L64:
	leaq	-1008(%rbp), %rdx
	movl	-2060(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC59, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -2060(%rbp)
.L63:
	movl	-2068(%rbp), %eax
	cmpl	%eax, -2060(%rbp)
	jb	.L65
	movq	-2024(%rbp), %rax
	movq	%rax, %rdi
	call	free
	addl	$1, -2064(%rbp)
.L58:
	movl	-2072(%rbp), %eax
	cmpl	%eax, -2064(%rbp)
	jb	.L66
	movq	-2032(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L67
	call	__stack_chk_fail
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	print_platforms_devices, .-print_platforms_devices
	.globl	read_a_line
	.type	read_a_line, @function
read_a_line:
.LFB498:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	$1000, %edi
	call	malloc
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$1000, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L69
	movl	$0, %eax
	jmp	.L70
.L69:
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	fgetc
	movl	%eax, -44(%rbp)
	cmpl	$-1, -44(%rbp)
	jne	.L71
	jmp	.L72
.L71:
	subq	$1, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L73
	salq	-24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L74
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movl	$0, %eax
	jmp	.L70
.L74:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
.L73:
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	-44(%rbp), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L75
	jmp	.L72
.L75:
	jmp	.L69
.L72:
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	movq	-32(%rbp), %rax
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	read_a_line, .-read_a_line
	.globl	CHOOSE_INTERACTIVELY
	.section	.rodata
.LC60:
	.string	"INTERACTIVE"
	.data
	.align 8
	.type	CHOOSE_INTERACTIVELY, @object
	.size	CHOOSE_INTERACTIVELY, 8
CHOOSE_INTERACTIVELY:
	.quad	.LC60
	.section	.rodata
.LC61:
	.string	"Choose platform:"
.LC62:
	.string	"[%d] %s\n"
.LC63:
	.string	"Enter choice: "
.LC64:
	.string	"error reading line from stdin"
.LC65:
	.string	"Choose device:"
.LC66:
	.string	"clCreateContext"
.LC67:
	.string	"clCreateCommandQueue"
	.align 8
.LC68:
	.string	"create_context_on: specified device not found.\n"
	.text
	.globl	create_context_on
	.type	create_context_on, @function
create_context_on:
.LFB499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4256, %rsp
	movq	%rdi, -4216(%rbp)
	movq	%rsi, -4224(%rbp)
	movl	%edx, -4228(%rbp)
	movq	%rcx, -4240(%rbp)
	movq	%r8, -4248(%rbp)
	movl	%r9d, -4232(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-4196(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	clGetPlatformIDs
	movl	%eax, -4168(%rbp)
	cmpl	$0, -4168(%rbp)
	je	.L77
	movl	-4168(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$218, %r8d
	movl	$.LC50, %ecx
	movl	$.LC51, %edx
	movl	$.LC52, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L77:
	movl	-4196(%rbp), %eax
	movl	%eax, %eax
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -4104(%rbp)
	cmpq	$0, -4104(%rbp)
	jne	.L78
	movl	$.LC53, %edi
	call	perror
	call	abort
.L78:
	movl	-4196(%rbp), %eax
	movq	-4104(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	clGetPlatformIDs
	movl	%eax, -4164(%rbp)
	cmpl	$0, -4164(%rbp)
	je	.L79
	movl	-4164(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$224, %r8d
	movl	$.LC50, %ecx
	movl	$.LC51, %edx
	movl	$.LC52, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L79:
	movq	CHOOSE_INTERACTIVELY(%rip), %rax
	cmpq	%rax, -4216(%rbp)
	jne	.L80
	movl	$.LC61, %edi
	call	puts
	movl	$0, -4184(%rbp)
	jmp	.L81
.L83:
	movl	-4184(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-4104(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	-1008(%rbp), %rdx
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$1000, %edx
	movl	$2307, %esi
	movq	%rax, %rdi
	call	clGetPlatformInfo
	movl	%eax, -4160(%rbp)
	cmpl	$0, -4160(%rbp)
	je	.L82
	movl	-4160(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$236, %r8d
	movl	$.LC50, %ecx
	movl	$.LC54, %edx
	movl	$.LC52, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L82:
	leaq	-1008(%rbp), %rdx
	movl	-4184(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC62, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -4184(%rbp)
.L81:
	movl	-4196(%rbp), %eax
	cmpl	%eax, -4184(%rbp)
	jb	.L83
	movl	$.LC63, %edi
	movl	$0, %eax
	call	printf
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
	call	read_a_line
	movq	%rax, -4096(%rbp)
	cmpq	$0, -4096(%rbp)
	jne	.L84
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$29, %edx
	movl	$1, %esi
	movl	$.LC64, %edi
	call	fwrite
	call	abort
.L84:
	movq	-4096(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	testl	%eax, %eax
	js	.L85
	movq	-4096(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	jmp	.L86
.L85:
	movl	$0, %eax
.L86:
	movl	-4196(%rbp), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.L87
	movq	-4096(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	testl	%eax, %eax
	js	.L88
	movq	-4096(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	jmp	.L90
.L88:
	movl	$0, %eax
	jmp	.L90
.L87:
	movl	-4196(%rbp), %eax
	subl	$1, %eax
.L90:
	movl	%eax, -4156(%rbp)
	movq	-4096(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movl	-4156(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-4104(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	-3024(%rbp), %rdx
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$1000, %edx
	movl	$2307, %esi
	movq	%rax, %rdi
	call	clGetPlatformInfo
	movl	%eax, -4152(%rbp)
	cmpl	$0, -4152(%rbp)
	je	.L91
	movl	-4152(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$254, %r8d
	movl	$.LC50, %ecx
	movl	$.LC54, %edx
	movl	$.LC52, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L91:
	leaq	-3024(%rbp), %rax
	movq	%rax, -4216(%rbp)
.L80:
	movl	$0, -4180(%rbp)
	jmp	.L92
.L121:
	movl	-4180(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-4104(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	-2016(%rbp), %rdx
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$1000, %edx
	movl	$2307, %esi
	movq	%rax, %rdi
	call	clGetPlatformInfo
	movl	%eax, -4148(%rbp)
	cmpl	$0, -4148(%rbp)
	je	.L93
	movl	-4148(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$264, %r8d
	movl	$.LC50, %ecx
	movl	$.LC54, %edx
	movl	$.LC52, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L93:
	cmpq	$0, -4216(%rbp)
	je	.L94
	movq	-4216(%rbp), %rdx
	leaq	-2016(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strstr
	testq	%rax, %rax
	je	.L95
.L94:
	movl	-4180(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-4104(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	-4192(%rbp), %rdx
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$4294967295, %esi
	movq	%rax, %rdi
	call	clGetDeviceIDs
	movl	%eax, -4144(%rbp)
	cmpl	$0, -4144(%rbp)
	je	.L96
	movl	-4144(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$272, %r8d
	movl	$.LC50, %ecx
	movl	$.LC56, %edx
	movl	$.LC52, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L96:
	movl	-4192(%rbp), %eax
	movl	%eax, %eax
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -4088(%rbp)
	cmpq	$0, -4088(%rbp)
	jne	.L97
	movl	$.LC57, %edi
	call	perror
	call	abort
.L97:
	movl	-4192(%rbp), %edx
	movl	-4180(%rbp), %eax
	leaq	0(,%rax,8), %rcx
	movq	-4104(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	-4088(%rbp), %rcx
	movl	$0, %r8d
	movl	$4294967295, %esi
	movq	%rax, %rdi
	call	clGetDeviceIDs
	movl	%eax, -4140(%rbp)
	cmpl	$0, -4140(%rbp)
	je	.L98
	movl	-4140(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$280, %r8d
	movl	$.LC50, %ecx
	movl	$.LC56, %edx
	movl	$.LC52, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L98:
	movq	CHOOSE_INTERACTIVELY(%rip), %rax
	cmpq	%rax, -4224(%rbp)
	jne	.L99
	movl	$.LC65, %edi
	call	puts
	movl	$0, -4176(%rbp)
	jmp	.L100
.L102:
	movl	-4176(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-4088(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	-1008(%rbp), %rdx
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$1000, %edx
	movl	$4139, %esi
	movq	%rax, %rdi
	call	clGetDeviceInfo
	movl	%eax, -4136(%rbp)
	cmpl	$0, -4136(%rbp)
	je	.L101
	movl	-4136(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$292, %r8d
	movl	$.LC50, %ecx
	movl	$.LC58, %edx
	movl	$.LC52, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L101:
	leaq	-1008(%rbp), %rdx
	movl	-4176(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC62, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -4176(%rbp)
.L100:
	movl	-4192(%rbp), %eax
	cmpl	%eax, -4176(%rbp)
	jb	.L102
	movl	$.LC63, %edi
	movl	$0, %eax
	call	printf
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
	call	read_a_line
	movq	%rax, -4080(%rbp)
	cmpq	$0, -4080(%rbp)
	jne	.L103
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$29, %edx
	movl	$1, %esi
	movl	$.LC64, %edi
	call	fwrite
	call	abort
.L103:
	movq	-4080(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	testl	%eax, %eax
	js	.L104
	movq	-4080(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	jmp	.L105
.L104:
	movl	$0, %eax
.L105:
	movl	-4192(%rbp), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.L106
	movq	-4080(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	testl	%eax, %eax
	js	.L107
	movq	-4080(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	jmp	.L109
.L107:
	movl	$0, %eax
	jmp	.L109
.L106:
	movl	-4192(%rbp), %eax
	subl	$1, %eax
.L109:
	movl	%eax, -4132(%rbp)
	movq	-4080(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movl	-4132(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-4088(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	-4032(%rbp), %rdx
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$1000, %edx
	movl	$4139, %esi
	movq	%rax, %rdi
	call	clGetDeviceInfo
	movl	%eax, -4128(%rbp)
	cmpl	$0, -4128(%rbp)
	je	.L110
	movl	-4128(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$310, %r8d
	movl	$.LC50, %ecx
	movl	$.LC58, %edx
	movl	$.LC52, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L110:
	leaq	-4032(%rbp), %rax
	movq	%rax, -4224(%rbp)
.L99:
	movl	$0, -4172(%rbp)
	jmp	.L111
.L120:
	movl	-4172(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-4088(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	-1008(%rbp), %rdx
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$1000, %edx
	movl	$4139, %esi
	movq	%rax, %rdi
	call	clGetDeviceInfo
	movl	%eax, -4124(%rbp)
	cmpl	$0, -4124(%rbp)
	je	.L112
	movl	-4124(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$322, %r8d
	movl	$.LC50, %ecx
	movl	$.LC58, %edx
	movl	$.LC52, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L112:
	cmpq	$0, -4224(%rbp)
	je	.L113
	movq	-4224(%rbp), %rdx
	leaq	-1008(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strstr
	testq	%rax, %rax
	je	.L114
.L113:
	cmpl	$0, -4228(%rbp)
	jne	.L115
	movl	-4180(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-4104(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -4072(%rbp)
	movl	-4172(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-4088(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -4120(%rbp)
	movq	-4088(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-4104(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	$4228, -4064(%rbp)
	movq	-4072(%rbp), %rax
	movq	%rax, -4056(%rbp)
	movq	$0, -4048(%rbp)
	leaq	-4188(%rbp), %rcx
	leaq	-4120(%rbp), %rdx
	leaq	-4064(%rbp), %rax
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$1, %esi
	movq	%rax, %rdi
	call	clCreateContext
	movq	-4240(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	-4188(%rbp), %eax
	testl	%eax, %eax
	je	.L116
	movl	-4188(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$342, %r8d
	movl	$.LC50, %ecx
	movl	$.LC66, %edx
	movl	$.LC52, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L116:
	movq	$0, -4112(%rbp)
	cmpl	$0, -4232(%rbp)
	je	.L117
	orq	$2, -4112(%rbp)
.L117:
	cmpq	$0, -4248(%rbp)
	je	.L118
	movq	-4120(%rbp), %rsi
	movq	-4240(%rbp), %rax
	movq	(%rax), %rax
	leaq	-4188(%rbp), %rcx
	movq	-4112(%rbp), %rdx
	movq	%rax, %rdi
	call	clCreateCommandQueue
	movq	-4248(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	-4188(%rbp), %eax
	testl	%eax, %eax
	je	.L118
	movl	-4188(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$352, %r8d
	movl	$.LC50, %ecx
	movl	$.LC67, %edx
	movl	$.LC52, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L118:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L122
	jmp	.L123
.L115:
	subl	$1, -4228(%rbp)
.L114:
	addl	$1, -4172(%rbp)
.L111:
	movl	-4192(%rbp), %eax
	cmpl	%eax, -4172(%rbp)
	jb	.L120
	movq	-4088(%rbp), %rax
	movq	%rax, %rdi
	call	free
.L95:
	addl	$1, -4180(%rbp)
.L92:
	movl	-4196(%rbp), %eax
	cmpl	%eax, -4180(%rbp)
	jb	.L121
	movq	-4104(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$47, %edx
	movl	$1, %esi
	movl	$.LC68, %edi
	call	fwrite
	call	abort
.L123:
	call	__stack_chk_fail
.L122:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	create_context_on, .-create_context_on
	.section	.rodata
.LC69:
	.string	"r"
.LC70:
	.string	"read_file: opening file"
.LC71:
	.string	"read_file: seeking to end"
.LC72:
	.string	"read_file: seeking to start"
	.align 8
.LC73:
	.string	"read_file: allocating file contents"
	.align 8
.LC74:
	.string	"read_file: reading file contents"
.LC75:
	.string	"read_file: closing file"
	.text
	.globl	read_file
	.type	read_file, @function
read_file:
.LFB500:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$.LC69, %esi
	movq	%rax, %rdi
	call	fopen
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L125
	movl	$.LC70, %edi
	call	perror
	call	abort
.L125:
	movq	-24(%rbp), %rax
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	fseek
	testl	%eax, %eax
	jns	.L126
	movl	$.LC71, %edi
	call	perror
	call	abort
.L126:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ftell
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	fseek
	testl	%eax, %eax
	je	.L127
	movl	$.LC72, %edi
	call	perror
	call	abort
.L127:
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L128
	movl	$.LC73, %edi
	call	perror
	call	abort
.L128:
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread
	cmpq	-16(%rbp), %rax
	jnb	.L129
	movl	$.LC74, %edi
	call	perror
	call	abort
.L129:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	testl	%eax, %eax
	je	.L130
	movl	$.LC75, %edi
	call	perror
	call	abort
.L130:
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	read_file, .-read_file
	.local	printed_compiler_output_message
	.comm	printed_compiler_output_message,4,4
	.section	.rodata
.LC76:
	.string	"clCreateProgramWithSource"
.LC77:
	.string	"clGetProgramInfo"
.LC78:
	.string	"clGetProgramBuildInfo"
	.align 8
.LC79:
	.string	"CL_HELPER_PRINT_COMPILER_OUTPUT"
	.align 8
.LC80:
	.string	"CL_HELPER_NO_COMPILER_OUTPUT_NAG"
	.align 8
.LC81:
	.ascii	"*** Kernel compilation resulted in non-empt"
	.string	"y log message.\n*** Set environment variable CL_HELPER_PRINT_COMPILER_OUTPUT=1 to see more.\n*** NOTE: this may include compiler warnings and other important messages\n***   about your code.\n*** Set CL_HELPER_NO_COMPILER_OUTPUT_NAG=1 to disable this message.\n"
	.align 8
.LC82:
	.string	"kernel_from_string: allocate log"
	.align 8
.LC83:
	.string	"*** build of '%s' on '%s' said:\n%s\n*** (end of message)\n"
.LC84:
	.string	"clBuildProgram"
.LC85:
	.string	"clCreateKernel"
.LC86:
	.string	"clReleaseProgram"
	.text
	.globl	kernel_from_string
	.type	kernel_from_string, @function
kernel_from_string:
.LFB501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1128, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -1112(%rbp)
	movq	%rsi, -1120(%rbp)
	movq	%rdx, -1128(%rbp)
	movq	%rcx, -1136(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-1120(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -1072(%rbp)
	cmpq	$0, -1136(%rbp)
	je	.L133
	movq	-1136(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L133
	movq	$0, -1136(%rbp)
.L133:
	leaq	-1096(%rbp), %rsi
	leaq	-1072(%rbp), %rcx
	leaq	-1120(%rbp), %rdx
	movq	-1112(%rbp), %rax
	movq	%rsi, %r8
	movl	$1, %esi
	movq	%rax, %rdi
	call	clCreateProgramWithSource
	movq	%rax, -1048(%rbp)
	movl	-1096(%rbp), %eax
	testl	%eax, %eax
	je	.L134
	movl	-1096(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$419, %r8d
	movl	$.LC50, %ecx
	movl	$.LC76, %edx
	movl	$.LC52, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L134:
	movq	-1136(%rbp), %rdx
	movq	-1048(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	clBuildProgram
	movl	%eax, -1096(%rbp)
	leaq	-1064(%rbp), %rdx
	movq	-1048(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$8, %edx
	movl	$4451, %esi
	movq	%rax, %rdi
	call	clGetProgramInfo
	movl	%eax, -1092(%rbp)
	cmpl	$0, -1092(%rbp)
	je	.L135
	movl	-1092(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$429, %r8d
	movl	$.LC50, %ecx
	movl	$.LC77, %edx
	movl	$.LC52, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L135:
	movq	-1064(%rbp), %rsi
	leaq	-1056(%rbp), %rdx
	movq	-1048(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$4483, %edx
	movq	%rax, %rdi
	call	clGetProgramBuildInfo
	movl	%eax, -1088(%rbp)
	cmpl	$0, -1088(%rbp)
	je	.L136
	movl	-1088(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$433, %r8d
	movl	$.LC50, %ecx
	movl	$.LC78, %edx
	movl	$.LC52, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L136:
	movl	-1096(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -1097(%rbp)
	movzbl	-1097(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L137
	movq	-1056(%rbp), %rax
	testq	%rax, %rax
	je	.L137
	movl	$.LC79, %edi
	call	getenv
	testq	%rax, %rax
	je	.L138
	movb	$1, -1097(%rbp)
	jmp	.L137
.L138:
	movl	printed_compiler_output_message(%rip), %eax
	testl	%eax, %eax
	jne	.L137
	movl	$.LC80, %edi
	call	getenv
	testq	%rax, %rax
	jne	.L137
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$299, %edx
	movl	$1, %esi
	movl	$.LC81, %edi
	call	fwrite
	movl	$1, printed_compiler_output_message(%rip)
.L137:
	cmpb	$0, -1097(%rbp)
	je	.L139
	movq	-1056(%rbp), %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -1040(%rbp)
	cmpq	$0, -1040(%rbp)
	jne	.L140
	movl	$.LC82, %edi
	call	perror
	call	abort
.L140:
	movq	-1064(%rbp), %rax
	leaq	-1024(%rbp), %rdx
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$1000, %edx
	movl	$4139, %esi
	movq	%rax, %rdi
	call	clGetDeviceInfo
	movl	%eax, -1084(%rbp)
	cmpl	$0, -1084(%rbp)
	je	.L141
	movl	-1084(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$461, %r8d
	movl	$.LC50, %ecx
	movl	$.LC58, %edx
	movl	$.LC52, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L141:
	movq	-1056(%rbp), %rdx
	movq	-1064(%rbp), %rsi
	movq	-1040(%rbp), %rcx
	movq	-1048(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$4483, %edx
	movq	%rax, %rdi
	call	clGetProgramBuildInfo
	movl	%eax, -1080(%rbp)
	cmpl	$0, -1080(%rbp)
	je	.L142
	movl	-1080(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$464, %r8d
	movl	$.LC50, %ecx
	movl	$.LC78, %edx
	movl	$.LC52, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L142:
	movq	stderr(%rip), %rax
	movq	-1040(%rbp), %rsi
	leaq	-1024(%rbp), %rcx
	movq	-1128(%rbp), %rdx
	movq	%rsi, %r8
	movl	$.LC83, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
.L139:
	movl	-1096(%rbp), %eax
	testl	%eax, %eax
	je	.L143
	movl	-1096(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$470, %r8d
	movl	$.LC50, %ecx
	movl	$.LC84, %edx
	movl	$.LC52, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L143:
	leaq	-1096(%rbp), %rdx
	movq	-1128(%rbp), %rcx
	movq	-1048(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	clCreateKernel
	movq	%rax, -1032(%rbp)
	movl	-1096(%rbp), %eax
	testl	%eax, %eax
	je	.L144
	movl	-1096(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$474, %r8d
	movl	$.LC50, %ecx
	movl	$.LC85, %edx
	movl	$.LC52, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L144:
	movq	-1048(%rbp), %rax
	movq	%rax, %rdi
	call	clReleaseProgram
	movl	%eax, -1076(%rbp)
	cmpl	$0, -1076(%rbp)
	je	.L145
	movl	-1076(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$476, %r8d
	movl	$.LC50, %ecx
	movl	$.LC86, %edx
	movl	$.LC52, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L145:
	movq	-1032(%rbp), %rax
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L147
	call	__stack_chk_fail
.L147:
	addq	$1128, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	kernel_from_string, .-kernel_from_string
	.section	.rodata
	.align 8
.LC87:
	.string	"---------------------------------------------------------------------"
.LC88:
	.string	"Unable to get %s: %s!\n"
	.align 8
.LC89:
	.string	"Large %s (%zd bytes)!  Truncating to %ld!\n"
.LC90:
	.string	"%s: %s\n"
.LC91:
	.string	"Type: "
.LC92:
	.string	"Default "
.LC93:
	.string	"CPU "
.LC94:
	.string	"GPU "
.LC95:
	.string	"Accelerator "
.LC96:
	.string	"Unknown (0x%llx) "
.LC97:
	.string	"Unable to get TYPE: %s!\n"
.LC98:
	.string	"EXECUTION_CAPABILITIES: "
.LC99:
	.string	"Kernel "
.LC100:
	.string	"Native "
	.align 8
.LC101:
	.string	"Unable to get EXECUTION_CAPABILITIES: %s!\n"
.LC102:
	.string	"???"
	.align 8
.LC103:
	.string	"GLOBAL_MEM_CACHE_TYPE: %s (%lld)\n"
	.align 8
.LC104:
	.string	"Unable to get GLOBAL_MEM_CACHE_TYPE: %s!\n"
	.align 8
.LC105:
	.string	"CL_DEVICE_LOCAL_MEM_TYPE: %s (%lld)\n"
	.align 8
.LC106:
	.string	"Unable to get CL_DEVICE_LOCAL_MEM_TYPE: %s!\n"
.LC107:
	.string	"%s: 0x%llx\n"
.LC108:
	.string	"%s: %lld\n"
.LC109:
	.string	"MAX_WORK_GROUP_SIZES: "
.LC110:
	.string	"%zd "
	.text
	.globl	print_device_info
	.type	print_device_info, @function
print_device_info:
.LFB502:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$65640, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -65672(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movl	$.LC87, %edi
	call	puts
	movl	$0, -65664(%rbp)
	jmp	.L149
.L153:
	movl	-65664(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$strProps.6784, %rax
	movl	(%rax), %esi
	leaq	-65648(%rbp), %rcx
	leaq	-65600(%rbp), %rdx
	movq	-65672(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$65536, %edx
	movq	%rax, %rdi
	call	clGetDeviceInfo
	movl	%eax, -65660(%rbp)
	cmpl	$0, -65660(%rbp)
	je	.L150
	movl	-65660(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movl	-65664(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$strProps.6784, %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC88, %edi
	movl	$0, %eax
	call	printf
	jmp	.L151
.L150:
	movq	-65648(%rbp), %rax
	cmpq	$65536, %rax
	jbe	.L152
	movq	-65648(%rbp), %rdx
	movl	-65664(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$strProps.6784, %rax
	movq	8(%rax), %rax
	movl	$65536, %ecx
	movq	%rax, %rsi
	movl	$.LC89, %edi
	movl	$0, %eax
	call	printf
.L152:
	movl	-65664(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$strProps.6784, %rax
	movq	8(%rax), %rax
	leaq	-65600(%rbp), %rdx
	movq	%rax, %rsi
	movl	$.LC90, %edi
	movl	$0, %eax
	call	printf
.L151:
	addl	$1, -65664(%rbp)
.L149:
	movl	-65664(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$strProps.6784, %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L153
	movl	$10, %edi
	call	putchar
	leaq	-65640(%rbp), %rdx
	movq	-65672(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$8, %edx
	movl	$4096, %esi
	movq	%rax, %rdi
	call	clGetDeviceInfo
	movl	%eax, -65660(%rbp)
	cmpl	$0, -65660(%rbp)
	jne	.L154
	movl	$.LC91, %edi
	movl	$0, %eax
	call	printf
	movq	-65640(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L155
	movq	-65640(%rbp), %rax
	andq	$-2, %rax
	movq	%rax, -65640(%rbp)
	movl	$.LC92, %edi
	movl	$0, %eax
	call	printf
.L155:
	movq	-65640(%rbp), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L156
	movq	-65640(%rbp), %rax
	andq	$-3, %rax
	movq	%rax, -65640(%rbp)
	movl	$.LC93, %edi
	movl	$0, %eax
	call	printf
.L156:
	movq	-65640(%rbp), %rax
	andl	$4, %eax
	testq	%rax, %rax
	je	.L157
	movq	-65640(%rbp), %rax
	andq	$-5, %rax
	movq	%rax, -65640(%rbp)
	movl	$.LC94, %edi
	movl	$0, %eax
	call	printf
.L157:
	movq	-65640(%rbp), %rax
	andl	$8, %eax
	testq	%rax, %rax
	je	.L158
	movq	-65640(%rbp), %rax
	andq	$-9, %rax
	movq	%rax, -65640(%rbp)
	movl	$.LC95, %edi
	movl	$0, %eax
	call	printf
.L158:
	movq	-65640(%rbp), %rax
	testq	%rax, %rax
	je	.L159
	movq	-65640(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC96, %edi
	movl	$0, %eax
	call	printf
.L159:
	movl	$10, %edi
	call	putchar
	jmp	.L160
.L154:
	movl	-65660(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rsi
	movl	$.LC97, %edi
	movl	$0, %eax
	call	printf
.L160:
	leaq	-65640(%rbp), %rdx
	movq	-65672(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$8, %edx
	movl	$4137, %esi
	movq	%rax, %rdi
	call	clGetDeviceInfo
	movl	%eax, -65660(%rbp)
	cmpl	$0, -65660(%rbp)
	jne	.L161
	movl	$.LC98, %edi
	movl	$0, %eax
	call	printf
	movq	-65640(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L162
	movq	-65640(%rbp), %rax
	andq	$-2, %rax
	movq	%rax, -65640(%rbp)
	movl	$.LC99, %edi
	movl	$0, %eax
	call	printf
.L162:
	movq	-65640(%rbp), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L163
	movq	-65640(%rbp), %rax
	andq	$-3, %rax
	movq	%rax, -65640(%rbp)
	movl	$.LC100, %edi
	movl	$0, %eax
	call	printf
.L163:
	movq	-65640(%rbp), %rax
	testq	%rax, %rax
	je	.L164
	movq	-65640(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC96, %edi
	movl	$0, %eax
	call	printf
.L164:
	movl	$10, %edi
	call	putchar
	jmp	.L165
.L161:
	movl	-65660(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rsi
	movl	$.LC101, %edi
	movl	$0, %eax
	call	printf
.L165:
	leaq	-65640(%rbp), %rdx
	movq	-65672(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$8, %edx
	movl	$4124, %esi
	movq	%rax, %rdi
	call	clGetDeviceInfo
	movl	%eax, -65660(%rbp)
	cmpl	$0, -65660(%rbp)
	jne	.L166
	movq	-65640(%rbp), %rdx
	movl	numTypes.6795(%rip), %eax
	movslq	%eax, %rcx
	movq	-65640(%rbp), %rax
	cmpq	%rax, %rcx
	jle	.L167
	movq	-65640(%rbp), %rax
	movq	cacheTypes.6794(,%rax,8), %rax
	jmp	.L168
.L167:
	movl	$.LC102, %eax
.L168:
	movq	%rax, %rsi
	movl	$.LC103, %edi
	movl	$0, %eax
	call	printf
	jmp	.L169
.L166:
	movl	-65660(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rsi
	movl	$.LC104, %edi
	movl	$0, %eax
	call	printf
.L169:
	leaq	-65640(%rbp), %rdx
	movq	-65672(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$8, %edx
	movl	$4130, %esi
	movq	%rax, %rdi
	call	clGetDeviceInfo
	movl	%eax, -65660(%rbp)
	cmpl	$0, -65660(%rbp)
	jne	.L170
	movq	-65640(%rbp), %rdx
	movl	numTypes.6797(%rip), %eax
	movslq	%eax, %rcx
	movq	-65640(%rbp), %rax
	cmpq	%rax, %rcx
	jle	.L171
	movq	-65640(%rbp), %rax
	movq	lmemTypes.6796(,%rax,8), %rax
	jmp	.L172
.L171:
	movl	$.LC102, %eax
.L172:
	movq	%rax, %rsi
	movl	$.LC105, %edi
	movl	$0, %eax
	call	printf
	jmp	.L173
.L170:
	movl	-65660(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rsi
	movl	$.LC106, %edi
	movl	$0, %eax
	call	printf
.L173:
	movl	$0, -65664(%rbp)
	jmp	.L174
.L178:
	movl	-65664(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$hexProps.6780, %rax
	movl	(%rax), %esi
	leaq	-65648(%rbp), %rcx
	leaq	-65640(%rbp), %rdx
	movq	-65672(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rdi
	call	clGetDeviceInfo
	movl	%eax, -65660(%rbp)
	cmpl	$0, -65660(%rbp)
	je	.L175
	movl	-65660(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movl	-65664(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$hexProps.6780, %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC88, %edi
	movl	$0, %eax
	call	printf
	jmp	.L176
.L175:
	movq	-65648(%rbp), %rax
	cmpq	$8, %rax
	jbe	.L177
	movq	-65648(%rbp), %rdx
	movl	-65664(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$hexProps.6780, %rax
	movq	8(%rax), %rax
	movl	$8, %ecx
	movq	%rax, %rsi
	movl	$.LC89, %edi
	movl	$0, %eax
	call	printf
.L177:
	movq	-65640(%rbp), %rdx
	movl	-65664(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$hexProps.6780, %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC107, %edi
	movl	$0, %eax
	call	printf
.L176:
	addl	$1, -65664(%rbp)
.L174:
	movl	-65664(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$hexProps.6780, %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L178
	movl	$10, %edi
	call	putchar
	movl	$0, -65664(%rbp)
	jmp	.L179
.L183:
	movl	-65664(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$longProps.6776, %rax
	movl	(%rax), %esi
	leaq	-65648(%rbp), %rcx
	leaq	-65640(%rbp), %rdx
	movq	-65672(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rdi
	call	clGetDeviceInfo
	movl	%eax, -65660(%rbp)
	cmpl	$0, -65660(%rbp)
	je	.L180
	movl	-65660(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movl	-65664(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$longProps.6776, %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC88, %edi
	movl	$0, %eax
	call	printf
	jmp	.L181
.L180:
	movq	-65648(%rbp), %rax
	cmpq	$8, %rax
	jbe	.L182
	movq	-65648(%rbp), %rdx
	movl	-65664(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$longProps.6776, %rax
	movq	8(%rax), %rax
	movl	$8, %ecx
	movq	%rax, %rsi
	movl	$.LC89, %edi
	movl	$0, %eax
	call	printf
.L182:
	movq	-65640(%rbp), %rdx
	movl	-65664(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$longProps.6776, %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC108, %edi
	movl	$0, %eax
	call	printf
.L181:
	addl	$1, -65664(%rbp)
.L179:
	movl	-65664(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$longProps.6776, %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L183
	movq	%rsp, %rax
	movq	%rax, %rbx
	leaq	-65632(%rbp), %rdx
	movq	-65672(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$4101, %esi
	movq	%rax, %rdi
	call	clGetDeviceInfo
	movl	%eax, -65656(%rbp)
	cmpl	$0, -65656(%rbp)
	je	.L184
	movl	-65656(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$717, %r8d
	movl	$.LC50, %ecx
	movl	$.LC58, %edx
	movl	$.LC52, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L184:
	movq	-65632(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	subq	$1, %rdx
	movq	%rdx, -65616(%rbp)
	movq	%rax, %r14
	movl	$0, %r15d
	movq	%rax, %r12
	movl	$0, %r13d
	salq	$3, %rax
	leaq	7(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -65608(%rbp)
	movq	-65608(%rbp), %rcx
	movq	-65632(%rbp), %rdx
	leaq	-65632(%rbp), %rsi
	movq	-65672(%rbp), %rax
	movq	%rsi, %r8
	movl	$4101, %esi
	movq	%rax, %rdi
	call	clGetDeviceInfo
	movl	%eax, -65652(%rbp)
	cmpl	$0, -65652(%rbp)
	je	.L185
	movl	-65652(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$722, %r8d
	movl	$.LC50, %ecx
	movl	$.LC58, %edx
	movl	$.LC52, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L185:
	movl	$.LC109, %edi
	movl	$0, %eax
	call	printf
	movq	$0, -65624(%rbp)
	jmp	.L186
.L187:
	movq	-65608(%rbp), %rax
	movq	-65624(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rsi
	movl	$.LC110, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -65624(%rbp)
.L186:
	movq	-65632(%rbp), %rax
	shrq	$3, %rax
	cmpq	-65624(%rbp), %rax
	ja	.L187
	movl	$10, %edi
	call	putchar
	movq	%rbx, %rsp
	movl	$.LC87, %edi
	call	puts
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L188
	call	__stack_chk_fail
.L188:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	print_device_info, .-print_device_info
	.section	.rodata
.LC111:
	.string	"clGetCommandQueueInfo"
	.text
	.globl	print_device_info_from_queue
	.type	print_device_info_from_queue, @function
print_device_info_from_queue:
.LFB503:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$8, %edx
	movl	$4241, %esi
	movq	%rax, %rdi
	call	clGetCommandQueueInfo
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L190
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	cl_error_to_str
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %r9
	movl	$738, %r8d
	movl	$.LC50, %ecx
	movl	$.LC111, %edx
	movl	$.LC52, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	abort
.L190:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	print_device_info
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	print_device_info_from_queue, .-print_device_info_from_queue
	.section	.rodata
.LC112:
	.string	"NAME"
.LC113:
	.string	"VENDOR"
.LC114:
	.string	"PROFILE"
.LC115:
	.string	"VERSION"
.LC116:
	.string	"EXTENSIONS"
.LC117:
	.string	"DRIVER_VERSION"
	.data
	.align 32
	.type	strProps.6784, @object
	.size	strProps.6784, 112
strProps.6784:
	.long	4139
	.zero	4
	.quad	.LC112
	.long	4140
	.zero	4
	.quad	.LC113
	.long	4142
	.zero	4
	.quad	.LC114
	.long	4143
	.zero	4
	.quad	.LC115
	.long	4144
	.zero	4
	.quad	.LC116
	.long	4141
	.zero	4
	.quad	.LC117
	.long	0
	.zero	4
	.quad	0
	.align 4
	.type	numTypes.6795, @object
	.size	numTypes.6795, 4
numTypes.6795:
	.long	3
	.section	.rodata
.LC118:
	.string	"None"
.LC119:
	.string	"Read-Only"
.LC120:
	.string	"Read-Write"
	.data
	.align 16
	.type	cacheTypes.6794, @object
	.size	cacheTypes.6794, 24
cacheTypes.6794:
	.quad	.LC118
	.quad	.LC119
	.quad	.LC120
	.align 4
	.type	numTypes.6797, @object
	.size	numTypes.6797, 4
numTypes.6797:
	.long	3
	.section	.rodata
.LC121:
	.string	"Local"
.LC122:
	.string	"Global"
	.data
	.align 16
	.type	lmemTypes.6796, @object
	.size	lmemTypes.6796, 24
lmemTypes.6796:
	.quad	.LC102
	.quad	.LC121
	.quad	.LC122
	.section	.rodata
.LC123:
	.string	"SINGLE_FP_CONFIG"
.LC124:
	.string	"QUEUE_PROPERTIES"
	.data
	.align 32
	.type	hexProps.6780, @object
	.size	hexProps.6780, 48
hexProps.6780:
	.long	4123
	.zero	4
	.quad	.LC123
	.long	4138
	.zero	4
	.quad	.LC124
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC125:
	.string	"VENDOR_ID"
.LC126:
	.string	"MAX_COMPUTE_UNITS"
.LC127:
	.string	"MAX_WORK_ITEM_DIMENSIONS"
.LC128:
	.string	"MAX_WORK_GROUP_SIZE"
.LC129:
	.string	"PREFERRED_VECTOR_WIDTH_CHAR"
.LC130:
	.string	"PREFERRED_VECTOR_WIDTH_SHORT"
.LC131:
	.string	"PREFERRED_VECTOR_WIDTH_INT"
.LC132:
	.string	"PREFERRED_VECTOR_WIDTH_LONG"
.LC133:
	.string	"PREFERRED_VECTOR_WIDTH_FLOAT"
.LC134:
	.string	"PREFERRED_VECTOR_WIDTH_DOUBLE"
.LC135:
	.string	"MAX_CLOCK_FREQUENCY"
.LC136:
	.string	"ADDRESS_BITS"
.LC137:
	.string	"MAX_MEM_ALLOC_SIZE"
.LC138:
	.string	"IMAGE_SUPPORT"
.LC139:
	.string	"MAX_READ_IMAGE_ARGS"
.LC140:
	.string	"MAX_WRITE_IMAGE_ARGS"
.LC141:
	.string	"IMAGE2D_MAX_WIDTH"
.LC142:
	.string	"IMAGE2D_MAX_HEIGHT"
.LC143:
	.string	"IMAGE3D_MAX_WIDTH"
.LC144:
	.string	"IMAGE3D_MAX_HEIGHT"
.LC145:
	.string	"IMAGE3D_MAX_DEPTH"
.LC146:
	.string	"MAX_SAMPLERS"
.LC147:
	.string	"MAX_PARAMETER_SIZE"
.LC148:
	.string	"MEM_BASE_ADDR_ALIGN"
.LC149:
	.string	"MIN_DATA_TYPE_ALIGN_SIZE"
.LC150:
	.string	"GLOBAL_MEM_CACHELINE_SIZE"
.LC151:
	.string	"GLOBAL_MEM_CACHE_SIZE"
.LC152:
	.string	"GLOBAL_MEM_SIZE"
.LC153:
	.string	"MAX_CONSTANT_BUFFER_SIZE"
.LC154:
	.string	"MAX_CONSTANT_ARGS"
.LC155:
	.string	"LOCAL_MEM_SIZE"
.LC156:
	.string	"ERROR_CORRECTION_SUPPORT"
.LC157:
	.string	"PROFILING_TIMER_RESOLUTION"
.LC158:
	.string	"ENDIAN_LITTLE"
.LC159:
	.string	"AVAILABLE"
.LC160:
	.string	"COMPILER_AVAILABLE"
	.data
	.align 32
	.type	longProps.6776, @object
	.size	longProps.6776, 592
longProps.6776:
	.long	4097
	.zero	4
	.quad	.LC125
	.long	4098
	.zero	4
	.quad	.LC126
	.long	4099
	.zero	4
	.quad	.LC127
	.long	4100
	.zero	4
	.quad	.LC128
	.long	4102
	.zero	4
	.quad	.LC129
	.long	4103
	.zero	4
	.quad	.LC130
	.long	4104
	.zero	4
	.quad	.LC131
	.long	4105
	.zero	4
	.quad	.LC132
	.long	4106
	.zero	4
	.quad	.LC133
	.long	4107
	.zero	4
	.quad	.LC134
	.long	4108
	.zero	4
	.quad	.LC135
	.long	4109
	.zero	4
	.quad	.LC136
	.long	4112
	.zero	4
	.quad	.LC137
	.long	4118
	.zero	4
	.quad	.LC138
	.long	4110
	.zero	4
	.quad	.LC139
	.long	4111
	.zero	4
	.quad	.LC140
	.long	4113
	.zero	4
	.quad	.LC141
	.long	4114
	.zero	4
	.quad	.LC142
	.long	4115
	.zero	4
	.quad	.LC143
	.long	4116
	.zero	4
	.quad	.LC144
	.long	4117
	.zero	4
	.quad	.LC145
	.long	4120
	.zero	4
	.quad	.LC146
	.long	4119
	.zero	4
	.quad	.LC147
	.long	4121
	.zero	4
	.quad	.LC148
	.long	4122
	.zero	4
	.quad	.LC149
	.long	4125
	.zero	4
	.quad	.LC150
	.long	4126
	.zero	4
	.quad	.LC151
	.long	4127
	.zero	4
	.quad	.LC152
	.long	4128
	.zero	4
	.quad	.LC153
	.long	4129
	.zero	4
	.quad	.LC154
	.long	4131
	.zero	4
	.quad	.LC155
	.long	4132
	.zero	4
	.quad	.LC156
	.long	4133
	.zero	4
	.quad	.LC157
	.long	4134
	.zero	4
	.quad	.LC158
	.long	4135
	.zero	4
	.quad	.LC159
	.long	4136
	.zero	4
	.quad	.LC160
	.long	0
	.zero	4
	.quad	0
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
