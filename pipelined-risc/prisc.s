	.file	"prisc.vhd"
	.section	.rodata
	.type	_UI00000000, @object
	.size	_UI00000000, 10
_UI00000000:
	.byte	112
	.byte	114
	.byte	105
	.byte	115
	.byte	99
	.byte	46
	.byte	118
	.byte	104
	.byte	100
	.byte	0
	.type	work__prisc__clk__RTISTR, @object
	.size	work__prisc__clk__RTISTR, 4
work__prisc__clk__RTISTR:
	.byte	99
	.byte	108
	.byte	107
	.byte	0
.globl work__prisc__clk__RTI
	.align 4
	.type	work__prisc__clk__RTI, @object
	.size	work__prisc__clk__RTI, 16
work__prisc__clk__RTI:
	.byte	16
	.byte	1
	.byte	5
	.byte	0
	.long	work__prisc__clk__RTISTR
	.long	8
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__rst__RTISTR, @object
	.size	work__prisc__rst__RTISTR, 4
work__prisc__rst__RTISTR:
	.byte	114
	.byte	115
	.byte	116
	.byte	0
.globl work__prisc__rst__RTI
	.align 4
	.type	work__prisc__rst__RTI, @object
	.size	work__prisc__rst__RTI, 16
work__prisc__rst__RTI:
	.byte	16
	.byte	1
	.byte	5
	.byte	0
	.long	work__prisc__rst__RTISTR
	.long	12
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__RTISTR, @object
	.size	work__prisc__RTISTR, 6
work__prisc__RTISTR:
	.byte	112
	.byte	114
	.byte	105
	.byte	115
	.byte	99
	.byte	0
	.align 4
	.type	work__prisc__RTIARRAY, @object
	.size	work__prisc__RTIARRAY, 12
work__prisc__RTIARRAY:
	.long	work__prisc__clk__RTI
	.long	work__prisc__rst__RTI
	.long	0
.globl work__prisc__RTI
	.align 4
	.type	work__prisc__RTI, @object
	.size	work__prisc__RTI, 28
work__prisc__RTI:
	.byte	4
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__RTISTR
	.long	0
	.long	work__RTI
	.long	16
	.long	2
	.long	work__prisc__RTIARRAY
	.text
.globl work__prisc__ELAB
	.type	work__prisc__ELAB, @function
work__prisc__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
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
	movl	$work__prisc__clk__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	$work__prisc__rst__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	leave
	ret
	.size	work__prisc__ELAB, .-work__prisc__ELAB
.globl work__prisc__ARCH__pipelined__decoder__x__OT__STB
	.section	.rodata
	.align 4
	.type	work__prisc__ARCH__pipelined__decoder__x__OT__STB, @object
	.size	work__prisc__ARCH__pipelined__decoder__x__OT__STB, 16
work__prisc__ARCH__pipelined__decoder__x__OT__STB:
	.long	3
	.long	0
	.byte	1
	.zero	3
	.long	4
.globl work__prisc__ARCH__pipelined__decoder__y__OT__STB
	.align 4
	.type	work__prisc__ARCH__pipelined__decoder__y__OT__STB, @object
	.size	work__prisc__ARCH__pipelined__decoder__y__OT__STB, 16
work__prisc__ARCH__pipelined__decoder__y__OT__STB:
	.long	18
	.long	0
	.byte	1
	.zero	3
	.long	19
.globl work__prisc__ARCH__pipelined__pipe__ir_in__OT__STB
	.align 4
	.type	work__prisc__ARCH__pipelined__pipe__ir_in__OT__STB, @object
	.size	work__prisc__ARCH__pipelined__pipe__ir_in__OT__STB, 16
work__prisc__ARCH__pipelined__pipe__ir_in__OT__STB:
	.long	15
	.long	0
	.byte	1
	.zero	3
	.long	16
.globl work__prisc__ARCH__pipelined__pipe__ir_out__OT__STB
	.align 4
	.type	work__prisc__ARCH__pipelined__pipe__ir_out__OT__STB, @object
	.size	work__prisc__ARCH__pipelined__pipe__ir_out__OT__STB, 16
work__prisc__ARCH__pipelined__pipe__ir_out__OT__STB:
	.long	15
	.long	0
	.byte	1
	.zero	3
	.long	16
.globl work__prisc__ARCH__pipelined__pipe__contr_in__OT__STB
	.align 4
	.type	work__prisc__ARCH__pipelined__pipe__contr_in__OT__STB, @object
	.size	work__prisc__ARCH__pipelined__pipe__contr_in__OT__STB, 16
work__prisc__ARCH__pipelined__pipe__contr_in__OT__STB:
	.long	18
	.long	0
	.byte	1
	.zero	3
	.long	19
.globl work__prisc__ARCH__pipelined__pipe__contr_out__OT__STB
	.align 4
	.type	work__prisc__ARCH__pipelined__pipe__contr_out__OT__STB, @object
	.size	work__prisc__ARCH__pipelined__pipe__contr_out__OT__STB, 16
work__prisc__ARCH__pipelined__pipe__contr_out__OT__STB:
	.long	18
	.long	0
	.byte	1
	.zero	3
	.long	19
.globl work__prisc__ARCH__pipelined__alu__x__OT__STB
	.align 4
	.type	work__prisc__ARCH__pipelined__alu__x__OT__STB, @object
	.size	work__prisc__ARCH__pipelined__alu__x__OT__STB, 16
work__prisc__ARCH__pipelined__alu__x__OT__STB:
	.long	15
	.long	0
	.byte	1
	.zero	3
	.long	16
.globl work__prisc__ARCH__pipelined__alu__s__OT__STB
	.align 4
	.type	work__prisc__ARCH__pipelined__alu__s__OT__STB, @object
	.size	work__prisc__ARCH__pipelined__alu__s__OT__STB, 16
work__prisc__ARCH__pipelined__alu__s__OT__STB:
	.long	15
	.long	0
	.byte	1
	.zero	3
	.long	16
.globl work__prisc__ARCH__pipelined__memory__add_in__OT__STB
	.align 4
	.type	work__prisc__ARCH__pipelined__memory__add_in__OT__STB, @object
	.size	work__prisc__ARCH__pipelined__memory__add_in__OT__STB, 16
work__prisc__ARCH__pipelined__memory__add_in__OT__STB:
	.long	15
	.long	0
	.byte	1
	.zero	3
	.long	16
.globl work__prisc__ARCH__pipelined__memory__y_out__OT__STB
	.align 4
	.type	work__prisc__ARCH__pipelined__memory__y_out__OT__STB, @object
	.size	work__prisc__ARCH__pipelined__memory__y_out__OT__STB, 16
work__prisc__ARCH__pipelined__memory__y_out__OT__STB:
	.long	15
	.long	0
	.byte	1
	.zero	3
	.long	16
.globl work__prisc__ARCH__pipelined__rf__a1__OT__STB
	.align 4
	.type	work__prisc__ARCH__pipelined__rf__a1__OT__STB, @object
	.size	work__prisc__ARCH__pipelined__rf__a1__OT__STB, 16
work__prisc__ARCH__pipelined__rf__a1__OT__STB:
	.long	2
	.long	0
	.byte	1
	.zero	3
	.long	3
.globl work__prisc__ARCH__pipelined__rf__d3__OT__STB
	.align 4
	.type	work__prisc__ARCH__pipelined__rf__d3__OT__STB, @object
	.size	work__prisc__ARCH__pipelined__rf__d3__OT__STB, 16
work__prisc__ARCH__pipelined__rf__d3__OT__STB:
	.long	15
	.long	0
	.byte	1
	.zero	3
	.long	16
.globl work__prisc__ARCH__pipelined__rf__d1__OT__STB
	.align 4
	.type	work__prisc__ARCH__pipelined__rf__d1__OT__STB, @object
	.size	work__prisc__ARCH__pipelined__rf__d1__OT__STB, 16
work__prisc__ARCH__pipelined__rf__d1__OT__STB:
	.long	15
	.long	0
	.byte	1
	.zero	3
	.long	16
.globl work__prisc__ARCH__pipelined__dregister__din__OT__STB
	.align 4
	.type	work__prisc__ARCH__pipelined__dregister__din__OT__STB, @object
	.size	work__prisc__ARCH__pipelined__dregister__din__OT__STB, 16
work__prisc__ARCH__pipelined__dregister__din__OT__STB:
	.long	15
	.long	0
	.byte	1
	.zero	3
	.long	16
.globl work__prisc__ARCH__pipelined__dregister__dout__OT__STB
	.align 4
	.type	work__prisc__ARCH__pipelined__dregister__dout__OT__STB, @object
	.size	work__prisc__ARCH__pipelined__dregister__dout__OT__STB, 16
work__prisc__ARCH__pipelined__dregister__dout__OT__STB:
	.long	15
	.long	0
	.byte	1
	.zero	3
	.long	16
.globl work__prisc__ARCH__pipelined__pr_encoder__x_in__OT__STB
	.align 4
	.type	work__prisc__ARCH__pipelined__pr_encoder__x_in__OT__STB, @object
	.size	work__prisc__ARCH__pipelined__pr_encoder__x_in__OT__STB, 16
work__prisc__ARCH__pipelined__pr_encoder__x_in__OT__STB:
	.long	7
	.long	0
	.byte	1
	.zero	3
	.long	8
.globl work__prisc__ARCH__pipelined__pr_encoder__x_out__OT__STB
	.align 4
	.type	work__prisc__ARCH__pipelined__pr_encoder__x_out__OT__STB, @object
	.size	work__prisc__ARCH__pipelined__pr_encoder__x_out__OT__STB, 16
work__prisc__ARCH__pipelined__pr_encoder__x_out__OT__STB:
	.long	2
	.long	0
	.byte	1
	.zero	3
	.long	3
.globl work__prisc__ARCH__pipelined__se7__se_in__OT__STB
	.align 4
	.type	work__prisc__ARCH__pipelined__se7__se_in__OT__STB, @object
	.size	work__prisc__ARCH__pipelined__se7__se_in__OT__STB, 16
work__prisc__ARCH__pipelined__se7__se_in__OT__STB:
	.long	8
	.long	0
	.byte	1
	.zero	3
	.long	9
.globl work__prisc__ARCH__pipelined__se7__se_out__OT__STB
	.align 4
	.type	work__prisc__ARCH__pipelined__se7__se_out__OT__STB, @object
	.size	work__prisc__ARCH__pipelined__se7__se_out__OT__STB, 16
work__prisc__ARCH__pipelined__se7__se_out__OT__STB:
	.long	15
	.long	0
	.byte	1
	.zero	3
	.long	16
.globl work__prisc__ARCH__pipelined__se10__se_in__OT__STB
	.align 4
	.type	work__prisc__ARCH__pipelined__se10__se_in__OT__STB, @object
	.size	work__prisc__ARCH__pipelined__se10__se_in__OT__STB, 16
work__prisc__ARCH__pipelined__se10__se_in__OT__STB:
	.long	5
	.long	0
	.byte	1
	.zero	3
	.long	6
.globl work__prisc__ARCH__pipelined__se10__se_out__OT__STB
	.align 4
	.type	work__prisc__ARCH__pipelined__se10__se_out__OT__STB, @object
	.size	work__prisc__ARCH__pipelined__se10__se_out__OT__STB, 16
work__prisc__ARCH__pipelined__se10__se_out__OT__STB:
	.long	15
	.long	0
	.byte	1
	.zero	3
	.long	16
.globl work__prisc__ARCH__pipelined__zeros__OT__STB
	.align 4
	.type	work__prisc__ARCH__pipelined__zeros__OT__STB, @object
	.size	work__prisc__ARCH__pipelined__zeros__OT__STB, 16
work__prisc__ARCH__pipelined__zeros__OT__STB:
	.long	15
	.long	0
	.byte	1
	.zero	3
	.long	16
.globl work__prisc__ARCH__pipelined__one__OT__STB
	.align 4
	.type	work__prisc__ARCH__pipelined__one__OT__STB, @object
	.size	work__prisc__ARCH__pipelined__one__OT__STB, 16
work__prisc__ARCH__pipelined__one__OT__STB:
	.long	15
	.long	0
	.byte	1
	.zero	3
	.long	16
.globl work__prisc__ARCH__pipelined__contr_pa_in__OT__STB
	.align 4
	.type	work__prisc__ARCH__pipelined__contr_pa_in__OT__STB, @object
	.size	work__prisc__ARCH__pipelined__contr_pa_in__OT__STB, 16
work__prisc__ARCH__pipelined__contr_pa_in__OT__STB:
	.long	18
	.long	0
	.byte	1
	.zero	3
	.long	19
.globl work__prisc__ARCH__pipelined__pe_out__OT__STB
	.align 4
	.type	work__prisc__ARCH__pipelined__pe_out__OT__STB, @object
	.size	work__prisc__ARCH__pipelined__pe_out__OT__STB, 16
work__prisc__ARCH__pipelined__pe_out__OT__STB:
	.long	2
	.long	0
	.byte	1
	.zero	3
	.long	3
.globl work__prisc__ARCH__pipelined__INSTSIZE
	.align 4
	.type	work__prisc__ARCH__pipelined__INSTSIZE, @object
	.size	work__prisc__ARCH__pipelined__INSTSIZE, 4
work__prisc__ARCH__pipelined__INSTSIZE:
	.long	9612
.globl work__prisc__ARCH__pipelined__decoder__x__OT__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__decoder__x__OT__RTI, @object
	.size	work__prisc__ARCH__pipelined__decoder__x__OT__RTI, 24
work__prisc__ARCH__pipelined__decoder__x__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__prisc__ARCH__pipelined__decoder__x__OT__STB
	.long	4
	.long	16
	.type	work__prisc__ARCH__pipelined__decoder__x__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__decoder__x__RTISTR, 2
work__prisc__ARCH__pipelined__decoder__x__RTISTR:
	.byte	120
	.byte	0
.globl work__prisc__ARCH__pipelined__decoder__x__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__decoder__x__RTI, @object
	.size	work__prisc__ARCH__pipelined__decoder__x__RTI, 16
work__prisc__ARCH__pipelined__decoder__x__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__decoder__x__RTISTR
	.long	8
	.long	work__prisc__ARCH__pipelined__decoder__x__OT__RTI
.globl work__prisc__ARCH__pipelined__decoder__y__OT__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__decoder__y__OT__RTI, @object
	.size	work__prisc__ARCH__pipelined__decoder__y__OT__RTI, 24
work__prisc__ARCH__pipelined__decoder__y__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__prisc__ARCH__pipelined__decoder__y__OT__STB
	.long	19
	.long	76
	.type	work__prisc__ARCH__pipelined__decoder__y__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__decoder__y__RTISTR, 2
work__prisc__ARCH__pipelined__decoder__y__RTISTR:
	.byte	121
	.byte	0
.globl work__prisc__ARCH__pipelined__decoder__y__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__decoder__y__RTI, @object
	.size	work__prisc__ARCH__pipelined__decoder__y__RTI, 16
work__prisc__ARCH__pipelined__decoder__y__RTI:
	.byte	16
	.byte	2
	.byte	3
	.byte	0
	.long	work__prisc__ARCH__pipelined__decoder__y__RTISTR
	.long	24
	.long	work__prisc__ARCH__pipelined__decoder__y__OT__RTI
	.type	work__prisc__ARCH__pipelined__decoder__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__decoder__RTISTR, 8
work__prisc__ARCH__pipelined__decoder__RTISTR:
	.byte	100
	.byte	101
	.byte	99
	.byte	111
	.byte	100
	.byte	101
	.byte	114
	.byte	0
	.align 4
	.type	work__prisc__ARCH__pipelined__decoder__RTIARRAY, @object
	.size	work__prisc__ARCH__pipelined__decoder__RTIARRAY, 12
work__prisc__ARCH__pipelined__decoder__RTIARRAY:
	.long	work__prisc__ARCH__pipelined__decoder__x__RTI
	.long	work__prisc__ARCH__pipelined__decoder__y__RTI
	.long	0
.globl work__prisc__ARCH__pipelined__decoder__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__decoder__RTI, @object
	.size	work__prisc__ARCH__pipelined__decoder__RTI, 16
work__prisc__ARCH__pipelined__decoder__RTI:
	.byte	20
	.byte	2
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__decoder__RTISTR
	.long	2
	.long	work__prisc__ARCH__pipelined__decoder__RTIARRAY
.globl work__prisc__ARCH__pipelined__pipe__ir_in__OT__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pipe__ir_in__OT__RTI, @object
	.size	work__prisc__ARCH__pipelined__pipe__ir_in__OT__RTI, 24
work__prisc__ARCH__pipelined__pipe__ir_in__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__prisc__ARCH__pipelined__pipe__ir_in__OT__STB
	.long	16
	.long	64
	.type	work__prisc__ARCH__pipelined__pipe__ir_in__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__pipe__ir_in__RTISTR, 6
work__prisc__ARCH__pipelined__pipe__ir_in__RTISTR:
	.byte	105
	.byte	114
	.byte	95
	.byte	105
	.byte	110
	.byte	0
.globl work__prisc__ARCH__pipelined__pipe__ir_in__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pipe__ir_in__RTI, @object
	.size	work__prisc__ARCH__pipelined__pipe__ir_in__RTI, 16
work__prisc__ARCH__pipelined__pipe__ir_in__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__pipe__ir_in__RTISTR
	.long	8
	.long	work__prisc__ARCH__pipelined__pipe__ir_in__OT__RTI
	.type	work__prisc__ARCH__pipelined__pipe__npc_in__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__pipe__npc_in__RTISTR, 7
work__prisc__ARCH__pipelined__pipe__npc_in__RTISTR:
	.byte	110
	.byte	112
	.byte	99
	.byte	95
	.byte	105
	.byte	110
	.byte	0
.globl work__prisc__ARCH__pipelined__pipe__npc_in__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pipe__npc_in__RTI, @object
	.size	work__prisc__ARCH__pipelined__pipe__npc_in__RTI, 16
work__prisc__ARCH__pipelined__pipe__npc_in__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__pipe__npc_in__RTISTR
	.long	72
	.long	work__prisc__ARCH__pipelined__pipe__ir_in__OT__RTI
	.type	work__prisc__ARCH__pipelined__pipe__t1_in__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__pipe__t1_in__RTISTR, 6
work__prisc__ARCH__pipelined__pipe__t1_in__RTISTR:
	.byte	116
	.byte	49
	.byte	95
	.byte	105
	.byte	110
	.byte	0
.globl work__prisc__ARCH__pipelined__pipe__t1_in__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pipe__t1_in__RTI, @object
	.size	work__prisc__ARCH__pipelined__pipe__t1_in__RTI, 16
work__prisc__ARCH__pipelined__pipe__t1_in__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__pipe__t1_in__RTISTR
	.long	136
	.long	work__prisc__ARCH__pipelined__pipe__ir_in__OT__RTI
	.type	work__prisc__ARCH__pipelined__pipe__t2_in__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__pipe__t2_in__RTISTR, 6
work__prisc__ARCH__pipelined__pipe__t2_in__RTISTR:
	.byte	116
	.byte	50
	.byte	95
	.byte	105
	.byte	110
	.byte	0
.globl work__prisc__ARCH__pipelined__pipe__t2_in__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pipe__t2_in__RTI, @object
	.size	work__prisc__ARCH__pipelined__pipe__t2_in__RTI, 16
work__prisc__ARCH__pipelined__pipe__t2_in__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__pipe__t2_in__RTISTR
	.long	200
	.long	work__prisc__ARCH__pipelined__pipe__ir_in__OT__RTI
	.type	work__prisc__ARCH__pipelined__pipe__t3_in__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__pipe__t3_in__RTISTR, 6
work__prisc__ARCH__pipelined__pipe__t3_in__RTISTR:
	.byte	116
	.byte	51
	.byte	95
	.byte	105
	.byte	110
	.byte	0
.globl work__prisc__ARCH__pipelined__pipe__t3_in__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pipe__t3_in__RTI, @object
	.size	work__prisc__ARCH__pipelined__pipe__t3_in__RTI, 16
work__prisc__ARCH__pipelined__pipe__t3_in__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__pipe__t3_in__RTISTR
	.long	264
	.long	work__prisc__ARCH__pipelined__pipe__ir_in__OT__RTI
	.type	work__prisc__ARCH__pipelined__pipe__memd_in__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__pipe__memd_in__RTISTR, 8
work__prisc__ARCH__pipelined__pipe__memd_in__RTISTR:
	.byte	109
	.byte	101
	.byte	109
	.byte	100
	.byte	95
	.byte	105
	.byte	110
	.byte	0
.globl work__prisc__ARCH__pipelined__pipe__memd_in__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pipe__memd_in__RTI, @object
	.size	work__prisc__ARCH__pipelined__pipe__memd_in__RTI, 16
work__prisc__ARCH__pipelined__pipe__memd_in__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__pipe__memd_in__RTISTR
	.long	328
	.long	work__prisc__ARCH__pipelined__pipe__ir_in__OT__RTI
.globl work__prisc__ARCH__pipelined__pipe__ir_out__OT__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pipe__ir_out__OT__RTI, @object
	.size	work__prisc__ARCH__pipelined__pipe__ir_out__OT__RTI, 24
work__prisc__ARCH__pipelined__pipe__ir_out__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__prisc__ARCH__pipelined__pipe__ir_out__OT__STB
	.long	16
	.long	64
	.type	work__prisc__ARCH__pipelined__pipe__ir_out__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__pipe__ir_out__RTISTR, 7
work__prisc__ARCH__pipelined__pipe__ir_out__RTISTR:
	.byte	105
	.byte	114
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	0
.globl work__prisc__ARCH__pipelined__pipe__ir_out__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pipe__ir_out__RTI, @object
	.size	work__prisc__ARCH__pipelined__pipe__ir_out__RTI, 16
work__prisc__ARCH__pipelined__pipe__ir_out__RTI:
	.byte	16
	.byte	2
	.byte	3
	.byte	0
	.long	work__prisc__ARCH__pipelined__pipe__ir_out__RTISTR
	.long	392
	.long	work__prisc__ARCH__pipelined__pipe__ir_out__OT__RTI
	.type	work__prisc__ARCH__pipelined__pipe__npc_out__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__pipe__npc_out__RTISTR, 8
work__prisc__ARCH__pipelined__pipe__npc_out__RTISTR:
	.byte	110
	.byte	112
	.byte	99
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	0
.globl work__prisc__ARCH__pipelined__pipe__npc_out__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pipe__npc_out__RTI, @object
	.size	work__prisc__ARCH__pipelined__pipe__npc_out__RTI, 16
work__prisc__ARCH__pipelined__pipe__npc_out__RTI:
	.byte	16
	.byte	2
	.byte	3
	.byte	0
	.long	work__prisc__ARCH__pipelined__pipe__npc_out__RTISTR
	.long	456
	.long	work__prisc__ARCH__pipelined__pipe__ir_out__OT__RTI
	.type	work__prisc__ARCH__pipelined__pipe__t1_out__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__pipe__t1_out__RTISTR, 7
work__prisc__ARCH__pipelined__pipe__t1_out__RTISTR:
	.byte	116
	.byte	49
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	0
.globl work__prisc__ARCH__pipelined__pipe__t1_out__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pipe__t1_out__RTI, @object
	.size	work__prisc__ARCH__pipelined__pipe__t1_out__RTI, 16
work__prisc__ARCH__pipelined__pipe__t1_out__RTI:
	.byte	16
	.byte	2
	.byte	3
	.byte	0
	.long	work__prisc__ARCH__pipelined__pipe__t1_out__RTISTR
	.long	520
	.long	work__prisc__ARCH__pipelined__pipe__ir_out__OT__RTI
	.type	work__prisc__ARCH__pipelined__pipe__t2_out__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__pipe__t2_out__RTISTR, 7
work__prisc__ARCH__pipelined__pipe__t2_out__RTISTR:
	.byte	116
	.byte	50
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	0
.globl work__prisc__ARCH__pipelined__pipe__t2_out__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pipe__t2_out__RTI, @object
	.size	work__prisc__ARCH__pipelined__pipe__t2_out__RTI, 16
work__prisc__ARCH__pipelined__pipe__t2_out__RTI:
	.byte	16
	.byte	2
	.byte	3
	.byte	0
	.long	work__prisc__ARCH__pipelined__pipe__t2_out__RTISTR
	.long	584
	.long	work__prisc__ARCH__pipelined__pipe__ir_out__OT__RTI
	.type	work__prisc__ARCH__pipelined__pipe__t3_out__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__pipe__t3_out__RTISTR, 7
work__prisc__ARCH__pipelined__pipe__t3_out__RTISTR:
	.byte	116
	.byte	51
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	0
.globl work__prisc__ARCH__pipelined__pipe__t3_out__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pipe__t3_out__RTI, @object
	.size	work__prisc__ARCH__pipelined__pipe__t3_out__RTI, 16
work__prisc__ARCH__pipelined__pipe__t3_out__RTI:
	.byte	16
	.byte	2
	.byte	3
	.byte	0
	.long	work__prisc__ARCH__pipelined__pipe__t3_out__RTISTR
	.long	648
	.long	work__prisc__ARCH__pipelined__pipe__ir_out__OT__RTI
	.type	work__prisc__ARCH__pipelined__pipe__memd_out__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__pipe__memd_out__RTISTR, 9
work__prisc__ARCH__pipelined__pipe__memd_out__RTISTR:
	.byte	109
	.byte	101
	.byte	109
	.byte	100
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	0
.globl work__prisc__ARCH__pipelined__pipe__memd_out__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pipe__memd_out__RTI, @object
	.size	work__prisc__ARCH__pipelined__pipe__memd_out__RTI, 16
work__prisc__ARCH__pipelined__pipe__memd_out__RTI:
	.byte	16
	.byte	2
	.byte	3
	.byte	0
	.long	work__prisc__ARCH__pipelined__pipe__memd_out__RTISTR
	.long	712
	.long	work__prisc__ARCH__pipelined__pipe__ir_out__OT__RTI
.globl work__prisc__ARCH__pipelined__pipe__contr_in__OT__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pipe__contr_in__OT__RTI, @object
	.size	work__prisc__ARCH__pipelined__pipe__contr_in__OT__RTI, 24
work__prisc__ARCH__pipelined__pipe__contr_in__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__prisc__ARCH__pipelined__pipe__contr_in__OT__STB
	.long	19
	.long	76
	.type	work__prisc__ARCH__pipelined__pipe__contr_in__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__pipe__contr_in__RTISTR, 9
work__prisc__ARCH__pipelined__pipe__contr_in__RTISTR:
	.byte	99
	.byte	111
	.byte	110
	.byte	116
	.byte	114
	.byte	95
	.byte	105
	.byte	110
	.byte	0
.globl work__prisc__ARCH__pipelined__pipe__contr_in__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pipe__contr_in__RTI, @object
	.size	work__prisc__ARCH__pipelined__pipe__contr_in__RTI, 16
work__prisc__ARCH__pipelined__pipe__contr_in__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__pipe__contr_in__RTISTR
	.long	776
	.long	work__prisc__ARCH__pipelined__pipe__contr_in__OT__RTI
.globl work__prisc__ARCH__pipelined__pipe__contr_out__OT__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pipe__contr_out__OT__RTI, @object
	.size	work__prisc__ARCH__pipelined__pipe__contr_out__OT__RTI, 24
work__prisc__ARCH__pipelined__pipe__contr_out__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__prisc__ARCH__pipelined__pipe__contr_out__OT__STB
	.long	19
	.long	76
	.type	work__prisc__ARCH__pipelined__pipe__contr_out__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__pipe__contr_out__RTISTR, 10
work__prisc__ARCH__pipelined__pipe__contr_out__RTISTR:
	.byte	99
	.byte	111
	.byte	110
	.byte	116
	.byte	114
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	0
.globl work__prisc__ARCH__pipelined__pipe__contr_out__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pipe__contr_out__RTI, @object
	.size	work__prisc__ARCH__pipelined__pipe__contr_out__RTI, 16
work__prisc__ARCH__pipelined__pipe__contr_out__RTI:
	.byte	16
	.byte	2
	.byte	3
	.byte	0
	.long	work__prisc__ARCH__pipelined__pipe__contr_out__RTISTR
	.long	852
	.long	work__prisc__ARCH__pipelined__pipe__contr_out__OT__RTI
	.type	work__prisc__ARCH__pipelined__pipe__pipe_en__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__pipe__pipe_en__RTISTR, 8
work__prisc__ARCH__pipelined__pipe__pipe_en__RTISTR:
	.byte	112
	.byte	105
	.byte	112
	.byte	101
	.byte	95
	.byte	101
	.byte	110
	.byte	0
.globl work__prisc__ARCH__pipelined__pipe__pipe_en__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pipe__pipe_en__RTI, @object
	.size	work__prisc__ARCH__pipelined__pipe__pipe_en__RTI, 16
work__prisc__ARCH__pipelined__pipe__pipe_en__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__pipe__pipe_en__RTISTR
	.long	928
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__pipe__clk__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__pipe__clk__RTISTR, 4
work__prisc__ARCH__pipelined__pipe__clk__RTISTR:
	.byte	99
	.byte	108
	.byte	107
	.byte	0
.globl work__prisc__ARCH__pipelined__pipe__clk__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pipe__clk__RTI, @object
	.size	work__prisc__ARCH__pipelined__pipe__clk__RTI, 16
work__prisc__ARCH__pipelined__pipe__clk__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__pipe__clk__RTISTR
	.long	932
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__pipe__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__pipe__RTISTR, 5
work__prisc__ARCH__pipelined__pipe__RTISTR:
	.byte	112
	.byte	105
	.byte	112
	.byte	101
	.byte	0
	.align 32
	.type	work__prisc__ARCH__pipelined__pipe__RTIARRAY, @object
	.size	work__prisc__ARCH__pipelined__pipe__RTIARRAY, 68
work__prisc__ARCH__pipelined__pipe__RTIARRAY:
	.long	work__prisc__ARCH__pipelined__pipe__ir_in__RTI
	.long	work__prisc__ARCH__pipelined__pipe__npc_in__RTI
	.long	work__prisc__ARCH__pipelined__pipe__t1_in__RTI
	.long	work__prisc__ARCH__pipelined__pipe__t2_in__RTI
	.long	work__prisc__ARCH__pipelined__pipe__t3_in__RTI
	.long	work__prisc__ARCH__pipelined__pipe__memd_in__RTI
	.long	work__prisc__ARCH__pipelined__pipe__ir_out__RTI
	.long	work__prisc__ARCH__pipelined__pipe__npc_out__RTI
	.long	work__prisc__ARCH__pipelined__pipe__t1_out__RTI
	.long	work__prisc__ARCH__pipelined__pipe__t2_out__RTI
	.long	work__prisc__ARCH__pipelined__pipe__t3_out__RTI
	.long	work__prisc__ARCH__pipelined__pipe__memd_out__RTI
	.long	work__prisc__ARCH__pipelined__pipe__contr_in__RTI
	.long	work__prisc__ARCH__pipelined__pipe__contr_out__RTI
	.long	work__prisc__ARCH__pipelined__pipe__pipe_en__RTI
	.long	work__prisc__ARCH__pipelined__pipe__clk__RTI
	.long	0
.globl work__prisc__ARCH__pipelined__pipe__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pipe__RTI, @object
	.size	work__prisc__ARCH__pipelined__pipe__RTI, 16
work__prisc__ARCH__pipelined__pipe__RTI:
	.byte	20
	.byte	2
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__pipe__RTISTR
	.long	16
	.long	work__prisc__ARCH__pipelined__pipe__RTIARRAY
.globl work__prisc__ARCH__pipelined__alu__x__OT__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__alu__x__OT__RTI, @object
	.size	work__prisc__ARCH__pipelined__alu__x__OT__RTI, 24
work__prisc__ARCH__pipelined__alu__x__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__prisc__ARCH__pipelined__alu__x__OT__STB
	.long	16
	.long	64
	.type	work__prisc__ARCH__pipelined__alu__x__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__alu__x__RTISTR, 2
work__prisc__ARCH__pipelined__alu__x__RTISTR:
	.byte	120
	.byte	0
.globl work__prisc__ARCH__pipelined__alu__x__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__alu__x__RTI, @object
	.size	work__prisc__ARCH__pipelined__alu__x__RTI, 16
work__prisc__ARCH__pipelined__alu__x__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__alu__x__RTISTR
	.long	8
	.long	work__prisc__ARCH__pipelined__alu__x__OT__RTI
	.type	work__prisc__ARCH__pipelined__alu__y__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__alu__y__RTISTR, 2
work__prisc__ARCH__pipelined__alu__y__RTISTR:
	.byte	121
	.byte	0
.globl work__prisc__ARCH__pipelined__alu__y__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__alu__y__RTI, @object
	.size	work__prisc__ARCH__pipelined__alu__y__RTI, 16
work__prisc__ARCH__pipelined__alu__y__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__alu__y__RTISTR
	.long	72
	.long	work__prisc__ARCH__pipelined__alu__x__OT__RTI
	.type	work__prisc__ARCH__pipelined__alu__x0__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__alu__x0__RTISTR, 3
work__prisc__ARCH__pipelined__alu__x0__RTISTR:
	.byte	120
	.byte	48
	.byte	0
.globl work__prisc__ARCH__pipelined__alu__x0__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__alu__x0__RTI, @object
	.size	work__prisc__ARCH__pipelined__alu__x0__RTI, 16
work__prisc__ARCH__pipelined__alu__x0__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__alu__x0__RTISTR
	.long	136
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__alu__x1__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__alu__x1__RTISTR, 3
work__prisc__ARCH__pipelined__alu__x1__RTISTR:
	.byte	120
	.byte	49
	.byte	0
.globl work__prisc__ARCH__pipelined__alu__x1__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__alu__x1__RTI, @object
	.size	work__prisc__ARCH__pipelined__alu__x1__RTI, 16
work__prisc__ARCH__pipelined__alu__x1__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__alu__x1__RTISTR
	.long	140
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__alu__c_in__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__alu__c_in__RTISTR, 5
work__prisc__ARCH__pipelined__alu__c_in__RTISTR:
	.byte	99
	.byte	95
	.byte	105
	.byte	110
	.byte	0
.globl work__prisc__ARCH__pipelined__alu__c_in__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__alu__c_in__RTI, @object
	.size	work__prisc__ARCH__pipelined__alu__c_in__RTI, 16
work__prisc__ARCH__pipelined__alu__c_in__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__alu__c_in__RTISTR
	.long	144
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__alu__c_out__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__alu__c_out__RTISTR, 6
work__prisc__ARCH__pipelined__alu__c_out__RTISTR:
	.byte	99
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	0
.globl work__prisc__ARCH__pipelined__alu__c_out__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__alu__c_out__RTI, @object
	.size	work__prisc__ARCH__pipelined__alu__c_out__RTI, 16
work__prisc__ARCH__pipelined__alu__c_out__RTI:
	.byte	16
	.byte	2
	.byte	3
	.byte	0
	.long	work__prisc__ARCH__pipelined__alu__c_out__RTISTR
	.long	148
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__alu__z_out__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__alu__z_out__RTISTR, 6
work__prisc__ARCH__pipelined__alu__z_out__RTISTR:
	.byte	122
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	0
.globl work__prisc__ARCH__pipelined__alu__z_out__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__alu__z_out__RTI, @object
	.size	work__prisc__ARCH__pipelined__alu__z_out__RTI, 16
work__prisc__ARCH__pipelined__alu__z_out__RTI:
	.byte	16
	.byte	2
	.byte	3
	.byte	0
	.long	work__prisc__ARCH__pipelined__alu__z_out__RTISTR
	.long	152
	.long	ieee__std_logic_1164__std_logic__RTI
.globl work__prisc__ARCH__pipelined__alu__s__OT__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__alu__s__OT__RTI, @object
	.size	work__prisc__ARCH__pipelined__alu__s__OT__RTI, 24
work__prisc__ARCH__pipelined__alu__s__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__prisc__ARCH__pipelined__alu__s__OT__STB
	.long	16
	.long	64
	.type	work__prisc__ARCH__pipelined__alu__s__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__alu__s__RTISTR, 2
work__prisc__ARCH__pipelined__alu__s__RTISTR:
	.byte	115
	.byte	0
.globl work__prisc__ARCH__pipelined__alu__s__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__alu__s__RTI, @object
	.size	work__prisc__ARCH__pipelined__alu__s__RTI, 16
work__prisc__ARCH__pipelined__alu__s__RTI:
	.byte	16
	.byte	2
	.byte	3
	.byte	0
	.long	work__prisc__ARCH__pipelined__alu__s__RTISTR
	.long	156
	.long	work__prisc__ARCH__pipelined__alu__s__OT__RTI
	.type	work__prisc__ARCH__pipelined__alu__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__alu__RTISTR, 4
work__prisc__ARCH__pipelined__alu__RTISTR:
	.byte	97
	.byte	108
	.byte	117
	.byte	0
	.align 32
	.type	work__prisc__ARCH__pipelined__alu__RTIARRAY, @object
	.size	work__prisc__ARCH__pipelined__alu__RTIARRAY, 36
work__prisc__ARCH__pipelined__alu__RTIARRAY:
	.long	work__prisc__ARCH__pipelined__alu__x__RTI
	.long	work__prisc__ARCH__pipelined__alu__y__RTI
	.long	work__prisc__ARCH__pipelined__alu__x0__RTI
	.long	work__prisc__ARCH__pipelined__alu__x1__RTI
	.long	work__prisc__ARCH__pipelined__alu__c_in__RTI
	.long	work__prisc__ARCH__pipelined__alu__c_out__RTI
	.long	work__prisc__ARCH__pipelined__alu__z_out__RTI
	.long	work__prisc__ARCH__pipelined__alu__s__RTI
	.long	0
.globl work__prisc__ARCH__pipelined__alu__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__alu__RTI, @object
	.size	work__prisc__ARCH__pipelined__alu__RTI, 16
work__prisc__ARCH__pipelined__alu__RTI:
	.byte	20
	.byte	2
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__alu__RTISTR
	.long	8
	.long	work__prisc__ARCH__pipelined__alu__RTIARRAY
	.type	work__prisc__ARCH__pipelined__memory__wr__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__memory__wr__RTISTR, 3
work__prisc__ARCH__pipelined__memory__wr__RTISTR:
	.byte	119
	.byte	114
	.byte	0
.globl work__prisc__ARCH__pipelined__memory__wr__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__memory__wr__RTI, @object
	.size	work__prisc__ARCH__pipelined__memory__wr__RTI, 16
work__prisc__ARCH__pipelined__memory__wr__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__memory__wr__RTISTR
	.long	8
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__memory__rd__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__memory__rd__RTISTR, 3
work__prisc__ARCH__pipelined__memory__rd__RTISTR:
	.byte	114
	.byte	100
	.byte	0
.globl work__prisc__ARCH__pipelined__memory__rd__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__memory__rd__RTI, @object
	.size	work__prisc__ARCH__pipelined__memory__rd__RTI, 16
work__prisc__ARCH__pipelined__memory__rd__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__memory__rd__RTISTR
	.long	12
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__memory__init__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__memory__init__RTISTR, 5
work__prisc__ARCH__pipelined__memory__init__RTISTR:
	.byte	105
	.byte	110
	.byte	105
	.byte	116
	.byte	0
.globl work__prisc__ARCH__pipelined__memory__init__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__memory__init__RTI, @object
	.size	work__prisc__ARCH__pipelined__memory__init__RTI, 16
work__prisc__ARCH__pipelined__memory__init__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__memory__init__RTISTR
	.long	16
	.long	ieee__std_logic_1164__std_logic__RTI
.globl work__prisc__ARCH__pipelined__memory__add_in__OT__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__memory__add_in__OT__RTI, @object
	.size	work__prisc__ARCH__pipelined__memory__add_in__OT__RTI, 24
work__prisc__ARCH__pipelined__memory__add_in__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__prisc__ARCH__pipelined__memory__add_in__OT__STB
	.long	16
	.long	64
	.type	work__prisc__ARCH__pipelined__memory__add_in__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__memory__add_in__RTISTR, 7
work__prisc__ARCH__pipelined__memory__add_in__RTISTR:
	.byte	97
	.byte	100
	.byte	100
	.byte	95
	.byte	105
	.byte	110
	.byte	0
.globl work__prisc__ARCH__pipelined__memory__add_in__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__memory__add_in__RTI, @object
	.size	work__prisc__ARCH__pipelined__memory__add_in__RTI, 16
work__prisc__ARCH__pipelined__memory__add_in__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__memory__add_in__RTISTR
	.long	20
	.long	work__prisc__ARCH__pipelined__memory__add_in__OT__RTI
	.type	work__prisc__ARCH__pipelined__memory__d_in__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__memory__d_in__RTISTR, 5
work__prisc__ARCH__pipelined__memory__d_in__RTISTR:
	.byte	100
	.byte	95
	.byte	105
	.byte	110
	.byte	0
.globl work__prisc__ARCH__pipelined__memory__d_in__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__memory__d_in__RTI, @object
	.size	work__prisc__ARCH__pipelined__memory__d_in__RTI, 16
work__prisc__ARCH__pipelined__memory__d_in__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__memory__d_in__RTISTR
	.long	84
	.long	work__prisc__ARCH__pipelined__memory__add_in__OT__RTI
.globl work__prisc__ARCH__pipelined__memory__y_out__OT__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__memory__y_out__OT__RTI, @object
	.size	work__prisc__ARCH__pipelined__memory__y_out__OT__RTI, 24
work__prisc__ARCH__pipelined__memory__y_out__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__prisc__ARCH__pipelined__memory__y_out__OT__STB
	.long	16
	.long	64
	.type	work__prisc__ARCH__pipelined__memory__y_out__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__memory__y_out__RTISTR, 6
work__prisc__ARCH__pipelined__memory__y_out__RTISTR:
	.byte	121
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	0
.globl work__prisc__ARCH__pipelined__memory__y_out__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__memory__y_out__RTI, @object
	.size	work__prisc__ARCH__pipelined__memory__y_out__RTI, 16
work__prisc__ARCH__pipelined__memory__y_out__RTI:
	.byte	16
	.byte	2
	.byte	3
	.byte	0
	.long	work__prisc__ARCH__pipelined__memory__y_out__RTISTR
	.long	148
	.long	work__prisc__ARCH__pipelined__memory__y_out__OT__RTI
	.type	work__prisc__ARCH__pipelined__memory__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__memory__RTISTR, 7
work__prisc__ARCH__pipelined__memory__RTISTR:
	.byte	109
	.byte	101
	.byte	109
	.byte	111
	.byte	114
	.byte	121
	.byte	0
	.align 4
	.type	work__prisc__ARCH__pipelined__memory__RTIARRAY, @object
	.size	work__prisc__ARCH__pipelined__memory__RTIARRAY, 28
work__prisc__ARCH__pipelined__memory__RTIARRAY:
	.long	work__prisc__ARCH__pipelined__memory__wr__RTI
	.long	work__prisc__ARCH__pipelined__memory__rd__RTI
	.long	work__prisc__ARCH__pipelined__memory__init__RTI
	.long	work__prisc__ARCH__pipelined__memory__add_in__RTI
	.long	work__prisc__ARCH__pipelined__memory__d_in__RTI
	.long	work__prisc__ARCH__pipelined__memory__y_out__RTI
	.long	0
.globl work__prisc__ARCH__pipelined__memory__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__memory__RTI, @object
	.size	work__prisc__ARCH__pipelined__memory__RTI, 16
work__prisc__ARCH__pipelined__memory__RTI:
	.byte	20
	.byte	2
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__memory__RTISTR
	.long	6
	.long	work__prisc__ARCH__pipelined__memory__RTIARRAY
.globl work__prisc__ARCH__pipelined__rf__a1__OT__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__rf__a1__OT__RTI, @object
	.size	work__prisc__ARCH__pipelined__rf__a1__OT__RTI, 24
work__prisc__ARCH__pipelined__rf__a1__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__prisc__ARCH__pipelined__rf__a1__OT__STB
	.long	3
	.long	12
	.type	work__prisc__ARCH__pipelined__rf__a1__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__rf__a1__RTISTR, 3
work__prisc__ARCH__pipelined__rf__a1__RTISTR:
	.byte	97
	.byte	49
	.byte	0
.globl work__prisc__ARCH__pipelined__rf__a1__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__rf__a1__RTI, @object
	.size	work__prisc__ARCH__pipelined__rf__a1__RTI, 16
work__prisc__ARCH__pipelined__rf__a1__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__rf__a1__RTISTR
	.long	8
	.long	work__prisc__ARCH__pipelined__rf__a1__OT__RTI
	.type	work__prisc__ARCH__pipelined__rf__a2__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__rf__a2__RTISTR, 3
work__prisc__ARCH__pipelined__rf__a2__RTISTR:
	.byte	97
	.byte	50
	.byte	0
.globl work__prisc__ARCH__pipelined__rf__a2__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__rf__a2__RTI, @object
	.size	work__prisc__ARCH__pipelined__rf__a2__RTI, 16
work__prisc__ARCH__pipelined__rf__a2__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__rf__a2__RTISTR
	.long	20
	.long	work__prisc__ARCH__pipelined__rf__a1__OT__RTI
	.type	work__prisc__ARCH__pipelined__rf__a3__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__rf__a3__RTISTR, 3
work__prisc__ARCH__pipelined__rf__a3__RTISTR:
	.byte	97
	.byte	51
	.byte	0
.globl work__prisc__ARCH__pipelined__rf__a3__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__rf__a3__RTI, @object
	.size	work__prisc__ARCH__pipelined__rf__a3__RTI, 16
work__prisc__ARCH__pipelined__rf__a3__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__rf__a3__RTISTR
	.long	32
	.long	work__prisc__ARCH__pipelined__rf__a1__OT__RTI
.globl work__prisc__ARCH__pipelined__rf__d3__OT__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__rf__d3__OT__RTI, @object
	.size	work__prisc__ARCH__pipelined__rf__d3__OT__RTI, 24
work__prisc__ARCH__pipelined__rf__d3__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__prisc__ARCH__pipelined__rf__d3__OT__STB
	.long	16
	.long	64
	.type	work__prisc__ARCH__pipelined__rf__d3__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__rf__d3__RTISTR, 3
work__prisc__ARCH__pipelined__rf__d3__RTISTR:
	.byte	100
	.byte	51
	.byte	0
.globl work__prisc__ARCH__pipelined__rf__d3__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__rf__d3__RTI, @object
	.size	work__prisc__ARCH__pipelined__rf__d3__RTI, 16
work__prisc__ARCH__pipelined__rf__d3__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__rf__d3__RTISTR
	.long	44
	.long	work__prisc__ARCH__pipelined__rf__d3__OT__RTI
	.type	work__prisc__ARCH__pipelined__rf__clk__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__rf__clk__RTISTR, 4
work__prisc__ARCH__pipelined__rf__clk__RTISTR:
	.byte	99
	.byte	108
	.byte	107
	.byte	0
.globl work__prisc__ARCH__pipelined__rf__clk__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__rf__clk__RTI, @object
	.size	work__prisc__ARCH__pipelined__rf__clk__RTI, 16
work__prisc__ARCH__pipelined__rf__clk__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__rf__clk__RTISTR
	.long	108
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__rf__wr__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__rf__wr__RTISTR, 3
work__prisc__ARCH__pipelined__rf__wr__RTISTR:
	.byte	119
	.byte	114
	.byte	0
.globl work__prisc__ARCH__pipelined__rf__wr__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__rf__wr__RTI, @object
	.size	work__prisc__ARCH__pipelined__rf__wr__RTI, 16
work__prisc__ARCH__pipelined__rf__wr__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__rf__wr__RTISTR
	.long	112
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__rf__reset__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__rf__reset__RTISTR, 6
work__prisc__ARCH__pipelined__rf__reset__RTISTR:
	.byte	114
	.byte	101
	.byte	115
	.byte	101
	.byte	116
	.byte	0
.globl work__prisc__ARCH__pipelined__rf__reset__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__rf__reset__RTI, @object
	.size	work__prisc__ARCH__pipelined__rf__reset__RTI, 16
work__prisc__ARCH__pipelined__rf__reset__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__rf__reset__RTISTR
	.long	116
	.long	ieee__std_logic_1164__std_logic__RTI
.globl work__prisc__ARCH__pipelined__rf__d1__OT__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__rf__d1__OT__RTI, @object
	.size	work__prisc__ARCH__pipelined__rf__d1__OT__RTI, 24
work__prisc__ARCH__pipelined__rf__d1__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__prisc__ARCH__pipelined__rf__d1__OT__STB
	.long	16
	.long	64
	.type	work__prisc__ARCH__pipelined__rf__d1__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__rf__d1__RTISTR, 3
work__prisc__ARCH__pipelined__rf__d1__RTISTR:
	.byte	100
	.byte	49
	.byte	0
.globl work__prisc__ARCH__pipelined__rf__d1__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__rf__d1__RTI, @object
	.size	work__prisc__ARCH__pipelined__rf__d1__RTI, 16
work__prisc__ARCH__pipelined__rf__d1__RTI:
	.byte	16
	.byte	2
	.byte	3
	.byte	0
	.long	work__prisc__ARCH__pipelined__rf__d1__RTISTR
	.long	120
	.long	work__prisc__ARCH__pipelined__rf__d1__OT__RTI
	.type	work__prisc__ARCH__pipelined__rf__d2__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__rf__d2__RTISTR, 3
work__prisc__ARCH__pipelined__rf__d2__RTISTR:
	.byte	100
	.byte	50
	.byte	0
.globl work__prisc__ARCH__pipelined__rf__d2__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__rf__d2__RTI, @object
	.size	work__prisc__ARCH__pipelined__rf__d2__RTI, 16
work__prisc__ARCH__pipelined__rf__d2__RTI:
	.byte	16
	.byte	2
	.byte	3
	.byte	0
	.long	work__prisc__ARCH__pipelined__rf__d2__RTISTR
	.long	184
	.long	work__prisc__ARCH__pipelined__rf__d1__OT__RTI
	.type	work__prisc__ARCH__pipelined__rf__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__rf__RTISTR, 3
work__prisc__ARCH__pipelined__rf__RTISTR:
	.byte	114
	.byte	102
	.byte	0
	.align 32
	.type	work__prisc__ARCH__pipelined__rf__RTIARRAY, @object
	.size	work__prisc__ARCH__pipelined__rf__RTIARRAY, 40
work__prisc__ARCH__pipelined__rf__RTIARRAY:
	.long	work__prisc__ARCH__pipelined__rf__a1__RTI
	.long	work__prisc__ARCH__pipelined__rf__a2__RTI
	.long	work__prisc__ARCH__pipelined__rf__a3__RTI
	.long	work__prisc__ARCH__pipelined__rf__d3__RTI
	.long	work__prisc__ARCH__pipelined__rf__clk__RTI
	.long	work__prisc__ARCH__pipelined__rf__wr__RTI
	.long	work__prisc__ARCH__pipelined__rf__reset__RTI
	.long	work__prisc__ARCH__pipelined__rf__d1__RTI
	.long	work__prisc__ARCH__pipelined__rf__d2__RTI
	.long	0
.globl work__prisc__ARCH__pipelined__rf__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__rf__RTI, @object
	.size	work__prisc__ARCH__pipelined__rf__RTI, 16
work__prisc__ARCH__pipelined__rf__RTI:
	.byte	20
	.byte	2
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__rf__RTISTR
	.long	9
	.long	work__prisc__ARCH__pipelined__rf__RTIARRAY
	.type	work__prisc__ARCH__pipelined__dregister_1__din__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__dregister_1__din__RTISTR, 4
work__prisc__ARCH__pipelined__dregister_1__din__RTISTR:
	.byte	100
	.byte	105
	.byte	110
	.byte	0
.globl work__prisc__ARCH__pipelined__dregister_1__din__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__dregister_1__din__RTI, @object
	.size	work__prisc__ARCH__pipelined__dregister_1__din__RTI, 16
work__prisc__ARCH__pipelined__dregister_1__din__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__dregister_1__din__RTISTR
	.long	8
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__dregister_1__dout__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__dregister_1__dout__RTISTR, 5
work__prisc__ARCH__pipelined__dregister_1__dout__RTISTR:
	.byte	100
	.byte	111
	.byte	117
	.byte	116
	.byte	0
.globl work__prisc__ARCH__pipelined__dregister_1__dout__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__dregister_1__dout__RTI, @object
	.size	work__prisc__ARCH__pipelined__dregister_1__dout__RTI, 16
work__prisc__ARCH__pipelined__dregister_1__dout__RTI:
	.byte	16
	.byte	2
	.byte	3
	.byte	0
	.long	work__prisc__ARCH__pipelined__dregister_1__dout__RTISTR
	.long	12
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__dregister_1__enable__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__dregister_1__enable__RTISTR, 7
work__prisc__ARCH__pipelined__dregister_1__enable__RTISTR:
	.byte	101
	.byte	110
	.byte	97
	.byte	98
	.byte	108
	.byte	101
	.byte	0
.globl work__prisc__ARCH__pipelined__dregister_1__enable__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__dregister_1__enable__RTI, @object
	.size	work__prisc__ARCH__pipelined__dregister_1__enable__RTI, 16
work__prisc__ARCH__pipelined__dregister_1__enable__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__dregister_1__enable__RTISTR
	.long	16
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__dregister_1__clk__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__dregister_1__clk__RTISTR, 4
work__prisc__ARCH__pipelined__dregister_1__clk__RTISTR:
	.byte	99
	.byte	108
	.byte	107
	.byte	0
.globl work__prisc__ARCH__pipelined__dregister_1__clk__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__dregister_1__clk__RTI, @object
	.size	work__prisc__ARCH__pipelined__dregister_1__clk__RTI, 16
work__prisc__ARCH__pipelined__dregister_1__clk__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__dregister_1__clk__RTISTR
	.long	20
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__dregister_1__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__dregister_1__RTISTR, 12
work__prisc__ARCH__pipelined__dregister_1__RTISTR:
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
	.type	work__prisc__ARCH__pipelined__dregister_1__RTIARRAY, @object
	.size	work__prisc__ARCH__pipelined__dregister_1__RTIARRAY, 20
work__prisc__ARCH__pipelined__dregister_1__RTIARRAY:
	.long	work__prisc__ARCH__pipelined__dregister_1__din__RTI
	.long	work__prisc__ARCH__pipelined__dregister_1__dout__RTI
	.long	work__prisc__ARCH__pipelined__dregister_1__enable__RTI
	.long	work__prisc__ARCH__pipelined__dregister_1__clk__RTI
	.long	0
.globl work__prisc__ARCH__pipelined__dregister_1__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__dregister_1__RTI, @object
	.size	work__prisc__ARCH__pipelined__dregister_1__RTI, 16
work__prisc__ARCH__pipelined__dregister_1__RTI:
	.byte	20
	.byte	2
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__dregister_1__RTISTR
	.long	4
	.long	work__prisc__ARCH__pipelined__dregister_1__RTIARRAY
.globl work__prisc__ARCH__pipelined__dregister__din__OT__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__dregister__din__OT__RTI, @object
	.size	work__prisc__ARCH__pipelined__dregister__din__OT__RTI, 24
work__prisc__ARCH__pipelined__dregister__din__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__prisc__ARCH__pipelined__dregister__din__OT__STB
	.long	16
	.long	64
	.type	work__prisc__ARCH__pipelined__dregister__din__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__dregister__din__RTISTR, 4
work__prisc__ARCH__pipelined__dregister__din__RTISTR:
	.byte	100
	.byte	105
	.byte	110
	.byte	0
.globl work__prisc__ARCH__pipelined__dregister__din__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__dregister__din__RTI, @object
	.size	work__prisc__ARCH__pipelined__dregister__din__RTI, 16
work__prisc__ARCH__pipelined__dregister__din__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__dregister__din__RTISTR
	.long	8
	.long	work__prisc__ARCH__pipelined__dregister__din__OT__RTI
.globl work__prisc__ARCH__pipelined__dregister__dout__OT__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__dregister__dout__OT__RTI, @object
	.size	work__prisc__ARCH__pipelined__dregister__dout__OT__RTI, 24
work__prisc__ARCH__pipelined__dregister__dout__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__prisc__ARCH__pipelined__dregister__dout__OT__STB
	.long	16
	.long	64
	.type	work__prisc__ARCH__pipelined__dregister__dout__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__dregister__dout__RTISTR, 5
work__prisc__ARCH__pipelined__dregister__dout__RTISTR:
	.byte	100
	.byte	111
	.byte	117
	.byte	116
	.byte	0
.globl work__prisc__ARCH__pipelined__dregister__dout__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__dregister__dout__RTI, @object
	.size	work__prisc__ARCH__pipelined__dregister__dout__RTI, 16
work__prisc__ARCH__pipelined__dregister__dout__RTI:
	.byte	16
	.byte	2
	.byte	3
	.byte	0
	.long	work__prisc__ARCH__pipelined__dregister__dout__RTISTR
	.long	72
	.long	work__prisc__ARCH__pipelined__dregister__dout__OT__RTI
	.type	work__prisc__ARCH__pipelined__dregister__enable__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__dregister__enable__RTISTR, 7
work__prisc__ARCH__pipelined__dregister__enable__RTISTR:
	.byte	101
	.byte	110
	.byte	97
	.byte	98
	.byte	108
	.byte	101
	.byte	0
.globl work__prisc__ARCH__pipelined__dregister__enable__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__dregister__enable__RTI, @object
	.size	work__prisc__ARCH__pipelined__dregister__enable__RTI, 16
work__prisc__ARCH__pipelined__dregister__enable__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__dregister__enable__RTISTR
	.long	136
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__dregister__clk__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__dregister__clk__RTISTR, 4
work__prisc__ARCH__pipelined__dregister__clk__RTISTR:
	.byte	99
	.byte	108
	.byte	107
	.byte	0
.globl work__prisc__ARCH__pipelined__dregister__clk__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__dregister__clk__RTI, @object
	.size	work__prisc__ARCH__pipelined__dregister__clk__RTI, 16
work__prisc__ARCH__pipelined__dregister__clk__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__dregister__clk__RTISTR
	.long	140
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__dregister__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__dregister__RTISTR, 10
work__prisc__ARCH__pipelined__dregister__RTISTR:
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
	.type	work__prisc__ARCH__pipelined__dregister__RTIARRAY, @object
	.size	work__prisc__ARCH__pipelined__dregister__RTIARRAY, 20
work__prisc__ARCH__pipelined__dregister__RTIARRAY:
	.long	work__prisc__ARCH__pipelined__dregister__din__RTI
	.long	work__prisc__ARCH__pipelined__dregister__dout__RTI
	.long	work__prisc__ARCH__pipelined__dregister__enable__RTI
	.long	work__prisc__ARCH__pipelined__dregister__clk__RTI
	.long	0
.globl work__prisc__ARCH__pipelined__dregister__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__dregister__RTI, @object
	.size	work__prisc__ARCH__pipelined__dregister__RTI, 16
work__prisc__ARCH__pipelined__dregister__RTI:
	.byte	20
	.byte	2
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__dregister__RTISTR
	.long	4
	.long	work__prisc__ARCH__pipelined__dregister__RTIARRAY
.globl work__prisc__ARCH__pipelined__pr_encoder__x_in__OT__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pr_encoder__x_in__OT__RTI, @object
	.size	work__prisc__ARCH__pipelined__pr_encoder__x_in__OT__RTI, 24
work__prisc__ARCH__pipelined__pr_encoder__x_in__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__prisc__ARCH__pipelined__pr_encoder__x_in__OT__STB
	.long	8
	.long	32
	.type	work__prisc__ARCH__pipelined__pr_encoder__x_in__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__pr_encoder__x_in__RTISTR, 5
work__prisc__ARCH__pipelined__pr_encoder__x_in__RTISTR:
	.byte	120
	.byte	95
	.byte	105
	.byte	110
	.byte	0
.globl work__prisc__ARCH__pipelined__pr_encoder__x_in__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pr_encoder__x_in__RTI, @object
	.size	work__prisc__ARCH__pipelined__pr_encoder__x_in__RTI, 16
work__prisc__ARCH__pipelined__pr_encoder__x_in__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__pr_encoder__x_in__RTISTR
	.long	8
	.long	work__prisc__ARCH__pipelined__pr_encoder__x_in__OT__RTI
.globl work__prisc__ARCH__pipelined__pr_encoder__x_out__OT__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pr_encoder__x_out__OT__RTI, @object
	.size	work__prisc__ARCH__pipelined__pr_encoder__x_out__OT__RTI, 24
work__prisc__ARCH__pipelined__pr_encoder__x_out__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__prisc__ARCH__pipelined__pr_encoder__x_out__OT__STB
	.long	3
	.long	12
	.type	work__prisc__ARCH__pipelined__pr_encoder__x_out__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__pr_encoder__x_out__RTISTR, 6
work__prisc__ARCH__pipelined__pr_encoder__x_out__RTISTR:
	.byte	120
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	0
.globl work__prisc__ARCH__pipelined__pr_encoder__x_out__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pr_encoder__x_out__RTI, @object
	.size	work__prisc__ARCH__pipelined__pr_encoder__x_out__RTI, 16
work__prisc__ARCH__pipelined__pr_encoder__x_out__RTI:
	.byte	16
	.byte	2
	.byte	3
	.byte	0
	.long	work__prisc__ARCH__pipelined__pr_encoder__x_out__RTISTR
	.long	40
	.long	work__prisc__ARCH__pipelined__pr_encoder__x_out__OT__RTI
	.type	work__prisc__ARCH__pipelined__pr_encoder__x_none__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__pr_encoder__x_none__RTISTR, 7
work__prisc__ARCH__pipelined__pr_encoder__x_none__RTISTR:
	.byte	120
	.byte	95
	.byte	110
	.byte	111
	.byte	110
	.byte	101
	.byte	0
.globl work__prisc__ARCH__pipelined__pr_encoder__x_none__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pr_encoder__x_none__RTI, @object
	.size	work__prisc__ARCH__pipelined__pr_encoder__x_none__RTI, 16
work__prisc__ARCH__pipelined__pr_encoder__x_none__RTI:
	.byte	16
	.byte	2
	.byte	3
	.byte	0
	.long	work__prisc__ARCH__pipelined__pr_encoder__x_none__RTISTR
	.long	52
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__pr_encoder__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__pr_encoder__RTISTR, 11
work__prisc__ARCH__pipelined__pr_encoder__RTISTR:
	.byte	112
	.byte	114
	.byte	95
	.byte	101
	.byte	110
	.byte	99
	.byte	111
	.byte	100
	.byte	101
	.byte	114
	.byte	0
	.align 4
	.type	work__prisc__ARCH__pipelined__pr_encoder__RTIARRAY, @object
	.size	work__prisc__ARCH__pipelined__pr_encoder__RTIARRAY, 16
work__prisc__ARCH__pipelined__pr_encoder__RTIARRAY:
	.long	work__prisc__ARCH__pipelined__pr_encoder__x_in__RTI
	.long	work__prisc__ARCH__pipelined__pr_encoder__x_out__RTI
	.long	work__prisc__ARCH__pipelined__pr_encoder__x_none__RTI
	.long	0
.globl work__prisc__ARCH__pipelined__pr_encoder__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pr_encoder__RTI, @object
	.size	work__prisc__ARCH__pipelined__pr_encoder__RTI, 16
work__prisc__ARCH__pipelined__pr_encoder__RTI:
	.byte	20
	.byte	2
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__pr_encoder__RTISTR
	.long	3
	.long	work__prisc__ARCH__pipelined__pr_encoder__RTIARRAY
.globl work__prisc__ARCH__pipelined__se7__se_in__OT__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__se7__se_in__OT__RTI, @object
	.size	work__prisc__ARCH__pipelined__se7__se_in__OT__RTI, 24
work__prisc__ARCH__pipelined__se7__se_in__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__prisc__ARCH__pipelined__se7__se_in__OT__STB
	.long	9
	.long	36
	.type	work__prisc__ARCH__pipelined__se7__se_in__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__se7__se_in__RTISTR, 6
work__prisc__ARCH__pipelined__se7__se_in__RTISTR:
	.byte	115
	.byte	101
	.byte	95
	.byte	105
	.byte	110
	.byte	0
.globl work__prisc__ARCH__pipelined__se7__se_in__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__se7__se_in__RTI, @object
	.size	work__prisc__ARCH__pipelined__se7__se_in__RTI, 16
work__prisc__ARCH__pipelined__se7__se_in__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__se7__se_in__RTISTR
	.long	8
	.long	work__prisc__ARCH__pipelined__se7__se_in__OT__RTI
	.type	work__prisc__ARCH__pipelined__se7__se_type__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__se7__se_type__RTISTR, 8
work__prisc__ARCH__pipelined__se7__se_type__RTISTR:
	.byte	115
	.byte	101
	.byte	95
	.byte	116
	.byte	121
	.byte	112
	.byte	101
	.byte	0
.globl work__prisc__ARCH__pipelined__se7__se_type__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__se7__se_type__RTI, @object
	.size	work__prisc__ARCH__pipelined__se7__se_type__RTI, 16
work__prisc__ARCH__pipelined__se7__se_type__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__se7__se_type__RTISTR
	.long	44
	.long	ieee__std_logic_1164__std_logic__RTI
.globl work__prisc__ARCH__pipelined__se7__se_out__OT__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__se7__se_out__OT__RTI, @object
	.size	work__prisc__ARCH__pipelined__se7__se_out__OT__RTI, 24
work__prisc__ARCH__pipelined__se7__se_out__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__prisc__ARCH__pipelined__se7__se_out__OT__STB
	.long	16
	.long	64
	.type	work__prisc__ARCH__pipelined__se7__se_out__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__se7__se_out__RTISTR, 7
work__prisc__ARCH__pipelined__se7__se_out__RTISTR:
	.byte	115
	.byte	101
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	0
.globl work__prisc__ARCH__pipelined__se7__se_out__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__se7__se_out__RTI, @object
	.size	work__prisc__ARCH__pipelined__se7__se_out__RTI, 16
work__prisc__ARCH__pipelined__se7__se_out__RTI:
	.byte	16
	.byte	2
	.byte	3
	.byte	0
	.long	work__prisc__ARCH__pipelined__se7__se_out__RTISTR
	.long	48
	.long	work__prisc__ARCH__pipelined__se7__se_out__OT__RTI
	.type	work__prisc__ARCH__pipelined__se7__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__se7__RTISTR, 4
work__prisc__ARCH__pipelined__se7__RTISTR:
	.byte	115
	.byte	101
	.byte	55
	.byte	0
	.align 4
	.type	work__prisc__ARCH__pipelined__se7__RTIARRAY, @object
	.size	work__prisc__ARCH__pipelined__se7__RTIARRAY, 16
work__prisc__ARCH__pipelined__se7__RTIARRAY:
	.long	work__prisc__ARCH__pipelined__se7__se_in__RTI
	.long	work__prisc__ARCH__pipelined__se7__se_type__RTI
	.long	work__prisc__ARCH__pipelined__se7__se_out__RTI
	.long	0
.globl work__prisc__ARCH__pipelined__se7__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__se7__RTI, @object
	.size	work__prisc__ARCH__pipelined__se7__RTI, 16
work__prisc__ARCH__pipelined__se7__RTI:
	.byte	20
	.byte	2
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__se7__RTISTR
	.long	3
	.long	work__prisc__ARCH__pipelined__se7__RTIARRAY
.globl work__prisc__ARCH__pipelined__se10__se_in__OT__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__se10__se_in__OT__RTI, @object
	.size	work__prisc__ARCH__pipelined__se10__se_in__OT__RTI, 24
work__prisc__ARCH__pipelined__se10__se_in__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__prisc__ARCH__pipelined__se10__se_in__OT__STB
	.long	6
	.long	24
	.type	work__prisc__ARCH__pipelined__se10__se_in__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__se10__se_in__RTISTR, 6
work__prisc__ARCH__pipelined__se10__se_in__RTISTR:
	.byte	115
	.byte	101
	.byte	95
	.byte	105
	.byte	110
	.byte	0
.globl work__prisc__ARCH__pipelined__se10__se_in__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__se10__se_in__RTI, @object
	.size	work__prisc__ARCH__pipelined__se10__se_in__RTI, 16
work__prisc__ARCH__pipelined__se10__se_in__RTI:
	.byte	16
	.byte	2
	.byte	5
	.byte	0
	.long	work__prisc__ARCH__pipelined__se10__se_in__RTISTR
	.long	8
	.long	work__prisc__ARCH__pipelined__se10__se_in__OT__RTI
.globl work__prisc__ARCH__pipelined__se10__se_out__OT__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__se10__se_out__OT__RTI, @object
	.size	work__prisc__ARCH__pipelined__se10__se_out__OT__RTI, 24
work__prisc__ARCH__pipelined__se10__se_out__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__prisc__ARCH__pipelined__se10__se_out__OT__STB
	.long	16
	.long	64
	.type	work__prisc__ARCH__pipelined__se10__se_out__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__se10__se_out__RTISTR, 7
work__prisc__ARCH__pipelined__se10__se_out__RTISTR:
	.byte	115
	.byte	101
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	0
.globl work__prisc__ARCH__pipelined__se10__se_out__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__se10__se_out__RTI, @object
	.size	work__prisc__ARCH__pipelined__se10__se_out__RTI, 16
work__prisc__ARCH__pipelined__se10__se_out__RTI:
	.byte	16
	.byte	2
	.byte	3
	.byte	0
	.long	work__prisc__ARCH__pipelined__se10__se_out__RTISTR
	.long	32
	.long	work__prisc__ARCH__pipelined__se10__se_out__OT__RTI
	.type	work__prisc__ARCH__pipelined__se10__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__se10__RTISTR, 5
work__prisc__ARCH__pipelined__se10__RTISTR:
	.byte	115
	.byte	101
	.byte	49
	.byte	48
	.byte	0
	.align 4
	.type	work__prisc__ARCH__pipelined__se10__RTIARRAY, @object
	.size	work__prisc__ARCH__pipelined__se10__RTIARRAY, 12
work__prisc__ARCH__pipelined__se10__RTIARRAY:
	.long	work__prisc__ARCH__pipelined__se10__se_in__RTI
	.long	work__prisc__ARCH__pipelined__se10__se_out__RTI
	.long	0
.globl work__prisc__ARCH__pipelined__se10__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__se10__RTI, @object
	.size	work__prisc__ARCH__pipelined__se10__RTI, 16
work__prisc__ARCH__pipelined__se10__RTI:
	.byte	20
	.byte	2
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__se10__RTISTR
	.long	2
	.long	work__prisc__ARCH__pipelined__se10__RTIARRAY
.globl work__prisc__ARCH__pipelined__zeros__OT__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__zeros__OT__RTI, @object
	.size	work__prisc__ARCH__pipelined__zeros__OT__RTI, 24
work__prisc__ARCH__pipelined__zeros__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__prisc__ARCH__pipelined__zeros__OT__STB
	.long	16
	.long	64
	.type	work__prisc__ARCH__pipelined__zeros__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__zeros__RTISTR, 6
work__prisc__ARCH__pipelined__zeros__RTISTR:
	.byte	122
	.byte	101
	.byte	114
	.byte	111
	.byte	115
	.byte	0
.globl work__prisc__ARCH__pipelined__zeros__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__zeros__RTI, @object
	.size	work__prisc__ARCH__pipelined__zeros__RTI, 16
work__prisc__ARCH__pipelined__zeros__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__zeros__RTISTR
	.long	16
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__pc_in__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__pc_in__RTISTR, 6
work__prisc__ARCH__pipelined__pc_in__RTISTR:
	.byte	112
	.byte	99
	.byte	95
	.byte	105
	.byte	110
	.byte	0
.globl work__prisc__ARCH__pipelined__pc_in__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pc_in__RTI, @object
	.size	work__prisc__ARCH__pipelined__pc_in__RTI, 16
work__prisc__ARCH__pipelined__pc_in__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__pc_in__RTISTR
	.long	80
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__pc_out__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__pc_out__RTISTR, 7
work__prisc__ARCH__pipelined__pc_out__RTISTR:
	.byte	112
	.byte	99
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	0
.globl work__prisc__ARCH__pipelined__pc_out__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pc_out__RTI, @object
	.size	work__prisc__ARCH__pipelined__pc_out__RTI, 16
work__prisc__ARCH__pipelined__pc_out__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__pc_out__RTISTR
	.long	144
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__palu_out__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__palu_out__RTISTR, 9
work__prisc__ARCH__pipelined__palu_out__RTISTR:
	.byte	112
	.byte	97
	.byte	108
	.byte	117
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	0
.globl work__prisc__ARCH__pipelined__palu_out__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__palu_out__RTI, @object
	.size	work__prisc__ARCH__pipelined__palu_out__RTI, 16
work__prisc__ARCH__pipelined__palu_out__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__palu_out__RTISTR
	.long	208
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__malu_out__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__malu_out__RTISTR, 9
work__prisc__ARCH__pipelined__malu_out__RTISTR:
	.byte	109
	.byte	97
	.byte	108
	.byte	117
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	0
.globl work__prisc__ARCH__pipelined__malu_out__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__malu_out__RTI, @object
	.size	work__prisc__ARCH__pipelined__malu_out__RTI, 16
work__prisc__ARCH__pipelined__malu_out__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__malu_out__RTISTR
	.long	272
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__codemem_out__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__codemem_out__RTISTR, 12
work__prisc__ARCH__pipelined__codemem_out__RTISTR:
	.byte	99
	.byte	111
	.byte	100
	.byte	101
	.byte	109
	.byte	101
	.byte	109
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	0
.globl work__prisc__ARCH__pipelined__codemem_out__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__codemem_out__RTI, @object
	.size	work__prisc__ARCH__pipelined__codemem_out__RTI, 16
work__prisc__ARCH__pipelined__codemem_out__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__codemem_out__RTISTR
	.long	336
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__ir_out_p0__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__ir_out_p0__RTISTR, 10
work__prisc__ARCH__pipelined__ir_out_p0__RTISTR:
	.byte	105
	.byte	114
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	95
	.byte	112
	.byte	48
	.byte	0
.globl work__prisc__ARCH__pipelined__ir_out_p0__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__ir_out_p0__RTI, @object
	.size	work__prisc__ARCH__pipelined__ir_out_p0__RTI, 16
work__prisc__ARCH__pipelined__ir_out_p0__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__ir_out_p0__RTISTR
	.long	400
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__ir_out_pa__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__ir_out_pa__RTISTR, 10
work__prisc__ARCH__pipelined__ir_out_pa__RTISTR:
	.byte	105
	.byte	114
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	95
	.byte	112
	.byte	97
	.byte	0
.globl work__prisc__ARCH__pipelined__ir_out_pa__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__ir_out_pa__RTI, @object
	.size	work__prisc__ARCH__pipelined__ir_out_pa__RTI, 16
work__prisc__ARCH__pipelined__ir_out_pa__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__ir_out_pa__RTISTR
	.long	464
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__ir_out_pb__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__ir_out_pb__RTISTR, 10
work__prisc__ARCH__pipelined__ir_out_pb__RTISTR:
	.byte	105
	.byte	114
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	95
	.byte	112
	.byte	98
	.byte	0
.globl work__prisc__ARCH__pipelined__ir_out_pb__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__ir_out_pb__RTI, @object
	.size	work__prisc__ARCH__pipelined__ir_out_pb__RTI, 16
work__prisc__ARCH__pipelined__ir_out_pb__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__ir_out_pb__RTISTR
	.long	528
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__ir_out_pc__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__ir_out_pc__RTISTR, 10
work__prisc__ARCH__pipelined__ir_out_pc__RTISTR:
	.byte	105
	.byte	114
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	95
	.byte	112
	.byte	99
	.byte	0
.globl work__prisc__ARCH__pipelined__ir_out_pc__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__ir_out_pc__RTI, @object
	.size	work__prisc__ARCH__pipelined__ir_out_pc__RTI, 16
work__prisc__ARCH__pipelined__ir_out_pc__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__ir_out_pc__RTISTR
	.long	592
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__ir_out_pd__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__ir_out_pd__RTISTR, 10
work__prisc__ARCH__pipelined__ir_out_pd__RTISTR:
	.byte	105
	.byte	114
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	95
	.byte	112
	.byte	100
	.byte	0
.globl work__prisc__ARCH__pipelined__ir_out_pd__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__ir_out_pd__RTI, @object
	.size	work__prisc__ARCH__pipelined__ir_out_pd__RTI, 16
work__prisc__ARCH__pipelined__ir_out_pd__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__ir_out_pd__RTISTR
	.long	656
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__npc_out_p0__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__npc_out_p0__RTISTR, 11
work__prisc__ARCH__pipelined__npc_out_p0__RTISTR:
	.byte	110
	.byte	112
	.byte	99
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	95
	.byte	112
	.byte	48
	.byte	0
.globl work__prisc__ARCH__pipelined__npc_out_p0__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__npc_out_p0__RTI, @object
	.size	work__prisc__ARCH__pipelined__npc_out_p0__RTI, 16
work__prisc__ARCH__pipelined__npc_out_p0__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__npc_out_p0__RTISTR
	.long	720
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__npc_out_pb__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__npc_out_pb__RTISTR, 11
work__prisc__ARCH__pipelined__npc_out_pb__RTISTR:
	.byte	110
	.byte	112
	.byte	99
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	95
	.byte	112
	.byte	98
	.byte	0
.globl work__prisc__ARCH__pipelined__npc_out_pb__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__npc_out_pb__RTI, @object
	.size	work__prisc__ARCH__pipelined__npc_out_pb__RTI, 16
work__prisc__ARCH__pipelined__npc_out_pb__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__npc_out_pb__RTISTR
	.long	784
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__npc_out_pa__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__npc_out_pa__RTISTR, 11
work__prisc__ARCH__pipelined__npc_out_pa__RTISTR:
	.byte	110
	.byte	112
	.byte	99
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	95
	.byte	112
	.byte	97
	.byte	0
.globl work__prisc__ARCH__pipelined__npc_out_pa__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__npc_out_pa__RTI, @object
	.size	work__prisc__ARCH__pipelined__npc_out_pa__RTI, 16
work__prisc__ARCH__pipelined__npc_out_pa__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__npc_out_pa__RTISTR
	.long	848
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__rf_d1__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__rf_d1__RTISTR, 6
work__prisc__ARCH__pipelined__rf_d1__RTISTR:
	.byte	114
	.byte	102
	.byte	95
	.byte	100
	.byte	49
	.byte	0
.globl work__prisc__ARCH__pipelined__rf_d1__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__rf_d1__RTI, @object
	.size	work__prisc__ARCH__pipelined__rf_d1__RTI, 16
work__prisc__ARCH__pipelined__rf_d1__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__rf_d1__RTISTR
	.long	912
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__rf_d2__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__rf_d2__RTISTR, 6
work__prisc__ARCH__pipelined__rf_d2__RTISTR:
	.byte	114
	.byte	102
	.byte	95
	.byte	100
	.byte	50
	.byte	0
.globl work__prisc__ARCH__pipelined__rf_d2__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__rf_d2__RTI, @object
	.size	work__prisc__ARCH__pipelined__rf_d2__RTI, 16
work__prisc__ARCH__pipelined__rf_d2__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__rf_d2__RTISTR
	.long	976
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__rf_d3__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__rf_d3__RTISTR, 6
work__prisc__ARCH__pipelined__rf_d3__RTISTR:
	.byte	114
	.byte	102
	.byte	95
	.byte	100
	.byte	51
	.byte	0
.globl work__prisc__ARCH__pipelined__rf_d3__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__rf_d3__RTI, @object
	.size	work__prisc__ARCH__pipelined__rf_d3__RTI, 16
work__prisc__ARCH__pipelined__rf_d3__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__rf_d3__RTISTR
	.long	1040
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__npc_out_pd__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__npc_out_pd__RTISTR, 11
work__prisc__ARCH__pipelined__npc_out_pd__RTISTR:
	.byte	110
	.byte	112
	.byte	99
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	95
	.byte	112
	.byte	100
	.byte	0
.globl work__prisc__ARCH__pipelined__npc_out_pd__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__npc_out_pd__RTI, @object
	.size	work__prisc__ARCH__pipelined__npc_out_pd__RTI, 16
work__prisc__ARCH__pipelined__npc_out_pd__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__npc_out_pd__RTISTR
	.long	1104
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__memd_out_pd__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__memd_out_pd__RTISTR, 12
work__prisc__ARCH__pipelined__memd_out_pd__RTISTR:
	.byte	109
	.byte	101
	.byte	109
	.byte	100
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	95
	.byte	112
	.byte	100
	.byte	0
.globl work__prisc__ARCH__pipelined__memd_out_pd__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__memd_out_pd__RTI, @object
	.size	work__prisc__ARCH__pipelined__memd_out_pd__RTI, 16
work__prisc__ARCH__pipelined__memd_out_pd__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__memd_out_pd__RTISTR
	.long	1168
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__t3_out_pd__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__t3_out_pd__RTISTR, 10
work__prisc__ARCH__pipelined__t3_out_pd__RTISTR:
	.byte	116
	.byte	51
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	95
	.byte	112
	.byte	100
	.byte	0
.globl work__prisc__ARCH__pipelined__t3_out_pd__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__t3_out_pd__RTI, @object
	.size	work__prisc__ARCH__pipelined__t3_out_pd__RTI, 16
work__prisc__ARCH__pipelined__t3_out_pd__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__t3_out_pd__RTISTR
	.long	1232
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__datamem_a__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__datamem_a__RTISTR, 10
work__prisc__ARCH__pipelined__datamem_a__RTISTR:
	.byte	100
	.byte	97
	.byte	116
	.byte	97
	.byte	109
	.byte	101
	.byte	109
	.byte	95
	.byte	97
	.byte	0
.globl work__prisc__ARCH__pipelined__datamem_a__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__datamem_a__RTI, @object
	.size	work__prisc__ARCH__pipelined__datamem_a__RTI, 16
work__prisc__ARCH__pipelined__datamem_a__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__datamem_a__RTISTR
	.long	1296
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__datamem_out__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__datamem_out__RTISTR, 12
work__prisc__ARCH__pipelined__datamem_out__RTISTR:
	.byte	100
	.byte	97
	.byte	116
	.byte	97
	.byte	109
	.byte	101
	.byte	109
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	0
.globl work__prisc__ARCH__pipelined__datamem_out__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__datamem_out__RTI, @object
	.size	work__prisc__ARCH__pipelined__datamem_out__RTI, 16
work__prisc__ARCH__pipelined__datamem_out__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__datamem_out__RTISTR
	.long	1360
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__datamem_din__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__datamem_din__RTISTR, 12
work__prisc__ARCH__pipelined__datamem_din__RTISTR:
	.byte	100
	.byte	97
	.byte	116
	.byte	97
	.byte	109
	.byte	101
	.byte	109
	.byte	95
	.byte	100
	.byte	105
	.byte	110
	.byte	0
.globl work__prisc__ARCH__pipelined__datamem_din__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__datamem_din__RTI, @object
	.size	work__prisc__ARCH__pipelined__datamem_din__RTI, 16
work__prisc__ARCH__pipelined__datamem_din__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__datamem_din__RTISTR
	.long	1424
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__t1_in__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__t1_in__RTISTR, 6
work__prisc__ARCH__pipelined__t1_in__RTISTR:
	.byte	116
	.byte	49
	.byte	95
	.byte	105
	.byte	110
	.byte	0
.globl work__prisc__ARCH__pipelined__t1_in__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__t1_in__RTI, @object
	.size	work__prisc__ARCH__pipelined__t1_in__RTI, 16
work__prisc__ARCH__pipelined__t1_in__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__t1_in__RTISTR
	.long	1488
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__t2_out_pb__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__t2_out_pb__RTISTR, 10
work__prisc__ARCH__pipelined__t2_out_pb__RTISTR:
	.byte	116
	.byte	50
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	95
	.byte	112
	.byte	98
	.byte	0
.globl work__prisc__ARCH__pipelined__t2_out_pb__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__t2_out_pb__RTI, @object
	.size	work__prisc__ARCH__pipelined__t2_out_pb__RTI, 16
work__prisc__ARCH__pipelined__t2_out_pb__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__t2_out_pb__RTISTR
	.long	1552
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__t2_out_pc__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__t2_out_pc__RTISTR, 10
work__prisc__ARCH__pipelined__t2_out_pc__RTISTR:
	.byte	116
	.byte	50
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	95
	.byte	112
	.byte	99
	.byte	0
.globl work__prisc__ARCH__pipelined__t2_out_pc__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__t2_out_pc__RTI, @object
	.size	work__prisc__ARCH__pipelined__t2_out_pc__RTI, 16
work__prisc__ARCH__pipelined__t2_out_pc__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__t2_out_pc__RTISTR
	.long	1616
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__t2_out_pd__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__t2_out_pd__RTISTR, 10
work__prisc__ARCH__pipelined__t2_out_pd__RTISTR:
	.byte	116
	.byte	50
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	95
	.byte	112
	.byte	100
	.byte	0
.globl work__prisc__ARCH__pipelined__t2_out_pd__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__t2_out_pd__RTI, @object
	.size	work__prisc__ARCH__pipelined__t2_out_pd__RTI, 16
work__prisc__ARCH__pipelined__t2_out_pd__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__t2_out_pd__RTISTR
	.long	1680
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__t1_out_pb__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__t1_out_pb__RTISTR, 10
work__prisc__ARCH__pipelined__t1_out_pb__RTISTR:
	.byte	116
	.byte	49
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	95
	.byte	112
	.byte	98
	.byte	0
.globl work__prisc__ARCH__pipelined__t1_out_pb__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__t1_out_pb__RTI, @object
	.size	work__prisc__ARCH__pipelined__t1_out_pb__RTI, 16
work__prisc__ARCH__pipelined__t1_out_pb__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__t1_out_pb__RTISTR
	.long	1744
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__t3_out_pb__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__t3_out_pb__RTISTR, 10
work__prisc__ARCH__pipelined__t3_out_pb__RTISTR:
	.byte	116
	.byte	51
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	95
	.byte	112
	.byte	98
	.byte	0
.globl work__prisc__ARCH__pipelined__t3_out_pb__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__t3_out_pb__RTI, @object
	.size	work__prisc__ARCH__pipelined__t3_out_pb__RTI, 16
work__prisc__ARCH__pipelined__t3_out_pb__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__t3_out_pb__RTISTR
	.long	1808
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__npc_out_pc__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__npc_out_pc__RTISTR, 11
work__prisc__ARCH__pipelined__npc_out_pc__RTISTR:
	.byte	110
	.byte	112
	.byte	99
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	95
	.byte	112
	.byte	99
	.byte	0
.globl work__prisc__ARCH__pipelined__npc_out_pc__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__npc_out_pc__RTI, @object
	.size	work__prisc__ARCH__pipelined__npc_out_pc__RTI, 16
work__prisc__ARCH__pipelined__npc_out_pc__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__npc_out_pc__RTISTR
	.long	1872
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__t1_out_pc__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__t1_out_pc__RTISTR, 10
work__prisc__ARCH__pipelined__t1_out_pc__RTISTR:
	.byte	116
	.byte	49
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	95
	.byte	112
	.byte	99
	.byte	0
.globl work__prisc__ARCH__pipelined__t1_out_pc__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__t1_out_pc__RTI, @object
	.size	work__prisc__ARCH__pipelined__t1_out_pc__RTI, 16
work__prisc__ARCH__pipelined__t1_out_pc__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__t1_out_pc__RTISTR
	.long	1936
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__t1_out_pd__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__t1_out_pd__RTISTR, 10
work__prisc__ARCH__pipelined__t1_out_pd__RTISTR:
	.byte	116
	.byte	49
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	95
	.byte	112
	.byte	100
	.byte	0
.globl work__prisc__ARCH__pipelined__t1_out_pd__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__t1_out_pd__RTI, @object
	.size	work__prisc__ARCH__pipelined__t1_out_pd__RTI, 16
work__prisc__ARCH__pipelined__t1_out_pd__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__t1_out_pd__RTISTR
	.long	2000
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__t3_out_pc__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__t3_out_pc__RTISTR, 10
work__prisc__ARCH__pipelined__t3_out_pc__RTISTR:
	.byte	116
	.byte	51
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	95
	.byte	112
	.byte	99
	.byte	0
.globl work__prisc__ARCH__pipelined__t3_out_pc__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__t3_out_pc__RTI, @object
	.size	work__prisc__ARCH__pipelined__t3_out_pc__RTI, 16
work__prisc__ARCH__pipelined__t3_out_pc__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__t3_out_pc__RTISTR
	.long	2064
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__alu_1__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__alu_1__RTISTR, 6
work__prisc__ARCH__pipelined__alu_1__RTISTR:
	.byte	97
	.byte	108
	.byte	117
	.byte	95
	.byte	49
	.byte	0
.globl work__prisc__ARCH__pipelined__alu_1__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__alu_1__RTI, @object
	.size	work__prisc__ARCH__pipelined__alu_1__RTI, 16
work__prisc__ARCH__pipelined__alu_1__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__alu_1__RTISTR
	.long	2128
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__alu_2__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__alu_2__RTISTR, 6
work__prisc__ARCH__pipelined__alu_2__RTISTR:
	.byte	97
	.byte	108
	.byte	117
	.byte	95
	.byte	50
	.byte	0
.globl work__prisc__ARCH__pipelined__alu_2__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__alu_2__RTI, @object
	.size	work__prisc__ARCH__pipelined__alu_2__RTI, 16
work__prisc__ARCH__pipelined__alu_2__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__alu_2__RTISTR
	.long	2192
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__ir_out_pb_50__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__ir_out_pb_50__RTISTR, 13
work__prisc__ARCH__pipelined__ir_out_pb_50__RTISTR:
	.byte	105
	.byte	114
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	95
	.byte	112
	.byte	98
	.byte	95
	.byte	53
	.byte	48
	.byte	0
.globl work__prisc__ARCH__pipelined__ir_out_pb_50__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__ir_out_pb_50__RTI, @object
	.size	work__prisc__ARCH__pipelined__ir_out_pb_50__RTI, 16
work__prisc__ARCH__pipelined__ir_out_pb_50__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__ir_out_pb_50__RTISTR
	.long	2256
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__ir_out_pb_80__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__ir_out_pb_80__RTISTR, 13
work__prisc__ARCH__pipelined__ir_out_pb_80__RTISTR:
	.byte	105
	.byte	114
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	95
	.byte	112
	.byte	98
	.byte	95
	.byte	56
	.byte	48
	.byte	0
.globl work__prisc__ARCH__pipelined__ir_out_pb_80__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__ir_out_pb_80__RTI, @object
	.size	work__prisc__ARCH__pipelined__ir_out_pb_80__RTI, 16
work__prisc__ARCH__pipelined__ir_out_pb_80__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__ir_out_pb_80__RTISTR
	.long	2320
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__ir_out_pd_80__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__ir_out_pd_80__RTISTR, 13
work__prisc__ARCH__pipelined__ir_out_pd_80__RTISTR:
	.byte	105
	.byte	114
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	95
	.byte	112
	.byte	100
	.byte	95
	.byte	56
	.byte	48
	.byte	0
.globl work__prisc__ARCH__pipelined__ir_out_pd_80__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__ir_out_pd_80__RTI, @object
	.size	work__prisc__ARCH__pipelined__ir_out_pd_80__RTI, 16
work__prisc__ARCH__pipelined__ir_out_pd_80__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__ir_out_pd_80__RTISTR
	.long	2384
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
	.type	work__prisc__ARCH__pipelined__ir__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__ir__RTISTR, 3
work__prisc__ARCH__pipelined__ir__RTISTR:
	.byte	105
	.byte	114
	.byte	0
.globl work__prisc__ARCH__pipelined__ir__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__ir__RTI, @object
	.size	work__prisc__ARCH__pipelined__ir__RTI, 16
work__prisc__ARCH__pipelined__ir__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__ir__RTISTR
	.long	2448
	.long	work__prisc__ARCH__pipelined__zeros__OT__RTI
.globl work__prisc__ARCH__pipelined__one__OT__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__one__OT__RTI, @object
	.size	work__prisc__ARCH__pipelined__one__OT__RTI, 24
work__prisc__ARCH__pipelined__one__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__prisc__ARCH__pipelined__one__OT__STB
	.long	16
	.long	64
	.type	work__prisc__ARCH__pipelined__one__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__one__RTISTR, 4
work__prisc__ARCH__pipelined__one__RTISTR:
	.byte	111
	.byte	110
	.byte	101
	.byte	0
.globl work__prisc__ARCH__pipelined__one__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__one__RTI, @object
	.size	work__prisc__ARCH__pipelined__one__RTI, 16
work__prisc__ARCH__pipelined__one__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__one__RTISTR
	.long	2512
	.long	work__prisc__ARCH__pipelined__one__OT__RTI
	.type	work__prisc__ARCH__pipelined__pc_en__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__pc_en__RTISTR, 6
work__prisc__ARCH__pipelined__pc_en__RTISTR:
	.byte	112
	.byte	99
	.byte	95
	.byte	101
	.byte	110
	.byte	0
.globl work__prisc__ARCH__pipelined__pc_en__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pc_en__RTI, @object
	.size	work__prisc__ARCH__pipelined__pc_en__RTI, 16
work__prisc__ARCH__pipelined__pc_en__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__pc_en__RTISTR
	.long	2576
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__codemem_init__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__codemem_init__RTISTR, 13
work__prisc__ARCH__pipelined__codemem_init__RTISTR:
	.byte	99
	.byte	111
	.byte	100
	.byte	101
	.byte	109
	.byte	101
	.byte	109
	.byte	95
	.byte	105
	.byte	110
	.byte	105
	.byte	116
	.byte	0
.globl work__prisc__ARCH__pipelined__codemem_init__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__codemem_init__RTI, @object
	.size	work__prisc__ARCH__pipelined__codemem_init__RTI, 16
work__prisc__ARCH__pipelined__codemem_init__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__codemem_init__RTISTR
	.long	2580
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__p0_en__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__p0_en__RTISTR, 6
work__prisc__ARCH__pipelined__p0_en__RTISTR:
	.byte	112
	.byte	48
	.byte	95
	.byte	101
	.byte	110
	.byte	0
.globl work__prisc__ARCH__pipelined__p0_en__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__p0_en__RTI, @object
	.size	work__prisc__ARCH__pipelined__p0_en__RTI, 16
work__prisc__ARCH__pipelined__p0_en__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__p0_en__RTISTR
	.long	2584
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__pa_en__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__pa_en__RTISTR, 6
work__prisc__ARCH__pipelined__pa_en__RTISTR:
	.byte	112
	.byte	97
	.byte	95
	.byte	101
	.byte	110
	.byte	0
.globl work__prisc__ARCH__pipelined__pa_en__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pa_en__RTI, @object
	.size	work__prisc__ARCH__pipelined__pa_en__RTI, 16
work__prisc__ARCH__pipelined__pa_en__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__pa_en__RTISTR
	.long	2588
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__pb_en__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__pb_en__RTISTR, 6
work__prisc__ARCH__pipelined__pb_en__RTISTR:
	.byte	112
	.byte	98
	.byte	95
	.byte	101
	.byte	110
	.byte	0
.globl work__prisc__ARCH__pipelined__pb_en__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pb_en__RTI, @object
	.size	work__prisc__ARCH__pipelined__pb_en__RTI, 16
work__prisc__ARCH__pipelined__pb_en__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__pb_en__RTISTR
	.long	2592
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__pd_en__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__pd_en__RTISTR, 6
work__prisc__ARCH__pipelined__pd_en__RTISTR:
	.byte	112
	.byte	100
	.byte	95
	.byte	101
	.byte	110
	.byte	0
.globl work__prisc__ARCH__pipelined__pd_en__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pd_en__RTI, @object
	.size	work__prisc__ARCH__pipelined__pd_en__RTI, 16
work__prisc__ARCH__pipelined__pd_en__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__pd_en__RTISTR
	.long	2596
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__rf_wr__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__rf_wr__RTISTR, 6
work__prisc__ARCH__pipelined__rf_wr__RTISTR:
	.byte	114
	.byte	102
	.byte	95
	.byte	119
	.byte	114
	.byte	0
.globl work__prisc__ARCH__pipelined__rf_wr__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__rf_wr__RTI, @object
	.size	work__prisc__ARCH__pipelined__rf_wr__RTI, 16
work__prisc__ARCH__pipelined__rf_wr__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__rf_wr__RTISTR
	.long	2600
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__rf_rst__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__rf_rst__RTISTR, 7
work__prisc__ARCH__pipelined__rf_rst__RTISTR:
	.byte	114
	.byte	102
	.byte	95
	.byte	114
	.byte	115
	.byte	116
	.byte	0
.globl work__prisc__ARCH__pipelined__rf_rst__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__rf_rst__RTI, @object
	.size	work__prisc__ARCH__pipelined__rf_rst__RTI, 16
work__prisc__ARCH__pipelined__rf_rst__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__rf_rst__RTISTR
	.long	2604
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__cen__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__cen__RTISTR, 4
work__prisc__ARCH__pipelined__cen__RTISTR:
	.byte	99
	.byte	101
	.byte	110
	.byte	0
.globl work__prisc__ARCH__pipelined__cen__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__cen__RTI, @object
	.size	work__prisc__ARCH__pipelined__cen__RTI, 16
work__prisc__ARCH__pipelined__cen__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__cen__RTISTR
	.long	2608
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__zen__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__zen__RTISTR, 4
work__prisc__ARCH__pipelined__zen__RTISTR:
	.byte	122
	.byte	101
	.byte	110
	.byte	0
.globl work__prisc__ARCH__pipelined__zen__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__zen__RTI, @object
	.size	work__prisc__ARCH__pipelined__zen__RTI, 16
work__prisc__ARCH__pipelined__zen__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__zen__RTISTR
	.long	2612
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__datamem_init__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__datamem_init__RTISTR, 13
work__prisc__ARCH__pipelined__datamem_init__RTISTR:
	.byte	100
	.byte	97
	.byte	116
	.byte	97
	.byte	109
	.byte	101
	.byte	109
	.byte	95
	.byte	105
	.byte	110
	.byte	105
	.byte	116
	.byte	0
.globl work__prisc__ARCH__pipelined__datamem_init__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__datamem_init__RTI, @object
	.size	work__prisc__ARCH__pipelined__datamem_init__RTI, 16
work__prisc__ARCH__pipelined__datamem_init__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__datamem_init__RTISTR
	.long	2616
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__datamem_rd__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__datamem_rd__RTISTR, 11
work__prisc__ARCH__pipelined__datamem_rd__RTISTR:
	.byte	100
	.byte	97
	.byte	116
	.byte	97
	.byte	109
	.byte	101
	.byte	109
	.byte	95
	.byte	114
	.byte	100
	.byte	0
.globl work__prisc__ARCH__pipelined__datamem_rd__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__datamem_rd__RTI, @object
	.size	work__prisc__ARCH__pipelined__datamem_rd__RTI, 16
work__prisc__ARCH__pipelined__datamem_rd__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__datamem_rd__RTISTR
	.long	2620
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__datamem_wr__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__datamem_wr__RTISTR, 11
work__prisc__ARCH__pipelined__datamem_wr__RTISTR:
	.byte	100
	.byte	97
	.byte	116
	.byte	97
	.byte	109
	.byte	101
	.byte	109
	.byte	95
	.byte	119
	.byte	114
	.byte	0
.globl work__prisc__ARCH__pipelined__datamem_wr__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__datamem_wr__RTI, @object
	.size	work__prisc__ARCH__pipelined__datamem_wr__RTI, 16
work__prisc__ARCH__pipelined__datamem_wr__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__datamem_wr__RTISTR
	.long	2624
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__zin__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__zin__RTISTR, 4
work__prisc__ARCH__pipelined__zin__RTISTR:
	.byte	122
	.byte	105
	.byte	110
	.byte	0
.globl work__prisc__ARCH__pipelined__zin__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__zin__RTI, @object
	.size	work__prisc__ARCH__pipelined__zin__RTI, 16
work__prisc__ARCH__pipelined__zin__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__zin__RTISTR
	.long	2628
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__zout__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__zout__RTISTR, 5
work__prisc__ARCH__pipelined__zout__RTISTR:
	.byte	122
	.byte	111
	.byte	117
	.byte	116
	.byte	0
.globl work__prisc__ARCH__pipelined__zout__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__zout__RTI, @object
	.size	work__prisc__ARCH__pipelined__zout__RTI, 16
work__prisc__ARCH__pipelined__zout__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__zout__RTISTR
	.long	2632
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__cin__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__cin__RTISTR, 4
work__prisc__ARCH__pipelined__cin__RTISTR:
	.byte	99
	.byte	105
	.byte	110
	.byte	0
.globl work__prisc__ARCH__pipelined__cin__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__cin__RTI, @object
	.size	work__prisc__ARCH__pipelined__cin__RTI, 16
work__prisc__ARCH__pipelined__cin__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__cin__RTISTR
	.long	2636
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__cout__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__cout__RTISTR, 5
work__prisc__ARCH__pipelined__cout__RTISTR:
	.byte	99
	.byte	111
	.byte	117
	.byte	116
	.byte	0
.globl work__prisc__ARCH__pipelined__cout__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__cout__RTI, @object
	.size	work__prisc__ARCH__pipelined__cout__RTI, 16
work__prisc__ARCH__pipelined__cout__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__cout__RTISTR
	.long	2640
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__alu_op1__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__alu_op1__RTISTR, 8
work__prisc__ARCH__pipelined__alu_op1__RTISTR:
	.byte	97
	.byte	108
	.byte	117
	.byte	95
	.byte	111
	.byte	112
	.byte	49
	.byte	0
.globl work__prisc__ARCH__pipelined__alu_op1__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__alu_op1__RTI, @object
	.size	work__prisc__ARCH__pipelined__alu_op1__RTI, 16
work__prisc__ARCH__pipelined__alu_op1__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__alu_op1__RTISTR
	.long	2644
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__iter_in__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__iter_in__RTISTR, 8
work__prisc__ARCH__pipelined__iter_in__RTISTR:
	.byte	105
	.byte	116
	.byte	101
	.byte	114
	.byte	95
	.byte	105
	.byte	110
	.byte	0
.globl work__prisc__ARCH__pipelined__iter_in__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__iter_in__RTI, @object
	.size	work__prisc__ARCH__pipelined__iter_in__RTI, 16
work__prisc__ARCH__pipelined__iter_in__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__iter_in__RTISTR
	.long	2648
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__iter_out__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__iter_out__RTISTR, 9
work__prisc__ARCH__pipelined__iter_out__RTISTR:
	.byte	105
	.byte	116
	.byte	101
	.byte	114
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	0
.globl work__prisc__ARCH__pipelined__iter_out__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__iter_out__RTI, @object
	.size	work__prisc__ARCH__pipelined__iter_out__RTI, 16
work__prisc__ARCH__pipelined__iter_out__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__iter_out__RTISTR
	.long	2652
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__prisc__ARCH__pipelined__iter_en__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__iter_en__RTISTR, 8
work__prisc__ARCH__pipelined__iter_en__RTISTR:
	.byte	105
	.byte	116
	.byte	101
	.byte	114
	.byte	95
	.byte	101
	.byte	110
	.byte	0
.globl work__prisc__ARCH__pipelined__iter_en__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__iter_en__RTI, @object
	.size	work__prisc__ARCH__pipelined__iter_en__RTI, 16
work__prisc__ARCH__pipelined__iter_en__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__iter_en__RTISTR
	.long	2656
	.long	ieee__std_logic_1164__std_logic__RTI
.globl work__prisc__ARCH__pipelined__contr_pa_in__OT__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__contr_pa_in__OT__RTI, @object
	.size	work__prisc__ARCH__pipelined__contr_pa_in__OT__RTI, 24
work__prisc__ARCH__pipelined__contr_pa_in__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__prisc__ARCH__pipelined__contr_pa_in__OT__STB
	.long	19
	.long	76
	.type	work__prisc__ARCH__pipelined__contr_pa_in__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__contr_pa_in__RTISTR, 12
work__prisc__ARCH__pipelined__contr_pa_in__RTISTR:
	.byte	99
	.byte	111
	.byte	110
	.byte	116
	.byte	114
	.byte	95
	.byte	112
	.byte	97
	.byte	95
	.byte	105
	.byte	110
	.byte	0
.globl work__prisc__ARCH__pipelined__contr_pa_in__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__contr_pa_in__RTI, @object
	.size	work__prisc__ARCH__pipelined__contr_pa_in__RTI, 16
work__prisc__ARCH__pipelined__contr_pa_in__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__contr_pa_in__RTISTR
	.long	2660
	.long	work__prisc__ARCH__pipelined__contr_pa_in__OT__RTI
	.type	work__prisc__ARCH__pipelined__contr_pa_out__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__contr_pa_out__RTISTR, 13
work__prisc__ARCH__pipelined__contr_pa_out__RTISTR:
	.byte	99
	.byte	111
	.byte	110
	.byte	116
	.byte	114
	.byte	95
	.byte	112
	.byte	97
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	0
.globl work__prisc__ARCH__pipelined__contr_pa_out__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__contr_pa_out__RTI, @object
	.size	work__prisc__ARCH__pipelined__contr_pa_out__RTI, 16
work__prisc__ARCH__pipelined__contr_pa_out__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__contr_pa_out__RTISTR
	.long	2736
	.long	work__prisc__ARCH__pipelined__contr_pa_in__OT__RTI
	.type	work__prisc__ARCH__pipelined__contr_pb_out__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__contr_pb_out__RTISTR, 13
work__prisc__ARCH__pipelined__contr_pb_out__RTISTR:
	.byte	99
	.byte	111
	.byte	110
	.byte	116
	.byte	114
	.byte	95
	.byte	112
	.byte	98
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	0
.globl work__prisc__ARCH__pipelined__contr_pb_out__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__contr_pb_out__RTI, @object
	.size	work__prisc__ARCH__pipelined__contr_pb_out__RTI, 16
work__prisc__ARCH__pipelined__contr_pb_out__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__contr_pb_out__RTISTR
	.long	2812
	.long	work__prisc__ARCH__pipelined__contr_pa_in__OT__RTI
	.type	work__prisc__ARCH__pipelined__contr_pc_out__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__contr_pc_out__RTISTR, 13
work__prisc__ARCH__pipelined__contr_pc_out__RTISTR:
	.byte	99
	.byte	111
	.byte	110
	.byte	116
	.byte	114
	.byte	95
	.byte	112
	.byte	99
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	0
.globl work__prisc__ARCH__pipelined__contr_pc_out__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__contr_pc_out__RTI, @object
	.size	work__prisc__ARCH__pipelined__contr_pc_out__RTI, 16
work__prisc__ARCH__pipelined__contr_pc_out__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__contr_pc_out__RTISTR
	.long	2888
	.long	work__prisc__ARCH__pipelined__contr_pa_in__OT__RTI
	.type	work__prisc__ARCH__pipelined__contr_pd_out__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__contr_pd_out__RTISTR, 13
work__prisc__ARCH__pipelined__contr_pd_out__RTISTR:
	.byte	99
	.byte	111
	.byte	110
	.byte	116
	.byte	114
	.byte	95
	.byte	112
	.byte	100
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	0
.globl work__prisc__ARCH__pipelined__contr_pd_out__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__contr_pd_out__RTI, @object
	.size	work__prisc__ARCH__pipelined__contr_pd_out__RTI, 16
work__prisc__ARCH__pipelined__contr_pd_out__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__contr_pd_out__RTISTR
	.long	2964
	.long	work__prisc__ARCH__pipelined__contr_pa_in__OT__RTI
.globl work__prisc__ARCH__pipelined__pe_out__OT__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pe_out__OT__RTI, @object
	.size	work__prisc__ARCH__pipelined__pe_out__OT__RTI, 24
work__prisc__ARCH__pipelined__pe_out__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__prisc__ARCH__pipelined__pe_out__OT__STB
	.long	3
	.long	12
	.type	work__prisc__ARCH__pipelined__pe_out__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__pe_out__RTISTR, 7
work__prisc__ARCH__pipelined__pe_out__RTISTR:
	.byte	112
	.byte	101
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	0
.globl work__prisc__ARCH__pipelined__pe_out__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pe_out__RTI, @object
	.size	work__prisc__ARCH__pipelined__pe_out__RTI, 16
work__prisc__ARCH__pipelined__pe_out__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__pe_out__RTISTR
	.long	3040
	.long	work__prisc__ARCH__pipelined__pe_out__OT__RTI
	.type	work__prisc__ARCH__pipelined__rf_a1__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__rf_a1__RTISTR, 6
work__prisc__ARCH__pipelined__rf_a1__RTISTR:
	.byte	114
	.byte	102
	.byte	95
	.byte	97
	.byte	49
	.byte	0
.globl work__prisc__ARCH__pipelined__rf_a1__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__rf_a1__RTI, @object
	.size	work__prisc__ARCH__pipelined__rf_a1__RTI, 16
work__prisc__ARCH__pipelined__rf_a1__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__rf_a1__RTISTR
	.long	3052
	.long	work__prisc__ARCH__pipelined__pe_out__OT__RTI
	.type	work__prisc__ARCH__pipelined__rf_a2__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__rf_a2__RTISTR, 6
work__prisc__ARCH__pipelined__rf_a2__RTISTR:
	.byte	114
	.byte	102
	.byte	95
	.byte	97
	.byte	50
	.byte	0
.globl work__prisc__ARCH__pipelined__rf_a2__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__rf_a2__RTI, @object
	.size	work__prisc__ARCH__pipelined__rf_a2__RTI, 16
work__prisc__ARCH__pipelined__rf_a2__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__rf_a2__RTISTR
	.long	3064
	.long	work__prisc__ARCH__pipelined__pe_out__OT__RTI
	.type	work__prisc__ARCH__pipelined__rf_a3__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__rf_a3__RTISTR, 6
work__prisc__ARCH__pipelined__rf_a3__RTISTR:
	.byte	114
	.byte	102
	.byte	95
	.byte	97
	.byte	51
	.byte	0
.globl work__prisc__ARCH__pipelined__rf_a3__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__rf_a3__RTI, @object
	.size	work__prisc__ARCH__pipelined__rf_a3__RTI, 16
work__prisc__ARCH__pipelined__rf_a3__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__rf_a3__RTISTR
	.long	3076
	.long	work__prisc__ARCH__pipelined__pe_out__OT__RTI
	.type	work__prisc__ARCH__pipelined__pc__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__pc__RTISTR, 3
work__prisc__ARCH__pipelined__pc__RTISTR:
	.byte	112
	.byte	99
	.byte	0
.globl work__prisc__ARCH__pipelined__pc__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pc__RTI, @object
	.size	work__prisc__ARCH__pipelined__pc__RTI, 20
work__prisc__ARCH__pipelined__pc__RTI:
	.byte	10
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__pc__RTISTR
	.long	3088
	.long	work__prisc__ARCH__pipelined__RTI
	.long	work__prisc__ARCH__pipelined__dregister__RTI
	.type	work__prisc__ARCH__pipelined__codemem__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__codemem__RTISTR, 8
work__prisc__ARCH__pipelined__codemem__RTISTR:
	.byte	99
	.byte	111
	.byte	100
	.byte	101
	.byte	109
	.byte	101
	.byte	109
	.byte	0
.globl work__prisc__ARCH__pipelined__codemem__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__codemem__RTI, @object
	.size	work__prisc__ARCH__pipelined__codemem__RTI, 20
work__prisc__ARCH__pipelined__codemem__RTI:
	.byte	10
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__codemem__RTISTR
	.long	3232
	.long	work__prisc__ARCH__pipelined__RTI
	.long	work__prisc__ARCH__pipelined__memory__RTI
	.type	work__prisc__ARCH__pipelined__palu__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__palu__RTISTR, 5
work__prisc__ARCH__pipelined__palu__RTISTR:
	.byte	112
	.byte	97
	.byte	108
	.byte	117
	.byte	0
.globl work__prisc__ARCH__pipelined__palu__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__palu__RTI, @object
	.size	work__prisc__ARCH__pipelined__palu__RTI, 20
work__prisc__ARCH__pipelined__palu__RTI:
	.byte	10
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__palu__RTISTR
	.long	3444
	.long	work__prisc__ARCH__pipelined__RTI
	.long	work__prisc__ARCH__pipelined__alu__RTI
	.type	work__prisc__ARCH__pipelined__dec__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__dec__RTISTR, 4
work__prisc__ARCH__pipelined__dec__RTISTR:
	.byte	100
	.byte	101
	.byte	99
	.byte	0
.globl work__prisc__ARCH__pipelined__dec__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__dec__RTI, @object
	.size	work__prisc__ARCH__pipelined__dec__RTI, 20
work__prisc__ARCH__pipelined__dec__RTI:
	.byte	10
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__dec__RTISTR
	.long	3664
	.long	work__prisc__ARCH__pipelined__RTI
	.long	work__prisc__ARCH__pipelined__decoder__RTI
	.type	work__prisc__ARCH__pipelined__pipe0__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__pipe0__RTISTR, 6
work__prisc__ARCH__pipelined__pipe0__RTISTR:
	.byte	112
	.byte	105
	.byte	112
	.byte	101
	.byte	48
	.byte	0
.globl work__prisc__ARCH__pipelined__pipe0__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pipe0__RTI, @object
	.size	work__prisc__ARCH__pipelined__pipe0__RTI, 20
work__prisc__ARCH__pipelined__pipe0__RTI:
	.byte	10
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__pipe0__RTISTR
	.long	3764
	.long	work__prisc__ARCH__pipelined__RTI
	.long	work__prisc__ARCH__pipelined__pipe__RTI
	.type	work__prisc__ARCH__pipelined__rf_main__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__rf_main__RTISTR, 8
work__prisc__ARCH__pipelined__rf_main__RTISTR:
	.byte	114
	.byte	102
	.byte	95
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	0
.globl work__prisc__ARCH__pipelined__rf_main__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__rf_main__RTI, @object
	.size	work__prisc__ARCH__pipelined__rf_main__RTI, 20
work__prisc__ARCH__pipelined__rf_main__RTI:
	.byte	10
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__rf_main__RTISTR
	.long	4700
	.long	work__prisc__ARCH__pipelined__RTI
	.long	work__prisc__ARCH__pipelined__rf__RTI
	.type	work__prisc__ARCH__pipelined__pipea__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__pipea__RTISTR, 6
work__prisc__ARCH__pipelined__pipea__RTISTR:
	.byte	112
	.byte	105
	.byte	112
	.byte	101
	.byte	97
	.byte	0
.globl work__prisc__ARCH__pipelined__pipea__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pipea__RTI, @object
	.size	work__prisc__ARCH__pipelined__pipea__RTI, 20
work__prisc__ARCH__pipelined__pipea__RTI:
	.byte	10
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__pipea__RTISTR
	.long	4948
	.long	work__prisc__ARCH__pipelined__RTI
	.long	work__prisc__ARCH__pipelined__pipe__RTI
	.type	work__prisc__ARCH__pipelined__malu__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__malu__RTISTR, 5
work__prisc__ARCH__pipelined__malu__RTISTR:
	.byte	109
	.byte	97
	.byte	108
	.byte	117
	.byte	0
.globl work__prisc__ARCH__pipelined__malu__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__malu__RTI, @object
	.size	work__prisc__ARCH__pipelined__malu__RTI, 20
work__prisc__ARCH__pipelined__malu__RTI:
	.byte	10
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__malu__RTISTR
	.long	5884
	.long	work__prisc__ARCH__pipelined__RTI
	.long	work__prisc__ARCH__pipelined__alu__RTI
	.type	work__prisc__ARCH__pipelined__pipeb__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__pipeb__RTISTR, 6
work__prisc__ARCH__pipelined__pipeb__RTISTR:
	.byte	112
	.byte	105
	.byte	112
	.byte	101
	.byte	98
	.byte	0
.globl work__prisc__ARCH__pipelined__pipeb__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pipeb__RTI, @object
	.size	work__prisc__ARCH__pipelined__pipeb__RTI, 20
work__prisc__ARCH__pipelined__pipeb__RTI:
	.byte	10
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__pipeb__RTISTR
	.long	6104
	.long	work__prisc__ARCH__pipelined__RTI
	.long	work__prisc__ARCH__pipelined__pipe__RTI
	.type	work__prisc__ARCH__pipelined__datamem__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__datamem__RTISTR, 8
work__prisc__ARCH__pipelined__datamem__RTISTR:
	.byte	100
	.byte	97
	.byte	116
	.byte	97
	.byte	109
	.byte	101
	.byte	109
	.byte	0
.globl work__prisc__ARCH__pipelined__datamem__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__datamem__RTI, @object
	.size	work__prisc__ARCH__pipelined__datamem__RTI, 20
work__prisc__ARCH__pipelined__datamem__RTI:
	.byte	10
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__datamem__RTISTR
	.long	7040
	.long	work__prisc__ARCH__pipelined__RTI
	.long	work__prisc__ARCH__pipelined__memory__RTI
	.type	work__prisc__ARCH__pipelined__pipec__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__pipec__RTISTR, 6
work__prisc__ARCH__pipelined__pipec__RTISTR:
	.byte	112
	.byte	105
	.byte	112
	.byte	101
	.byte	99
	.byte	0
.globl work__prisc__ARCH__pipelined__pipec__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pipec__RTI, @object
	.size	work__prisc__ARCH__pipelined__pipec__RTI, 20
work__prisc__ARCH__pipelined__pipec__RTI:
	.byte	10
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__pipec__RTISTR
	.long	7252
	.long	work__prisc__ARCH__pipelined__RTI
	.long	work__prisc__ARCH__pipelined__pipe__RTI
	.type	work__prisc__ARCH__pipelined__piped__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__piped__RTISTR, 6
work__prisc__ARCH__pipelined__piped__RTISTR:
	.byte	112
	.byte	105
	.byte	112
	.byte	101
	.byte	100
	.byte	0
.globl work__prisc__ARCH__pipelined__piped__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__piped__RTI, @object
	.size	work__prisc__ARCH__pipelined__piped__RTI, 20
work__prisc__ARCH__pipelined__piped__RTI:
	.byte	10
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__piped__RTISTR
	.long	8188
	.long	work__prisc__ARCH__pipelined__RTI
	.long	work__prisc__ARCH__pipelined__pipe__RTI
	.type	work__prisc__ARCH__pipelined__alu_se10__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__alu_se10__RTISTR, 9
work__prisc__ARCH__pipelined__alu_se10__RTISTR:
	.byte	97
	.byte	108
	.byte	117
	.byte	95
	.byte	115
	.byte	101
	.byte	49
	.byte	48
	.byte	0
.globl work__prisc__ARCH__pipelined__alu_se10__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__alu_se10__RTI, @object
	.size	work__prisc__ARCH__pipelined__alu_se10__RTI, 20
work__prisc__ARCH__pipelined__alu_se10__RTI:
	.byte	10
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__alu_se10__RTISTR
	.long	9124
	.long	work__prisc__ARCH__pipelined__RTI
	.long	work__prisc__ARCH__pipelined__se10__RTI
	.type	work__prisc__ARCH__pipelined__alu_se7__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__alu_se7__RTISTR, 8
work__prisc__ARCH__pipelined__alu_se7__RTISTR:
	.byte	97
	.byte	108
	.byte	117
	.byte	95
	.byte	115
	.byte	101
	.byte	55
	.byte	0
.globl work__prisc__ARCH__pipelined__alu_se7__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__alu_se7__RTI, @object
	.size	work__prisc__ARCH__pipelined__alu_se7__RTI, 20
work__prisc__ARCH__pipelined__alu_se7__RTI:
	.byte	10
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__alu_se7__RTISTR
	.long	9220
	.long	work__prisc__ARCH__pipelined__RTI
	.long	work__prisc__ARCH__pipelined__se7__RTI
	.type	work__prisc__ARCH__pipelined__pd_se7__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__pd_se7__RTISTR, 7
work__prisc__ARCH__pipelined__pd_se7__RTISTR:
	.byte	112
	.byte	100
	.byte	95
	.byte	115
	.byte	101
	.byte	55
	.byte	0
.globl work__prisc__ARCH__pipelined__pd_se7__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__pd_se7__RTI, @object
	.size	work__prisc__ARCH__pipelined__pd_se7__RTI, 20
work__prisc__ARCH__pipelined__pd_se7__RTI:
	.byte	10
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__pd_se7__RTISTR
	.long	9332
	.long	work__prisc__ARCH__pipelined__RTI
	.long	work__prisc__ARCH__pipelined__se7__RTI
	.type	work__prisc__ARCH__pipelined__car__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__car__RTISTR, 4
work__prisc__ARCH__pipelined__car__RTISTR:
	.byte	99
	.byte	97
	.byte	114
	.byte	0
.globl work__prisc__ARCH__pipelined__car__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__car__RTI, @object
	.size	work__prisc__ARCH__pipelined__car__RTI, 20
work__prisc__ARCH__pipelined__car__RTI:
	.byte	10
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__car__RTISTR
	.long	9444
	.long	work__prisc__ARCH__pipelined__RTI
	.long	work__prisc__ARCH__pipelined__dregister_1__RTI
	.type	work__prisc__ARCH__pipelined__zer__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__zer__RTISTR, 4
work__prisc__ARCH__pipelined__zer__RTISTR:
	.byte	122
	.byte	101
	.byte	114
	.byte	0
.globl work__prisc__ARCH__pipelined__zer__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__zer__RTI, @object
	.size	work__prisc__ARCH__pipelined__zer__RTI, 20
work__prisc__ARCH__pipelined__zer__RTI:
	.byte	10
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__zer__RTISTR
	.long	9468
	.long	work__prisc__ARCH__pipelined__RTI
	.long	work__prisc__ARCH__pipelined__dregister_1__RTI
	.type	work__prisc__ARCH__pipelined__iter__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__iter__RTISTR, 5
work__prisc__ARCH__pipelined__iter__RTISTR:
	.byte	105
	.byte	116
	.byte	101
	.byte	114
	.byte	0
.globl work__prisc__ARCH__pipelined__iter__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__iter__RTI, @object
	.size	work__prisc__ARCH__pipelined__iter__RTI, 20
work__prisc__ARCH__pipelined__iter__RTI:
	.byte	10
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__iter__RTISTR
	.long	9492
	.long	work__prisc__ARCH__pipelined__RTI
	.long	work__prisc__ARCH__pipelined__dregister_1__RTI
	.type	work__prisc__ARCH__pipelined__P0__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__P0__RTISTR, 3
work__prisc__ARCH__pipelined__P0__RTISTR:
	.byte	80
	.byte	48
	.byte	0
	.align 4
	.type	work__prisc__ARCH__pipelined__P0__RTIARRAY, @object
	.size	work__prisc__ARCH__pipelined__P0__RTIARRAY, 4
work__prisc__ARCH__pipelined__P0__RTIARRAY:
	.zero	4
.globl work__prisc__ARCH__pipelined__P0__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__P0__RTI, @object
	.size	work__prisc__ARCH__pipelined__P0__RTI, 28
work__prisc__ARCH__pipelined__P0__RTI:
	.byte	6
	.byte	2
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__P0__RTISTR
	.long	9516
	.long	work__prisc__ARCH__pipelined__RTI
	.long	95
	.long	0
	.long	work__prisc__ARCH__pipelined__P0__RTIARRAY
	.type	work__prisc__ARCH__pipelined__RTISTR, @object
	.size	work__prisc__ARCH__pipelined__RTISTR, 10
work__prisc__ARCH__pipelined__RTISTR:
	.byte	112
	.byte	105
	.byte	112
	.byte	101
	.byte	108
	.byte	105
	.byte	110
	.byte	101
	.byte	100
	.byte	0
	.align 32
	.type	work__prisc__ARCH__pipelined__RTIARRAY, @object
	.size	work__prisc__ARCH__pipelined__RTIARRAY, 400
work__prisc__ARCH__pipelined__RTIARRAY:
	.long	work__prisc__ARCH__pipelined__decoder__RTI
	.long	work__prisc__ARCH__pipelined__pipe__RTI
	.long	work__prisc__ARCH__pipelined__alu__RTI
	.long	work__prisc__ARCH__pipelined__memory__RTI
	.long	work__prisc__ARCH__pipelined__rf__RTI
	.long	work__prisc__ARCH__pipelined__dregister_1__RTI
	.long	work__prisc__ARCH__pipelined__dregister__RTI
	.long	work__prisc__ARCH__pipelined__pr_encoder__RTI
	.long	work__prisc__ARCH__pipelined__se7__RTI
	.long	work__prisc__ARCH__pipelined__se10__RTI
	.long	work__prisc__ARCH__pipelined__zeros__RTI
	.long	work__prisc__ARCH__pipelined__pc_in__RTI
	.long	work__prisc__ARCH__pipelined__pc_out__RTI
	.long	work__prisc__ARCH__pipelined__palu_out__RTI
	.long	work__prisc__ARCH__pipelined__malu_out__RTI
	.long	work__prisc__ARCH__pipelined__codemem_out__RTI
	.long	work__prisc__ARCH__pipelined__ir_out_p0__RTI
	.long	work__prisc__ARCH__pipelined__ir_out_pa__RTI
	.long	work__prisc__ARCH__pipelined__ir_out_pb__RTI
	.long	work__prisc__ARCH__pipelined__ir_out_pc__RTI
	.long	work__prisc__ARCH__pipelined__ir_out_pd__RTI
	.long	work__prisc__ARCH__pipelined__npc_out_p0__RTI
	.long	work__prisc__ARCH__pipelined__npc_out_pb__RTI
	.long	work__prisc__ARCH__pipelined__npc_out_pa__RTI
	.long	work__prisc__ARCH__pipelined__rf_d1__RTI
	.long	work__prisc__ARCH__pipelined__rf_d2__RTI
	.long	work__prisc__ARCH__pipelined__rf_d3__RTI
	.long	work__prisc__ARCH__pipelined__npc_out_pd__RTI
	.long	work__prisc__ARCH__pipelined__memd_out_pd__RTI
	.long	work__prisc__ARCH__pipelined__t3_out_pd__RTI
	.long	work__prisc__ARCH__pipelined__datamem_a__RTI
	.long	work__prisc__ARCH__pipelined__datamem_out__RTI
	.long	work__prisc__ARCH__pipelined__datamem_din__RTI
	.long	work__prisc__ARCH__pipelined__t1_in__RTI
	.long	work__prisc__ARCH__pipelined__t2_out_pb__RTI
	.long	work__prisc__ARCH__pipelined__t2_out_pc__RTI
	.long	work__prisc__ARCH__pipelined__t2_out_pd__RTI
	.long	work__prisc__ARCH__pipelined__t1_out_pb__RTI
	.long	work__prisc__ARCH__pipelined__t3_out_pb__RTI
	.long	work__prisc__ARCH__pipelined__npc_out_pc__RTI
	.long	work__prisc__ARCH__pipelined__t1_out_pc__RTI
	.long	work__prisc__ARCH__pipelined__t1_out_pd__RTI
	.long	work__prisc__ARCH__pipelined__t3_out_pc__RTI
	.long	work__prisc__ARCH__pipelined__alu_1__RTI
	.long	work__prisc__ARCH__pipelined__alu_2__RTI
	.long	work__prisc__ARCH__pipelined__ir_out_pb_50__RTI
	.long	work__prisc__ARCH__pipelined__ir_out_pb_80__RTI
	.long	work__prisc__ARCH__pipelined__ir_out_pd_80__RTI
	.long	work__prisc__ARCH__pipelined__ir__RTI
	.long	work__prisc__ARCH__pipelined__one__RTI
	.long	work__prisc__ARCH__pipelined__pc_en__RTI
	.long	work__prisc__ARCH__pipelined__codemem_init__RTI
	.long	work__prisc__ARCH__pipelined__p0_en__RTI
	.long	work__prisc__ARCH__pipelined__pa_en__RTI
	.long	work__prisc__ARCH__pipelined__pb_en__RTI
	.long	work__prisc__ARCH__pipelined__pd_en__RTI
	.long	work__prisc__ARCH__pipelined__rf_wr__RTI
	.long	work__prisc__ARCH__pipelined__rf_rst__RTI
	.long	work__prisc__ARCH__pipelined__cen__RTI
	.long	work__prisc__ARCH__pipelined__zen__RTI
	.long	work__prisc__ARCH__pipelined__datamem_init__RTI
	.long	work__prisc__ARCH__pipelined__datamem_rd__RTI
	.long	work__prisc__ARCH__pipelined__datamem_wr__RTI
	.long	work__prisc__ARCH__pipelined__zin__RTI
	.long	work__prisc__ARCH__pipelined__zout__RTI
	.long	work__prisc__ARCH__pipelined__cin__RTI
	.long	work__prisc__ARCH__pipelined__cout__RTI
	.long	work__prisc__ARCH__pipelined__alu_op1__RTI
	.long	work__prisc__ARCH__pipelined__iter_in__RTI
	.long	work__prisc__ARCH__pipelined__iter_out__RTI
	.long	work__prisc__ARCH__pipelined__iter_en__RTI
	.long	work__prisc__ARCH__pipelined__contr_pa_in__RTI
	.long	work__prisc__ARCH__pipelined__contr_pa_out__RTI
	.long	work__prisc__ARCH__pipelined__contr_pb_out__RTI
	.long	work__prisc__ARCH__pipelined__contr_pc_out__RTI
	.long	work__prisc__ARCH__pipelined__contr_pd_out__RTI
	.long	work__prisc__ARCH__pipelined__pe_out__RTI
	.long	work__prisc__ARCH__pipelined__rf_a1__RTI
	.long	work__prisc__ARCH__pipelined__rf_a2__RTI
	.long	work__prisc__ARCH__pipelined__rf_a3__RTI
	.long	work__prisc__ARCH__pipelined__pc__RTI
	.long	work__prisc__ARCH__pipelined__codemem__RTI
	.long	work__prisc__ARCH__pipelined__palu__RTI
	.long	work__prisc__ARCH__pipelined__dec__RTI
	.long	work__prisc__ARCH__pipelined__pipe0__RTI
	.long	work__prisc__ARCH__pipelined__rf_main__RTI
	.long	work__prisc__ARCH__pipelined__pipea__RTI
	.long	work__prisc__ARCH__pipelined__malu__RTI
	.long	work__prisc__ARCH__pipelined__pipeb__RTI
	.long	work__prisc__ARCH__pipelined__datamem__RTI
	.long	work__prisc__ARCH__pipelined__pipec__RTI
	.long	work__prisc__ARCH__pipelined__piped__RTI
	.long	work__prisc__ARCH__pipelined__alu_se10__RTI
	.long	work__prisc__ARCH__pipelined__alu_se7__RTI
	.long	work__prisc__ARCH__pipelined__pd_se7__RTI
	.long	work__prisc__ARCH__pipelined__car__RTI
	.long	work__prisc__ARCH__pipelined__zer__RTI
	.long	work__prisc__ARCH__pipelined__iter__RTI
	.long	work__prisc__ARCH__pipelined__P0__RTI
	.long	0
.globl work__prisc__ARCH__pipelined__RTI
	.align 4
	.type	work__prisc__ARCH__pipelined__RTI, @object
	.size	work__prisc__ARCH__pipelined__RTI, 28
work__prisc__ARCH__pipelined__RTI:
	.byte	5
	.byte	1
	.byte	0
	.byte	0
	.long	work__prisc__ARCH__pipelined__RTISTR
	.long	0
	.long	work__prisc__RTI
	.long	9612
	.long	99
	.long	work__prisc__ARCH__pipelined__RTIARRAY
	.text
	.type	work__prisc__ARCH__pipelined__pc__ELAB, @function
work__prisc__ARCH__pipelined__pc__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$32, %esp
	movl	8(%ebp), %eax
	movl	$work__prisc__ARCH__pipelined__pc__RTI, 3092(%eax)
	movl	8(%ebp), %eax
	addl	$3096, %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	addl	$80, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
.L7:
	cmpl	$16, -16(%ebp)
	jae	.L6
	movl	-16(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-24(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -16(%ebp)
	jmp	.L7
.L6:
	movl	8(%ebp), %eax
	addl	$3160, %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	addl	$144, %eax
	movl	%eax, -8(%ebp)
	movl	$0, -4(%ebp)
.L9:
	cmpl	$16, -4(%ebp)
	jae	.L8
	movl	-4(%ebp), %ecx
	movl	-4(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -4(%ebp)
	jmp	.L9
.L8:
	movl	8(%ebp), %eax
	movl	2576(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 3224(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 3228(%eax)
	leave
	ret
	.size	work__prisc__ARCH__pipelined__pc__ELAB, .-work__prisc__ARCH__pipelined__pc__ELAB
	.type	work__prisc__ARCH__pipelined__codemem__ELAB, @function
work__prisc__ARCH__pipelined__codemem__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$72, %esp
	movl	8(%ebp), %eax
	movl	$work__prisc__ARCH__pipelined__codemem__RTI, 3236(%eax)
	movl	8(%ebp), %eax
	addl	$3232, %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__memory__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__memory__wr__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 3240(%eax)
	movl	$2, %edx
	movl	8(%ebp), %eax
	movl	3240(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_associate_e8
	movl	8(%ebp), %eax
	addl	$3232, %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__memory__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__memory__rd__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 3244(%eax)
	movl	$3, %edx
	movl	8(%ebp), %eax
	movl	3244(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_associate_e8
	movl	8(%ebp), %eax
	movl	2580(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 3248(%eax)
	movl	8(%ebp), %eax
	addl	$3252, %eax
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	addl	$144, %eax
	movl	%eax, -32(%ebp)
	movl	$0, -28(%ebp)
.L13:
	cmpl	$16, -28(%ebp)
	jae	.L12
	movl	-28(%ebp), %ecx
	movl	-28(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-36(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -28(%ebp)
	jmp	.L13
.L12:
	movl	8(%ebp), %eax
	addl	$3316, %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	addl	$16, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
.L15:
	cmpl	$16, -16(%ebp)
	jae	.L14
	movl	-16(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-24(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -16(%ebp)
	jmp	.L15
.L14:
	movl	8(%ebp), %eax
	addl	$3380, %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	addl	$336, %eax
	movl	%eax, -8(%ebp)
	movl	$0, -4(%ebp)
.L17:
	cmpl	$16, -4(%ebp)
	jae	.L18
	movl	-4(%ebp), %ecx
	movl	-4(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -4(%ebp)
	jmp	.L17
.L18:
	leave
	ret
	.size	work__prisc__ARCH__pipelined__codemem__ELAB, .-work__prisc__ARCH__pipelined__codemem__ELAB
	.type	work__prisc__ARCH__pipelined__palu__ELAB, @function
work__prisc__ARCH__pipelined__palu__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$72, %esp
	movl	8(%ebp), %eax
	movl	$work__prisc__ARCH__pipelined__palu__RTI, 3448(%eax)
	movl	8(%ebp), %eax
	addl	$3452, %eax
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	addl	$144, %eax
	movl	%eax, -32(%ebp)
	movl	$0, -28(%ebp)
.L21:
	cmpl	$16, -28(%ebp)
	jae	.L20
	movl	-28(%ebp), %ecx
	movl	-28(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-36(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -28(%ebp)
	jmp	.L21
.L20:
	movl	8(%ebp), %eax
	addl	$3516, %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	addl	$2512, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
.L23:
	cmpl	$16, -16(%ebp)
	jae	.L22
	movl	-16(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-24(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -16(%ebp)
	jmp	.L23
.L22:
	movl	8(%ebp), %eax
	addl	$3444, %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__alu__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__alu__x0__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 3580(%eax)
	movl	$3, %edx
	movl	8(%ebp), %eax
	movl	3580(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_associate_e8
	movl	8(%ebp), %eax
	addl	$3444, %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__alu__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__alu__x1__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 3584(%eax)
	movl	$3, %edx
	movl	8(%ebp), %eax
	movl	3584(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_associate_e8
	movl	8(%ebp), %eax
	addl	$3444, %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__alu__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__alu__c_in__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 3588(%eax)
	movl	$2, %edx
	movl	8(%ebp), %eax
	movl	3588(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_associate_e8
	movl	8(%ebp), %eax
	addl	$3444, %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__alu__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__alu__c_out__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 3592(%eax)
	movl	8(%ebp), %eax
	addl	$3444, %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__alu__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__alu__z_out__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 3596(%eax)
	movl	8(%ebp), %eax
	addl	$3600, %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	addl	$208, %eax
	movl	%eax, -8(%ebp)
	movl	$0, -4(%ebp)
.L25:
	cmpl	$16, -4(%ebp)
	jae	.L26
	movl	-4(%ebp), %ecx
	movl	-4(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -4(%ebp)
	jmp	.L25
.L26:
	leave
	ret
	.size	work__prisc__ARCH__pipelined__palu__ELAB, .-work__prisc__ARCH__pipelined__palu__ELAB
	.section	.rodata
	.align 4
	.type	work__prisc__ARCH__pipelined__dec__U0__STB.2705, @object
	.size	work__prisc__ARCH__pipelined__dec__U0__STB.2705, 16
work__prisc__ARCH__pipelined__dec__U0__STB.2705:
	.long	15
	.long	12
	.byte	1
	.zero	3
	.long	4
	.text
	.type	work__prisc__ARCH__pipelined__dec__ELAB, @function
work__prisc__ARCH__pipelined__dec__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$32, %esp
	movl	8(%ebp), %eax
	movl	$work__prisc__ARCH__pipelined__dec__RTI, 3668(%eax)
	movl	8(%ebp), %eax
	addl	$3672, %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	addl	$400, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
.L29:
	cmpl	$4, -16(%ebp)
	jae	.L28
	movl	-16(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-24(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -16(%ebp)
	jmp	.L29
.L28:
	movl	8(%ebp), %eax
	addl	$3688, %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	addl	$2660, %eax
	movl	%eax, -8(%ebp)
	movl	$0, -4(%ebp)
.L31:
	cmpl	$19, -4(%ebp)
	jae	.L32
	movl	-4(%ebp), %ecx
	movl	-4(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -4(%ebp)
	jmp	.L31
.L32:
	leave
	ret
	.size	work__prisc__ARCH__pipelined__dec__ELAB, .-work__prisc__ARCH__pipelined__dec__ELAB
	.section	.rodata
	.type	_UI00000001.2791, @object
	.size	_UI00000001.2791, 19
_UI00000001.2791:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.text
	.type	work__prisc__ARCH__pipelined__pipe0__ELAB, @function
work__prisc__ARCH__pipelined__pipe0__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$180, %esp
	movl	8(%ebp), %eax
	movl	$work__prisc__ARCH__pipelined__pipe0__RTI, 3768(%eax)
	movl	8(%ebp), %eax
	addl	$3772, %eax
	movl	%eax, -160(%ebp)
	movl	8(%ebp), %eax
	addl	$336, %eax
	movl	%eax, -156(%ebp)
	movl	$0, -152(%ebp)
.L35:
	cmpl	$16, -152(%ebp)
	jae	.L34
	movl	-152(%ebp), %ecx
	movl	-152(%ebp), %edx
	movl	-156(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-160(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -152(%ebp)
	jmp	.L35
.L34:
	movl	8(%ebp), %eax
	addl	$3836, %eax
	movl	%eax, -148(%ebp)
	movl	8(%ebp), %eax
	addl	$208, %eax
	movl	%eax, -144(%ebp)
	movl	$0, -140(%ebp)
.L37:
	cmpl	$16, -140(%ebp)
	jae	.L36
	movl	-140(%ebp), %ecx
	movl	-140(%ebp), %edx
	movl	-144(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-148(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -140(%ebp)
	jmp	.L37
.L36:
	movl	8(%ebp), %eax
	addl	$3900, %eax
	movl	%eax, -136(%ebp)
	movl	8(%ebp), %eax
	addl	$16, %eax
	movl	%eax, -132(%ebp)
	movl	$0, -128(%ebp)
.L39:
	cmpl	$16, -128(%ebp)
	jae	.L38
	movl	-128(%ebp), %ecx
	movl	-128(%ebp), %edx
	movl	-132(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-136(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -128(%ebp)
	jmp	.L39
.L38:
	movl	8(%ebp), %eax
	addl	$3964, %eax
	movl	%eax, -124(%ebp)
	movl	8(%ebp), %eax
	addl	$16, %eax
	movl	%eax, -120(%ebp)
	movl	$0, -116(%ebp)
.L41:
	cmpl	$16, -116(%ebp)
	jae	.L40
	movl	-116(%ebp), %ecx
	movl	-116(%ebp), %edx
	movl	-120(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-124(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -116(%ebp)
	jmp	.L41
.L40:
	movl	8(%ebp), %eax
	addl	$4028, %eax
	movl	%eax, -112(%ebp)
	movl	8(%ebp), %eax
	addl	$16, %eax
	movl	%eax, -108(%ebp)
	movl	$0, -104(%ebp)
.L43:
	cmpl	$16, -104(%ebp)
	jae	.L42
	movl	-104(%ebp), %ecx
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-112(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -104(%ebp)
	jmp	.L43
.L42:
	movl	8(%ebp), %eax
	addl	$4092, %eax
	movl	%eax, -100(%ebp)
	movl	8(%ebp), %eax
	addl	$16, %eax
	movl	%eax, -96(%ebp)
	movl	$0, -92(%ebp)
.L45:
	cmpl	$16, -92(%ebp)
	jae	.L44
	movl	-92(%ebp), %ecx
	movl	-92(%ebp), %edx
	movl	-96(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-100(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -92(%ebp)
	jmp	.L45
.L44:
	movl	8(%ebp), %eax
	addl	$4156, %eax
	movl	%eax, -88(%ebp)
	movl	8(%ebp), %eax
	addl	$400, %eax
	movl	%eax, -84(%ebp)
	movl	$0, -80(%ebp)
.L47:
	cmpl	$16, -80(%ebp)
	jae	.L46
	movl	-80(%ebp), %ecx
	movl	-80(%ebp), %edx
	movl	-84(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-88(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -80(%ebp)
	jmp	.L47
.L46:
	movl	8(%ebp), %eax
	addl	$4220, %eax
	movl	%eax, -76(%ebp)
	movl	8(%ebp), %eax
	addl	$720, %eax
	movl	%eax, -72(%ebp)
	movl	$0, -68(%ebp)
.L49:
	cmpl	$16, -68(%ebp)
	jae	.L48
	movl	-68(%ebp), %ecx
	movl	-68(%ebp), %edx
	movl	-72(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-76(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -68(%ebp)
	jmp	.L49
.L48:
	movl	8(%ebp), %eax
	addl	$3764, %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__pipe__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__pipe__t1_out__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	8(%ebp), %eax
	addl	$4284, %eax
	movl	%eax, -64(%ebp)
	movl	$0, -60(%ebp)
.L51:
	cmpl	$16, -60(%ebp)
	jae	.L50
	movl	-60(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-64(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -60(%ebp)
	jmp	.L51
.L50:
	movl	8(%ebp), %eax
	addl	$3764, %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__pipe__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__pipe__t2_out__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	8(%ebp), %eax
	addl	$4348, %eax
	movl	%eax, -56(%ebp)
	movl	$0, -52(%ebp)
.L53:
	cmpl	$16, -52(%ebp)
	jae	.L52
	movl	-52(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -52(%ebp)
	jmp	.L53
.L52:
	movl	8(%ebp), %eax
	addl	$3764, %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__pipe__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__pipe__t3_out__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	8(%ebp), %eax
	addl	$4412, %eax
	movl	%eax, -48(%ebp)
	movl	$0, -44(%ebp)
.L55:
	cmpl	$16, -44(%ebp)
	jae	.L54
	movl	-44(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -44(%ebp)
	jmp	.L55
.L54:
	movl	8(%ebp), %eax
	addl	$3764, %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__pipe__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__pipe__memd_out__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	8(%ebp), %eax
	addl	$4476, %eax
	movl	%eax, -40(%ebp)
	movl	$0, -36(%ebp)
.L57:
	cmpl	$16, -36(%ebp)
	jae	.L56
	movl	-36(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -36(%ebp)
	jmp	.L57
.L56:
	movl	8(%ebp), %eax
	addl	$3764, %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__pipe__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__pipe__contr_in__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	8(%ebp), %eax
	addl	$4540, %eax
	movl	%eax, -32(%ebp)
	movl	$0, -28(%ebp)
.L59:
	cmpl	$19, -28(%ebp)
	jae	.L58
	movl	-28(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -28(%ebp)
	jmp	.L59
.L58:
	movl	8(%ebp), %eax
	addl	$4540, %eax
	movl	%eax, -24(%ebp)
	movl	$_UI00000001.2791, -20(%ebp)
	movl	$0, -16(%ebp)
.L61:
	cmpl	$19, -16(%ebp)
	jae	.L60
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %ecx
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_associate_e8
	addl	$1, -16(%ebp)
	jmp	.L61
.L60:
	movl	8(%ebp), %eax
	addl	$3764, %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__pipe__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__pipe__contr_out__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	8(%ebp), %eax
	addl	$4616, %eax
	movl	%eax, -12(%ebp)
	movl	$0, -8(%ebp)
.L63:
	cmpl	$19, -8(%ebp)
	jae	.L62
	movl	-8(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -8(%ebp)
	jmp	.L63
.L62:
	movl	8(%ebp), %eax
	movl	2584(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4692(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4696(%eax)
	addl	$180, %esp
	popl	%ebx
	popl	%ebp
	ret
	.size	work__prisc__ARCH__pipelined__pipe0__ELAB, .-work__prisc__ARCH__pipelined__pipe0__ELAB
	.type	work__prisc__ARCH__pipelined__rf_main__ELAB, @function
work__prisc__ARCH__pipelined__rf_main__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$80, %esp
	movl	8(%ebp), %eax
	movl	$work__prisc__ARCH__pipelined__rf_main__RTI, 4704(%eax)
	movl	8(%ebp), %eax
	addl	$4708, %eax
	movl	%eax, -72(%ebp)
	movl	8(%ebp), %eax
	addl	$3052, %eax
	movl	%eax, -68(%ebp)
	movl	$0, -64(%ebp)
.L67:
	cmpl	$3, -64(%ebp)
	jae	.L66
	movl	-64(%ebp), %ecx
	movl	-64(%ebp), %edx
	movl	-68(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-72(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -64(%ebp)
	jmp	.L67
.L66:
	movl	8(%ebp), %eax
	addl	$4720, %eax
	movl	%eax, -60(%ebp)
	movl	8(%ebp), %eax
	addl	$3064, %eax
	movl	%eax, -56(%ebp)
	movl	$0, -52(%ebp)
.L69:
	cmpl	$3, -52(%ebp)
	jae	.L68
	movl	-52(%ebp), %ecx
	movl	-52(%ebp), %edx
	movl	-56(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-60(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -52(%ebp)
	jmp	.L69
.L68:
	movl	8(%ebp), %eax
	addl	$4732, %eax
	movl	%eax, -48(%ebp)
	movl	8(%ebp), %eax
	addl	$3076, %eax
	movl	%eax, -44(%ebp)
	movl	$0, -40(%ebp)
.L71:
	cmpl	$3, -40(%ebp)
	jae	.L70
	movl	-40(%ebp), %ecx
	movl	-40(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-48(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -40(%ebp)
	jmp	.L71
.L70:
	movl	8(%ebp), %eax
	addl	$4744, %eax
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	addl	$1040, %eax
	movl	%eax, -32(%ebp)
	movl	$0, -28(%ebp)
.L73:
	cmpl	$16, -28(%ebp)
	jae	.L72
	movl	-28(%ebp), %ecx
	movl	-28(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-36(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -28(%ebp)
	jmp	.L73
.L72:
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4808(%eax)
	movl	8(%ebp), %eax
	movl	2600(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4812(%eax)
	movl	8(%ebp), %eax
	movl	2604(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4816(%eax)
	movl	8(%ebp), %eax
	addl	$4820, %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	addl	$912, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
.L75:
	cmpl	$16, -16(%ebp)
	jae	.L74
	movl	-16(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-24(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -16(%ebp)
	jmp	.L75
.L74:
	movl	8(%ebp), %eax
	addl	$4884, %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	addl	$976, %eax
	movl	%eax, -8(%ebp)
	movl	$0, -4(%ebp)
.L77:
	cmpl	$16, -4(%ebp)
	jae	.L78
	movl	-4(%ebp), %ecx
	movl	-4(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -4(%ebp)
	jmp	.L77
.L78:
	leave
	ret
	.size	work__prisc__ARCH__pipelined__rf_main__ELAB, .-work__prisc__ARCH__pipelined__rf_main__ELAB
	.type	work__prisc__ARCH__pipelined__pipea__ELAB, @function
work__prisc__ARCH__pipelined__pipea__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$180, %esp
	movl	8(%ebp), %eax
	movl	$work__prisc__ARCH__pipelined__pipea__RTI, 4952(%eax)
	movl	8(%ebp), %eax
	addl	$4956, %eax
	movl	%eax, -156(%ebp)
	movl	8(%ebp), %eax
	addl	$400, %eax
	movl	%eax, -152(%ebp)
	movl	$0, -148(%ebp)
.L81:
	cmpl	$16, -148(%ebp)
	jae	.L80
	movl	-148(%ebp), %ecx
	movl	-148(%ebp), %edx
	movl	-152(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-156(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -148(%ebp)
	jmp	.L81
.L80:
	movl	8(%ebp), %eax
	addl	$5020, %eax
	movl	%eax, -144(%ebp)
	movl	8(%ebp), %eax
	addl	$720, %eax
	movl	%eax, -140(%ebp)
	movl	$0, -136(%ebp)
.L83:
	cmpl	$16, -136(%ebp)
	jae	.L82
	movl	-136(%ebp), %ecx
	movl	-136(%ebp), %edx
	movl	-140(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-144(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -136(%ebp)
	jmp	.L83
.L82:
	movl	8(%ebp), %eax
	addl	$5084, %eax
	movl	%eax, -132(%ebp)
	movl	8(%ebp), %eax
	addl	$16, %eax
	movl	%eax, -128(%ebp)
	movl	$0, -124(%ebp)
.L85:
	cmpl	$16, -124(%ebp)
	jae	.L84
	movl	-124(%ebp), %ecx
	movl	-124(%ebp), %edx
	movl	-128(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-132(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -124(%ebp)
	jmp	.L85
.L84:
	movl	8(%ebp), %eax
	addl	$5148, %eax
	movl	%eax, -120(%ebp)
	movl	8(%ebp), %eax
	addl	$16, %eax
	movl	%eax, -116(%ebp)
	movl	$0, -112(%ebp)
.L87:
	cmpl	$16, -112(%ebp)
	jae	.L86
	movl	-112(%ebp), %ecx
	movl	-112(%ebp), %edx
	movl	-116(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-120(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -112(%ebp)
	jmp	.L87
.L86:
	movl	8(%ebp), %eax
	addl	$5212, %eax
	movl	%eax, -108(%ebp)
	movl	8(%ebp), %eax
	addl	$16, %eax
	movl	%eax, -104(%ebp)
	movl	$0, -100(%ebp)
.L89:
	cmpl	$16, -100(%ebp)
	jae	.L88
	movl	-100(%ebp), %ecx
	movl	-100(%ebp), %edx
	movl	-104(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-108(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -100(%ebp)
	jmp	.L89
.L88:
	movl	8(%ebp), %eax
	addl	$5276, %eax
	movl	%eax, -96(%ebp)
	movl	8(%ebp), %eax
	addl	$16, %eax
	movl	%eax, -92(%ebp)
	movl	$0, -88(%ebp)
.L91:
	cmpl	$16, -88(%ebp)
	jae	.L90
	movl	-88(%ebp), %ecx
	movl	-88(%ebp), %edx
	movl	-92(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-96(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -88(%ebp)
	jmp	.L91
.L90:
	movl	8(%ebp), %eax
	addl	$5340, %eax
	movl	%eax, -84(%ebp)
	movl	8(%ebp), %eax
	addl	$464, %eax
	movl	%eax, -80(%ebp)
	movl	$0, -76(%ebp)
.L93:
	cmpl	$16, -76(%ebp)
	jae	.L92
	movl	-76(%ebp), %ecx
	movl	-76(%ebp), %edx
	movl	-80(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-84(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -76(%ebp)
	jmp	.L93
.L92:
	movl	8(%ebp), %eax
	addl	$5404, %eax
	movl	%eax, -72(%ebp)
	movl	8(%ebp), %eax
	addl	$848, %eax
	movl	%eax, -68(%ebp)
	movl	$0, -64(%ebp)
.L95:
	cmpl	$16, -64(%ebp)
	jae	.L94
	movl	-64(%ebp), %ecx
	movl	-64(%ebp), %edx
	movl	-68(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-72(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -64(%ebp)
	jmp	.L95
.L94:
	movl	8(%ebp), %eax
	addl	$4948, %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__pipe__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__pipe__t1_out__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	8(%ebp), %eax
	addl	$5468, %eax
	movl	%eax, -60(%ebp)
	movl	$0, -56(%ebp)
.L97:
	cmpl	$16, -56(%ebp)
	jae	.L96
	movl	-56(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -56(%ebp)
	jmp	.L97
.L96:
	movl	8(%ebp), %eax
	addl	$4948, %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__pipe__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__pipe__t2_out__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	8(%ebp), %eax
	addl	$5532, %eax
	movl	%eax, -52(%ebp)
	movl	$0, -48(%ebp)
.L99:
	cmpl	$16, -48(%ebp)
	jae	.L98
	movl	-48(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-52(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -48(%ebp)
	jmp	.L99
.L98:
	movl	8(%ebp), %eax
	addl	$4948, %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__pipe__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__pipe__t3_out__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	8(%ebp), %eax
	addl	$5596, %eax
	movl	%eax, -44(%ebp)
	movl	$0, -40(%ebp)
.L101:
	cmpl	$16, -40(%ebp)
	jae	.L100
	movl	-40(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -40(%ebp)
	jmp	.L101
.L100:
	movl	8(%ebp), %eax
	addl	$4948, %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__pipe__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__pipe__memd_out__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	8(%ebp), %eax
	addl	$5660, %eax
	movl	%eax, -36(%ebp)
	movl	$0, -32(%ebp)
.L103:
	cmpl	$16, -32(%ebp)
	jae	.L102
	movl	-32(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -32(%ebp)
	jmp	.L103
.L102:
	movl	8(%ebp), %eax
	addl	$5724, %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	addl	$2660, %eax
	movl	%eax, -24(%ebp)
	movl	$0, -20(%ebp)
.L105:
	cmpl	$19, -20(%ebp)
	jae	.L104
	movl	-20(%ebp), %ecx
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-28(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -20(%ebp)
	jmp	.L105
.L104:
	movl	8(%ebp), %eax
	addl	$5800, %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	addl	$2736, %eax
	movl	%eax, -12(%ebp)
	movl	$0, -8(%ebp)
.L107:
	cmpl	$19, -8(%ebp)
	jae	.L106
	movl	-8(%ebp), %ecx
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -8(%ebp)
	jmp	.L107
.L106:
	movl	8(%ebp), %eax
	movl	2588(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 5876(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 5880(%eax)
	addl	$180, %esp
	popl	%ebx
	popl	%ebp
	ret
	.size	work__prisc__ARCH__pipelined__pipea__ELAB, .-work__prisc__ARCH__pipelined__pipea__ELAB
	.type	work__prisc__ARCH__pipelined__malu__ELAB, @function
work__prisc__ARCH__pipelined__malu__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$72, %esp
	movl	8(%ebp), %eax
	movl	$work__prisc__ARCH__pipelined__malu__RTI, 5888(%eax)
	movl	8(%ebp), %eax
	addl	$5892, %eax
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	addl	$2128, %eax
	movl	%eax, -32(%ebp)
	movl	$0, -28(%ebp)
.L111:
	cmpl	$16, -28(%ebp)
	jae	.L110
	movl	-28(%ebp), %ecx
	movl	-28(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-36(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -28(%ebp)
	jmp	.L111
.L110:
	movl	8(%ebp), %eax
	addl	$5956, %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	addl	$2192, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
.L113:
	cmpl	$16, -16(%ebp)
	jae	.L112
	movl	-16(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-24(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -16(%ebp)
	jmp	.L113
.L112:
	movl	8(%ebp), %eax
	movl	2644(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 6020(%eax)
	movl	8(%ebp), %eax
	addl	$5884, %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__alu__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__alu__x1__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 6024(%eax)
	movl	$3, %edx
	movl	8(%ebp), %eax
	movl	6024(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_associate_e8
	movl	8(%ebp), %eax
	movl	2640(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 6028(%eax)
	movl	8(%ebp), %eax
	movl	2636(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 6032(%eax)
	movl	8(%ebp), %eax
	movl	2628(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 6036(%eax)
	movl	8(%ebp), %eax
	addl	$6040, %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	addl	$272, %eax
	movl	%eax, -8(%ebp)
	movl	$0, -4(%ebp)
.L115:
	cmpl	$16, -4(%ebp)
	jae	.L116
	movl	-4(%ebp), %ecx
	movl	-4(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -4(%ebp)
	jmp	.L115
.L116:
	leave
	ret
	.size	work__prisc__ARCH__pipelined__malu__ELAB, .-work__prisc__ARCH__pipelined__malu__ELAB
	.type	work__prisc__ARCH__pipelined__pipeb__ELAB, @function
work__prisc__ARCH__pipelined__pipeb__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$196, %esp
	movl	8(%ebp), %eax
	movl	$work__prisc__ARCH__pipelined__pipeb__RTI, 6108(%eax)
	movl	8(%ebp), %eax
	addl	$6112, %eax
	movl	%eax, -168(%ebp)
	movl	8(%ebp), %eax
	addl	$464, %eax
	movl	%eax, -164(%ebp)
	movl	$0, -160(%ebp)
.L119:
	cmpl	$16, -160(%ebp)
	jae	.L118
	movl	-160(%ebp), %ecx
	movl	-160(%ebp), %edx
	movl	-164(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-168(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -160(%ebp)
	jmp	.L119
.L118:
	movl	8(%ebp), %eax
	addl	$6176, %eax
	movl	%eax, -156(%ebp)
	movl	8(%ebp), %eax
	addl	$848, %eax
	movl	%eax, -152(%ebp)
	movl	$0, -148(%ebp)
.L121:
	cmpl	$16, -148(%ebp)
	jae	.L120
	movl	-148(%ebp), %ecx
	movl	-148(%ebp), %edx
	movl	-152(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-156(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -148(%ebp)
	jmp	.L121
.L120:
	movl	8(%ebp), %eax
	addl	$6240, %eax
	movl	%eax, -144(%ebp)
	movl	8(%ebp), %eax
	addl	$912, %eax
	movl	%eax, -140(%ebp)
	movl	$0, -136(%ebp)
.L123:
	cmpl	$16, -136(%ebp)
	jae	.L122
	movl	-136(%ebp), %ecx
	movl	-136(%ebp), %edx
	movl	-140(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-144(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -136(%ebp)
	jmp	.L123
.L122:
	movl	8(%ebp), %eax
	addl	$6304, %eax
	movl	%eax, -132(%ebp)
	movl	8(%ebp), %eax
	addl	$976, %eax
	movl	%eax, -128(%ebp)
	movl	$0, -124(%ebp)
.L125:
	cmpl	$16, -124(%ebp)
	jae	.L124
	movl	-124(%ebp), %ecx
	movl	-124(%ebp), %edx
	movl	-128(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-132(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -124(%ebp)
	jmp	.L125
.L124:
	movl	8(%ebp), %eax
	addl	$6368, %eax
	movl	%eax, -120(%ebp)
	movl	8(%ebp), %eax
	addl	$16, %eax
	movl	%eax, -116(%ebp)
	movl	$0, -112(%ebp)
.L127:
	cmpl	$16, -112(%ebp)
	jae	.L126
	movl	-112(%ebp), %ecx
	movl	-112(%ebp), %edx
	movl	-116(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-120(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -112(%ebp)
	jmp	.L127
.L126:
	movl	8(%ebp), %eax
	addl	$6432, %eax
	movl	%eax, -108(%ebp)
	movl	8(%ebp), %eax
	addl	$16, %eax
	movl	%eax, -104(%ebp)
	movl	$0, -100(%ebp)
.L129:
	cmpl	$16, -100(%ebp)
	jae	.L128
	movl	-100(%ebp), %ecx
	movl	-100(%ebp), %edx
	movl	-104(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-108(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -100(%ebp)
	jmp	.L129
.L128:
	movl	8(%ebp), %eax
	addl	$6496, %eax
	movl	%eax, -96(%ebp)
	movl	8(%ebp), %eax
	addl	$528, %eax
	movl	%eax, -92(%ebp)
	movl	$0, -88(%ebp)
.L131:
	cmpl	$16, -88(%ebp)
	jae	.L130
	movl	-88(%ebp), %ecx
	movl	-88(%ebp), %edx
	movl	-92(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-96(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -88(%ebp)
	jmp	.L131
.L130:
	movl	8(%ebp), %eax
	addl	$6560, %eax
	movl	%eax, -84(%ebp)
	movl	8(%ebp), %eax
	addl	$784, %eax
	movl	%eax, -80(%ebp)
	movl	$0, -76(%ebp)
.L133:
	cmpl	$16, -76(%ebp)
	jae	.L132
	movl	-76(%ebp), %ecx
	movl	-76(%ebp), %edx
	movl	-80(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-84(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -76(%ebp)
	jmp	.L133
.L132:
	movl	8(%ebp), %eax
	addl	$6624, %eax
	movl	%eax, -72(%ebp)
	movl	8(%ebp), %eax
	addl	$1744, %eax
	movl	%eax, -68(%ebp)
	movl	$0, -64(%ebp)
.L135:
	cmpl	$16, -64(%ebp)
	jae	.L134
	movl	-64(%ebp), %ecx
	movl	-64(%ebp), %edx
	movl	-68(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-72(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -64(%ebp)
	jmp	.L135
.L134:
	movl	8(%ebp), %eax
	addl	$6688, %eax
	movl	%eax, -60(%ebp)
	movl	8(%ebp), %eax
	addl	$1552, %eax
	movl	%eax, -56(%ebp)
	movl	$0, -52(%ebp)
.L137:
	cmpl	$16, -52(%ebp)
	jae	.L136
	movl	-52(%ebp), %ecx
	movl	-52(%ebp), %edx
	movl	-56(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-60(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -52(%ebp)
	jmp	.L137
.L136:
	movl	8(%ebp), %eax
	addl	$6752, %eax
	movl	%eax, -48(%ebp)
	movl	8(%ebp), %eax
	addl	$1808, %eax
	movl	%eax, -44(%ebp)
	movl	$0, -40(%ebp)
.L139:
	cmpl	$16, -40(%ebp)
	jae	.L138
	movl	-40(%ebp), %ecx
	movl	-40(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-48(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -40(%ebp)
	jmp	.L139
.L138:
	movl	8(%ebp), %eax
	addl	$6104, %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__pipe__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__pipe__memd_out__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	8(%ebp), %eax
	addl	$6816, %eax
	movl	%eax, -36(%ebp)
	movl	$0, -32(%ebp)
.L141:
	cmpl	$16, -32(%ebp)
	jae	.L140
	movl	-32(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -32(%ebp)
	jmp	.L141
.L140:
	movl	8(%ebp), %eax
	addl	$6880, %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	addl	$2736, %eax
	movl	%eax, -24(%ebp)
	movl	$0, -20(%ebp)
.L143:
	cmpl	$19, -20(%ebp)
	jae	.L142
	movl	-20(%ebp), %ecx
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-28(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -20(%ebp)
	jmp	.L143
.L142:
	movl	8(%ebp), %eax
	addl	$6956, %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	addl	$2812, %eax
	movl	%eax, -12(%ebp)
	movl	$0, -8(%ebp)
.L145:
	cmpl	$19, -8(%ebp)
	jae	.L144
	movl	-8(%ebp), %ecx
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -8(%ebp)
	jmp	.L145
.L144:
	movl	8(%ebp), %eax
	movl	2592(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 7032(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 7036(%eax)
	addl	$196, %esp
	popl	%ebx
	popl	%ebp
	ret
	.size	work__prisc__ARCH__pipelined__pipeb__ELAB, .-work__prisc__ARCH__pipelined__pipeb__ELAB
	.type	work__prisc__ARCH__pipelined__datamem__ELAB, @function
work__prisc__ARCH__pipelined__datamem__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$48, %esp
	movl	8(%ebp), %eax
	movl	$work__prisc__ARCH__pipelined__datamem__RTI, 7044(%eax)
	movl	8(%ebp), %eax
	movl	2624(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 7048(%eax)
	movl	8(%ebp), %eax
	movl	2620(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 7052(%eax)
	movl	8(%ebp), %eax
	movl	2616(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 7056(%eax)
	movl	8(%ebp), %eax
	addl	$7060, %eax
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	addl	$1296, %eax
	movl	%eax, -32(%ebp)
	movl	$0, -28(%ebp)
.L149:
	cmpl	$16, -28(%ebp)
	jae	.L148
	movl	-28(%ebp), %ecx
	movl	-28(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-36(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -28(%ebp)
	jmp	.L149
.L148:
	movl	8(%ebp), %eax
	addl	$7124, %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	addl	$1424, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
.L151:
	cmpl	$16, -16(%ebp)
	jae	.L150
	movl	-16(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-24(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -16(%ebp)
	jmp	.L151
.L150:
	movl	8(%ebp), %eax
	addl	$7188, %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	addl	$1360, %eax
	movl	%eax, -8(%ebp)
	movl	$0, -4(%ebp)
.L153:
	cmpl	$16, -4(%ebp)
	jae	.L154
	movl	-4(%ebp), %ecx
	movl	-4(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -4(%ebp)
	jmp	.L153
.L154:
	leave
	ret
	.size	work__prisc__ARCH__pipelined__datamem__ELAB, .-work__prisc__ARCH__pipelined__datamem__ELAB
	.type	work__prisc__ARCH__pipelined__pipec__ELAB, @function
work__prisc__ARCH__pipelined__pipec__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$196, %esp
	movl	8(%ebp), %eax
	movl	$work__prisc__ARCH__pipelined__pipec__RTI, 7256(%eax)
	movl	8(%ebp), %eax
	addl	$7260, %eax
	movl	%eax, -168(%ebp)
	movl	8(%ebp), %eax
	addl	$528, %eax
	movl	%eax, -164(%ebp)
	movl	$0, -160(%ebp)
.L157:
	cmpl	$16, -160(%ebp)
	jae	.L156
	movl	-160(%ebp), %ecx
	movl	-160(%ebp), %edx
	movl	-164(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-168(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -160(%ebp)
	jmp	.L157
.L156:
	movl	8(%ebp), %eax
	addl	$7324, %eax
	movl	%eax, -156(%ebp)
	movl	8(%ebp), %eax
	addl	$784, %eax
	movl	%eax, -152(%ebp)
	movl	$0, -148(%ebp)
.L159:
	cmpl	$16, -148(%ebp)
	jae	.L158
	movl	-148(%ebp), %ecx
	movl	-148(%ebp), %edx
	movl	-152(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-156(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -148(%ebp)
	jmp	.L159
.L158:
	movl	8(%ebp), %eax
	addl	$7388, %eax
	movl	%eax, -144(%ebp)
	movl	8(%ebp), %eax
	addl	$1744, %eax
	movl	%eax, -140(%ebp)
	movl	$0, -136(%ebp)
.L161:
	cmpl	$16, -136(%ebp)
	jae	.L160
	movl	-136(%ebp), %ecx
	movl	-136(%ebp), %edx
	movl	-140(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-144(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -136(%ebp)
	jmp	.L161
.L160:
	movl	8(%ebp), %eax
	addl	$7452, %eax
	movl	%eax, -132(%ebp)
	movl	8(%ebp), %eax
	addl	$1552, %eax
	movl	%eax, -128(%ebp)
	movl	$0, -124(%ebp)
.L163:
	cmpl	$16, -124(%ebp)
	jae	.L162
	movl	-124(%ebp), %ecx
	movl	-124(%ebp), %edx
	movl	-128(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-132(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -124(%ebp)
	jmp	.L163
.L162:
	movl	8(%ebp), %eax
	addl	$7516, %eax
	movl	%eax, -120(%ebp)
	movl	8(%ebp), %eax
	addl	$272, %eax
	movl	%eax, -116(%ebp)
	movl	$0, -112(%ebp)
.L165:
	cmpl	$16, -112(%ebp)
	jae	.L164
	movl	-112(%ebp), %ecx
	movl	-112(%ebp), %edx
	movl	-116(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-120(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -112(%ebp)
	jmp	.L165
.L164:
	movl	8(%ebp), %eax
	addl	$7580, %eax
	movl	%eax, -108(%ebp)
	movl	8(%ebp), %eax
	addl	$16, %eax
	movl	%eax, -104(%ebp)
	movl	$0, -100(%ebp)
.L167:
	cmpl	$16, -100(%ebp)
	jae	.L166
	movl	-100(%ebp), %ecx
	movl	-100(%ebp), %edx
	movl	-104(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-108(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -100(%ebp)
	jmp	.L167
.L166:
	movl	8(%ebp), %eax
	addl	$7644, %eax
	movl	%eax, -96(%ebp)
	movl	8(%ebp), %eax
	addl	$592, %eax
	movl	%eax, -92(%ebp)
	movl	$0, -88(%ebp)
.L169:
	cmpl	$16, -88(%ebp)
	jae	.L168
	movl	-88(%ebp), %ecx
	movl	-88(%ebp), %edx
	movl	-92(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-96(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -88(%ebp)
	jmp	.L169
.L168:
	movl	8(%ebp), %eax
	addl	$7708, %eax
	movl	%eax, -84(%ebp)
	movl	8(%ebp), %eax
	addl	$1872, %eax
	movl	%eax, -80(%ebp)
	movl	$0, -76(%ebp)
.L171:
	cmpl	$16, -76(%ebp)
	jae	.L170
	movl	-76(%ebp), %ecx
	movl	-76(%ebp), %edx
	movl	-80(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-84(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -76(%ebp)
	jmp	.L171
.L170:
	movl	8(%ebp), %eax
	addl	$7772, %eax
	movl	%eax, -72(%ebp)
	movl	8(%ebp), %eax
	addl	$1936, %eax
	movl	%eax, -68(%ebp)
	movl	$0, -64(%ebp)
.L173:
	cmpl	$16, -64(%ebp)
	jae	.L172
	movl	-64(%ebp), %ecx
	movl	-64(%ebp), %edx
	movl	-68(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-72(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -64(%ebp)
	jmp	.L173
.L172:
	movl	8(%ebp), %eax
	addl	$7836, %eax
	movl	%eax, -60(%ebp)
	movl	8(%ebp), %eax
	addl	$1616, %eax
	movl	%eax, -56(%ebp)
	movl	$0, -52(%ebp)
.L175:
	cmpl	$16, -52(%ebp)
	jae	.L174
	movl	-52(%ebp), %ecx
	movl	-52(%ebp), %edx
	movl	-56(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-60(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -52(%ebp)
	jmp	.L175
.L174:
	movl	8(%ebp), %eax
	addl	$7900, %eax
	movl	%eax, -48(%ebp)
	movl	8(%ebp), %eax
	addl	$2064, %eax
	movl	%eax, -44(%ebp)
	movl	$0, -40(%ebp)
.L177:
	cmpl	$16, -40(%ebp)
	jae	.L176
	movl	-40(%ebp), %ecx
	movl	-40(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-48(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -40(%ebp)
	jmp	.L177
.L176:
	movl	8(%ebp), %eax
	addl	$7252, %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__pipe__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__pipe__memd_out__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	8(%ebp), %eax
	addl	$7964, %eax
	movl	%eax, -36(%ebp)
	movl	$0, -32(%ebp)
.L179:
	cmpl	$16, -32(%ebp)
	jae	.L178
	movl	-32(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -32(%ebp)
	jmp	.L179
.L178:
	movl	8(%ebp), %eax
	addl	$8028, %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	addl	$2812, %eax
	movl	%eax, -24(%ebp)
	movl	$0, -20(%ebp)
.L181:
	cmpl	$19, -20(%ebp)
	jae	.L180
	movl	-20(%ebp), %ecx
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-28(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -20(%ebp)
	jmp	.L181
.L180:
	movl	8(%ebp), %eax
	addl	$8104, %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	addl	$2888, %eax
	movl	%eax, -12(%ebp)
	movl	$0, -8(%ebp)
.L183:
	cmpl	$19, -8(%ebp)
	jae	.L182
	movl	-8(%ebp), %ecx
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -8(%ebp)
	jmp	.L183
.L182:
	movl	8(%ebp), %eax
	movl	2576(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8180(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8184(%eax)
	addl	$196, %esp
	popl	%ebx
	popl	%ebp
	ret
	.size	work__prisc__ARCH__pipelined__pipec__ELAB, .-work__prisc__ARCH__pipelined__pipec__ELAB
	.type	work__prisc__ARCH__pipelined__piped__ELAB, @function
work__prisc__ARCH__pipelined__piped__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$176, %esp
	movl	8(%ebp), %eax
	movl	$work__prisc__ARCH__pipelined__piped__RTI, 8192(%eax)
	movl	8(%ebp), %eax
	addl	$8196, %eax
	movl	%eax, -168(%ebp)
	movl	8(%ebp), %eax
	addl	$592, %eax
	movl	%eax, -164(%ebp)
	movl	$0, -160(%ebp)
.L187:
	cmpl	$16, -160(%ebp)
	jae	.L186
	movl	-160(%ebp), %ecx
	movl	-160(%ebp), %edx
	movl	-164(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-168(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -160(%ebp)
	jmp	.L187
.L186:
	movl	8(%ebp), %eax
	addl	$8260, %eax
	movl	%eax, -156(%ebp)
	movl	8(%ebp), %eax
	addl	$1872, %eax
	movl	%eax, -152(%ebp)
	movl	$0, -148(%ebp)
.L189:
	cmpl	$16, -148(%ebp)
	jae	.L188
	movl	-148(%ebp), %ecx
	movl	-148(%ebp), %edx
	movl	-152(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-156(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -148(%ebp)
	jmp	.L189
.L188:
	movl	8(%ebp), %eax
	addl	$8324, %eax
	movl	%eax, -144(%ebp)
	movl	8(%ebp), %eax
	addl	$1936, %eax
	movl	%eax, -140(%ebp)
	movl	$0, -136(%ebp)
.L191:
	cmpl	$16, -136(%ebp)
	jae	.L190
	movl	-136(%ebp), %ecx
	movl	-136(%ebp), %edx
	movl	-140(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-144(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -136(%ebp)
	jmp	.L191
.L190:
	movl	8(%ebp), %eax
	addl	$8388, %eax
	movl	%eax, -132(%ebp)
	movl	8(%ebp), %eax
	addl	$1616, %eax
	movl	%eax, -128(%ebp)
	movl	$0, -124(%ebp)
.L193:
	cmpl	$16, -124(%ebp)
	jae	.L192
	movl	-124(%ebp), %ecx
	movl	-124(%ebp), %edx
	movl	-128(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-132(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -124(%ebp)
	jmp	.L193
.L192:
	movl	8(%ebp), %eax
	addl	$8452, %eax
	movl	%eax, -120(%ebp)
	movl	8(%ebp), %eax
	addl	$2064, %eax
	movl	%eax, -116(%ebp)
	movl	$0, -112(%ebp)
.L195:
	cmpl	$16, -112(%ebp)
	jae	.L194
	movl	-112(%ebp), %ecx
	movl	-112(%ebp), %edx
	movl	-116(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-120(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -112(%ebp)
	jmp	.L195
.L194:
	movl	8(%ebp), %eax
	addl	$8516, %eax
	movl	%eax, -108(%ebp)
	movl	8(%ebp), %eax
	addl	$1360, %eax
	movl	%eax, -104(%ebp)
	movl	$0, -100(%ebp)
.L197:
	cmpl	$16, -100(%ebp)
	jae	.L196
	movl	-100(%ebp), %ecx
	movl	-100(%ebp), %edx
	movl	-104(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-108(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -100(%ebp)
	jmp	.L197
.L196:
	movl	8(%ebp), %eax
	addl	$8580, %eax
	movl	%eax, -96(%ebp)
	movl	8(%ebp), %eax
	addl	$656, %eax
	movl	%eax, -92(%ebp)
	movl	$0, -88(%ebp)
.L199:
	cmpl	$16, -88(%ebp)
	jae	.L198
	movl	-88(%ebp), %ecx
	movl	-88(%ebp), %edx
	movl	-92(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-96(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -88(%ebp)
	jmp	.L199
.L198:
	movl	8(%ebp), %eax
	addl	$8644, %eax
	movl	%eax, -84(%ebp)
	movl	8(%ebp), %eax
	addl	$1104, %eax
	movl	%eax, -80(%ebp)
	movl	$0, -76(%ebp)
.L201:
	cmpl	$16, -76(%ebp)
	jae	.L200
	movl	-76(%ebp), %ecx
	movl	-76(%ebp), %edx
	movl	-80(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-84(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -76(%ebp)
	jmp	.L201
.L200:
	movl	8(%ebp), %eax
	addl	$8708, %eax
	movl	%eax, -72(%ebp)
	movl	8(%ebp), %eax
	addl	$2000, %eax
	movl	%eax, -68(%ebp)
	movl	$0, -64(%ebp)
.L203:
	cmpl	$16, -64(%ebp)
	jae	.L202
	movl	-64(%ebp), %ecx
	movl	-64(%ebp), %edx
	movl	-68(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-72(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -64(%ebp)
	jmp	.L203
.L202:
	movl	8(%ebp), %eax
	addl	$8772, %eax
	movl	%eax, -60(%ebp)
	movl	8(%ebp), %eax
	addl	$1680, %eax
	movl	%eax, -56(%ebp)
	movl	$0, -52(%ebp)
.L205:
	cmpl	$16, -52(%ebp)
	jae	.L204
	movl	-52(%ebp), %ecx
	movl	-52(%ebp), %edx
	movl	-56(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-60(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -52(%ebp)
	jmp	.L205
.L204:
	movl	8(%ebp), %eax
	addl	$8836, %eax
	movl	%eax, -48(%ebp)
	movl	8(%ebp), %eax
	addl	$1232, %eax
	movl	%eax, -44(%ebp)
	movl	$0, -40(%ebp)
.L207:
	cmpl	$16, -40(%ebp)
	jae	.L206
	movl	-40(%ebp), %ecx
	movl	-40(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-48(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -40(%ebp)
	jmp	.L207
.L206:
	movl	8(%ebp), %eax
	addl	$8900, %eax
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	addl	$1168, %eax
	movl	%eax, -32(%ebp)
	movl	$0, -28(%ebp)
.L209:
	cmpl	$16, -28(%ebp)
	jae	.L208
	movl	-28(%ebp), %ecx
	movl	-28(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-36(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -28(%ebp)
	jmp	.L209
.L208:
	movl	8(%ebp), %eax
	addl	$8964, %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	addl	$2888, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
.L211:
	cmpl	$19, -16(%ebp)
	jae	.L210
	movl	-16(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-24(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -16(%ebp)
	jmp	.L211
.L210:
	movl	8(%ebp), %eax
	addl	$9040, %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	addl	$2964, %eax
	movl	%eax, -8(%ebp)
	movl	$0, -4(%ebp)
.L213:
	cmpl	$19, -4(%ebp)
	jae	.L212
	movl	-4(%ebp), %ecx
	movl	-4(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -4(%ebp)
	jmp	.L213
.L212:
	movl	8(%ebp), %eax
	movl	2596(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 9116(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 9120(%eax)
	leave
	ret
	.size	work__prisc__ARCH__pipelined__piped__ELAB, .-work__prisc__ARCH__pipelined__piped__ELAB
	.section	.rodata
	.align 4
	.type	work__prisc__ARCH__pipelined__alu_se10__U0__STB.3726, @object
	.size	work__prisc__ARCH__pipelined__alu_se10__U0__STB.3726, 16
work__prisc__ARCH__pipelined__alu_se10__U0__STB.3726:
	.long	5
	.long	0
	.byte	1
	.zero	3
	.long	6
	.text
	.type	work__prisc__ARCH__pipelined__alu_se10__ELAB, @function
work__prisc__ARCH__pipelined__alu_se10__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$32, %esp
	movl	8(%ebp), %eax
	movl	$work__prisc__ARCH__pipelined__alu_se10__RTI, 9128(%eax)
	movl	8(%ebp), %eax
	addl	$9132, %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	addl	$528, %eax
	addl	$40, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
.L217:
	cmpl	$6, -16(%ebp)
	jae	.L216
	movl	-16(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-24(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -16(%ebp)
	jmp	.L217
.L216:
	movl	8(%ebp), %eax
	addl	$9156, %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	addl	$2256, %eax
	movl	%eax, -8(%ebp)
	movl	$0, -4(%ebp)
.L219:
	cmpl	$16, -4(%ebp)
	jae	.L220
	movl	-4(%ebp), %ecx
	movl	-4(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -4(%ebp)
	jmp	.L219
.L220:
	leave
	ret
	.size	work__prisc__ARCH__pipelined__alu_se10__ELAB, .-work__prisc__ARCH__pipelined__alu_se10__ELAB
	.section	.rodata
	.align 4
	.type	work__prisc__ARCH__pipelined__alu_se7__U0__STB.3755, @object
	.size	work__prisc__ARCH__pipelined__alu_se7__U0__STB.3755, 16
work__prisc__ARCH__pipelined__alu_se7__U0__STB.3755:
	.long	8
	.long	0
	.byte	1
	.zero	3
	.long	9
	.text
	.type	work__prisc__ARCH__pipelined__alu_se7__ELAB, @function
work__prisc__ARCH__pipelined__alu_se7__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	8(%ebp), %eax
	movl	$work__prisc__ARCH__pipelined__alu_se7__RTI, 9224(%eax)
	movl	8(%ebp), %eax
	addl	$9228, %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	addl	$528, %eax
	addl	$28, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
.L223:
	cmpl	$9, -16(%ebp)
	jae	.L222
	movl	-16(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-24(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -16(%ebp)
	jmp	.L223
.L222:
	movl	8(%ebp), %eax
	addl	$9220, %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__se7__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__se7__se_type__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 9264(%eax)
	movl	$3, %edx
	movl	8(%ebp), %eax
	movl	9264(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_associate_e8
	movl	8(%ebp), %eax
	addl	$9268, %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	addl	$2320, %eax
	movl	%eax, -8(%ebp)
	movl	$0, -4(%ebp)
.L225:
	cmpl	$16, -4(%ebp)
	jae	.L226
	movl	-4(%ebp), %ecx
	movl	-4(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -4(%ebp)
	jmp	.L225
.L226:
	leave
	ret
	.size	work__prisc__ARCH__pipelined__alu_se7__ELAB, .-work__prisc__ARCH__pipelined__alu_se7__ELAB
	.section	.rodata
	.align 4
	.type	work__prisc__ARCH__pipelined__pd_se7__U0__STB.3793, @object
	.size	work__prisc__ARCH__pipelined__pd_se7__U0__STB.3793, 16
work__prisc__ARCH__pipelined__pd_se7__U0__STB.3793:
	.long	8
	.long	0
	.byte	1
	.zero	3
	.long	9
	.text
	.type	work__prisc__ARCH__pipelined__pd_se7__ELAB, @function
work__prisc__ARCH__pipelined__pd_se7__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	8(%ebp), %eax
	movl	$work__prisc__ARCH__pipelined__pd_se7__RTI, 9336(%eax)
	movl	8(%ebp), %eax
	addl	$9340, %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	addl	$656, %eax
	addl	$28, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
.L229:
	cmpl	$9, -16(%ebp)
	jae	.L228
	movl	-16(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-24(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -16(%ebp)
	jmp	.L229
.L228:
	movl	8(%ebp), %eax
	addl	$9332, %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__se7__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__se7__se_type__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 9376(%eax)
	movl	$2, %edx
	movl	8(%ebp), %eax
	movl	9376(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_associate_e8
	movl	8(%ebp), %eax
	addl	$9380, %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	addl	$2384, %eax
	movl	%eax, -8(%ebp)
	movl	$0, -4(%ebp)
.L231:
	cmpl	$16, -4(%ebp)
	jae	.L232
	movl	-4(%ebp), %ecx
	movl	-4(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
	addl	$1, -4(%ebp)
	jmp	.L231
.L232:
	leave
	ret
	.size	work__prisc__ARCH__pipelined__pd_se7__ELAB, .-work__prisc__ARCH__pipelined__pd_se7__ELAB
	.type	work__prisc__ARCH__pipelined__car__ELAB, @function
work__prisc__ARCH__pipelined__car__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	$work__prisc__ARCH__pipelined__car__RTI, 9448(%eax)
	movl	8(%ebp), %eax
	movl	2636(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 9452(%eax)
	movl	8(%ebp), %eax
	movl	2640(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 9456(%eax)
	movl	8(%ebp), %eax
	movl	2608(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 9460(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 9464(%eax)
	popl	%ebp
	ret
	.size	work__prisc__ARCH__pipelined__car__ELAB, .-work__prisc__ARCH__pipelined__car__ELAB
	.type	work__prisc__ARCH__pipelined__zer__ELAB, @function
work__prisc__ARCH__pipelined__zer__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	$work__prisc__ARCH__pipelined__zer__RTI, 9472(%eax)
	movl	8(%ebp), %eax
	movl	2628(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 9476(%eax)
	movl	8(%ebp), %eax
	movl	2632(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 9480(%eax)
	movl	8(%ebp), %eax
	movl	2612(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 9484(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 9488(%eax)
	popl	%ebp
	ret
	.size	work__prisc__ARCH__pipelined__zer__ELAB, .-work__prisc__ARCH__pipelined__zer__ELAB
	.type	work__prisc__ARCH__pipelined__iter__ELAB, @function
work__prisc__ARCH__pipelined__iter__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	$work__prisc__ARCH__pipelined__iter__RTI, 9496(%eax)
	movl	8(%ebp), %eax
	movl	2648(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 9500(%eax)
	movl	8(%ebp), %eax
	movl	2652(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 9504(%eax)
	movl	8(%ebp), %eax
	movl	2656(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 9508(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 9512(%eax)
	popl	%ebp
	ret
	.size	work__prisc__ARCH__pipelined__iter__ELAB, .-work__prisc__ARCH__pipelined__iter__ELAB
	.section	.rodata
	.align 4
	.type	work__prisc__ARCH__pipelined__P0__U0__STB.3864, @object
	.size	work__prisc__ARCH__pipelined__P0__U0__STB.3864, 16
work__prisc__ARCH__pipelined__P0__U0__STB.3864:
	.long	12
	.long	10
	.byte	1
	.zero	3
	.long	3
	.align 4
	.type	work__prisc__ARCH__pipelined__P0__U1__STB.3880, @object
	.size	work__prisc__ARCH__pipelined__P0__U1__STB.3880, 16
work__prisc__ARCH__pipelined__P0__U1__STB.3880:
	.long	9
	.long	7
	.byte	1
	.zero	3
	.long	3
	.align 4
	.type	work__prisc__ARCH__pipelined__P0__U2__STB.3907, @object
	.size	work__prisc__ARCH__pipelined__P0__U2__STB.3907, 16
work__prisc__ARCH__pipelined__P0__U2__STB.3907:
	.long	15
	.long	14
	.byte	1
	.zero	3
	.long	2
	.type	_UI00000002.3915, @object
	.size	_UI00000002.3915, 2
_UI00000002.3915:
	.byte	2
	.byte	2
	.align 4
	.type	work__prisc__ARCH__pipelined__P0__U5__STB.3916, @object
	.size	work__prisc__ARCH__pipelined__P0__U5__STB.3916, 16
work__prisc__ARCH__pipelined__P0__U5__STB.3916:
	.long	0
	.long	1
	.byte	0
	.zero	3
	.long	2
	.align 4
	.type	work__prisc__ARCH__pipelined__P0__U6__STB.3932, @object
	.size	work__prisc__ARCH__pipelined__P0__U6__STB.3932, 16
work__prisc__ARCH__pipelined__P0__U6__STB.3932:
	.long	15
	.long	14
	.byte	1
	.zero	3
	.long	2
	.type	_UI00000003.3940, @object
	.size	_UI00000003.3940, 2
_UI00000003.3940:
	.byte	2
	.byte	3
	.align 4
	.type	work__prisc__ARCH__pipelined__P0__U9__STB.3941, @object
	.size	work__prisc__ARCH__pipelined__P0__U9__STB.3941, 16
work__prisc__ARCH__pipelined__P0__U9__STB.3941:
	.long	0
	.long	1
	.byte	0
	.zero	3
	.long	2
	.align 4
	.type	work__prisc__ARCH__pipelined__P0__U10__STB.4026, @object
	.size	work__prisc__ARCH__pipelined__P0__U10__STB.4026, 16
work__prisc__ARCH__pipelined__P0__U10__STB.4026:
	.long	4
	.long	3
	.byte	1
	.zero	3
	.long	2
	.type	_UI00000004.4034, @object
	.size	_UI00000004.4034, 2
_UI00000004.4034:
	.byte	2
	.byte	3
	.align 4
	.type	work__prisc__ARCH__pipelined__P0__U13__STB.4035, @object
	.size	work__prisc__ARCH__pipelined__P0__U13__STB.4035, 16
work__prisc__ARCH__pipelined__P0__U13__STB.4035:
	.long	0
	.long	1
	.byte	0
	.zero	3
	.long	2
	.align 4
	.type	work__prisc__ARCH__pipelined__P0__U14__STB.4039, @object
	.size	work__prisc__ARCH__pipelined__P0__U14__STB.4039, 16
work__prisc__ARCH__pipelined__P0__U14__STB.4039:
	.long	6
	.long	4
	.byte	1
	.zero	3
	.long	3
	.align 4
	.type	work__prisc__ARCH__pipelined__P0__U15__STB.4054, @object
	.size	work__prisc__ARCH__pipelined__P0__U15__STB.4054, 16
work__prisc__ARCH__pipelined__P0__U15__STB.4054:
	.long	4
	.long	3
	.byte	1
	.zero	3
	.long	2
	.type	_UI00000005.4062, @object
	.size	_UI00000005.4062, 2
_UI00000005.4062:
	.byte	3
	.byte	2
	.align 4
	.type	work__prisc__ARCH__pipelined__P0__U18__STB.4063, @object
	.size	work__prisc__ARCH__pipelined__P0__U18__STB.4063, 16
work__prisc__ARCH__pipelined__P0__U18__STB.4063:
	.long	0
	.long	1
	.byte	0
	.zero	3
	.long	2
	.align 4
	.type	work__prisc__ARCH__pipelined__P0__U19__STB.4067, @object
	.size	work__prisc__ARCH__pipelined__P0__U19__STB.4067, 16
work__prisc__ARCH__pipelined__P0__U19__STB.4067:
	.long	12
	.long	10
	.byte	1
	.zero	3
	.long	3
	.align 4
	.type	work__prisc__ARCH__pipelined__P0__U20__STB.4098, @object
	.size	work__prisc__ARCH__pipelined__P0__U20__STB.4098, 16
work__prisc__ARCH__pipelined__P0__U20__STB.4098:
	.long	2
	.long	1
	.byte	1
	.zero	3
	.long	2
	.type	_UI00000006.4106, @object
	.size	_UI00000006.4106, 2
_UI00000006.4106:
	.byte	2
	.byte	2
	.align 4
	.type	work__prisc__ARCH__pipelined__P0__U23__STB.4107, @object
	.size	work__prisc__ARCH__pipelined__P0__U23__STB.4107, 16
work__prisc__ARCH__pipelined__P0__U23__STB.4107:
	.long	0
	.long	1
	.byte	0
	.zero	3
	.long	2
	.align 4
	.type	work__prisc__ARCH__pipelined__P0__U24__STB.4123, @object
	.size	work__prisc__ARCH__pipelined__P0__U24__STB.4123, 16
work__prisc__ARCH__pipelined__P0__U24__STB.4123:
	.long	2
	.long	1
	.byte	1
	.zero	3
	.long	2
	.type	_UI00000007.4131, @object
	.size	_UI00000007.4131, 2
_UI00000007.4131:
	.byte	2
	.byte	3
	.align 4
	.type	work__prisc__ARCH__pipelined__P0__U27__STB.4132, @object
	.size	work__prisc__ARCH__pipelined__P0__U27__STB.4132, 16
work__prisc__ARCH__pipelined__P0__U27__STB.4132:
	.long	0
	.long	1
	.byte	0
	.zero	3
	.long	2
	.align 4
	.type	work__prisc__ARCH__pipelined__P0__U28__STB.4148, @object
	.size	work__prisc__ARCH__pipelined__P0__U28__STB.4148, 16
work__prisc__ARCH__pipelined__P0__U28__STB.4148:
	.long	2
	.long	1
	.byte	1
	.zero	3
	.long	2
	.type	_UI00000008.4156, @object
	.size	_UI00000008.4156, 2
_UI00000008.4156:
	.byte	3
	.byte	2
	.align 4
	.type	work__prisc__ARCH__pipelined__P0__U31__STB.4157, @object
	.size	work__prisc__ARCH__pipelined__P0__U31__STB.4157, 16
work__prisc__ARCH__pipelined__P0__U31__STB.4157:
	.long	0
	.long	1
	.byte	0
	.zero	3
	.long	2
	.text
	.type	work__prisc__ARCH__pipelined__P0__PROC, @function
work__prisc__ARCH__pipelined__P0__PROC:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$984, %esp
	movl	8(%ebp), %eax
	addl	$208, %eax
	movl	%eax, -636(%ebp)
	movl	$0, -632(%ebp)
.L241:
	cmpl	$16, -632(%ebp)
	jae	.L240
	movl	-632(%ebp), %ecx
	movl	-632(%ebp), %edx
	movl	-636(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -652(%ebp,%ecx)
	addl	$1, -632(%ebp)
	jmp	.L241
.L240:
	movl	8(%ebp), %eax
	addl	$80, %eax
	movl	%eax, -628(%ebp)
	movl	$0, -624(%ebp)
.L246:
	cmpl	$16, -624(%ebp)
	jae	.L242
	movl	-624(%ebp), %edx
	movl	-628(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -620(%ebp)
	movl	8(%ebp), %eax
	addl	$9516, %eax
	addl	-624(%ebp), %eax
	movl	%eax, -612(%ebp)
	leal	-652(%ebp), %edx
	movl	-624(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-612(%ebp), %eax
	movb	%dl, (%eax)
	movl	-620(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L243
	movb	$1, -613(%ebp)
	jmp	.L244
.L243:
	movl	-620(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-612(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -613(%ebp)
.L244:
	movl	-620(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-613(%ebp), %al
	testb	%al, %al
	je	.L245
	movl	-620(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-620(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L245:
	addl	$1, -624(%ebp)
	jmp	.L246
.L242:
	movl	8(%ebp), %eax
	addl	$464, %eax
	addl	$12, %eax
	movl	%eax, -608(%ebp)
	movl	$0, -604(%ebp)
.L248:
	cmpl	$3, -604(%ebp)
	jae	.L247
	movl	-604(%ebp), %ecx
	movl	-604(%ebp), %edx
	movl	-608(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -655(%ebp,%ecx)
	addl	$1, -604(%ebp)
	jmp	.L248
.L247:
	movl	8(%ebp), %eax
	addl	$3052, %eax
	movl	%eax, -600(%ebp)
	movl	$0, -596(%ebp)
.L253:
	cmpl	$3, -596(%ebp)
	jae	.L249
	movl	-596(%ebp), %edx
	movl	-600(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -592(%ebp)
	movl	8(%ebp), %eax
	addl	$9532, %eax
	addl	-596(%ebp), %eax
	movl	%eax, -584(%ebp)
	leal	-655(%ebp), %edx
	movl	-596(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-584(%ebp), %eax
	movb	%dl, (%eax)
	movl	-592(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L250
	movb	$1, -585(%ebp)
	jmp	.L251
.L250:
	movl	-592(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-584(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -585(%ebp)
.L251:
	movl	-592(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-585(%ebp), %al
	testb	%al, %al
	je	.L252
	movl	-592(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-592(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L252:
	addl	$1, -596(%ebp)
	jmp	.L253
.L249:
	movl	$1, -580(%ebp)
	movl	-580(%ebp), %eax
	movl	8(%ebp), %edx
	addl	$684, %eax
	movl	(%edx,%eax,4), %eax
	movzbl	(%eax), %eax
	cmpb	$2, %al
	jne	.L254
	movl	8(%ebp), %eax
	addl	$464, %eax
	addl	$24, %eax
	movl	%eax, -576(%ebp)
	movl	$0, -572(%ebp)
.L256:
	cmpl	$3, -572(%ebp)
	jae	.L255
	movl	-572(%ebp), %ecx
	movl	-572(%ebp), %edx
	movl	-576(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -658(%ebp,%ecx)
	addl	$1, -572(%ebp)
	jmp	.L256
.L255:
	movl	8(%ebp), %eax
	addl	$3064, %eax
	movl	%eax, -568(%ebp)
	movl	$0, -564(%ebp)
.L261:
	cmpl	$3, -564(%ebp)
	jae	.L262
	movl	-564(%ebp), %edx
	movl	-568(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -560(%ebp)
	movl	8(%ebp), %eax
	addl	$9535, %eax
	addl	-564(%ebp), %eax
	movl	%eax, -552(%ebp)
	leal	-658(%ebp), %edx
	movl	-564(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-552(%ebp), %eax
	movb	%dl, (%eax)
	movl	-560(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L258
	movb	$1, -553(%ebp)
	jmp	.L259
.L258:
	movl	-560(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-552(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -553(%ebp)
.L259:
	movl	-560(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-553(%ebp), %al
	testb	%al, %al
	je	.L260
	movl	-560(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-560(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L260:
	addl	$1, -564(%ebp)
	jmp	.L261
.L254:
	movl	8(%ebp), %eax
	addl	$3040, %eax
	movl	%eax, -548(%ebp)
	movl	$0, -544(%ebp)
.L264:
	cmpl	$3, -544(%ebp)
	jae	.L263
	movl	-544(%ebp), %ecx
	movl	-544(%ebp), %edx
	movl	-548(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -661(%ebp,%ecx)
	addl	$1, -544(%ebp)
	jmp	.L264
.L263:
	movl	8(%ebp), %eax
	addl	$3064, %eax
	movl	%eax, -540(%ebp)
	movl	$0, -536(%ebp)
.L268:
	cmpl	$3, -536(%ebp)
	jae	.L262
	movl	-536(%ebp), %edx
	movl	-540(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -532(%ebp)
	movl	8(%ebp), %eax
	addl	$9535, %eax
	addl	-536(%ebp), %eax
	movl	%eax, -524(%ebp)
	leal	-661(%ebp), %edx
	movl	-536(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-524(%ebp), %eax
	movb	%dl, (%eax)
	movl	-532(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L265
	movb	$1, -525(%ebp)
	jmp	.L266
.L265:
	movl	-532(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-524(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -525(%ebp)
.L266:
	movl	-532(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-525(%ebp), %al
	testb	%al, %al
	je	.L267
	movl	-532(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-532(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L267:
	addl	$1, -536(%ebp)
	jmp	.L268
.L262:
	movl	8(%ebp), %eax
	addl	$2812, %eax
	addl	$12, %eax
	movl	%eax, -520(%ebp)
	movl	$0, -516(%ebp)
.L270:
	cmpl	$2, -516(%ebp)
	jae	.L269
	movl	-516(%ebp), %ecx
	movl	-516(%ebp), %edx
	movl	-520(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -663(%ebp,%ecx)
	addl	$1, -516(%ebp)
	jmp	.L270
.L269:
	leal	-663(%ebp), %eax
	movl	%eax, -672(%ebp)
	movl	$work__prisc__ARCH__pipelined__P0__U2__STB.3907, -668(%ebp)
	movl	$_UI00000002.3915, %eax
	movl	%eax, -680(%ebp)
	movl	$work__prisc__ARCH__pipelined__P0__U5__STB.3916, -676(%ebp)
	leal	-680(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-672(%ebp), %eax
	movl	%eax, (%esp)
	call	ieee__std_logic_1164__std_logic_vector_EQ
	testb	%al, %al
	je	.L271
	movl	8(%ebp), %eax
	addl	$1744, %eax
	movl	%eax, -512(%ebp)
	movl	$0, -508(%ebp)
.L273:
	cmpl	$16, -508(%ebp)
	jae	.L272
	movl	-508(%ebp), %ecx
	movl	-508(%ebp), %edx
	movl	-512(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -696(%ebp,%ecx)
	addl	$1, -508(%ebp)
	jmp	.L273
.L272:
	movl	8(%ebp), %eax
	addl	$2128, %eax
	movl	%eax, -504(%ebp)
	movl	$0, -500(%ebp)
.L278:
	cmpl	$16, -500(%ebp)
	jae	.L279
	movl	-500(%ebp), %edx
	movl	-504(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -496(%ebp)
	movl	8(%ebp), %eax
	addl	$9538, %eax
	addl	-500(%ebp), %eax
	movl	%eax, -488(%ebp)
	leal	-696(%ebp), %edx
	movl	-500(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-488(%ebp), %eax
	movb	%dl, (%eax)
	movl	-496(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L275
	movb	$1, -489(%ebp)
	jmp	.L276
.L275:
	movl	-496(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-488(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -489(%ebp)
.L276:
	movl	-496(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-489(%ebp), %al
	testb	%al, %al
	je	.L277
	movl	-496(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-496(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L277:
	addl	$1, -500(%ebp)
	jmp	.L278
.L271:
	movl	8(%ebp), %eax
	addl	$2812, %eax
	addl	$12, %eax
	movl	%eax, -484(%ebp)
	movl	$0, -480(%ebp)
.L281:
	cmpl	$2, -480(%ebp)
	jae	.L280
	movl	-480(%ebp), %ecx
	movl	-480(%ebp), %edx
	movl	-484(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -698(%ebp,%ecx)
	addl	$1, -480(%ebp)
	jmp	.L281
.L280:
	leal	-698(%ebp), %eax
	movl	%eax, -708(%ebp)
	movl	$work__prisc__ARCH__pipelined__P0__U6__STB.3932, -704(%ebp)
	movl	$_UI00000003.3940, %eax
	movl	%eax, -716(%ebp)
	movl	$work__prisc__ARCH__pipelined__P0__U9__STB.3941, -712(%ebp)
	leal	-716(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-708(%ebp), %eax
	movl	%eax, (%esp)
	call	ieee__std_logic_1164__std_logic_vector_EQ
	testb	%al, %al
	je	.L282
	movl	8(%ebp), %eax
	addl	$2256, %eax
	movl	%eax, -476(%ebp)
	movl	$0, -472(%ebp)
.L284:
	cmpl	$16, -472(%ebp)
	jae	.L283
	movl	-472(%ebp), %ecx
	movl	-472(%ebp), %edx
	movl	-476(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -732(%ebp,%ecx)
	addl	$1, -472(%ebp)
	jmp	.L284
.L283:
	movl	8(%ebp), %eax
	addl	$2128, %eax
	movl	%eax, -468(%ebp)
	movl	$0, -464(%ebp)
.L289:
	cmpl	$16, -464(%ebp)
	jae	.L279
	movl	-464(%ebp), %edx
	movl	-468(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -460(%ebp)
	movl	8(%ebp), %eax
	addl	$9538, %eax
	addl	-464(%ebp), %eax
	movl	%eax, -452(%ebp)
	leal	-732(%ebp), %edx
	movl	-464(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-452(%ebp), %eax
	movb	%dl, (%eax)
	movl	-460(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L286
	movb	$1, -453(%ebp)
	jmp	.L287
.L286:
	movl	-460(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-452(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -453(%ebp)
.L287:
	movl	-460(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-453(%ebp), %al
	testb	%al, %al
	je	.L288
	movl	-460(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-460(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L288:
	addl	$1, -464(%ebp)
	jmp	.L289
.L282:
	movl	8(%ebp), %eax
	addl	$2320, %eax
	movl	%eax, -448(%ebp)
	movl	$0, -444(%ebp)
.L291:
	cmpl	$16, -444(%ebp)
	jae	.L290
	movl	-444(%ebp), %ecx
	movl	-444(%ebp), %edx
	movl	-448(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -748(%ebp,%ecx)
	addl	$1, -444(%ebp)
	jmp	.L291
.L290:
	movl	8(%ebp), %eax
	addl	$2128, %eax
	movl	%eax, -440(%ebp)
	movl	$0, -436(%ebp)
.L295:
	cmpl	$16, -436(%ebp)
	jae	.L279
	movl	-436(%ebp), %edx
	movl	-440(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -432(%ebp)
	movl	8(%ebp), %eax
	addl	$9538, %eax
	addl	-436(%ebp), %eax
	movl	%eax, -424(%ebp)
	leal	-748(%ebp), %edx
	movl	-436(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-424(%ebp), %eax
	movb	%dl, (%eax)
	movl	-432(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L292
	movb	$1, -425(%ebp)
	jmp	.L293
.L292:
	movl	-432(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-424(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -425(%ebp)
.L293:
	movl	-432(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-425(%ebp), %al
	testb	%al, %al
	je	.L294
	movl	-432(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-432(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L294:
	addl	$1, -436(%ebp)
	jmp	.L295
.L279:
	movl	$7, -420(%ebp)
	movl	8(%ebp), %eax
	movl	2644(%eax), %eax
	movl	%eax, -416(%ebp)
	movl	8(%ebp), %eax
	addl	$9554, %eax
	movl	%eax, -408(%ebp)
	movl	-420(%ebp), %eax
	movl	8(%ebp), %edx
	addl	$700, %eax
	movl	12(%edx,%eax,4), %eax
	movzbl	(%eax), %eax
	movb	%al, (%esp)
	call	ieee__std_logic_1164__notO1
	movl	%eax, %edx
	movl	-408(%ebp), %eax
	movb	%dl, (%eax)
	movl	-416(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L296
	movb	$1, -409(%ebp)
	jmp	.L297
.L296:
	movl	-416(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-408(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -409(%ebp)
.L297:
	movl	-416(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-409(%ebp), %al
	testb	%al, %al
	je	.L298
	movl	-416(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-416(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L298:
	movl	$9, -404(%ebp)
	movl	8(%ebp), %eax
	movl	2608(%eax), %eax
	movl	%eax, -400(%ebp)
	movl	8(%ebp), %eax
	addl	$9555, %eax
	movl	%eax, -392(%ebp)
	movl	-404(%ebp), %eax
	movl	8(%ebp), %edx
	addl	$700, %eax
	movl	12(%edx,%eax,4), %eax
	movzbl	(%eax), %edx
	movl	-392(%ebp), %eax
	movb	%dl, (%eax)
	movl	-400(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L299
	movb	$1, -393(%ebp)
	jmp	.L300
.L299:
	movl	-400(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-392(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -393(%ebp)
.L300:
	movl	-400(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-393(%ebp), %al
	testb	%al, %al
	je	.L301
	movl	-400(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-400(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L301:
	movl	$10, -388(%ebp)
	movl	8(%ebp), %eax
	movl	2612(%eax), %eax
	movl	%eax, -384(%ebp)
	movl	8(%ebp), %eax
	addl	$9556, %eax
	movl	%eax, -376(%ebp)
	movl	-388(%ebp), %eax
	movl	8(%ebp), %edx
	addl	$700, %eax
	movl	12(%edx,%eax,4), %eax
	movzbl	(%eax), %edx
	movl	-376(%ebp), %eax
	movb	%dl, (%eax)
	movl	-384(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L302
	movb	$1, -377(%ebp)
	jmp	.L303
.L302:
	movl	-384(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-376(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -377(%ebp)
.L303:
	movl	-384(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-377(%ebp), %al
	testb	%al, %al
	je	.L304
	movl	-384(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-384(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L304:
	movl	$11, -372(%ebp)
	movl	8(%ebp), %eax
	movl	2620(%eax), %eax
	movl	%eax, -368(%ebp)
	movl	8(%ebp), %eax
	addl	$9557, %eax
	movl	%eax, -360(%ebp)
	movl	-372(%ebp), %eax
	movl	8(%ebp), %edx
	addl	$720, %eax
	movl	8(%edx,%eax,4), %eax
	movzbl	(%eax), %edx
	movl	-360(%ebp), %eax
	movb	%dl, (%eax)
	movl	-368(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L305
	movb	$1, -361(%ebp)
	jmp	.L306
.L305:
	movl	-368(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-360(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -361(%ebp)
.L306:
	movl	-368(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-361(%ebp), %al
	testb	%al, %al
	je	.L307
	movl	-368(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-368(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L307:
	movl	$12, -356(%ebp)
	movl	8(%ebp), %eax
	movl	2624(%eax), %eax
	movl	%eax, -352(%ebp)
	movl	8(%ebp), %eax
	addl	$9558, %eax
	movl	%eax, -344(%ebp)
	movl	-356(%ebp), %eax
	movl	8(%ebp), %edx
	addl	$720, %eax
	movl	8(%edx,%eax,4), %eax
	movzbl	(%eax), %edx
	movl	-344(%ebp), %eax
	movb	%dl, (%eax)
	movl	-352(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L308
	movb	$1, -345(%ebp)
	jmp	.L309
.L308:
	movl	-352(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-344(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -345(%ebp)
.L309:
	movl	-352(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-345(%ebp), %al
	testb	%al, %al
	je	.L310
	movl	-352(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-352(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L310:
	movl	8(%ebp), %eax
	addl	$1936, %eax
	movl	%eax, -340(%ebp)
	movl	$0, -336(%ebp)
.L312:
	cmpl	$16, -336(%ebp)
	jae	.L311
	movl	-336(%ebp), %ecx
	movl	-336(%ebp), %edx
	movl	-340(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -764(%ebp,%ecx)
	addl	$1, -336(%ebp)
	jmp	.L312
.L311:
	movl	8(%ebp), %eax
	addl	$1424, %eax
	movl	%eax, -332(%ebp)
	movl	$0, -328(%ebp)
.L317:
	cmpl	$16, -328(%ebp)
	jae	.L313
	movl	-328(%ebp), %edx
	movl	-332(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -324(%ebp)
	movl	8(%ebp), %eax
	addl	$9559, %eax
	addl	-328(%ebp), %eax
	movl	%eax, -316(%ebp)
	leal	-764(%ebp), %edx
	movl	-328(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-316(%ebp), %eax
	movb	%dl, (%eax)
	movl	-324(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L314
	movb	$1, -317(%ebp)
	jmp	.L315
.L314:
	movl	-324(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-316(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -317(%ebp)
.L315:
	movl	-324(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-317(%ebp), %al
	testb	%al, %al
	je	.L316
	movl	-324(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-324(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L316:
	addl	$1, -328(%ebp)
	jmp	.L317
.L313:
	movl	$13, -312(%ebp)
	movl	-312(%ebp), %eax
	movl	8(%ebp), %edx
	addl	$720, %eax
	movl	8(%edx,%eax,4), %eax
	movzbl	(%eax), %eax
	cmpb	$3, %al
	jne	.L318
	movl	8(%ebp), %eax
	addl	$2064, %eax
	movl	%eax, -308(%ebp)
	movl	$0, -304(%ebp)
.L320:
	cmpl	$16, -304(%ebp)
	jae	.L319
	movl	-304(%ebp), %ecx
	movl	-304(%ebp), %edx
	movl	-308(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -780(%ebp,%ecx)
	addl	$1, -304(%ebp)
	jmp	.L320
.L319:
	movl	8(%ebp), %eax
	addl	$1296, %eax
	movl	%eax, -300(%ebp)
	movl	$0, -296(%ebp)
.L325:
	cmpl	$16, -296(%ebp)
	jae	.L326
	movl	-296(%ebp), %edx
	movl	-300(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -292(%ebp)
	movl	8(%ebp), %eax
	addl	$9575, %eax
	addl	-296(%ebp), %eax
	movl	%eax, -284(%ebp)
	leal	-780(%ebp), %edx
	movl	-296(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-284(%ebp), %eax
	movb	%dl, (%eax)
	movl	-292(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L322
	movb	$1, -285(%ebp)
	jmp	.L323
.L322:
	movl	-292(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-284(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -285(%ebp)
.L323:
	movl	-292(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-285(%ebp), %al
	testb	%al, %al
	je	.L324
	movl	-292(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-292(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L324:
	addl	$1, -296(%ebp)
	jmp	.L325
.L318:
	movl	8(%ebp), %eax
	addl	$16, %eax
	movl	%eax, -280(%ebp)
	movl	$0, -276(%ebp)
.L328:
	cmpl	$16, -276(%ebp)
	jae	.L327
	movl	-276(%ebp), %ecx
	movl	-276(%ebp), %edx
	movl	-280(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -796(%ebp,%ecx)
	addl	$1, -276(%ebp)
	jmp	.L328
.L327:
	movl	8(%ebp), %eax
	addl	$1296, %eax
	movl	%eax, -272(%ebp)
	movl	$0, -268(%ebp)
.L332:
	cmpl	$16, -268(%ebp)
	jae	.L326
	movl	-268(%ebp), %edx
	movl	-272(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -264(%ebp)
	movl	8(%ebp), %eax
	addl	$9575, %eax
	addl	-268(%ebp), %eax
	movl	%eax, -256(%ebp)
	leal	-796(%ebp), %edx
	movl	-268(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-256(%ebp), %eax
	movb	%dl, (%eax)
	movl	-264(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L329
	movb	$1, -257(%ebp)
	jmp	.L330
.L329:
	movl	-264(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-256(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -257(%ebp)
.L330:
	movl	-264(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-257(%ebp), %al
	testb	%al, %al
	je	.L331
	movl	-264(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-264(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L331:
	addl	$1, -268(%ebp)
	jmp	.L332
.L326:
	movl	8(%ebp), %eax
	addl	$2964, %eax
	addl	$56, %eax
	movl	%eax, -252(%ebp)
	movl	$0, -248(%ebp)
.L334:
	cmpl	$2, -248(%ebp)
	jae	.L333
	movl	-248(%ebp), %ecx
	movl	-248(%ebp), %edx
	movl	-252(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -798(%ebp,%ecx)
	addl	$1, -248(%ebp)
	jmp	.L334
.L333:
	leal	-798(%ebp), %eax
	movl	%eax, -808(%ebp)
	movl	$work__prisc__ARCH__pipelined__P0__U10__STB.4026, -804(%ebp)
	movl	$_UI00000004.4034, %eax
	movl	%eax, -816(%ebp)
	movl	$work__prisc__ARCH__pipelined__P0__U13__STB.4035, -812(%ebp)
	leal	-816(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-808(%ebp), %eax
	movl	%eax, (%esp)
	call	ieee__std_logic_1164__std_logic_vector_EQ
	testb	%al, %al
	je	.L335
	movl	8(%ebp), %eax
	addl	$656, %eax
	addl	$36, %eax
	movl	%eax, -244(%ebp)
	movl	$0, -240(%ebp)
.L337:
	cmpl	$3, -240(%ebp)
	jae	.L336
	movl	-240(%ebp), %ecx
	movl	-240(%ebp), %edx
	movl	-244(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -819(%ebp,%ecx)
	addl	$1, -240(%ebp)
	jmp	.L337
.L336:
	movl	8(%ebp), %eax
	addl	$3076, %eax
	movl	%eax, -236(%ebp)
	movl	$0, -232(%ebp)
.L342:
	cmpl	$3, -232(%ebp)
	jae	.L343
	movl	-232(%ebp), %edx
	movl	-236(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -228(%ebp)
	movl	8(%ebp), %eax
	addl	$9591, %eax
	addl	-232(%ebp), %eax
	movl	%eax, -220(%ebp)
	leal	-819(%ebp), %edx
	movl	-232(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-220(%ebp), %eax
	movb	%dl, (%eax)
	movl	-228(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L339
	movb	$1, -221(%ebp)
	jmp	.L340
.L339:
	movl	-228(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-220(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -221(%ebp)
.L340:
	movl	-228(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-221(%ebp), %al
	testb	%al, %al
	je	.L341
	movl	-228(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-228(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L341:
	addl	$1, -232(%ebp)
	jmp	.L342
.L335:
	movl	8(%ebp), %eax
	addl	$2964, %eax
	addl	$56, %eax
	movl	%eax, -216(%ebp)
	movl	$0, -212(%ebp)
.L345:
	cmpl	$2, -212(%ebp)
	jae	.L344
	movl	-212(%ebp), %ecx
	movl	-212(%ebp), %edx
	movl	-216(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -821(%ebp,%ecx)
	addl	$1, -212(%ebp)
	jmp	.L345
.L344:
	leal	-821(%ebp), %eax
	movl	%eax, -832(%ebp)
	movl	$work__prisc__ARCH__pipelined__P0__U15__STB.4054, -828(%ebp)
	movl	$_UI00000005.4062, %eax
	movl	%eax, -840(%ebp)
	movl	$work__prisc__ARCH__pipelined__P0__U18__STB.4063, -836(%ebp)
	leal	-840(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-832(%ebp), %eax
	movl	%eax, (%esp)
	call	ieee__std_logic_1164__std_logic_vector_EQ
	testb	%al, %al
	je	.L346
	movl	8(%ebp), %eax
	addl	$656, %eax
	addl	$12, %eax
	movl	%eax, -208(%ebp)
	movl	$0, -204(%ebp)
.L348:
	cmpl	$3, -204(%ebp)
	jae	.L347
	movl	-204(%ebp), %ecx
	movl	-204(%ebp), %edx
	movl	-208(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -843(%ebp,%ecx)
	addl	$1, -204(%ebp)
	jmp	.L348
.L347:
	movl	8(%ebp), %eax
	addl	$3076, %eax
	movl	%eax, -200(%ebp)
	movl	$0, -196(%ebp)
.L353:
	cmpl	$3, -196(%ebp)
	jae	.L343
	movl	-196(%ebp), %edx
	movl	-200(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -192(%ebp)
	movl	8(%ebp), %eax
	addl	$9591, %eax
	addl	-196(%ebp), %eax
	movl	%eax, -184(%ebp)
	leal	-843(%ebp), %edx
	movl	-196(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-184(%ebp), %eax
	movb	%dl, (%eax)
	movl	-192(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L350
	movb	$1, -185(%ebp)
	jmp	.L351
.L350:
	movl	-192(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-184(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -185(%ebp)
.L351:
	movl	-192(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-185(%ebp), %al
	testb	%al, %al
	je	.L352
	movl	-192(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-192(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L352:
	addl	$1, -196(%ebp)
	jmp	.L353
.L346:
	movl	8(%ebp), %eax
	addl	$3040, %eax
	movl	%eax, -180(%ebp)
	movl	$0, -176(%ebp)
.L355:
	cmpl	$3, -176(%ebp)
	jae	.L354
	movl	-176(%ebp), %ecx
	movl	-176(%ebp), %edx
	movl	-180(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -846(%ebp,%ecx)
	addl	$1, -176(%ebp)
	jmp	.L355
.L354:
	movl	8(%ebp), %eax
	addl	$3076, %eax
	movl	%eax, -172(%ebp)
	movl	$0, -168(%ebp)
.L359:
	cmpl	$3, -168(%ebp)
	jae	.L343
	movl	-168(%ebp), %edx
	movl	-172(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -164(%ebp)
	movl	8(%ebp), %eax
	addl	$9591, %eax
	addl	-168(%ebp), %eax
	movl	%eax, -156(%ebp)
	leal	-846(%ebp), %edx
	movl	-168(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-156(%ebp), %eax
	movb	%dl, (%eax)
	movl	-164(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L356
	movb	$1, -157(%ebp)
	jmp	.L357
.L356:
	movl	-164(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-156(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -157(%ebp)
.L357:
	movl	-164(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-157(%ebp), %al
	testb	%al, %al
	je	.L358
	movl	-164(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-164(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L358:
	addl	$1, -168(%ebp)
	jmp	.L359
.L343:
	movl	$18, -152(%ebp)
	movl	8(%ebp), %eax
	movl	2600(%eax), %eax
	movl	%eax, -148(%ebp)
	movl	8(%ebp), %eax
	addl	$9594, %eax
	movl	%eax, -140(%ebp)
	movl	-152(%ebp), %eax
	movl	8(%ebp), %edx
	addl	$740, %eax
	movl	4(%edx,%eax,4), %eax
	movzbl	(%eax), %edx
	movl	-140(%ebp), %eax
	movb	%dl, (%eax)
	movl	-148(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L360
	movb	$1, -141(%ebp)
	jmp	.L361
.L360:
	movl	-148(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-140(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -141(%ebp)
.L361:
	movl	-148(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-141(%ebp), %al
	testb	%al, %al
	je	.L362
	movl	-148(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-148(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L362:
	movl	8(%ebp), %eax
	addl	$2964, %eax
	addl	$64, %eax
	movl	%eax, -136(%ebp)
	movl	$0, -132(%ebp)
.L364:
	cmpl	$2, -132(%ebp)
	jae	.L363
	movl	-132(%ebp), %ecx
	movl	-132(%ebp), %edx
	movl	-136(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -848(%ebp,%ecx)
	addl	$1, -132(%ebp)
	jmp	.L364
.L363:
	leal	-848(%ebp), %eax
	movl	%eax, -856(%ebp)
	movl	$work__prisc__ARCH__pipelined__P0__U20__STB.4098, -852(%ebp)
	movl	$_UI00000006.4106, %eax
	movl	%eax, -864(%ebp)
	movl	$work__prisc__ARCH__pipelined__P0__U23__STB.4107, -860(%ebp)
	leal	-864(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-856(%ebp), %eax
	movl	%eax, (%esp)
	call	ieee__std_logic_1164__std_logic_vector_EQ
	testb	%al, %al
	je	.L365
	movl	8(%ebp), %eax
	addl	$1232, %eax
	movl	%eax, -128(%ebp)
	movl	$0, -124(%ebp)
.L367:
	cmpl	$16, -124(%ebp)
	jae	.L366
	movl	-124(%ebp), %ecx
	movl	-124(%ebp), %edx
	movl	-128(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -880(%ebp,%ecx)
	addl	$1, -124(%ebp)
	jmp	.L367
.L366:
	movl	8(%ebp), %eax
	addl	$1040, %eax
	movl	%eax, -120(%ebp)
	movl	$0, -116(%ebp)
.L372:
	cmpl	$16, -116(%ebp)
	jae	.L400
	movl	-116(%ebp), %edx
	movl	-120(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -112(%ebp)
	movl	8(%ebp), %eax
	addl	$9595, %eax
	addl	-116(%ebp), %eax
	movl	%eax, -104(%ebp)
	leal	-880(%ebp), %edx
	movl	-116(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-104(%ebp), %eax
	movb	%dl, (%eax)
	movl	-112(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L369
	movb	$1, -105(%ebp)
	jmp	.L370
.L369:
	movl	-112(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-104(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -105(%ebp)
.L370:
	movl	-112(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-105(%ebp), %al
	testb	%al, %al
	je	.L371
	movl	-112(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-112(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L371:
	addl	$1, -116(%ebp)
	jmp	.L372
.L365:
	movl	8(%ebp), %eax
	addl	$2964, %eax
	addl	$64, %eax
	movl	%eax, -100(%ebp)
	movl	$0, -96(%ebp)
.L375:
	cmpl	$2, -96(%ebp)
	jae	.L374
	movl	-96(%ebp), %ecx
	movl	-96(%ebp), %edx
	movl	-100(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -882(%ebp,%ecx)
	addl	$1, -96(%ebp)
	jmp	.L375
.L374:
	leal	-882(%ebp), %eax
	movl	%eax, -892(%ebp)
	movl	$work__prisc__ARCH__pipelined__P0__U24__STB.4123, -888(%ebp)
	movl	$_UI00000007.4131, %eax
	movl	%eax, -900(%ebp)
	movl	$work__prisc__ARCH__pipelined__P0__U27__STB.4132, -896(%ebp)
	leal	-900(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-892(%ebp), %eax
	movl	%eax, (%esp)
	call	ieee__std_logic_1164__std_logic_vector_EQ
	testb	%al, %al
	je	.L376
	movl	8(%ebp), %eax
	addl	$1104, %eax
	movl	%eax, -92(%ebp)
	movl	$0, -88(%ebp)
.L378:
	cmpl	$16, -88(%ebp)
	jae	.L377
	movl	-88(%ebp), %ecx
	movl	-88(%ebp), %edx
	movl	-92(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -916(%ebp,%ecx)
	addl	$1, -88(%ebp)
	jmp	.L378
.L377:
	movl	8(%ebp), %eax
	addl	$1040, %eax
	movl	%eax, -84(%ebp)
	movl	$0, -80(%ebp)
.L383:
	cmpl	$16, -80(%ebp)
	jae	.L400
	movl	-80(%ebp), %edx
	movl	-84(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -76(%ebp)
	movl	8(%ebp), %eax
	addl	$9595, %eax
	addl	-80(%ebp), %eax
	movl	%eax, -68(%ebp)
	leal	-916(%ebp), %edx
	movl	-80(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-68(%ebp), %eax
	movb	%dl, (%eax)
	movl	-76(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L380
	movb	$1, -69(%ebp)
	jmp	.L381
.L380:
	movl	-76(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-68(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -69(%ebp)
.L381:
	movl	-76(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-69(%ebp), %al
	testb	%al, %al
	je	.L382
	movl	-76(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-76(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L382:
	addl	$1, -80(%ebp)
	jmp	.L383
.L376:
	movl	8(%ebp), %eax
	addl	$2964, %eax
	addl	$64, %eax
	movl	%eax, -64(%ebp)
	movl	$0, -60(%ebp)
.L385:
	cmpl	$2, -60(%ebp)
	jae	.L384
	movl	-60(%ebp), %ecx
	movl	-60(%ebp), %edx
	movl	-64(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -918(%ebp,%ecx)
	addl	$1, -60(%ebp)
	jmp	.L385
.L384:
	leal	-918(%ebp), %eax
	movl	%eax, -928(%ebp)
	movl	$work__prisc__ARCH__pipelined__P0__U28__STB.4148, -924(%ebp)
	movl	$_UI00000008.4156, %eax
	movl	%eax, -936(%ebp)
	movl	$work__prisc__ARCH__pipelined__P0__U31__STB.4157, -932(%ebp)
	leal	-936(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-928(%ebp), %eax
	movl	%eax, (%esp)
	call	ieee__std_logic_1164__std_logic_vector_EQ
	testb	%al, %al
	je	.L386
	movl	8(%ebp), %eax
	addl	$1168, %eax
	movl	%eax, -56(%ebp)
	movl	$0, -52(%ebp)
.L388:
	cmpl	$16, -52(%ebp)
	jae	.L387
	movl	-52(%ebp), %ecx
	movl	-52(%ebp), %edx
	movl	-56(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -952(%ebp,%ecx)
	addl	$1, -52(%ebp)
	jmp	.L388
.L387:
	movl	8(%ebp), %eax
	addl	$1040, %eax
	movl	%eax, -48(%ebp)
	movl	$0, -44(%ebp)
.L393:
	cmpl	$16, -44(%ebp)
	jae	.L400
	movl	-44(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -40(%ebp)
	movl	8(%ebp), %eax
	addl	$9595, %eax
	addl	-44(%ebp), %eax
	movl	%eax, -32(%ebp)
	leal	-952(%ebp), %edx
	movl	-44(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-32(%ebp), %eax
	movb	%dl, (%eax)
	movl	-40(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L390
	movb	$1, -33(%ebp)
	jmp	.L391
.L390:
	movl	-40(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-32(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -33(%ebp)
.L391:
	movl	-40(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-33(%ebp), %al
	testb	%al, %al
	je	.L392
	movl	-40(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-40(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L392:
	addl	$1, -44(%ebp)
	jmp	.L393
.L386:
	movl	8(%ebp), %eax
	addl	$2384, %eax
	movl	%eax, -28(%ebp)
	movl	$0, -24(%ebp)
.L395:
	cmpl	$16, -24(%ebp)
	jae	.L394
	movl	-24(%ebp), %ecx
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -968(%ebp,%ecx)
	addl	$1, -24(%ebp)
	jmp	.L395
.L394:
	movl	8(%ebp), %eax
	addl	$1040, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
.L399:
	cmpl	$16, -16(%ebp)
	jae	.L400
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	addl	$9595, %eax
	addl	-16(%ebp), %eax
	movl	%eax, -4(%ebp)
	leal	-968(%ebp), %edx
	movl	-16(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-4(%ebp), %eax
	movb	%dl, (%eax)
	movl	-12(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L396
	movb	$1, -5(%ebp)
	jmp	.L397
.L396:
	movl	-12(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -5(%ebp)
.L397:
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-5(%ebp), %al
	testb	%al, %al
	je	.L398
	movl	-12(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-12(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L398:
	addl	$1, -16(%ebp)
	jmp	.L399
.L400:
	leave
	ret
	.size	work__prisc__ARCH__pipelined__P0__PROC, .-work__prisc__ARCH__pipelined__P0__PROC
	.section	.rodata
	.type	_UI00000009.4899, @object
	.size	_UI00000009.4899, 16
_UI00000009.4899:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI0000000a.4904, @object
	.size	_UI0000000a.4904, 16
_UI0000000a.4904:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI0000000b.4909, @object
	.size	_UI0000000b.4909, 16
_UI0000000b.4909:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI0000000c.4914, @object
	.size	_UI0000000c.4914, 16
_UI0000000c.4914:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI0000000d.4919, @object
	.size	_UI0000000d.4919, 16
_UI0000000d.4919:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI0000000e.4924, @object
	.size	_UI0000000e.4924, 16
_UI0000000e.4924:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI0000000f.4929, @object
	.size	_UI0000000f.4929, 16
_UI0000000f.4929:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI00000010.4934, @object
	.size	_UI00000010.4934, 16
_UI00000010.4934:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI00000011.4939, @object
	.size	_UI00000011.4939, 16
_UI00000011.4939:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI00000012.4944, @object
	.size	_UI00000012.4944, 16
_UI00000012.4944:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI00000013.4949, @object
	.size	_UI00000013.4949, 16
_UI00000013.4949:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI00000014.4954, @object
	.size	_UI00000014.4954, 16
_UI00000014.4954:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI00000015.4959, @object
	.size	_UI00000015.4959, 16
_UI00000015.4959:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI00000016.4964, @object
	.size	_UI00000016.4964, 16
_UI00000016.4964:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI00000017.4969, @object
	.size	_UI00000017.4969, 16
_UI00000017.4969:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI00000018.4974, @object
	.size	_UI00000018.4974, 16
_UI00000018.4974:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI00000019.4979, @object
	.size	_UI00000019.4979, 16
_UI00000019.4979:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI0000001a.4984, @object
	.size	_UI0000001a.4984, 16
_UI0000001a.4984:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI0000001b.4989, @object
	.size	_UI0000001b.4989, 16
_UI0000001b.4989:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI0000001c.4994, @object
	.size	_UI0000001c.4994, 16
_UI0000001c.4994:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI0000001d.4999, @object
	.size	_UI0000001d.4999, 16
_UI0000001d.4999:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI0000001e.5004, @object
	.size	_UI0000001e.5004, 16
_UI0000001e.5004:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI0000001f.5009, @object
	.size	_UI0000001f.5009, 16
_UI0000001f.5009:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI00000020.5014, @object
	.size	_UI00000020.5014, 16
_UI00000020.5014:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI00000021.5019, @object
	.size	_UI00000021.5019, 16
_UI00000021.5019:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI00000022.5024, @object
	.size	_UI00000022.5024, 16
_UI00000022.5024:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI00000023.5029, @object
	.size	_UI00000023.5029, 16
_UI00000023.5029:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI00000024.5034, @object
	.size	_UI00000024.5034, 16
_UI00000024.5034:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI00000025.5039, @object
	.size	_UI00000025.5039, 16
_UI00000025.5039:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI00000026.5044, @object
	.size	_UI00000026.5044, 16
_UI00000026.5044:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI00000027.5049, @object
	.size	_UI00000027.5049, 16
_UI00000027.5049:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI00000028.5054, @object
	.size	_UI00000028.5054, 16
_UI00000028.5054:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI00000029.5059, @object
	.size	_UI00000029.5059, 16
_UI00000029.5059:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI0000002a.5064, @object
	.size	_UI0000002a.5064, 16
_UI0000002a.5064:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI0000002b.5069, @object
	.size	_UI0000002b.5069, 16
_UI0000002b.5069:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI0000002c.5074, @object
	.size	_UI0000002c.5074, 16
_UI0000002c.5074:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI0000002d.5079, @object
	.size	_UI0000002d.5079, 16
_UI0000002d.5079:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI0000002e.5084, @object
	.size	_UI0000002e.5084, 16
_UI0000002e.5084:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI0000002f.5089, @object
	.size	_UI0000002f.5089, 16
_UI0000002f.5089:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI00000030.5094, @object
	.size	_UI00000030.5094, 16
_UI00000030.5094:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.type	_UI00000031.5099, @object
	.size	_UI00000031.5099, 19
_UI00000031.5099:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI00000032.5104, @object
	.size	_UI00000032.5104, 19
_UI00000032.5104:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI00000033.5109, @object
	.size	_UI00000033.5109, 19
_UI00000033.5109:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI00000034.5114, @object
	.size	_UI00000034.5114, 19
_UI00000034.5114:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI00000035.5119, @object
	.size	_UI00000035.5119, 19
_UI00000035.5119:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.type	_UI00000036.5124, @object
	.size	_UI00000036.5124, 3
_UI00000036.5124:
	.byte	2
	.byte	2
	.byte	2
	.type	_UI00000037.5129, @object
	.size	_UI00000037.5129, 3
_UI00000037.5129:
	.byte	2
	.byte	2
	.byte	2
	.type	_UI00000038.5134, @object
	.size	_UI00000038.5134, 3
_UI00000038.5134:
	.byte	2
	.byte	2
	.byte	2
	.type	_UI00000039.5139, @object
	.size	_UI00000039.5139, 3
_UI00000039.5139:
	.byte	2
	.byte	2
	.byte	2
	.text
.globl work__prisc__ARCH__pipelined__ELAB
	.type	work__prisc__ARCH__pipelined__ELAB, @function
work__prisc__ARCH__pipelined__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$484, %esp
	movl	8(%ebp), %eax
	movl	%eax, -464(%ebp)
	movl	8(%ebp), %eax
	movl	$work__prisc__ARCH__pipelined__RTI, (%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	work__prisc__ELAB
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__zeros__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$16, %eax
	movl	%eax, -460(%ebp)
	movl	$0, -456(%ebp)
.L403:
	cmpl	$16, -456(%ebp)
	jae	.L402
	movl	-456(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI00000009.4899, %edx
	movl	-456(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-460(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -456(%ebp)
	jmp	.L403
.L402:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__pc_in__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$80, %eax
	movl	%eax, -452(%ebp)
	movl	$0, -448(%ebp)
.L405:
	cmpl	$16, -448(%ebp)
	jae	.L404
	movl	-448(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI0000000a.4904, %edx
	movl	-448(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-452(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -448(%ebp)
	jmp	.L405
.L404:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__pc_out__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$144, %eax
	movl	%eax, -444(%ebp)
	movl	$0, -440(%ebp)
.L407:
	cmpl	$16, -440(%ebp)
	jae	.L406
	movl	-440(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI0000000b.4909, %edx
	movl	-440(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-444(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -440(%ebp)
	jmp	.L407
.L406:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__palu_out__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$208, %eax
	movl	%eax, -436(%ebp)
	movl	$0, -432(%ebp)
.L409:
	cmpl	$16, -432(%ebp)
	jae	.L408
	movl	-432(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI0000000c.4914, %edx
	movl	-432(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-436(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -432(%ebp)
	jmp	.L409
.L408:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__malu_out__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$272, %eax
	movl	%eax, -428(%ebp)
	movl	$0, -424(%ebp)
.L411:
	cmpl	$16, -424(%ebp)
	jae	.L410
	movl	-424(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI0000000d.4919, %edx
	movl	-424(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-428(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -424(%ebp)
	jmp	.L411
.L410:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__codemem_out__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$336, %eax
	movl	%eax, -420(%ebp)
	movl	$0, -416(%ebp)
.L413:
	cmpl	$16, -416(%ebp)
	jae	.L412
	movl	-416(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI0000000e.4924, %edx
	movl	-416(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-420(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -416(%ebp)
	jmp	.L413
.L412:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__ir_out_p0__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$400, %eax
	movl	%eax, -412(%ebp)
	movl	$0, -408(%ebp)
.L415:
	cmpl	$16, -408(%ebp)
	jae	.L414
	movl	-408(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI0000000f.4929, %edx
	movl	-408(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-412(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -408(%ebp)
	jmp	.L415
.L414:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__ir_out_pa__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$464, %eax
	movl	%eax, -404(%ebp)
	movl	$0, -400(%ebp)
.L417:
	cmpl	$16, -400(%ebp)
	jae	.L416
	movl	-400(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI00000010.4934, %edx
	movl	-400(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-404(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -400(%ebp)
	jmp	.L417
.L416:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__ir_out_pb__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$528, %eax
	movl	%eax, -396(%ebp)
	movl	$0, -392(%ebp)
.L419:
	cmpl	$16, -392(%ebp)
	jae	.L418
	movl	-392(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI00000011.4939, %edx
	movl	-392(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-396(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -392(%ebp)
	jmp	.L419
.L418:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__ir_out_pc__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$592, %eax
	movl	%eax, -388(%ebp)
	movl	$0, -384(%ebp)
.L421:
	cmpl	$16, -384(%ebp)
	jae	.L420
	movl	-384(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI00000012.4944, %edx
	movl	-384(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-388(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -384(%ebp)
	jmp	.L421
.L420:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__ir_out_pd__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$656, %eax
	movl	%eax, -380(%ebp)
	movl	$0, -376(%ebp)
.L423:
	cmpl	$16, -376(%ebp)
	jae	.L422
	movl	-376(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI00000013.4949, %edx
	movl	-376(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-380(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -376(%ebp)
	jmp	.L423
.L422:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__npc_out_p0__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$720, %eax
	movl	%eax, -372(%ebp)
	movl	$0, -368(%ebp)
.L425:
	cmpl	$16, -368(%ebp)
	jae	.L424
	movl	-368(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI00000014.4954, %edx
	movl	-368(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-372(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -368(%ebp)
	jmp	.L425
.L424:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__npc_out_pb__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$784, %eax
	movl	%eax, -364(%ebp)
	movl	$0, -360(%ebp)
.L427:
	cmpl	$16, -360(%ebp)
	jae	.L426
	movl	-360(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI00000015.4959, %edx
	movl	-360(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-364(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -360(%ebp)
	jmp	.L427
.L426:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__npc_out_pa__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$848, %eax
	movl	%eax, -356(%ebp)
	movl	$0, -352(%ebp)
.L429:
	cmpl	$16, -352(%ebp)
	jae	.L428
	movl	-352(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI00000016.4964, %edx
	movl	-352(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-356(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -352(%ebp)
	jmp	.L429
.L428:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__rf_d1__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$912, %eax
	movl	%eax, -348(%ebp)
	movl	$0, -344(%ebp)
.L431:
	cmpl	$16, -344(%ebp)
	jae	.L430
	movl	-344(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI00000017.4969, %edx
	movl	-344(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-348(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -344(%ebp)
	jmp	.L431
.L430:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__rf_d2__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$976, %eax
	movl	%eax, -340(%ebp)
	movl	$0, -336(%ebp)
.L433:
	cmpl	$16, -336(%ebp)
	jae	.L432
	movl	-336(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI00000018.4974, %edx
	movl	-336(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-340(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -336(%ebp)
	jmp	.L433
.L432:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__rf_d3__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$1040, %eax
	movl	%eax, -332(%ebp)
	movl	$0, -328(%ebp)
.L435:
	cmpl	$16, -328(%ebp)
	jae	.L434
	movl	-328(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI00000019.4979, %edx
	movl	-328(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-332(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -328(%ebp)
	jmp	.L435
.L434:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__npc_out_pd__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$1104, %eax
	movl	%eax, -324(%ebp)
	movl	$0, -320(%ebp)
.L437:
	cmpl	$16, -320(%ebp)
	jae	.L436
	movl	-320(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI0000001a.4984, %edx
	movl	-320(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-324(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -320(%ebp)
	jmp	.L437
.L436:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__memd_out_pd__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$1168, %eax
	movl	%eax, -316(%ebp)
	movl	$0, -312(%ebp)
.L439:
	cmpl	$16, -312(%ebp)
	jae	.L438
	movl	-312(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI0000001b.4989, %edx
	movl	-312(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-316(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -312(%ebp)
	jmp	.L439
.L438:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__t3_out_pd__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$1232, %eax
	movl	%eax, -308(%ebp)
	movl	$0, -304(%ebp)
.L441:
	cmpl	$16, -304(%ebp)
	jae	.L440
	movl	-304(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI0000001c.4994, %edx
	movl	-304(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-308(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -304(%ebp)
	jmp	.L441
.L440:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__datamem_a__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$1296, %eax
	movl	%eax, -300(%ebp)
	movl	$0, -296(%ebp)
.L443:
	cmpl	$16, -296(%ebp)
	jae	.L442
	movl	-296(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI0000001d.4999, %edx
	movl	-296(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-300(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -296(%ebp)
	jmp	.L443
.L442:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__datamem_out__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$1360, %eax
	movl	%eax, -292(%ebp)
	movl	$0, -288(%ebp)
.L445:
	cmpl	$16, -288(%ebp)
	jae	.L444
	movl	-288(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI0000001e.5004, %edx
	movl	-288(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-292(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -288(%ebp)
	jmp	.L445
.L444:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__datamem_din__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$1424, %eax
	movl	%eax, -284(%ebp)
	movl	$0, -280(%ebp)
.L447:
	cmpl	$16, -280(%ebp)
	jae	.L446
	movl	-280(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI0000001f.5009, %edx
	movl	-280(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-284(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -280(%ebp)
	jmp	.L447
.L446:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__t1_in__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$1488, %eax
	movl	%eax, -276(%ebp)
	movl	$0, -272(%ebp)
.L449:
	cmpl	$16, -272(%ebp)
	jae	.L448
	movl	-272(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI00000020.5014, %edx
	movl	-272(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-276(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -272(%ebp)
	jmp	.L449
.L448:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__t2_out_pb__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$1552, %eax
	movl	%eax, -268(%ebp)
	movl	$0, -264(%ebp)
.L451:
	cmpl	$16, -264(%ebp)
	jae	.L450
	movl	-264(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI00000021.5019, %edx
	movl	-264(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-268(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -264(%ebp)
	jmp	.L451
.L450:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__t2_out_pc__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$1616, %eax
	movl	%eax, -260(%ebp)
	movl	$0, -256(%ebp)
.L453:
	cmpl	$16, -256(%ebp)
	jae	.L452
	movl	-256(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI00000022.5024, %edx
	movl	-256(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-260(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -256(%ebp)
	jmp	.L453
.L452:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__t2_out_pd__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$1680, %eax
	movl	%eax, -252(%ebp)
	movl	$0, -248(%ebp)
.L455:
	cmpl	$16, -248(%ebp)
	jae	.L454
	movl	-248(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI00000023.5029, %edx
	movl	-248(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-252(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -248(%ebp)
	jmp	.L455
.L454:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__t1_out_pb__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$1744, %eax
	movl	%eax, -244(%ebp)
	movl	$0, -240(%ebp)
.L457:
	cmpl	$16, -240(%ebp)
	jae	.L456
	movl	-240(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI00000024.5034, %edx
	movl	-240(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-244(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -240(%ebp)
	jmp	.L457
.L456:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__t3_out_pb__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$1808, %eax
	movl	%eax, -236(%ebp)
	movl	$0, -232(%ebp)
.L459:
	cmpl	$16, -232(%ebp)
	jae	.L458
	movl	-232(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI00000025.5039, %edx
	movl	-232(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-236(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -232(%ebp)
	jmp	.L459
.L458:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__npc_out_pc__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$1872, %eax
	movl	%eax, -228(%ebp)
	movl	$0, -224(%ebp)
.L461:
	cmpl	$16, -224(%ebp)
	jae	.L460
	movl	-224(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI00000026.5044, %edx
	movl	-224(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-228(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -224(%ebp)
	jmp	.L461
.L460:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__t1_out_pc__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$1936, %eax
	movl	%eax, -220(%ebp)
	movl	$0, -216(%ebp)
.L463:
	cmpl	$16, -216(%ebp)
	jae	.L462
	movl	-216(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI00000027.5049, %edx
	movl	-216(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-220(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -216(%ebp)
	jmp	.L463
.L462:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__t1_out_pd__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$2000, %eax
	movl	%eax, -212(%ebp)
	movl	$0, -208(%ebp)
.L465:
	cmpl	$16, -208(%ebp)
	jae	.L464
	movl	-208(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI00000028.5054, %edx
	movl	-208(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-212(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -208(%ebp)
	jmp	.L465
.L464:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__t3_out_pc__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$2064, %eax
	movl	%eax, -204(%ebp)
	movl	$0, -200(%ebp)
.L467:
	cmpl	$16, -200(%ebp)
	jae	.L466
	movl	-200(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI00000029.5059, %edx
	movl	-200(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-204(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -200(%ebp)
	jmp	.L467
.L466:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__alu_1__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$2128, %eax
	movl	%eax, -196(%ebp)
	movl	$0, -192(%ebp)
.L469:
	cmpl	$16, -192(%ebp)
	jae	.L468
	movl	-192(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI0000002a.5064, %edx
	movl	-192(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-196(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -192(%ebp)
	jmp	.L469
.L468:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__alu_2__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$2192, %eax
	movl	%eax, -188(%ebp)
	movl	$0, -184(%ebp)
.L471:
	cmpl	$16, -184(%ebp)
	jae	.L470
	movl	-184(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI0000002b.5069, %edx
	movl	-184(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-188(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -184(%ebp)
	jmp	.L471
.L470:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__ir_out_pb_50__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$2256, %eax
	movl	%eax, -180(%ebp)
	movl	$0, -176(%ebp)
.L473:
	cmpl	$16, -176(%ebp)
	jae	.L472
	movl	-176(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI0000002c.5074, %edx
	movl	-176(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-180(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -176(%ebp)
	jmp	.L473
.L472:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__ir_out_pb_80__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$2320, %eax
	movl	%eax, -172(%ebp)
	movl	$0, -168(%ebp)
.L475:
	cmpl	$16, -168(%ebp)
	jae	.L474
	movl	-168(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI0000002d.5079, %edx
	movl	-168(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-172(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -168(%ebp)
	jmp	.L475
.L474:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__ir_out_pd_80__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$2384, %eax
	movl	%eax, -164(%ebp)
	movl	$0, -160(%ebp)
.L477:
	cmpl	$16, -160(%ebp)
	jae	.L476
	movl	-160(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI0000002e.5084, %edx
	movl	-160(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-164(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -160(%ebp)
	jmp	.L477
.L476:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__ir__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$2448, %eax
	movl	%eax, -156(%ebp)
	movl	$0, -152(%ebp)
.L479:
	cmpl	$16, -152(%ebp)
	jae	.L478
	movl	-152(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI0000002f.5089, %edx
	movl	-152(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-156(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -152(%ebp)
	jmp	.L479
.L478:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__one__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$2512, %eax
	movl	%eax, -148(%ebp)
	movl	$0, -144(%ebp)
.L481:
	cmpl	$16, -144(%ebp)
	jae	.L480
	movl	-144(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI00000030.5094, %edx
	movl	-144(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-148(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -144(%ebp)
	jmp	.L481
.L480:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__pc_en__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$2, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-464(%ebp), %eax
	movl	%edx, 2576(%eax)
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__codemem_init__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$2, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-464(%ebp), %eax
	movl	%edx, 2580(%eax)
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__p0_en__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$2, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-464(%ebp), %eax
	movl	%edx, 2584(%eax)
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__pa_en__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$2, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-464(%ebp), %eax
	movl	%edx, 2588(%eax)
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__pb_en__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$2, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-464(%ebp), %eax
	movl	%edx, 2592(%eax)
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__pd_en__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$2, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-464(%ebp), %eax
	movl	%edx, 2596(%eax)
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__rf_wr__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$2, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-464(%ebp), %eax
	movl	%edx, 2600(%eax)
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__rf_rst__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$2, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-464(%ebp), %eax
	movl	%edx, 2604(%eax)
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__cen__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$2, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-464(%ebp), %eax
	movl	%edx, 2608(%eax)
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__zen__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$2, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-464(%ebp), %eax
	movl	%edx, 2612(%eax)
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__datamem_init__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$2, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-464(%ebp), %eax
	movl	%edx, 2616(%eax)
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__datamem_rd__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$2, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-464(%ebp), %eax
	movl	%edx, 2620(%eax)
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__datamem_wr__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$2, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-464(%ebp), %eax
	movl	%edx, 2624(%eax)
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__zin__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$2, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-464(%ebp), %eax
	movl	%edx, 2628(%eax)
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__zout__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$2, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-464(%ebp), %eax
	movl	%edx, 2632(%eax)
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__cin__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$2, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-464(%ebp), %eax
	movl	%edx, 2636(%eax)
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__cout__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$2, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-464(%ebp), %eax
	movl	%edx, 2640(%eax)
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__alu_op1__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$2, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-464(%ebp), %eax
	movl	%edx, 2644(%eax)
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__iter_in__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$2, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-464(%ebp), %eax
	movl	%edx, 2648(%eax)
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__iter_out__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$2, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-464(%ebp), %eax
	movl	%edx, 2652(%eax)
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__iter_en__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$2, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-464(%ebp), %eax
	movl	%edx, 2656(%eax)
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__contr_pa_in__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$2660, %eax
	movl	%eax, -140(%ebp)
	movl	$0, -136(%ebp)
.L483:
	cmpl	$19, -136(%ebp)
	jae	.L482
	movl	-136(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI00000031.5099, %edx
	movl	-136(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-140(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -136(%ebp)
	jmp	.L483
.L482:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__contr_pa_out__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$2736, %eax
	movl	%eax, -132(%ebp)
	movl	$0, -128(%ebp)
.L485:
	cmpl	$19, -128(%ebp)
	jae	.L484
	movl	-128(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI00000032.5104, %edx
	movl	-128(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-132(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -128(%ebp)
	jmp	.L485
.L484:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__contr_pb_out__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$2812, %eax
	movl	%eax, -124(%ebp)
	movl	$0, -120(%ebp)
.L487:
	cmpl	$19, -120(%ebp)
	jae	.L486
	movl	-120(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI00000033.5109, %edx
	movl	-120(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-124(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -120(%ebp)
	jmp	.L487
.L486:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__contr_pc_out__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$2888, %eax
	movl	%eax, -116(%ebp)
	movl	$0, -112(%ebp)
.L489:
	cmpl	$19, -112(%ebp)
	jae	.L488
	movl	-112(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI00000034.5114, %edx
	movl	-112(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-116(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -112(%ebp)
	jmp	.L489
.L488:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__contr_pd_out__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$2964, %eax
	movl	%eax, -108(%ebp)
	movl	$0, -104(%ebp)
.L491:
	cmpl	$19, -104(%ebp)
	jae	.L490
	movl	-104(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI00000035.5119, %edx
	movl	-104(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-108(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -104(%ebp)
	jmp	.L491
.L490:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__pe_out__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$3040, %eax
	movl	%eax, -100(%ebp)
	movl	$0, -96(%ebp)
.L493:
	cmpl	$3, -96(%ebp)
	jae	.L492
	movl	-96(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI00000036.5124, %edx
	movl	-96(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-100(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -96(%ebp)
	jmp	.L493
.L492:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__rf_a1__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$3052, %eax
	movl	%eax, -92(%ebp)
	movl	$0, -88(%ebp)
.L495:
	cmpl	$3, -88(%ebp)
	jae	.L494
	movl	-88(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI00000037.5129, %edx
	movl	-88(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-92(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -88(%ebp)
	jmp	.L495
.L494:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__rf_a2__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$3064, %eax
	movl	%eax, -84(%ebp)
	movl	$0, -80(%ebp)
.L497:
	cmpl	$3, -80(%ebp)
	jae	.L496
	movl	-80(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI00000038.5134, %edx
	movl	-80(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-84(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -80(%ebp)
	jmp	.L497
.L496:
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__prisc__ARCH__pipelined__RTI, 4(%esp)
	movl	$work__prisc__ARCH__pipelined__rf_a3__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	-464(%ebp), %eax
	addl	$3076, %eax
	movl	%eax, -76(%ebp)
	movl	$0, -72(%ebp)
.L499:
	cmpl	$3, -72(%ebp)
	jae	.L498
	movl	-72(%ebp), %ebx
	movl	$ieee__std_logic_1164__resolved_RESOLV, %ecx
	movl	$_UI00000039.5139, %edx
	movl	-72(%ebp), %eax
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-76(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	addl	$1, -72(%ebp)
	jmp	.L499
.L498:
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	work__prisc__ARCH__pipelined__pc__ELAB
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	work__prisc__ARCH__pipelined__codemem__ELAB
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	work__prisc__ARCH__pipelined__palu__ELAB
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	work__prisc__ARCH__pipelined__dec__ELAB
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	work__prisc__ARCH__pipelined__pipe0__ELAB
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	work__prisc__ARCH__pipelined__rf_main__ELAB
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	work__prisc__ARCH__pipelined__pipea__ELAB
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	work__prisc__ARCH__pipelined__malu__ELAB
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	work__prisc__ARCH__pipelined__pipeb__ELAB
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	work__prisc__ARCH__pipelined__datamem__ELAB
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	work__prisc__ARCH__pipelined__pipec__ELAB
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	work__prisc__ARCH__pipelined__piped__ELAB
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	work__prisc__ARCH__pipelined__alu_se10__ELAB
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	work__prisc__ARCH__pipelined__alu_se7__ELAB
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	work__prisc__ARCH__pipelined__pd_se7__ELAB
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	work__prisc__ARCH__pipelined__car__ELAB
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	work__prisc__ARCH__pipelined__zer__ELAB
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	work__prisc__ARCH__pipelined__iter__ELAB
	movl	-464(%ebp), %eax
	addl	$9516, %eax
	movl	$work__prisc__ARCH__pipelined__P0__PROC, %edx
	movl	-464(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	$work__prisc__ARCH__pipelined__P0__RTI, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	__ghdl_sensitized_process_register
	movl	-464(%ebp), %eax
	addl	$80, %eax
	movl	%eax, -68(%ebp)
	movl	$0, -64(%ebp)
.L501:
	cmpl	$16, -64(%ebp)
	jae	.L500
	movl	-464(%ebp), %eax
	addl	$9516, %eax
	movl	%eax, %ecx
	addl	-64(%ebp), %ecx
	movl	-64(%ebp), %edx
	movl	-68(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	addl	$1, -64(%ebp)
	jmp	.L501
.L500:
	movl	-464(%ebp), %eax
	addl	$3052, %eax
	movl	%eax, -60(%ebp)
	movl	$0, -56(%ebp)
.L503:
	cmpl	$3, -56(%ebp)
	jae	.L502
	movl	-464(%ebp), %eax
	addl	$9532, %eax
	movl	%eax, %ecx
	addl	-56(%ebp), %ecx
	movl	-56(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	addl	$1, -56(%ebp)
	jmp	.L503
.L502:
	movl	-464(%ebp), %eax
	addl	$3064, %eax
	movl	%eax, -52(%ebp)
	movl	$0, -48(%ebp)
.L505:
	cmpl	$3, -48(%ebp)
	jae	.L504
	movl	-464(%ebp), %eax
	addl	$9535, %eax
	movl	%eax, %ecx
	addl	-48(%ebp), %ecx
	movl	-48(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	addl	$1, -48(%ebp)
	jmp	.L505
.L504:
	movl	-464(%ebp), %eax
	addl	$2128, %eax
	movl	%eax, -44(%ebp)
	movl	$0, -40(%ebp)
.L507:
	cmpl	$16, -40(%ebp)
	jae	.L506
	movl	-464(%ebp), %eax
	addl	$9538, %eax
	movl	%eax, %ecx
	addl	-40(%ebp), %ecx
	movl	-40(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	addl	$1, -40(%ebp)
	jmp	.L507
.L506:
	movl	-464(%ebp), %eax
	leal	9554(%eax), %edx
	movl	-464(%ebp), %eax
	movl	2644(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	movl	-464(%ebp), %eax
	leal	9555(%eax), %edx
	movl	-464(%ebp), %eax
	movl	2608(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	movl	-464(%ebp), %eax
	leal	9556(%eax), %edx
	movl	-464(%ebp), %eax
	movl	2612(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	movl	-464(%ebp), %eax
	leal	9557(%eax), %edx
	movl	-464(%ebp), %eax
	movl	2620(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	movl	-464(%ebp), %eax
	leal	9558(%eax), %edx
	movl	-464(%ebp), %eax
	movl	2624(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	movl	-464(%ebp), %eax
	addl	$1424, %eax
	movl	%eax, -36(%ebp)
	movl	$0, -32(%ebp)
.L509:
	cmpl	$16, -32(%ebp)
	jae	.L508
	movl	-464(%ebp), %eax
	addl	$9559, %eax
	movl	%eax, %ecx
	addl	-32(%ebp), %ecx
	movl	-32(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	addl	$1, -32(%ebp)
	jmp	.L509
.L508:
	movl	-464(%ebp), %eax
	addl	$1296, %eax
	movl	%eax, -28(%ebp)
	movl	$0, -24(%ebp)
.L511:
	cmpl	$16, -24(%ebp)
	jae	.L510
	movl	-464(%ebp), %eax
	addl	$9575, %eax
	movl	%eax, %ecx
	addl	-24(%ebp), %ecx
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	addl	$1, -24(%ebp)
	jmp	.L511
.L510:
	movl	-464(%ebp), %eax
	addl	$3076, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
.L513:
	cmpl	$3, -16(%ebp)
	jae	.L512
	movl	-464(%ebp), %eax
	addl	$9591, %eax
	movl	%eax, %ecx
	addl	-16(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	addl	$1, -16(%ebp)
	jmp	.L513
.L512:
	movl	-464(%ebp), %eax
	leal	9594(%eax), %edx
	movl	-464(%ebp), %eax
	movl	2600(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	movl	-464(%ebp), %eax
	addl	$1040, %eax
	movl	%eax, -12(%ebp)
	movl	$0, -8(%ebp)
.L515:
	cmpl	$16, -8(%ebp)
	jae	.L514
	movl	-464(%ebp), %eax
	addl	$9595, %eax
	movl	%eax, %ecx
	addl	-8(%ebp), %ecx
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	addl	$1, -8(%ebp)
	jmp	.L515
.L514:
	movl	-464(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	movl	-464(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	addl	$484, %esp
	popl	%ebx
	popl	%ebp
	ret
	.size	work__prisc__ARCH__pipelined__ELAB, .-work__prisc__ARCH__pipelined__ELAB
	.ident	"GCC: (GNU) 4.3.4"
	.section	.note.GNU-stack,"",@progbits
