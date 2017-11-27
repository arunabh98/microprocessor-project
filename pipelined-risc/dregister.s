	.file	"dregister.vhd"
	.section	.rodata
	.type	_UI00000000, @object
	.size	_UI00000000, 14
_UI00000000:
	.byte	100
	.byte	114
	.byte	101
	.byte	103
	.byte	105
	.byte	115
	.byte	116
	.byte	101
	.byte	114
	.byte	46
	.byte	118
	.byte	104
	.byte	100
	.byte	0
.globl work__dregister__din__OT__STB
	.align 4
	.type	work__dregister__din__OT__STB, @object
	.size	work__dregister__din__OT__STB, 16
work__dregister__din__OT__STB:
	.long	15
	.long	0
	.byte	1
	.zero	3
	.long	16
.globl work__dregister__dout__OT__STB
	.align 4
	.type	work__dregister__dout__OT__STB, @object
	.size	work__dregister__dout__OT__STB, 16
work__dregister__dout__OT__STB:
	.long	15
	.long	0
	.byte	1
	.zero	3
	.long	16
.globl work__dregister__din__OT__RTI
	.align 4
	.type	work__dregister__din__OT__RTI, @object
	.size	work__dregister__din__OT__RTI, 24
work__dregister__din__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__dregister__din__OT__STB
	.long	16
	.long	64
	.type	work__dregister__din__RTISTR, @object
	.size	work__dregister__din__RTISTR, 4
work__dregister__din__RTISTR:
	.byte	100
	.byte	105
	.byte	110
	.byte	0
.globl work__dregister__din__RTI
	.align 4
	.type	work__dregister__din__RTI, @object
	.size	work__dregister__din__RTI, 16
work__dregister__din__RTI:
	.byte	16
	.byte	1
	.byte	5
	.byte	0
	.long	work__dregister__din__RTISTR
	.long	8
	.long	work__dregister__din__OT__RTI
.globl work__dregister__dout__OT__RTI
	.align 4
	.type	work__dregister__dout__OT__RTI, @object
	.size	work__dregister__dout__OT__RTI, 24
work__dregister__dout__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__dregister__dout__OT__STB
	.long	16
	.long	64
	.type	work__dregister__dout__RTISTR, @object
	.size	work__dregister__dout__RTISTR, 5
work__dregister__dout__RTISTR:
	.byte	100
	.byte	111
	.byte	117
	.byte	116
	.byte	0
.globl work__dregister__dout__RTI
	.align 4
	.type	work__dregister__dout__RTI, @object
	.size	work__dregister__dout__RTI, 16
work__dregister__dout__RTI:
	.byte	16
	.byte	1
	.byte	3
	.byte	0
	.long	work__dregister__dout__RTISTR
	.long	72
	.long	work__dregister__dout__OT__RTI
	.type	work__dregister__enable__RTISTR, @object
	.size	work__dregister__enable__RTISTR, 7
work__dregister__enable__RTISTR:
	.byte	101
	.byte	110
	.byte	97
	.byte	98
	.byte	108
	.byte	101
	.byte	0
.globl work__dregister__enable__RTI
	.align 4
	.type	work__dregister__enable__RTI, @object
	.size	work__dregister__enable__RTI, 16
work__dregister__enable__RTI:
	.byte	16
	.byte	1
	.byte	5
	.byte	0
	.long	work__dregister__enable__RTISTR
	.long	136
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__dregister__clk__RTISTR, @object
	.size	work__dregister__clk__RTISTR, 4
work__dregister__clk__RTISTR:
	.byte	99
	.byte	108
	.byte	107
	.byte	0
.globl work__dregister__clk__RTI
	.align 4
	.type	work__dregister__clk__RTI, @object
	.size	work__dregister__clk__RTI, 16
work__dregister__clk__RTI:
	.byte	16
	.byte	1
	.byte	5
	.byte	0
	.long	work__dregister__clk__RTISTR
	.long	140
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__dregister__RTISTR, @object
	.size	work__dregister__RTISTR, 10
work__dregister__RTISTR:
	.byte	100
	.byte	114
	.byte	101
	.byte	103
	.byte	105
	.byte	115
	.byte	116
	.byte	101
	.byte	114
	.byte	0
	.align 4
	.type	work__dregister__RTIARRAY, @object
	.size	work__dregister__RTIARRAY, 20
work__dregister__RTIARRAY:
	.long	work__dregister__din__RTI
	.long	work__dregister__dout__RTI
	.long	work__dregister__enable__RTI
	.long	work__dregister__clk__RTI
	.long	0
.globl work__dregister__RTI
	.align 4
	.type	work__dregister__RTI, @object
	.size	work__dregister__RTI, 28
work__dregister__RTI:
	.byte	4
	.byte	1
	.byte	0
	.byte	0
	.long	work__dregister__RTISTR
	.long	0
	.long	work__RTI
	.long	144
	.long	4
	.long	work__dregister__RTIARRAY
	.text
.globl work__dregister__ELAB
	.type	work__dregister__ELAB, @function
work__dregister__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movzbl	ieee__std_logic_1164__ELABORATED, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L2
	call	ieee__std_logic_1164__ELAB_BODY
.L2:
	movzbl	ieee__numeric_std__ELABORATED, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L3
	call	ieee__numeric_std__ELAB_BODY
.L3:
	movl	8(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
.L5:
	cmpl	$16, -16(%ebp)
	jae	.L4
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	$work__dregister__din__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	addl	$1, -16(%ebp)
	jmp	.L5
.L4:
	movl	8(%ebp), %eax
	addl	$72, %eax
	movl	%eax, -12(%ebp)
	movl	$0, -8(%ebp)
.L7:
	cmpl	$16, -8(%ebp)
	jae	.L6
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -4(%ebp)
	movl	$0, %eax
	movl	-4(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_signal_init_e8
	movl	-4(%ebp), %eax
	movl	$work__dregister__dout__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	addl	$1, -8(%ebp)
	jmp	.L7
.L6:
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	$work__dregister__enable__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	movl	8(%ebp), %eax
	movl	140(%eax), %eax
	movl	$work__dregister__clk__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	leave
	ret
	.size	work__dregister__ELAB, .-work__dregister__ELAB
.globl work__dregister__ARCH__behave__INSTSIZE
	.section	.rodata
	.align 4
	.type	work__dregister__ARCH__behave__INSTSIZE, @object
	.size	work__dregister__ARCH__behave__INSTSIZE, 4
work__dregister__ARCH__behave__INSTSIZE:
	.long	160
	.type	work__dregister__ARCH__behave__P0__RTISTR, @object
	.size	work__dregister__ARCH__behave__P0__RTISTR, 3
work__dregister__ARCH__behave__P0__RTISTR:
	.byte	80
	.byte	48
	.byte	0
	.align 4
	.type	work__dregister__ARCH__behave__P0__RTIARRAY, @object
	.size	work__dregister__ARCH__behave__P0__RTIARRAY, 4
work__dregister__ARCH__behave__P0__RTIARRAY:
	.zero	4
.globl work__dregister__ARCH__behave__P0__RTI
	.align 4
	.type	work__dregister__ARCH__behave__P0__RTI, @object
	.size	work__dregister__ARCH__behave__P0__RTI, 28
work__dregister__ARCH__behave__P0__RTI:
	.byte	6
	.byte	2
	.byte	0
	.byte	0
	.long	work__dregister__ARCH__behave__P0__RTISTR
	.long	144
	.long	work__dregister__ARCH__behave__RTI
	.long	16
	.long	0
	.long	work__dregister__ARCH__behave__P0__RTIARRAY
	.type	work__dregister__ARCH__behave__RTISTR, @object
	.size	work__dregister__ARCH__behave__RTISTR, 7
work__dregister__ARCH__behave__RTISTR:
	.byte	98
	.byte	101
	.byte	104
	.byte	97
	.byte	118
	.byte	101
	.byte	0
	.align 4
	.type	work__dregister__ARCH__behave__RTIARRAY, @object
	.size	work__dregister__ARCH__behave__RTIARRAY, 8
work__dregister__ARCH__behave__RTIARRAY:
	.long	work__dregister__ARCH__behave__P0__RTI
	.long	0
.globl work__dregister__ARCH__behave__RTI
	.align 4
	.type	work__dregister__ARCH__behave__RTI, @object
	.size	work__dregister__ARCH__behave__RTI, 28
work__dregister__ARCH__behave__RTI:
	.byte	5
	.byte	1
	.byte	0
	.byte	0
	.long	work__dregister__ARCH__behave__RTISTR
	.long	0
	.long	work__dregister__RTI
	.long	160
	.long	1
	.long	work__dregister__ARCH__behave__RTIARRAY
	.text
	.type	work__dregister__ARCH__behave__P0__PROC, @function
work__dregister__ARCH__behave__P0__PROC:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$48, %esp
	movl	8(%ebp), %eax
	movl	140(%eax), %eax
	movzbl	44(%eax), %eax
	movb	%al, -29(%ebp)
	cmpb	$1, -29(%ebp)
	jne	.L10
	movl	8(%ebp), %eax
	movl	140(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$3, %al
	sete	%al
	movb	%al, -29(%ebp)
.L10:
	cmpb	$0, -29(%ebp)
	je	.L18
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$3, %al
	jne	.L18
	movl	8(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -28(%ebp)
	movl	$0, -24(%ebp)
.L13:
	cmpl	$16, -24(%ebp)
	jae	.L12
	movl	-24(%ebp), %ecx
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -45(%ebp,%ecx)
	addl	$1, -24(%ebp)
	jmp	.L13
.L12:
	movl	8(%ebp), %eax
	addl	$72, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
.L17:
	cmpl	$16, -16(%ebp)
	jae	.L18
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	addl	$144, %eax
	addl	-16(%ebp), %eax
	movl	%eax, -4(%ebp)
	leal	-45(%ebp), %edx
	movl	-16(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-4(%ebp), %eax
	movb	%dl, (%eax)
	movl	-12(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L14
	movb	$1, -5(%ebp)
	jmp	.L15
.L14:
	movl	-12(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -5(%ebp)
.L15:
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-5(%ebp), %al
	testb	%al, %al
	je	.L16
	movl	-12(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-12(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L16:
	addl	$1, -16(%ebp)
	jmp	.L17
.L18:
	leave
	ret
	.size	work__dregister__ARCH__behave__P0__PROC, .-work__dregister__ARCH__behave__P0__PROC
.globl work__dregister__ARCH__behave__ELAB
	.type	work__dregister__ARCH__behave__ELAB, @function
work__dregister__ARCH__behave__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	$work__dregister__ARCH__behave__RTI, (%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	work__dregister__ELAB
	movl	-12(%ebp), %eax
	addl	$144, %eax
	movl	$work__dregister__ARCH__behave__P0__PROC, %edx
	movl	-12(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	$work__dregister__ARCH__behave__P0__RTI, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	__ghdl_sensitized_process_register
	movl	-12(%ebp), %eax
	addl	$72, %eax
	movl	%eax, -8(%ebp)
	movl	$0, -4(%ebp)
.L21:
	cmpl	$16, -4(%ebp)
	jae	.L20
	movl	-12(%ebp), %eax
	addl	$144, %eax
	movl	%eax, %ecx
	addl	-4(%ebp), %ecx
	movl	-4(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	addl	$1, -4(%ebp)
	jmp	.L21
.L20:
	movl	-12(%ebp), %eax
	movl	140(%eax), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	leave
	ret
	.size	work__dregister__ARCH__behave__ELAB, .-work__dregister__ARCH__behave__ELAB
	.ident	"GCC: (GNU) 4.3.4"
	.section	.note.GNU-stack,"",@progbits
