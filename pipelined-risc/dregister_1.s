	.file	"dregister_1.vhd"
	.section	.rodata
	.type	_UI00000000, @object
	.size	_UI00000000, 16
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
	.byte	95
	.byte	49
	.byte	46
	.byte	118
	.byte	104
	.byte	100
	.byte	0
	.type	work__dregister_1__din__RTISTR, @object
	.size	work__dregister_1__din__RTISTR, 4
work__dregister_1__din__RTISTR:
	.byte	100
	.byte	105
	.byte	110
	.byte	0
.globl work__dregister_1__din__RTI
	.align 4
	.type	work__dregister_1__din__RTI, @object
	.size	work__dregister_1__din__RTI, 16
work__dregister_1__din__RTI:
	.byte	16
	.byte	1
	.byte	5
	.byte	0
	.long	work__dregister_1__din__RTISTR
	.long	8
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__dregister_1__dout__RTISTR, @object
	.size	work__dregister_1__dout__RTISTR, 5
work__dregister_1__dout__RTISTR:
	.byte	100
	.byte	111
	.byte	117
	.byte	116
	.byte	0
.globl work__dregister_1__dout__RTI
	.align 4
	.type	work__dregister_1__dout__RTI, @object
	.size	work__dregister_1__dout__RTI, 16
work__dregister_1__dout__RTI:
	.byte	16
	.byte	1
	.byte	3
	.byte	0
	.long	work__dregister_1__dout__RTISTR
	.long	12
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__dregister_1__enable__RTISTR, @object
	.size	work__dregister_1__enable__RTISTR, 7
work__dregister_1__enable__RTISTR:
	.byte	101
	.byte	110
	.byte	97
	.byte	98
	.byte	108
	.byte	101
	.byte	0
.globl work__dregister_1__enable__RTI
	.align 4
	.type	work__dregister_1__enable__RTI, @object
	.size	work__dregister_1__enable__RTI, 16
work__dregister_1__enable__RTI:
	.byte	16
	.byte	1
	.byte	5
	.byte	0
	.long	work__dregister_1__enable__RTISTR
	.long	16
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__dregister_1__clk__RTISTR, @object
	.size	work__dregister_1__clk__RTISTR, 4
work__dregister_1__clk__RTISTR:
	.byte	99
	.byte	108
	.byte	107
	.byte	0
.globl work__dregister_1__clk__RTI
	.align 4
	.type	work__dregister_1__clk__RTI, @object
	.size	work__dregister_1__clk__RTI, 16
work__dregister_1__clk__RTI:
	.byte	16
	.byte	1
	.byte	5
	.byte	0
	.long	work__dregister_1__clk__RTISTR
	.long	20
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__dregister_1__RTISTR, @object
	.size	work__dregister_1__RTISTR, 12
work__dregister_1__RTISTR:
	.byte	100
	.byte	114
	.byte	101
	.byte	103
	.byte	105
	.byte	115
	.byte	116
	.byte	101
	.byte	114
	.byte	95
	.byte	49
	.byte	0
	.align 4
	.type	work__dregister_1__RTIARRAY, @object
	.size	work__dregister_1__RTIARRAY, 20
work__dregister_1__RTIARRAY:
	.long	work__dregister_1__din__RTI
	.long	work__dregister_1__dout__RTI
	.long	work__dregister_1__enable__RTI
	.long	work__dregister_1__clk__RTI
	.long	0
.globl work__dregister_1__RTI
	.align 4
	.type	work__dregister_1__RTI, @object
	.size	work__dregister_1__RTI, 28
work__dregister_1__RTI:
	.byte	4
	.byte	1
	.byte	0
	.byte	0
	.long	work__dregister_1__RTISTR
	.long	0
	.long	work__RTI
	.long	24
	.long	4
	.long	work__dregister_1__RTIARRAY
	.text
.globl work__dregister_1__ELAB
	.type	work__dregister_1__ELAB, @function
work__dregister_1__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
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
	movl	8(%eax), %eax
	movl	$work__dregister_1__din__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -4(%ebp)
	movl	$0, %eax
	movl	-4(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_signal_init_e8
	movl	-4(%ebp), %eax
	movl	$work__dregister_1__dout__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	$work__dregister_1__enable__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$work__dregister_1__clk__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	leave
	ret
	.size	work__dregister_1__ELAB, .-work__dregister_1__ELAB
.globl work__dregister_1__ARCH__behave1__INSTSIZE
	.section	.rodata
	.align 4
	.type	work__dregister_1__ARCH__behave1__INSTSIZE, @object
	.size	work__dregister_1__ARCH__behave1__INSTSIZE, 4
work__dregister_1__ARCH__behave1__INSTSIZE:
	.long	28
	.type	work__dregister_1__ARCH__behave1__P0__RTISTR, @object
	.size	work__dregister_1__ARCH__behave1__P0__RTISTR, 3
work__dregister_1__ARCH__behave1__P0__RTISTR:
	.byte	80
	.byte	48
	.byte	0
	.align 4
	.type	work__dregister_1__ARCH__behave1__P0__RTIARRAY, @object
	.size	work__dregister_1__ARCH__behave1__P0__RTIARRAY, 4
work__dregister_1__ARCH__behave1__P0__RTIARRAY:
	.zero	4
.globl work__dregister_1__ARCH__behave1__P0__RTI
	.align 4
	.type	work__dregister_1__ARCH__behave1__P0__RTI, @object
	.size	work__dregister_1__ARCH__behave1__P0__RTI, 28
work__dregister_1__ARCH__behave1__P0__RTI:
	.byte	6
	.byte	2
	.byte	0
	.byte	0
	.long	work__dregister_1__ARCH__behave1__P0__RTISTR
	.long	24
	.long	work__dregister_1__ARCH__behave1__RTI
	.long	1
	.long	0
	.long	work__dregister_1__ARCH__behave1__P0__RTIARRAY
	.type	work__dregister_1__ARCH__behave1__RTISTR, @object
	.size	work__dregister_1__ARCH__behave1__RTISTR, 8
work__dregister_1__ARCH__behave1__RTISTR:
	.byte	98
	.byte	101
	.byte	104
	.byte	97
	.byte	118
	.byte	101
	.byte	49
	.byte	0
	.align 4
	.type	work__dregister_1__ARCH__behave1__RTIARRAY, @object
	.size	work__dregister_1__ARCH__behave1__RTIARRAY, 8
work__dregister_1__ARCH__behave1__RTIARRAY:
	.long	work__dregister_1__ARCH__behave1__P0__RTI
	.long	0
.globl work__dregister_1__ARCH__behave1__RTI
	.align 4
	.type	work__dregister_1__ARCH__behave1__RTI, @object
	.size	work__dregister_1__ARCH__behave1__RTI, 28
work__dregister_1__ARCH__behave1__RTI:
	.byte	5
	.byte	1
	.byte	0
	.byte	0
	.long	work__dregister_1__ARCH__behave1__RTISTR
	.long	0
	.long	work__dregister_1__RTI
	.long	28
	.long	1
	.long	work__dregister_1__ARCH__behave1__RTIARRAY
	.text
	.type	work__dregister_1__ARCH__behave1__P0__PROC, @function
work__dregister_1__ARCH__behave1__P0__PROC:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	44(%eax), %eax
	movb	%al, -13(%ebp)
	cmpb	$1, -13(%ebp)
	jne	.L6
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$3, %al
	sete	%al
	movb	%al, -13(%ebp)
.L6:
	cmpb	$0, -13(%ebp)
	je	.L10
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$3, %al
	jne	.L10
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	addl	$24, %eax
	movl	%eax, -4(%ebp)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	(%eax), %edx
	movl	-4(%ebp), %eax
	movb	%dl, (%eax)
	movl	-12(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L8
	movb	$1, -5(%ebp)
	jmp	.L9
.L8:
	movl	-12(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -5(%ebp)
.L9:
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-5(%ebp), %al
	testb	%al, %al
	je	.L10
	movl	-12(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-12(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L10:
	leave
	ret
	.size	work__dregister_1__ARCH__behave1__P0__PROC, .-work__dregister_1__ARCH__behave1__P0__PROC
.globl work__dregister_1__ARCH__behave1__ELAB
	.type	work__dregister_1__ARCH__behave1__ELAB, @function
work__dregister_1__ARCH__behave1__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	8(%ebp), %eax
	movl	$work__dregister_1__ARCH__behave1__RTI, (%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	work__dregister_1__ELAB
	movl	-4(%ebp), %eax
	addl	$24, %eax
	movl	$work__dregister_1__ARCH__behave1__P0__PROC, %edx
	movl	-4(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	$work__dregister_1__ARCH__behave1__P0__RTI, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	__ghdl_sensitized_process_register
	movl	-4(%ebp), %eax
	leal	24(%eax), %edx
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	leave
	ret
	.size	work__dregister_1__ARCH__behave1__ELAB, .-work__dregister_1__ARCH__behave1__ELAB
	.ident	"GCC: (GNU) 4.3.4"
	.section	.note.GNU-stack,"",@progbits
