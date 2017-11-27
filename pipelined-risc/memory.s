	.file	"memory.vhd"
	.section	.rodata
	.type	_UI00000000, @object
	.size	_UI00000000, 11
_UI00000000:
	.byte	109
	.byte	101
	.byte	109
	.byte	111
	.byte	114
	.byte	121
	.byte	46
	.byte	118
	.byte	104
	.byte	100
	.byte	0
.globl work__memory__add_in__OT__STB
	.align 4
	.type	work__memory__add_in__OT__STB, @object
	.size	work__memory__add_in__OT__STB, 16
work__memory__add_in__OT__STB:
	.long	15
	.long	0
	.byte	1
	.zero	3
	.long	16
.globl work__memory__y_out__OT__STB
	.align 4
	.type	work__memory__y_out__OT__STB, @object
	.size	work__memory__y_out__OT__STB, 16
work__memory__y_out__OT__STB:
	.long	15
	.long	0
	.byte	1
	.zero	3
	.long	16
	.type	work__memory__wr__RTISTR, @object
	.size	work__memory__wr__RTISTR, 3
work__memory__wr__RTISTR:
	.byte	119
	.byte	114
	.byte	0
.globl work__memory__wr__RTI
	.align 4
	.type	work__memory__wr__RTI, @object
	.size	work__memory__wr__RTI, 16
work__memory__wr__RTI:
	.byte	16
	.byte	1
	.byte	5
	.byte	0
	.long	work__memory__wr__RTISTR
	.long	8
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__memory__rd__RTISTR, @object
	.size	work__memory__rd__RTISTR, 3
work__memory__rd__RTISTR:
	.byte	114
	.byte	100
	.byte	0
.globl work__memory__rd__RTI
	.align 4
	.type	work__memory__rd__RTI, @object
	.size	work__memory__rd__RTI, 16
work__memory__rd__RTI:
	.byte	16
	.byte	1
	.byte	5
	.byte	0
	.long	work__memory__rd__RTISTR
	.long	12
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__memory__init__RTISTR, @object
	.size	work__memory__init__RTISTR, 5
work__memory__init__RTISTR:
	.byte	105
	.byte	110
	.byte	105
	.byte	116
	.byte	0
.globl work__memory__init__RTI
	.align 4
	.type	work__memory__init__RTI, @object
	.size	work__memory__init__RTI, 16
work__memory__init__RTI:
	.byte	16
	.byte	1
	.byte	5
	.byte	0
	.long	work__memory__init__RTISTR
	.long	16
	.long	ieee__std_logic_1164__std_logic__RTI
.globl work__memory__add_in__OT__RTI
	.align 4
	.type	work__memory__add_in__OT__RTI, @object
	.size	work__memory__add_in__OT__RTI, 24
work__memory__add_in__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__memory__add_in__OT__STB
	.long	16
	.long	64
	.type	work__memory__add_in__RTISTR, @object
	.size	work__memory__add_in__RTISTR, 7
work__memory__add_in__RTISTR:
	.byte	97
	.byte	100
	.byte	100
	.byte	95
	.byte	105
	.byte	110
	.byte	0
.globl work__memory__add_in__RTI
	.align 4
	.type	work__memory__add_in__RTI, @object
	.size	work__memory__add_in__RTI, 16
work__memory__add_in__RTI:
	.byte	16
	.byte	1
	.byte	5
	.byte	0
	.long	work__memory__add_in__RTISTR
	.long	20
	.long	work__memory__add_in__OT__RTI
	.type	work__memory__d_in__RTISTR, @object
	.size	work__memory__d_in__RTISTR, 5
work__memory__d_in__RTISTR:
	.byte	100
	.byte	95
	.byte	105
	.byte	110
	.byte	0
.globl work__memory__d_in__RTI
	.align 4
	.type	work__memory__d_in__RTI, @object
	.size	work__memory__d_in__RTI, 16
work__memory__d_in__RTI:
	.byte	16
	.byte	1
	.byte	5
	.byte	0
	.long	work__memory__d_in__RTISTR
	.long	84
	.long	work__memory__add_in__OT__RTI
.globl work__memory__y_out__OT__RTI
	.align 4
	.type	work__memory__y_out__OT__RTI, @object
	.size	work__memory__y_out__OT__RTI, 24
work__memory__y_out__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__memory__y_out__OT__STB
	.long	16
	.long	64
	.type	work__memory__y_out__RTISTR, @object
	.size	work__memory__y_out__RTISTR, 6
work__memory__y_out__RTISTR:
	.byte	121
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	0
.globl work__memory__y_out__RTI
	.align 4
	.type	work__memory__y_out__RTI, @object
	.size	work__memory__y_out__RTI, 16
work__memory__y_out__RTI:
	.byte	16
	.byte	1
	.byte	3
	.byte	0
	.long	work__memory__y_out__RTISTR
	.long	148
	.long	work__memory__y_out__OT__RTI
	.type	work__memory__RTISTR, @object
	.size	work__memory__RTISTR, 7
work__memory__RTISTR:
	.byte	109
	.byte	101
	.byte	109
	.byte	111
	.byte	114
	.byte	121
	.byte	0
	.align 4
	.type	work__memory__RTIARRAY, @object
	.size	work__memory__RTIARRAY, 28
work__memory__RTIARRAY:
	.long	work__memory__wr__RTI
	.long	work__memory__rd__RTI
	.long	work__memory__init__RTI
	.long	work__memory__add_in__RTI
	.long	work__memory__d_in__RTI
	.long	work__memory__y_out__RTI
	.long	0
.globl work__memory__RTI
	.align 4
	.type	work__memory__RTI, @object
	.size	work__memory__RTI, 28
work__memory__RTI:
	.byte	4
	.byte	1
	.byte	0
	.byte	0
	.long	work__memory__RTISTR
	.long	0
	.long	work__RTI
	.long	212
	.long	6
	.long	work__memory__RTIARRAY
	.text
.globl work__memory__ELAB
	.type	work__memory__ELAB, @function
work__memory__ELAB:
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
	movl	8(%eax), %eax
	movl	$work__memory__wr__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	$work__memory__rd__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	$work__memory__init__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	movl	8(%ebp), %eax
	addl	$20, %eax
	movl	%eax, -28(%ebp)
	movl	$0, -24(%ebp)
.L5:
	cmpl	$16, -24(%ebp)
	jae	.L4
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	$work__memory__add_in__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	addl	$1, -24(%ebp)
	jmp	.L5
.L4:
	movl	8(%ebp), %eax
	addl	$84, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
.L7:
	cmpl	$16, -16(%ebp)
	jae	.L6
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	$work__memory__d_in__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	addl	$1, -16(%ebp)
	jmp	.L7
.L6:
	movl	8(%ebp), %eax
	addl	$148, %eax
	movl	%eax, -12(%ebp)
	movl	$0, -8(%ebp)
.L9:
	cmpl	$16, -8(%ebp)
	jae	.L10
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
	movl	$work__memory__y_out__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	addl	$1, -8(%ebp)
	jmp	.L9
.L10:
	leave
	ret
	.size	work__memory__ELAB, .-work__memory__ELAB
.globl work__memory__ARCH__memory_behave__registerfile__BT__ET__STB
	.section	.rodata
	.align 4
	.type	work__memory__ARCH__memory_behave__registerfile__BT__ET__STB, @object
	.size	work__memory__ARCH__memory_behave__registerfile__BT__ET__STB, 16
work__memory__ARCH__memory_behave__registerfile__BT__ET__STB:
	.long	15
	.long	0
	.byte	1
	.zero	3
	.long	16
.globl work__memory__ARCH__memory_behave__registerfile__BT__DIMO1__STR
	.align 4
	.type	work__memory__ARCH__memory_behave__registerfile__BT__DIMO1__STR, @object
	.size	work__memory__ARCH__memory_behave__registerfile__BT__DIMO1__STR, 16
work__memory__ARCH__memory_behave__registerfile__BT__DIMO1__STR:
	.long	0
	.long	15
	.byte	0
	.zero	3
	.long	16
.globl work__memory__ARCH__memory_behave__registerfile__BT__BR1
	.align 4
	.type	work__memory__ARCH__memory_behave__registerfile__BT__BR1, @object
	.size	work__memory__ARCH__memory_behave__registerfile__BT__BR1, 16
work__memory__ARCH__memory_behave__registerfile__BT__BR1:
	.long	0
	.long	0
	.byte	0
	.zero	3
	.long	1
.globl work__memory__ARCH__memory_behave__registerfile__STB
	.align 4
	.type	work__memory__ARCH__memory_behave__registerfile__STB, @object
	.size	work__memory__ARCH__memory_behave__registerfile__STB, 16
work__memory__ARCH__memory_behave__registerfile__STB:
	.long	0
	.long	15
	.byte	0
	.zero	3
	.long	16
.globl work__memory__ARCH__memory_behave__INSTSIZE
	.align 4
	.type	work__memory__ARCH__memory_behave__INSTSIZE, @object
	.size	work__memory__ARCH__memory_behave__INSTSIZE, 4
work__memory__ARCH__memory_behave__INSTSIZE:
	.long	1508
	.type	work__memory__ARCH__memory_behave__registerfile__BT__RTISTR, @object
	.size	work__memory__ARCH__memory_behave__registerfile__BT__RTISTR, 13
work__memory__ARCH__memory_behave__registerfile__BT__RTISTR:
	.byte	114
	.byte	101
	.byte	103
	.byte	105
	.byte	115
	.byte	116
	.byte	101
	.byte	114
	.byte	102
	.byte	105
	.byte	108
	.byte	101
	.byte	0
.globl work__memory__ARCH__memory_behave__registerfile__BT__EL__RTI
	.align 4
	.type	work__memory__ARCH__memory_behave__registerfile__BT__EL__RTI, @object
	.size	work__memory__ARCH__memory_behave__registerfile__BT__EL__RTI, 24
work__memory__ARCH__memory_behave__registerfile__BT__EL__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__memory__ARCH__memory_behave__registerfile__BT__ET__STB
	.long	16
	.long	64
.globl work__memory__ARCH__memory_behave__registerfile__BT__DIMO1__RTI
	.align 4
	.type	work__memory__ARCH__memory_behave__registerfile__BT__DIMO1__RTI, @object
	.size	work__memory__ARCH__memory_behave__registerfile__BT__DIMO1__RTI, 16
work__memory__ARCH__memory_behave__registerfile__BT__DIMO1__RTI:
	.byte	34
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	std__standard__integer__BT__RTI
	.long	work__memory__ARCH__memory_behave__registerfile__BT__DIMO1__STR
.globl work__memory__ARCH__memory_behave__registerfile__BT__RTIINDEXES
	.align 4
	.type	work__memory__ARCH__memory_behave__registerfile__BT__RTIINDEXES, @object
	.size	work__memory__ARCH__memory_behave__registerfile__BT__RTIINDEXES, 4
work__memory__ARCH__memory_behave__registerfile__BT__RTIINDEXES:
	.long	work__memory__ARCH__memory_behave__registerfile__BT__DIMO1__RTI
.globl work__memory__ARCH__memory_behave__registerfile__BT__RTI
	.align 4
	.type	work__memory__ARCH__memory_behave__registerfile__BT__RTI, @object
	.size	work__memory__ARCH__memory_behave__registerfile__BT__RTI, 20
work__memory__ARCH__memory_behave__registerfile__BT__RTI:
	.byte	31
	.byte	0
	.byte	0
	.byte	0
	.long	work__memory__ARCH__memory_behave__registerfile__BT__RTISTR
	.long	work__memory__ARCH__memory_behave__registerfile__BT__EL__RTI
	.long	1
	.long	work__memory__ARCH__memory_behave__registerfile__BT__RTIINDEXES
	.type	work__memory__ARCH__memory_behave__registerfile__RTISTR, @object
	.size	work__memory__ARCH__memory_behave__registerfile__RTISTR, 13
work__memory__ARCH__memory_behave__registerfile__RTISTR:
	.byte	114
	.byte	101
	.byte	103
	.byte	105
	.byte	115
	.byte	116
	.byte	101
	.byte	114
	.byte	102
	.byte	105
	.byte	108
	.byte	101
	.byte	0
.globl work__memory__ARCH__memory_behave__registerfile__RTI
	.align 4
	.type	work__memory__ARCH__memory_behave__registerfile__RTI, @object
	.size	work__memory__ARCH__memory_behave__registerfile__RTI, 24
work__memory__ARCH__memory_behave__registerfile__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	work__memory__ARCH__memory_behave__registerfile__RTISTR
	.long	work__memory__ARCH__memory_behave__registerfile__BT__RTI
	.long	work__memory__ARCH__memory_behave__registerfile__STB
	.long	256
	.long	1024
	.type	work__memory__ARCH__memory_behave__mem_reg__RTISTR, @object
	.size	work__memory__ARCH__memory_behave__mem_reg__RTISTR, 8
work__memory__ARCH__memory_behave__mem_reg__RTISTR:
	.byte	109
	.byte	101
	.byte	109
	.byte	95
	.byte	114
	.byte	101
	.byte	103
	.byte	0
.globl work__memory__ARCH__memory_behave__mem_reg__RTI
	.align 4
	.type	work__memory__ARCH__memory_behave__mem_reg__RTI, @object
	.size	work__memory__ARCH__memory_behave__mem_reg__RTI, 16
work__memory__ARCH__memory_behave__mem_reg__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__memory__ARCH__memory_behave__mem_reg__RTISTR
	.long	212
	.long	work__memory__ARCH__memory_behave__registerfile__RTI
	.type	work__memory__ARCH__memory_behave__P0__RTISTR, @object
	.size	work__memory__ARCH__memory_behave__P0__RTISTR, 3
work__memory__ARCH__memory_behave__P0__RTISTR:
	.byte	80
	.byte	48
	.byte	0
	.align 4
	.type	work__memory__ARCH__memory_behave__P0__RTIARRAY, @object
	.size	work__memory__ARCH__memory_behave__P0__RTIARRAY, 4
work__memory__ARCH__memory_behave__P0__RTIARRAY:
	.zero	4
.globl work__memory__ARCH__memory_behave__P0__RTI
	.align 4
	.type	work__memory__ARCH__memory_behave__P0__RTI, @object
	.size	work__memory__ARCH__memory_behave__P0__RTI, 28
work__memory__ARCH__memory_behave__P0__RTI:
	.byte	6
	.byte	2
	.byte	0
	.byte	0
	.long	work__memory__ARCH__memory_behave__P0__RTISTR
	.long	1236
	.long	work__memory__ARCH__memory_behave__RTI
	.long	272
	.long	0
	.long	work__memory__ARCH__memory_behave__P0__RTIARRAY
	.type	work__memory__ARCH__memory_behave__RTISTR, @object
	.size	work__memory__ARCH__memory_behave__RTISTR, 14
work__memory__ARCH__memory_behave__RTISTR:
	.byte	109
	.byte	101
	.byte	109
	.byte	111
	.byte	114
	.byte	121
	.byte	95
	.byte	98
	.byte	101
	.byte	104
	.byte	97
	.byte	118
	.byte	101
	.byte	0
	.align 4
	.type	work__memory__ARCH__memory_behave__RTIARRAY, @object
	.size	work__memory__ARCH__memory_behave__RTIARRAY, 16
work__memory__ARCH__memory_behave__RTIARRAY:
	.long	work__memory__ARCH__memory_behave__registerfile__RTI
	.long	work__memory__ARCH__memory_behave__mem_reg__RTI
	.long	work__memory__ARCH__memory_behave__P0__RTI
	.long	0
.globl work__memory__ARCH__memory_behave__RTI
	.align 4
	.type	work__memory__ARCH__memory_behave__RTI, @object
	.size	work__memory__ARCH__memory_behave__RTI, 28
work__memory__ARCH__memory_behave__RTI:
	.byte	5
	.byte	1
	.byte	0
	.byte	0
	.long	work__memory__ARCH__memory_behave__RTISTR
	.long	0
	.long	work__memory__RTI
	.long	1508
	.long	3
	.long	work__memory__ARCH__memory_behave__RTIARRAY
	.text
.globl work__memory__ARCH__memory_behave__registerfile_EQ
	.type	work__memory__ARCH__memory_behave__registerfile_EQ, @function
work__memory__ARCH__memory_behave__registerfile_EQ:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	je	.L12
	movb	$0, -33(%ebp)
	jmp	.L13
.L12:
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -4(%ebp)
	movl	$0, -8(%ebp)
.L16:
	movl	-8(%ebp), %eax
	cmpl	-4(%ebp), %eax
	jb	.L14
	movb	$1, -33(%ebp)
	jmp	.L13
.L14:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -16(%ebp)
	movl	$work__memory__ARCH__memory_behave__registerfile__BT__ET__STB, -12(%ebp)
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -24(%ebp)
	movl	$work__memory__ARCH__memory_behave__registerfile__BT__ET__STB, -20(%ebp)
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	ieee__std_logic_1164__std_logic_vector_EQ
	xorl	$1, %eax
	testb	%al, %al
	je	.L15
	movb	$0, -33(%ebp)
	jmp	.L13
.L15:
	addl	$1, -8(%ebp)
	jmp	.L16
.L13:
	movzbl	-33(%ebp), %eax
	leave
	ret
	.size	work__memory__ARCH__memory_behave__registerfile_EQ, .-work__memory__ARCH__memory_behave__registerfile_EQ
.globl work__memory__ARCH__memory_behave__registerfile_CONCAT
	.type	work__memory__ARCH__memory_behave__registerfile_CONCAT, @function
work__memory__ARCH__memory_behave__registerfile_CONCAT:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$72, %esp
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	.L19
	movl	20(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	20(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%eax)
	jmp	.L24
.L19:
	movl	$16, (%esp)
	call	__ghdl_stack2_allocate
	movl	%eax, -12(%ebp)
	movl	12(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%edx)
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 12(%edx)
	movl	-8(%ebp), %eax
	movb	$0, 8(%eax)
	cmpl	$0, -24(%ebp)
	jne	.L21
	movl	-8(%ebp), %eax
	movl	$15, (%eax)
	movl	-8(%ebp), %eax
	movl	$0, 4(%eax)
	jmp	.L22
.L21:
	movl	-8(%ebp), %eax
	movl	$0, (%eax)
	movl	-24(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	shrl	$31, %eax
	movl	%eax, %edx
	cmpl	$15, -4(%ebp)
	setg	%al
	orl	%edx, %eax
	testb	%al, %al
	je	.L23
	movl	$0, (%esp)
	call	__ghdl_bound_check_failed_l0
.L23:
	movl	-8(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%eax, 4(%edx)
.L22:
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	sall	$4, %eax
	movl	%eax, (%esp)
	call	__ghdl_stack2_allocate
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %ecx
	sall	$4, %ecx
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_memcpy
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -40(%ebp)
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %ecx
	sall	$4, %ecx
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_memcpy
.L24:
	leave
	ret
	.size	work__memory__ARCH__memory_behave__registerfile_CONCAT, .-work__memory__ARCH__memory_behave__registerfile_CONCAT
	.section	.rodata
	.type	_UI00000001.2115, @object
	.size	_UI00000001.2115, 16
_UI00000001.2115:
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	2
	.byte	3
	.byte	2
	.byte	2
	.byte	3
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.type	_UI00000002.2124, @object
	.size	_UI00000002.2124, 16
_UI00000002.2124:
	.byte	2
	.byte	3
	.byte	3
	.byte	2
	.byte	2
	.byte	3
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.byte	2
	.byte	2
	.type	_UI00000003.2140, @object
	.size	_UI00000003.2140, 16
_UI00000003.2140:
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.align 4
	.type	work__memory__ARCH__memory_behave__P0__U0__STB.2151, @object
	.size	work__memory__ARCH__memory_behave__P0__U0__STB.2151, 16
work__memory__ARCH__memory_behave__P0__U0__STB.2151:
	.long	3
	.long	0
	.byte	1
	.zero	3
	.long	4
	.type	_UI00000004.2176, @object
	.size	_UI00000004.2176, 16
_UI00000004.2176:
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.align 4
	.type	work__memory__ARCH__memory_behave__P0__U1__STB.2187, @object
	.size	work__memory__ARCH__memory_behave__P0__U1__STB.2187, 16
work__memory__ARCH__memory_behave__P0__U1__STB.2187:
	.long	3
	.long	0
	.byte	1
	.zero	3
	.long	4
	.text
	.type	work__memory__ARCH__memory_behave__P0__PROC, @function
work__memory__ARCH__memory_behave__P0__PROC:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$328, %esp
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$3, %al
	jne	.L26
	movl	$0, -224(%ebp)
	movl	8(%ebp), %eax
	addl	$212, %eax
	movl	%eax, %edx
	movl	-224(%ebp), %eax
	sall	$6, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -220(%ebp)
	movl	$0, -216(%ebp)
.L31:
	cmpl	$16, -216(%ebp)
	jae	.L27
	movl	-216(%ebp), %edx
	movl	-220(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -212(%ebp)
	movl	8(%ebp), %eax
	addl	$1236, %eax
	movl	%eax, %edx
	movl	-224(%ebp), %eax
	sall	$4, %eax
	addl	-216(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -204(%ebp)
	movl	$_UI00000001.2115, %edx
	movl	-216(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-204(%ebp), %eax
	movb	%dl, (%eax)
	movl	-212(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L28
	movb	$1, -205(%ebp)
	jmp	.L29
.L28:
	movl	-212(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-204(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -205(%ebp)
.L29:
	movl	-212(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-205(%ebp), %al
	testb	%al, %al
	je	.L30
	movl	-212(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-212(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L30:
	addl	$1, -216(%ebp)
	jmp	.L31
.L27:
	movl	$1, -200(%ebp)
	movl	8(%ebp), %eax
	addl	$212, %eax
	movl	%eax, %edx
	movl	-200(%ebp), %eax
	sall	$6, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -196(%ebp)
	movl	$0, -192(%ebp)
.L36:
	cmpl	$16, -192(%ebp)
	jae	.L32
	movl	-192(%ebp), %edx
	movl	-196(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -188(%ebp)
	movl	8(%ebp), %eax
	addl	$1236, %eax
	movl	%eax, %edx
	movl	-200(%ebp), %eax
	sall	$4, %eax
	addl	-192(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -180(%ebp)
	movl	$_UI00000002.2124, %edx
	movl	-192(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-180(%ebp), %eax
	movb	%dl, (%eax)
	movl	-188(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L33
	movb	$1, -181(%ebp)
	jmp	.L34
.L33:
	movl	-188(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-180(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -181(%ebp)
.L34:
	movl	-188(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-181(%ebp), %al
	testb	%al, %al
	je	.L35
	movl	-188(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-188(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L35:
	addl	$1, -192(%ebp)
	jmp	.L36
.L32:
	movl	$2, -176(%ebp)
	movl	$14, -172(%ebp)
	movl	-176(%ebp), %eax
	cmpl	-172(%ebp), %eax
	jg	.L45
.L44:
	movl	-176(%ebp), %eax
	movl	%eax, -164(%ebp)
	cmpl	$16, -164(%ebp)
	jb	.L38
	movl	$_UI00000000, %eax
	movl	$27, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_bound_check_failed_l1
.L38:
	movl	-164(%ebp), %eax
	movl	%eax, -168(%ebp)
	movl	8(%ebp), %eax
	addl	$212, %eax
	movl	%eax, %edx
	movl	-168(%ebp), %eax
	sall	$6, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -160(%ebp)
	movl	$0, -156(%ebp)
.L43:
	cmpl	$16, -156(%ebp)
	jae	.L39
	movl	-156(%ebp), %edx
	movl	-160(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -152(%ebp)
	movl	8(%ebp), %eax
	addl	$1236, %eax
	movl	%eax, %edx
	movl	-168(%ebp), %eax
	sall	$4, %eax
	addl	-156(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -144(%ebp)
	movl	$_UI00000003.2140, %edx
	movl	-156(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-144(%ebp), %eax
	movb	%dl, (%eax)
	movl	-152(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L40
	movb	$1, -145(%ebp)
	jmp	.L41
.L40:
	movl	-152(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-144(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -145(%ebp)
.L41:
	movl	-152(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-145(%ebp), %al
	testb	%al, %al
	je	.L42
	movl	-152(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-152(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L42:
	addl	$1, -156(%ebp)
	jmp	.L43
.L39:
	movl	-176(%ebp), %eax
	cmpl	-172(%ebp), %eax
	je	.L45
	addl	$1, -176(%ebp)
	jmp	.L44
.L26:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$3, %al
	jne	.L46
	movl	8(%ebp), %eax
	addl	$20, %eax
	addl	$48, %eax
	movl	%eax, -132(%ebp)
	movl	$0, -128(%ebp)
.L48:
	cmpl	$4, -128(%ebp)
	jae	.L47
	movl	-128(%ebp), %ecx
	movl	-128(%ebp), %edx
	movl	-132(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -244(%ebp,%ecx)
	addl	$1, -128(%ebp)
	jmp	.L48
.L47:
	leal	-252(%ebp), %eax
	movl	%eax, -124(%ebp)
	leal	-244(%ebp), %eax
	movl	%eax, -120(%ebp)
	movl	-120(%ebp), %eax
	movl	%eax, -252(%ebp)
	leal	-268(%ebp), %eax
	movl	%eax, -248(%ebp)
	movl	-124(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -116(%ebp)
	movl	$work__memory__ARCH__memory_behave__P0__U0__STB.2151, -112(%ebp)
	movl	-112(%ebp), %eax
	movl	(%eax), %edx
	movl	-116(%ebp), %eax
	movl	%edx, (%eax)
	movl	-112(%ebp), %eax
	movl	4(%eax), %edx
	movl	-116(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-112(%ebp), %eax
	movzbl	8(%eax), %edx
	movl	-116(%ebp), %eax
	movb	%dl, 8(%eax)
	movl	-112(%ebp), %eax
	movl	12(%eax), %edx
	movl	-116(%ebp), %eax
	movl	%edx, 12(%eax)
	leal	-252(%ebp), %eax
	movl	%eax, (%esp)
	call	ieee__numeric_std__to_integerO1
	movl	%eax, -136(%ebp)
	cmpl	$16, -136(%ebp)
	jb	.L49
	movl	$_UI00000000, %eax
	movl	$30, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_bound_check_failed_l1
.L49:
	movl	-136(%ebp), %eax
	movl	%eax, -140(%ebp)
	movl	8(%ebp), %eax
	addl	$212, %eax
	movl	%eax, %edx
	movl	-140(%ebp), %eax
	sall	$6, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -108(%ebp)
	movl	$0, -104(%ebp)
.L51:
	cmpl	$16, -104(%ebp)
	jae	.L50
	movl	-104(%ebp), %ecx
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -240(%ebp,%ecx)
	addl	$1, -104(%ebp)
	jmp	.L51
.L50:
	movl	8(%ebp), %eax
	addl	$148, %eax
	movl	%eax, -100(%ebp)
	movl	$0, -96(%ebp)
.L56:
	cmpl	$16, -96(%ebp)
	jae	.L45
	movl	-96(%ebp), %edx
	movl	-100(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -92(%ebp)
	movl	8(%ebp), %eax
	addl	$1492, %eax
	addl	-96(%ebp), %eax
	movl	%eax, -84(%ebp)
	leal	-240(%ebp), %edx
	movl	-96(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-84(%ebp), %eax
	movb	%dl, (%eax)
	movl	-92(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L53
	movb	$1, -85(%ebp)
	jmp	.L54
.L53:
	movl	-92(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-84(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -85(%ebp)
.L54:
	movl	-92(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-85(%ebp), %al
	testb	%al, %al
	je	.L55
	movl	-92(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-92(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L55:
	addl	$1, -96(%ebp)
	jmp	.L56
.L46:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$2, %al
	jne	.L45
	movl	8(%ebp), %eax
	addl	$148, %eax
	movl	%eax, -80(%ebp)
	movl	$0, -76(%ebp)
.L60:
	cmpl	$16, -76(%ebp)
	jae	.L45
	movl	-76(%ebp), %edx
	movl	-80(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -72(%ebp)
	movl	8(%ebp), %eax
	addl	$1492, %eax
	addl	-76(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	$_UI00000004.2176, %edx
	movl	-76(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-64(%ebp), %eax
	movb	%dl, (%eax)
	movl	-72(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L57
	movb	$1, -65(%ebp)
	jmp	.L58
.L57:
	movl	-72(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -65(%ebp)
.L58:
	movl	-72(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-65(%ebp), %al
	testb	%al, %al
	je	.L59
	movl	-72(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-72(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L59:
	addl	$1, -76(%ebp)
	jmp	.L60
.L45:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$3, %al
	jne	.L71
	movl	8(%ebp), %eax
	addl	$20, %eax
	addl	$48, %eax
	movl	%eax, -52(%ebp)
	movl	$0, -48(%ebp)
.L63:
	cmpl	$4, -48(%ebp)
	jae	.L62
	movl	-48(%ebp), %ecx
	movl	-48(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -288(%ebp,%ecx)
	addl	$1, -48(%ebp)
	jmp	.L63
.L62:
	leal	-296(%ebp), %eax
	movl	%eax, -44(%ebp)
	leal	-288(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, -296(%ebp)
	leal	-312(%ebp), %eax
	movl	%eax, -292(%ebp)
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	$work__memory__ARCH__memory_behave__P0__U1__STB.2187, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, (%eax)
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %edx
	movl	-36(%ebp), %eax
	movb	%dl, 8(%eax)
	movl	-32(%ebp), %eax
	movl	12(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 12(%eax)
	leal	-296(%ebp), %eax
	movl	%eax, (%esp)
	call	ieee__numeric_std__to_integerO1
	movl	%eax, -56(%ebp)
	cmpl	$16, -56(%ebp)
	jb	.L64
	movl	$_UI00000000, %eax
	movl	$36, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_bound_check_failed_l1
.L64:
	movl	-56(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	8(%ebp), %eax
	addl	$84, %eax
	movl	%eax, -28(%ebp)
	movl	$0, -24(%ebp)
.L66:
	cmpl	$16, -24(%ebp)
	jae	.L65
	movl	-24(%ebp), %ecx
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -284(%ebp,%ecx)
	addl	$1, -24(%ebp)
	jmp	.L66
.L65:
	movl	8(%ebp), %eax
	addl	$212, %eax
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	sall	$6, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
.L70:
	cmpl	$16, -16(%ebp)
	jae	.L71
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	addl	$1236, %eax
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	sall	$4, %eax
	addl	-16(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -4(%ebp)
	leal	-284(%ebp), %edx
	movl	-16(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-4(%ebp), %eax
	movb	%dl, (%eax)
	movl	-12(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L67
	movb	$1, -5(%ebp)
	jmp	.L68
.L67:
	movl	-12(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -5(%ebp)
.L68:
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-5(%ebp), %al
	testb	%al, %al
	je	.L69
	movl	-12(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-12(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L69:
	addl	$1, -16(%ebp)
	jmp	.L70
.L71:
	leave
	ret
	.size	work__memory__ARCH__memory_behave__P0__PROC, .-work__memory__ARCH__memory_behave__P0__PROC
.globl work__memory__ARCH__memory_behave__ELAB
	.type	work__memory__ARCH__memory_behave__ELAB, @function
work__memory__ARCH__memory_behave__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$116, %esp
	movl	8(%ebp), %eax
	movl	%eax, -88(%ebp)
	movl	8(%ebp), %eax
	movl	$work__memory__ARCH__memory_behave__RTI, (%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	work__memory__ELAB
	movl	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__memory__ARCH__memory_behave__RTI, 4(%esp)
	movl	$work__memory__ARCH__memory_behave__mem_reg__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-88(%ebp), %eax
	addl	$212, %eax
	movl	%eax, -84(%ebp)
	movl	$0, -80(%ebp)
.L76:
	cmpl	$16, -80(%ebp)
	jae	.L73
	movl	-84(%ebp), %edx
	movl	-80(%ebp), %eax
	sall	$6, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -76(%ebp)
	movl	$0, -72(%ebp)
.L75:
	cmpl	$16, -72(%ebp)
	jae	.L74
	movl	-72(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-76(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -72(%ebp)
	jmp	.L75
.L74:
	addl	$1, -80(%ebp)
	jmp	.L76
.L73:
	movl	-88(%ebp), %eax
	addl	$1236, %eax
	movl	$work__memory__ARCH__memory_behave__P0__PROC, %edx
	movl	-88(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	$work__memory__ARCH__memory_behave__P0__RTI, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	__ghdl_sensitized_process_register
	movl	$0, -68(%ebp)
	movl	-88(%ebp), %eax
	addl	$212, %eax
	movl	%eax, %edx
	movl	-68(%ebp), %eax
	sall	$6, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -64(%ebp)
	movl	$0, -60(%ebp)
.L78:
	cmpl	$16, -60(%ebp)
	jae	.L77
	movl	-88(%ebp), %eax
	addl	$1236, %eax
	movl	%eax, %edx
	movl	-68(%ebp), %eax
	sall	$4, %eax
	addl	-60(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	-60(%ebp), %edx
	movl	-64(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	addl	$1, -60(%ebp)
	jmp	.L78
.L77:
	movl	$1, -56(%ebp)
	movl	-88(%ebp), %eax
	addl	$212, %eax
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	sall	$6, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -52(%ebp)
	movl	$0, -48(%ebp)
.L80:
	cmpl	$16, -48(%ebp)
	jae	.L79
	movl	-88(%ebp), %eax
	addl	$1236, %eax
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	sall	$4, %eax
	addl	-48(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	-48(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	addl	$1, -48(%ebp)
	jmp	.L80
.L79:
	movl	-88(%ebp), %eax
	addl	$212, %eax
	movl	%eax, -44(%ebp)
	movl	$0, -40(%ebp)
.L84:
	cmpl	$16, -40(%ebp)
	jae	.L81
	movl	-44(%ebp), %edx
	movl	-40(%ebp), %eax
	sall	$6, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -36(%ebp)
	movl	$0, -32(%ebp)
.L83:
	cmpl	$16, -32(%ebp)
	jae	.L82
	movl	-88(%ebp), %eax
	addl	$1236, %eax
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	sall	$4, %eax
	addl	-32(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	-32(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	addl	$1, -32(%ebp)
	jmp	.L83
.L82:
	addl	$1, -40(%ebp)
	jmp	.L84
.L81:
	movl	-88(%ebp), %eax
	addl	$148, %eax
	movl	%eax, -28(%ebp)
	movl	$0, -24(%ebp)
.L86:
	cmpl	$16, -24(%ebp)
	jae	.L85
	movl	-88(%ebp), %eax
	addl	$1492, %eax
	movl	%eax, %ecx
	addl	-24(%ebp), %ecx
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	addl	$1, -24(%ebp)
	jmp	.L86
.L85:
	movl	-88(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	movl	-88(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	movl	-88(%ebp), %eax
	addl	$20, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
.L88:
	cmpl	$16, -16(%ebp)
	jae	.L87
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	addl	$1, -16(%ebp)
	jmp	.L88
.L87:
	movl	-88(%ebp), %eax
	addl	$84, %eax
	movl	%eax, -12(%ebp)
	movl	$0, -8(%ebp)
.L90:
	cmpl	$16, -8(%ebp)
	jae	.L91
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	addl	$1, -8(%ebp)
	jmp	.L90
.L91:
	addl	$116, %esp
	popl	%ebx
	popl	%ebp
	ret
	.size	work__memory__ARCH__memory_behave__ELAB, .-work__memory__ARCH__memory_behave__ELAB
	.ident	"GCC: (GNU) 4.3.4"
	.section	.note.GNU-stack,"",@progbits
