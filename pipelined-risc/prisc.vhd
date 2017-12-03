library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.numeric_std.all; 

entity prisc is
  port ( clk, rst : in std_logic);
end entity;

architecture pipelined of prisc is

	component decoder is
		port(X: in std_logic_vector(3 downto 0);
			 Y: out std_logic_vector(18 downto 0));
	end component;

	component pipe is
		port ( ir_in, npc_in, t1_in, t2_in, t3_in, memd_in : in std_logic_vector(15 downto 0);
			ir_out, npc_out, t1_out, t2_out, t3_out, memd_out : out std_logic_vector(15 downto 0);
			contr_in : in std_logic_vector(18 downto 0);
			contr_out : out std_logic_vector(18 downto 0);
			pipe_en, c_in, z_in : in std_logic;
			c_out, z_out : out std_logic;
			rst, clk : in std_logic);
	end component;

	component alu is 
		port( X,Y : in std_logic_vector(15 downto 0);
			x0,x1 : in std_logic ;
			C_in: in std_logic;
			C_out, Z_out: out std_logic;
			S : out std_logic_vector(15 downto 0));
	end component;

	component code_memory is 
		port ( wr,rd, init : in std_logic; 
				Add_in, D_in: in std_logic_vector(15 downto 0);
				Y_out: out std_logic_vector(15 downto 0)); 
	end component; 
	
	
	component data_memory is 
		port ( wr,rd, init : in std_logic; 
				Add_in, D_in: in std_logic_vector(15 downto 0);
				Y_out: out std_logic_vector(15 downto 0)); 
	end component; 

	component comparator is
	  port ( X, Y : in std_logic_vector(15 downto 0);
			eq : out std_logic);
	end component ;

	component rf_comp is 
		port( A1,A2,A3 : in std_logic_vector(2 downto 0);
			  D3, D_pc_in: in std_logic_vector(15 downto 0);
			  
			clk,wr, reset, pc_wr: in std_logic ; -- No separate control for PC required; simply drive 111 to A_
			D1, D2, D_pc_out: out std_logic_vector(15 downto 0));
	end component;

	component dregister_1 is                 -- no. of bits
	  port (
		din  : in  std_logic;
		dout : out std_logic;
		enable: in std_logic;
	   rst : in std_logic;
		clk     : in  std_logic);
	end component;

	component dregister is                 -- no. of bits
	  port (
		din  : in  std_logic_vector(15 downto 0);
		dout : out std_logic_vector(15 downto 0);
		enable: in std_logic;
	   rst : in std_logic;
		clk     : in  std_logic);
	end component;

	component se7 is 
		port( se_in : in std_logic_vector(8 downto 0);
			  se_type : in std_logic;
			  se_out: out std_logic_vector(15 downto 0));
	end component;

	component se10 is 
		port( se_in : in std_logic_vector(5 downto 0);
			  se_out: out std_logic_vector(15 downto 0));
	end component;

	component pr_encoder is
		port( x_in : in std_logic_vector (7 downto 0);
			  x_out: out std_logic_vector(2 downto 0);
			  x_none: out std_logic);
	end component;

signal prc_in : std_logic_vector(15 downto 0) := (others => '0');

signal zeros, prc_out, palu_out, malu_out, codemem_out, ir_out_p0, ir_out_pa, ir_out_pb, ir_out_pc, ir_out_pd, npc_out_p0, npc_out_pb,
	npc_out_pa, rf_D1, rf_D2, rf_D3, npc_out_pd, memd_out_pd, t3_out_pd, datamem_a, datamem_out, datamem_din , t1_in, t2_out_pb, t2_out_pc, t2_out_pd,
	t1_out_pb, t3_out_pb, npc_out_pc, t1_out_pc, t1_out_pd, t3_out_pc, alu_1, alu_2, ir_out_pb_50, ir_out_p0_80,ir_out_pb_80, ir_out_pd_80, t1_out_p0, t2_out_p0,
	t3_out_p0, memd_out_p0, ir_in_pa, npc_in_pa, t1_in_pa, t2_in_pa, t3_in_pa, memd_in_pa, t1_out_pa, t2_out_pa, t3_out_pa, memd_out_pa, ir_in_pb,
	npc_in_pb, t1_in_pb, t2_in_pb, t3_in_pb, memd_in_pb, memd_out_pb, ir_in_pc, npc_in_pc, t1_in_pc, t2_in_pc, t3_in_pc, memd_in_pc, memd_out_pc,
	ir_in_pd, npc_in_pd, t1_in_pd, t2_in_pd, t3_in_pd, memd_in_pd, ir_in_p0, npc_in_p0, t1_in_p0, t2_in_p0, t3_in_p0, memd_in_p0, ir_out_pc_80, ir_out_pa_50: std_logic_vector(15 downto 0) := "0000000000000000";
signal one : std_logic_vector(15 downto 0) := (0 => '1', others => '0');
signal pc_en, prc_en, codemem_init, p0_en, pa_en, pb_en, pd_en, rf_wr, rf_rst, cen, zen, datamem_init, datamem_rd, z_out_p0, c_out_p0, z_out_pa, c_out_pa,
	z_in_pa, c_in_pa, z_out_pb, c_out_pb, z_in_pb, c_in_pb, z_out_pc, c_out_pc, z_in_pc, c_in_pc, z_out_pd, c_out_pd, z_in_pd, c_in_pd, datamem_wr, zin,
	zout, cin, cout, alu_op1, iter_in, iter_out, iter_en, lm_fin, sm_fin, branch_eq, c_in_p0, z_in_p0 : std_logic := '0';
signal decoded_contr, contr_in_pa, contr_in_pb, contr_in_pc, contr_in_pd, contr_p0_out, contr_pa_out, contr_pb_out, contr_pc_out, contr_pd_out, contr_in_p0 : std_logic_vector(18 downto 0) := (others => '0');
signal pe_out,rf_A1,rf_A2,rf_A3, lm_index, sm_index : std_logic_vector(2 downto 0) := "000";
signal op_0, op_a, op_b, op_c, op_d : std_logic_vector (3 downto 0) := "0000";
signal pc_in, pc_out : std_logic_vector(15 downto 0) := "0000000000000000"; --R7 PC
signal r7_en : std_logic := '0'; -- R7_en
signal comp_1in, comp_2in : std_logic_vector(15 downto 0) := "0000000000000000"; -- comparator inputs

begin

-- Instruction Fetch
pc: dregister port map (prc_in, prc_out, prc_en, rst, clk);
codemem: code_memory port map ('0', '1', codemem_init, prc_out, zeros, codemem_out);
palu: alu port map (X => prc_out, Y => one, x0 => '1', x1 => '1', C_in => '0', S => palu_out);
-- Instruction Decode
dec: decoder port map (ir_out_p0(15 downto 12), decoded_contr);
-- pipe0: pipe port map (ir_in => codemem_out, npc_in => palu_out, t1_in => zeros, t2_in => zeros, t3_in => zeros, memd_in => zeros, contr_in => "0000000000000000000",
--						pipe_en => p0_en, clk => clk, ir_out => ir_out_p0, npc_out => npc_out_p0, contr_out => contr_p0_out, t1_out => t1_out_p0, t2_out => t2_out_p0,
--						t3_out => t3_out_p0, memd_out => memd_out_p0, c_in => '0', z_in => '0', z_out => z_out_p0, c_out => c_out_p0);
pipe0: pipe port map (ir_in => ir_in_p0, npc_in => npc_in_p0, t1_in => t1_in_p0, t2_in => t2_in_p0, t3_in => t3_in_p0, memd_in => memd_in_p0, contr_in => contr_in_p0,
						pipe_en => p0_en, rst => rst, clk => clk, ir_out => ir_out_p0, npc_out => npc_out_p0, contr_out => contr_p0_out, t1_out => t1_out_p0, t2_out => t2_out_p0,
						t3_out => t3_out_p0, memd_out => memd_out_p0, c_in => c_in_p0, z_in => z_in_p0, c_out => c_out_p0, z_out => z_out_p0);
-- Register Read
--rf_main: rf port map (rf_A1, rf_A2, rf_A3, rf_D3, rf_PC, clk, rf_wr, rst, rf_D1, rf_D2);
rf_main: rf_comp port map(rf_A1, rf_A2, rf_A3, rf_D3, pc_in, clk, rf_wr, rst, r7_en, rf_D1, rf_D2, pc_out);

pipeA: pipe port map (ir_in => ir_in_pa, npc_in => npc_in_pa, t1_in => t1_in_pa, t2_in => t2_in_pa, t3_in => t3_in_pa, memd_in => memd_in_pa, contr_in => contr_in_pa, rst => rst,
						pipe_en => pa_en, clk => clk, ir_out => ir_out_pa, npc_out => npc_out_pa, contr_out => contr_pa_out, t1_out => t1_out_pa, t2_out => t2_out_pa,
						t3_out => t3_out_pa, memd_out => memd_out_pa, c_in => c_in_pa, z_in => z_in_pa, c_out => c_out_pa, z_out => z_out_pa);
-- Execute
malu: alu port map (X => alu_1, Y => alu_2, x0 => alu_op1, x1 => '1', C_in => cout, C_out => cin, Z_out => zin, S => malu_out);
pipeB: pipe port map (ir_in => ir_in_pb, npc_in => npc_in_pb, t1_in => t1_in_pb, t2_in => t2_in_pb, t3_in => t3_in_pb, memd_in => memd_in_pb, contr_in => contr_in_pb, rst => rst,
						pipe_en => pb_en, clk => clk, ir_out => ir_out_pb, npc_out => npc_out_pb, contr_out => contr_pb_out, t1_out => t1_out_pb, t2_out => t2_out_pb,
						t3_out => t3_out_pb, memd_out => memd_out_pb, c_in => c_in_pb, z_in => z_in_pb, c_out => c_out_pb, z_out => z_out_pb);
-- Memory
datamem: data_memory port map (datamem_wr, datamem_rd, datamem_init, datamem_a, datamem_din, datamem_out);
pipeC: pipe port map (ir_in => ir_in_pc, npc_in => npc_in_pc, t1_in => t1_in_pc, t2_in => t2_in_pc, t3_in => t3_in_pc, memd_in => memd_in_pc, contr_in => contr_in_pc, rst => rst,
						pipe_en => pc_en, clk => clk, ir_out => ir_out_pc, npc_out => npc_out_pc, contr_out => contr_pc_out, t1_out => t1_out_pc, t2_out => t2_out_pc,
						t3_out => t3_out_pc, memd_out => memd_out_pc, c_in => c_in_pc, z_in => z_in_pc, c_out => c_out_pc, z_out => z_out_pc);
-- RF Write-Back
pipeD: pipe port map (ir_in => ir_in_pd, npc_in => npc_in_pd, t1_in => t1_in_pd, t2_in => t2_in_pd, t3_in => t3_in_pd, memd_in => memd_in_pd, contr_in => contr_in_pd, rst => rst,
						pipe_en => pd_en, clk => clk, ir_out => ir_out_pd, npc_out => npc_out_pd, contr_out => contr_pd_out, t1_out => t1_out_pd, t2_out => t2_out_pd,
						t3_out => t3_out_pd, memd_out => memd_out_pd, c_in => c_in_pd, z_in => z_in_pd, c_out => c_out_pd, z_out => z_out_pd);


alu_se10: se10 port map (ir_out_pb(5 downto 0), ir_out_pb_50); -- sign extended for alu_1
alu_se7: se7 port map (ir_out_pb(8 downto 0), '1', ir_out_pb_80);
pd_se7: se7 port map (ir_out_pd(8 downto 0), '0', ir_out_pd_80);
pc_se7: se7 port map (ir_out_pc(8 downto 0), '0', ir_out_pc_80);
p0_se7: se7 port map (ir_out_p0(8 downto 0), '0', ir_out_p0_80);
pa_se10: se10 port map (ir_out_pa(5 downto 0), ir_out_pa_50);
car: dregister_1 port map (cin, cout, cen, rst, clk);
zer: dregister_1 port map (zin, zout, zen, rst, clk);
iter: dregister_1 port map (iter_in, iter_out, iter_en, rst, clk);
branch_comp: comparator port map (comp_1in, comp_2in, branch_eq);
sm_pe: pr_encoder port map (ir_out_pc(7 downto 0), sm_index, sm_fin);
lm_pe: pr_encoder port map (ir_out_pd(7 downto 0), lm_index, lm_fin);

process(clk, rst, ir_in_pd, npc_in_pd, t1_in_pd, t2_in_pd, t3_in_pd, memd_in_pd, contr_in_pd, rst,
		pd_en, ir_out_pd, npc_out_pd, contr_pd_out, t1_out_pd, t2_out_pd, t3_out_pd, memd_out_pd, c_in_pd, z_in_pd, c_out_pd, z_out_pd, ir_in_p0, npc_in_p0, t1_in_p0, t2_in_p0, t3_in_p0, memd_in_p0, contr_in_p0, rst,
		p0_en, ir_out_p0, npc_out_p0, contr_p0_out, t1_out_p0, t2_out_p0, t3_out_p0, memd_out_p0, c_in_p0, z_in_p0, c_out_p0, z_out_p0, ir_in_pa, npc_in_pa, t1_in_pa, t2_in_pa, t3_in_pa, memd_in_pa, contr_in_pa, rst,
		pa_en, ir_out_pa, npc_out_pa, contr_pa_out, t1_out_pa, t2_out_pa, t3_out_pa, memd_out_pa, c_in_pa, z_in_pa, c_out_pa, z_out_pa, ir_in_pb, npc_in_pb, t1_in_pb, t2_in_pb, t3_in_pb, memd_in_pb, contr_in_pb, rst,
		pb_en, ir_out_pb, npc_out_pb, contr_pb_out, t1_out_pb, t2_out_pb, t3_out_pb, memd_out_pb, c_in_pb, z_in_pb, c_out_pb, z_out_pb, ir_in_pc, npc_in_pc, t1_in_pc, t2_in_pc, t3_in_pc, memd_in_pc, contr_in_pc, rst,
		pc_en, ir_out_pc, npc_out_pc, contr_pc_out, t1_out_pc, t2_out_pc, t3_out_pc, memd_out_pc, c_in_pc, z_in_pc, c_out_pc, z_out_pc, pc_in, pc_out, comp_1in, comp_2in, ir_out_pa_50, lm_index, sm_index, ir_out_p0_80, ir_out_pb_80, ir_out_pc_80)
	
begin
   if (rst = '1') then
	  
		  codemem_init <= '1';
		  datamem_init <= '1';

   else
		  codemem_init <= '0';
		  datamem_init <= '0';
		  datamem_rd <= '1';

		if ((op_b = "0110") or (op_b = "0111")) then -- LM/SM => iter
			iter_in <= '1';
			iter_en <= '1';
		elsif ((op_d = "0110") and (lm_fin = '1')) or ((op_c = "0111") and (sm_fin = '1')) then -- LM/SM Closing
			iter_in <= '0';
			iter_en <= '1';
		else
			iter_en <= '0';
			iter_in <= '0';
		end if;

		--Dummy PC signals
		prc_en <= p0_en;

		-- Input to dummy PC

		-- LM R7 : flush

		-- LW R7 : flush
		if (op_c = "0100" and ir_out_pc(11 downto 9) = "111") then
			prc_in <= datamem_out;

		-- BEQ, JAL : flush
		elsif (op_b = "1100" or op_b = "1000") then
			prc_in <= malu_out;

		-- Arith R7 : flush
		elsif (contr_pb_out(0) = '1' and ( ir_out_pb(5 downto 3) = "111" and ( ir_out_pb(15 downto 14) = "00" and not ir_out_pb(15 downto 12) = "0011" ) ) ) then
			prc_in <= malu_out;

		-- JLR : flush
		elsif (op_a = "1001") then
			prc_in <= rf_D2;
			
		-- LHI R7 : flush !*
		elsif (op_0 = "0011" and ir_out_p0(11 downto 9) = "111") then
			prc_in <= ir_out_p0_80;

		-- Default
		else
			prc_in <= palu_out;
		end if;

		-- BEQ LW forwarding
		if ((op_b = "1100" and op_c = "0100") and (ir_out_pb(11 downto 9) = ir_out_pc(11 downto 9))) then
			comp_1in <= datamem_out;
			comp_2in <= t2_out_pb;
		elsif ((op_b = "1100" and op_c = "0100") and (ir_out_pb(8 downto 6) = ir_out_pc(11 downto 9))) then
			comp_1in <= t1_out_pb;
			comp_2in <= datamem_out;
		elsif ((op_b = "1100" and op_d = "0100") and (ir_out_pb(11 downto 9) = ir_out_pd(11 downto 9))) then
			comp_1in <= memd_out_pd;
			comp_2in <= t2_out_pb;
		elsif ((op_b = "1100" and op_d = "0100") and (ir_out_pb(8 downto 6) = ir_out_pd(11 downto 9))) then
			comp_1in <= t1_out_pb;
			comp_2in <= memd_out_pd;
		else
			comp_1in <= t1_out_pb;
			comp_2in <= t2_out_pb;
		end if;



		--R7 signals
		pc_in <= npc_out_pd;

		if (op_d = "0110" and lm_fin = '0') then
			r7_en <= '0';
		elsif(ir_out_pd = "1111111111111111") then
			r7_en <= '0';
		else
			r7_en <= '1';
		end if;


		if (contr_pa_out(18) = '1') then
			rf_A1 <= sm_index;
		else
			rf_A1 <= ir_out_pa(11 downto 9);
		end if;

		-- RF signals dep on contr_pa_out
		if (contr_pa_out(17) = '0') then
			rf_A2 <= ir_out_pa(8 downto 6);
		else
			rf_A2 <= pe_out;
		end if;

		-- ALU signals
		
		-- Forwarding from Pc to Pb
		--Src = Arith, BEQ
		if (((op_b = "0000") or (op_b = "0010") or (op_b = "1100")) and ((op_c = "0000") or (op_c = "0010")) and (ir_out_pc(5 downto 3) = ir_out_pb(11 downto 9) or ir_out_pc(5 downto 3) = ir_out_pb(8 downto 6) ) ) then -- ADD, ADC, ADZ, NDU, NDC, NDZ
			if ( ir_out_pc(5 downto 3) = ir_out_pb(11 downto 9) ) then
				alu_1 <= t3_out_pc;
				alu_2 <= t2_out_pb;
			else
				alu_1 <= t1_out_pb;
				alu_2 <= t3_out_pc;					
			end if;
		elsif (( (op_b = "0000") or (op_b = "0010") or (op_b = "1100")) and (op_c = "0001") and ( ir_out_pc(8 downto 6) = ir_out_pb(11 downto 9) or ir_out_pc(8 downto 6) = ir_out_pb(8 downto 6) ) ) then -- ADI
			if ( ir_out_pc(8 downto 6) = ir_out_pb(11 downto 9) ) then
				alu_1 <= t3_out_pc;
				alu_2 <= t2_out_pb;
			else
				alu_1 <= t1_out_pb;
				alu_2 <= t3_out_pc;					
			end if;
		elsif (( (op_b = "0000") or (op_b = "0010") or (op_b = "1100")) and ((op_c = "0011") or (op_c = "1000") or (op_c = "1001") ) and ( ir_out_pc(11 downto 9) = ir_out_pb(11 downto 9) or ir_out_pc(11 downto 9) = ir_out_pb(8 downto 6) ) ) then -- LHI, JAL. JLR
			if ( ir_out_pc(11 downto 9) = ir_out_pb(11 downto 9) ) then
				if (op_c = "0011") then --LHI
					alu_1 <= ir_out_pc_80; -- *Check
					alu_2 <= t2_out_pb;		
				else --JAL and JLR
					alu_1 <= npc_out_pc;
					alu_2 <= t2_out_pb;
				end if ;
				
			else
				if (op_c = "0011") then --LHI
					alu_2 <= ir_out_pc_80; -- *Check
					alu_1 <= t1_out_pb;		
				else --JAL and JLR
					alu_2 <= npc_out_pc;
					alu_1 <= t1_out_pb;
				end if ;					
			end if;

		--Src = LW, SW
		elsif (((op_b = "0101") or (op_b = "0100")) and ((op_c = "0000") or (op_c = "0010")) and ( ir_out_pc(5 downto 3) = ir_out_pb(8 downto 6) ) ) then -- ADD, ADC, ADZ, NDU, NDC, NDZ
			alu_1 <= ir_out_pb_50;
			alu_2 <= t3_out_pc;
		elsif (( (op_b = "0101") or (op_b = "0100") ) and (op_c = "0001") and ( ir_out_pc(8 downto 6) = ir_out_pb(8 downto 6) ) ) then -- ADI
			alu_1 <= ir_out_pb_50;
			alu_2 <= t3_out_pc;
		elsif (( (op_b = "0101") or (op_b = "0100") ) and ((op_c = "0011") or (op_c = "1000") or (op_c = "1001") ) and ( ir_out_pc(11 downto 9) = ir_out_pb(8 downto 6) ) ) then -- LHI, JAL. JLR
			if (op_c = "0011") then --LHI
				alu_1 <= ir_out_pb_50;
				alu_2 <= ir_out_pc_80;	
			else --JAL and JLR
				alu_1 <= ir_out_pb_50;
				alu_2 <= npc_out_pc;
			end if;
		--Src = LM, SM
		elsif (((op_b = "0111") or (op_b = "0110")) and ((op_c = "0000") or (op_c = "0010")) and (ir_out_pc(5 downto 3) = ir_out_pb(11 downto 9)) ) then -- ADD, ADC, ADZ, NDU, NDC, NDZ
			alu_1 <= t3_out_pc;
			alu_2(0) <= iter_out;
			alu_2(15 downto 1) <= (others => '0');
		elsif (( (op_b = "0111") or (op_b = "0110") ) and (op_c = "0001") and ( ir_out_pc(8 downto 6) = ir_out_pb(11 downto 9) ) ) then -- ADI
			alu_1 <= t3_out_pc;
			alu_2(0) <= iter_out;
			alu_2(15 downto 1) <= (others => '0');
		elsif (( (op_b = "0111") or (op_b = "0110") ) and ((op_c = "0011") or (op_c = "1000") or (op_c = "1001") ) and ( ir_out_pc(11 downto 9) = ir_out_pb(11 downto 9) ) ) then -- LHI, JAL. JLR
			if (op_c = "0011") then --LHI
				alu_1 <= ir_out_pc_80;
				alu_2(0) <= iter_out;
				alu_2(15 downto 1) <= (others => '0');	
			else --JAL and JLR
				alu_1 <= npc_out_pc;
				alu_2(0) <= iter_out;
				alu_2(15 downto 1) <= (others => '0');
			end if ;
		
		-- Forwarding from Pd to Pb
		--Src = Arith, BEQ
		elsif (((op_b = "0000") or (op_b = "0010") or (op_b = "1100")) and ((op_d = "0000") or (op_d = "0010")) and (ir_out_pd(5 downto 3) = ir_out_pb(11 downto 9) or ir_out_pd(5 downto 3) = ir_out_pb(8 downto 6) ) ) then -- ADD, ADC, ADZ, NDU, NDC, NDZ
			if ( ir_out_pd(5 downto 3) = ir_out_pb(11 downto 9) ) then
				alu_1 <= t3_out_pd;
				alu_2 <= t2_out_pb;
			else
				alu_1 <= t1_out_pb;
				alu_2 <= t3_out_pd;					
			end if;
		elsif (( (op_b = "0000") or (op_b = "0010") or (op_b = "1100")) and (op_d = "0001") and ( ir_out_pd(8 downto 6) = ir_out_pb(11 downto 9) or ir_out_pd(8 downto 6) = ir_out_pb(8 downto 6) ) ) then -- ADI
			if ( ir_out_pd(8 downto 6) = ir_out_pb(11 downto 9) ) then
				alu_1 <= t3_out_pd;
				alu_2 <= t2_out_pb;
			else
				alu_1 <= t1_out_pb;
				alu_2 <= t3_out_pd;					
			end if;
		elsif (( (op_b = "0000") or (op_b = "0010") or (op_b = "1100")) and ((op_d = "0011") or (op_d = "1000") or (op_d = "1001") ) and ( ir_out_pd(11 downto 9) = ir_out_pb(11 downto 9) or ir_out_pd(11 downto 9) = ir_out_pb(8 downto 6) ) ) then -- LHI, JAL. JLR
			if ( ir_out_pd(11 downto 9) = ir_out_pb(11 downto 9) ) then
				if (op_d = "0011") then --LHI
					alu_1 <= ir_out_pd_80; -- *Check
					alu_2 <= t2_out_pb;		
				else --JAL and JLR
					alu_1 <= npc_out_pd;
					alu_2 <= t2_out_pb;
				end if ;
				
			else
				if (op_d = "0011") then --LHI
					alu_2 <= ir_out_pd_80; -- *Check
					alu_1 <= t1_out_pb;		
				else --JAL and JLR
					alu_2 <= npc_out_pd;
					alu_1 <= t1_out_pb;
				end if ;					
			end if;

		elsif ( ( (op_b = "0000") or (op_b = "0010") or (op_b = "1100")) and (op_d = "0100") and (( ir_out_pd(11 downto 9) = ir_out_pb(11 downto 9) or ir_out_pd(11 downto 9) = ir_out_pb(8 downto 6) )) ) then --Arith _ LW
			if ( ir_out_pd(11 downto 9) = ir_out_pb(11 downto 9) ) then
				alu_1 <= memd_out_pd;
				alu_2 <= t2_out_pb;
				
			else
				alu_1 <= t1_out_pb; 
				alu_2 <= memd_out_pd;
			end if;

		--Src = LW, SW
		elsif (((op_b = "0101") or (op_b = "0100")) and ((op_d = "0000") or (op_d = "0010")) and ( ir_out_pd(5 downto 3) = ir_out_pb(8 downto 6) ) ) then -- ADD, ADC, ADZ, NDU, NDC, NDZ
			alu_1 <= ir_out_pb_50;
			alu_2 <= t3_out_pd;
		elsif (( (op_b = "0101") or (op_b = "0100") ) and (op_d = "0001") and ( ir_out_pd(8 downto 6) = ir_out_pb(8 downto 6) ) ) then -- ADI
			alu_1 <= ir_out_pb_50;
			alu_2 <= t3_out_pd;
		elsif (( (op_b = "0101") or (op_b = "0100") ) and ((op_d = "0011") or (op_d = "1000") or (op_d = "1001") ) and ( ir_out_pd(11 downto 9) = ir_out_pb(8 downto 6) ) ) then -- LHI, JAL. JLR
			if (op_d = "0011") then --LHI
				alu_1 <= ir_out_pb_50;
				alu_2 <= ir_out_pd_80;	
			else --JAL and JLR
				alu_1 <= ir_out_pb_50;
				alu_2 <= npc_out_pd;
			end if ;
		elsif ( ( (op_b = "0101") or (op_b = "0100") ) and (op_d = "0100") and ( ir_out_pd(11 downto 9) = ir_out_pb(8 downto 6) ) ) then --Arith _ LW
				alu_1 <= ir_out_pb_50;
				alu_2 <= memd_out_pd;
	
		--Src = LM, SM
		elsif (((op_b = "0111") or (op_b = "0110")) and ((op_d = "0000") or (op_d = "0010")) and (ir_out_pd(5 downto 3) = ir_out_pb(11 downto 9)) ) then -- ADD, ADC, ADZ, NDU, NDC, NDZ
			alu_1 <= t3_out_pd;
			alu_2(0) <= iter_out;
			alu_2(15 downto 1) <= (others => '0');
		elsif (( (op_b = "0111") or (op_b = "0110") ) and (op_d = "0001") and ( ir_out_pd(8 downto 6) = ir_out_pb(11 downto 9) ) ) then -- ADI
			alu_1 <= t3_out_pd;
			alu_2(0) <= iter_out;
			alu_2(15 downto 1) <= (others => '0');
		elsif (( (op_b = "0111") or (op_b = "0110") ) and ((op_d = "0011") or (op_d = "1000") or (op_d = "1001") ) and ( ir_out_pd(11 downto 9) = ir_out_pb(11 downto 9) ) ) then -- LHI, JAL. JLR
			if (op_d = "0011") then --LHI
				alu_1 <= ir_out_pd_80;
				alu_2(0) <= iter_out;
				alu_2(15 downto 1) <= (others => '0');	
			else --JAL and JLR
				alu_1 <= npc_out_pd;
				alu_2(0) <= iter_out;
				alu_2(15 downto 1) <= (others => '0');
			end if ;
		elsif ( ((op_b = "0111") or (op_b = "0110")) and (op_d = "0100") and ( ir_out_pd(11 downto 9) = ir_out_pb(11 downto 9) ) ) then --Arith _ LW
				alu_1 <= memd_out_pd;
				alu_2(0) <= iter_out;
				alu_2(15 downto 1) <= (others => '0');	

		else -- Follow normal logic
			if (contr_pb_out(15 downto 14) = "00") then
				alu_1 <= t1_out_pb;
			elsif (contr_pb_out(15 downto 14) = "01") then
				alu_1 <= ir_out_pb_50;
			-- elsif (contr_pb_out(15 downto 14) = "10") then -- replacing with else to prevent latch possibility / NA
			else
				alu_1 <= ir_out_pb_80;
			end if;

			if (contr_pb_out(13 downto 12) = "00") then
				alu_2 <= t2_out_pb;
			elsif (contr_pb_out(13 downto 12) = "01") then
				alu_2 <= npc_out_pb;
			elsif (contr_pb_out(13 downto 12) = "11") then
				alu_2 <= ir_out_pb_50;
			else
				alu_2(0) <= iter_out;
				alu_2(15 downto 1) <= (others => '0');
			end if;
			
		end if;


		alu_op1 <= not contr_pb_out(11); -- Op Code logic
		cen <= contr_pb_out(9);
		zen <= contr_pb_out(8);

		-- MEM signals dep on contr_pc_out
		--datamem_rd <= contr_pc_out(7);
		datamem_wr <= contr_pc_out(6);
		
		-- SW forwarding	
		if ( op_c = "0101"  and ((op_d = "0000") or (op_d = "0010")) and ( ir_out_pd(5 downto 3) = ir_out_pc(11 downto 9) ) ) then -- ADD, ADC, ADZ, NDU, NDC, NDZ
			datamem_din <= t3_out_pd;
		elsif (op_c = "0101" and op_d = "0001" and ( ir_out_pd(8 downto 6) = ir_out_pc(11 downto 9) ) ) then -- ADI
			datamem_din <= t3_out_pd;
		elsif (op_c = "0101" and ((op_d = "0011") or (op_d = "1000") or (op_d = "1001") ) and ( ir_out_pd(11 downto 9) = ir_out_pc(11 downto 9) ) ) then -- LHI, JAL. JLR
			if (op_d = "0011") then --LHI
				datamem_din <= ir_out_pd_80;	
			else --JAL and JLR
				datamem_din <= npc_out_pd;
			end if ;

		elsif ( op_c = "0101"  and op_d = "0100" and ( ir_out_pd(11 downto 9) = ir_out_pc(11 downto 9) ) ) then --Arith _ LW
			datamem_din <= memd_out_pd;
	
		else
			datamem_din <= t1_out_pc;
		end if;

		if (contr_pc_out(5) = '1') then
			datamem_a <= t3_out_pc;
		else
			datamem_a <= zeros;
		end if;

		-- RF_WB signals dep on contr_pd_out
		if (op_d = "0001") then -- ADI immed
			rf_A3 <= ir_out_pd(8 downto 6);
		elsif (contr_pd_out(4 downto 3) = "01") then
			rf_A3 <= ir_out_pd(5 downto 3);
		elsif (contr_pd_out(4 downto 3) = "10") then
			rf_A3 <= ir_out_pd(11 downto 9);
		else -- Including 
			rf_A3 <= pe_out;
		end if;
		
		-- Decoding rf_wr
		if ((op_d = "0000") or (op_d = "0010")) then
			if (ir_out_pd(1 downto 0) = "01") then
				rf_wr <= z_out_pd;
			elsif (ir_out_pd(1 downto 0) = "10") then
				rf_wr <= c_out_pd;
			else
				rf_wr <= contr_pd_out(0); -- Not '1' as the uninit instructions would also satisfy!
			end if;
		else
			rf_wr <= contr_pd_out(0);
		end if;

		if (contr_pd_out(2 downto 1) = "00") then
			rf_D3 <= t3_out_pd;
		elsif (contr_pd_out(2 downto 1) = "01") then
			rf_D3 <= npc_out_pd;
		elsif (contr_pd_out(2 downto 1) = "10") then
			rf_D3 <= memd_out_pd;
		else
			rf_D3 <= ir_out_pd_80;
		end if;

		-- Op Codes
		op_0 <= ir_out_p0(15 downto 12);
		op_a <= ir_out_pa(15 downto 12);
		op_b <= ir_out_pb(15 downto 12);
		op_c <= ir_out_pc(15 downto 12);
		op_d <= ir_out_pd(15 downto 12);

		-- Pipes input and enable

		-- Mapping of Pipe 0

		-- LM R7 : flush

		-- LW R7 : flush
		if (op_c = "0100" and ir_out_pc(11 downto 9) = "111") then
			ir_in_p0 <= (others => '1');
			contr_in_p0 <= (others => '0');

			c_in_p0 <= '0';
			z_in_p0 <= '0';
			npc_in_p0 <= (others => '0');
			t1_in_p0 <= (others => '0');
			t2_in_p0 <= (others => '0');
			t3_in_p0 <= (others => '0');
			memd_in_p0 <= (others => '0');

		-- BEQ, JAL : flush
		elsif ( (op_b = "1100" and (branch_eq = '1') ) or op_b = "1000") then
			ir_in_p0 <= (others => '1');
			contr_in_p0 <= (others => '0');

			c_in_p0 <= '0';
			z_in_p0 <= '0';
			npc_in_p0 <= (others => '0');
			t1_in_p0 <= (others => '0');
			t2_in_p0 <= (others => '0');
			t3_in_p0 <= (others => '0');
			memd_in_p0 <= (others => '0');

		-- Arith R7 : flush
		elsif (contr_pb_out(0) = '1' and ( ir_out_pb(5 downto 3) = "111" and ( ir_out_pb(15 downto 14) = "00" and not ir_out_pb(15 downto 12) = "0011" ) ) ) then	
			ir_in_p0 <= (others => '1');
			contr_in_p0 <= (others => '0');

			c_in_p0 <= '0';
			z_in_p0 <= '0';
			npc_in_p0 <= (others => '0');
			t1_in_p0 <= (others => '0');
			t2_in_p0 <= (others => '0');
			t3_in_p0 <= (others => '0');
			memd_in_p0 <= (others => '0');

		-- JLR : flush
		elsif (op_a = "1001") then
			ir_in_p0 <= (others => '1');
			contr_in_p0 <= (others => '0');

			c_in_p0 <= '0';
			z_in_p0 <= '0';
			npc_in_p0 <= (others => '0');
			t1_in_p0 <= (others => '0');
			t2_in_p0 <= (others => '0');
			t3_in_p0 <= (others => '0');
			memd_in_p0 <= (others => '0');
			
		-- LHI R7 : flush
		elsif (op_0 = "0011" and ir_out_p0(11 downto 9) = "111") then
			ir_in_p0 <= (others => '1');
			contr_in_p0 <= (others => '0');

			c_in_p0 <= '0';
			z_in_p0 <= '0';
			npc_in_p0 <= (others => '0');
			t1_in_p0 <= (others => '0');
			t2_in_p0 <= (others => '0');
			t3_in_p0 <= (others => '0');
			memd_in_p0 <= (others => '0');

		-- Default
		else
			-- P0 directly from flow
			ir_in_p0 <= codemem_out;
			npc_in_p0 <= palu_out;

			t1_in_p0 <= (others => '0');
			t2_in_p0 <= (others => '0');
			t3_in_p0 <= (others => '0');
			contr_in_p0 <= (others => '0');
			c_in_p0 <= '0';
			z_in_p0 <= '0';
			memd_in_p0 <= (others => '0');
		end if;


		-- Mapping of Pipe A

		-- LM R7 : flush

		-- LW R7 : flush
		if (op_c = "0100" and ir_out_pc(11 downto 9) = "111") then
			ir_in_pa <= (others => '1');
			contr_in_pa <= (others => '0');

			c_in_pa <= '0';
			z_in_pa <= '0';
			npc_in_pa <= (others => '0');
			t1_in_pa <= (others => '0');
			t2_in_pa <= (others => '0');
			t3_in_pa <= (others => '0');
			memd_in_pa <= (others => '0');

		-- BEQ, JAL : flush
		elsif ( (op_b = "1100" and (branch_eq = '1') ) or op_b = "1000") then
			ir_in_pa <= (others => '1');
			contr_in_pa <= (others => '0');

			c_in_pa <= '0';
			z_in_pa <= '0';
			npc_in_pa <= (others => '0');
			t1_in_pa <= (others => '0');
			t2_in_pa <= (others => '0');
			t3_in_pa <= (others => '0');
			memd_in_pa <= (others => '0');

		-- Arith R7 : flush
		elsif (contr_pb_out(0) = '1' and ( ir_out_pb(5 downto 3) = "111" and ( ir_out_pb(15 downto 14) = "00" and not ir_out_pb(15 downto 12) = "0011" ) ) ) then
				contr_in_pa <= (others => '0');

				c_in_pa <= '0';
				z_in_pa <= '0';
				npc_in_pa <= (others => '0');
				t1_in_pa <= (others => '0');
				t2_in_pa <= (others => '0');
				t3_in_pa <= (others => '0');
				memd_in_pa <= (others => '0');

				
		-- SM : Stall and flush
		
		--elsif ((op_a = "0111") or (op_b = "0111") or ((op_c = "0111") and (sm_fin = '0'))) then --!*
		--	ir_in_pa <= (others => '1');
		--	contr_in_pa <= (others => '0');

		--	c_in_pa <= '0';
		--	z_in_pa <= '0';
		--	npc_in_pa <= (others => '0');
		--	t1_in_pa <= (others => '0');
		--	t2_in_pa <= (others => '0');
		--	t3_in_pa <= (others => '0');
		--	memd_in_pa <= (others => '0');


		elsif ((op_a = "0111") or (op_b = "0111")) then
			-- Flush SM
			ir_in_pa <= (others => '1');
			contr_in_pa <= (others => '0');

			c_in_pa <= '0';
			z_in_pa <= '0';
			npc_in_pa <= (others => '0');
			t1_in_pa <= (others => '0');
			t2_in_pa <= (others => '0');
			t3_in_pa <= (others => '0');
			memd_in_pa <= (others => '0');
		elsif ((op_c = "0111") and (sm_fin = '0')) then
			-- pc_out goes to pa_in

			for i in 0 to 7 loop
				if(to_integer(unsigned(sm_index)) = i) then
					ir_in_pa(i) <= '0';
				else
					ir_in_pa(i) <= ir_out_pc(i);
				end if;
			end loop;
			--ir_in_pa <= ir_out_pc;
			
			npc_in_pa <= npc_out_pc;
			t1_in_pa <= t1_out_pc;
			t2_in_pa <= t2_out_pc;
			t3_in_pa <= t3_out_pc;
			memd_in_pa <= memd_out_pc;
			contr_in_pa <= contr_pc_out;
			c_in_pa <= c_out_pc;
			z_in_pa <= z_out_pc;
		
		-- JLR : flush
		elsif (op_a = "1001") then
			ir_in_pa <= (others => '1');
			contr_in_pa <= (others => '0');

			c_in_pa <= '0';
			z_in_pa <= '0';
			npc_in_pa <= (others => '0');
			t1_in_pa <= (others => '0');
			t2_in_pa <= (others => '0');
			t3_in_pa <= (others => '0');
			memd_in_pa <= (others => '0');

		-- LHI R7 : flush !* Change npc and t3, create a sign extender
		elsif (op_0 = "0011" and ir_out_p0(11 downto 9) = "111") then
			contr_in_pa <= decoded_contr;
			ir_in_pa <= ir_out_p0;
			npc_in_pa <= npc_out_p0;
			t1_in_pa <= t1_out_p0;
			t2_in_pa <= t2_out_p0;
			t3_in_pa <= t3_out_p0;
			memd_in_pa <= memd_out_p0;		
			c_in_pa <= c_out_p0;
			z_in_pa <= z_out_p0;			
		
		-- Default
		else
			-- directly from p0
			contr_in_pa <= decoded_contr;
			ir_in_pa <= ir_out_p0;
			npc_in_pa <= npc_out_p0;
			t1_in_pa <= t1_out_p0;
			t2_in_pa <= t2_out_p0;
			t3_in_pa <= t3_out_p0;
			memd_in_pa <= memd_out_p0;		
			c_in_pa <= c_out_p0;
			z_in_pa <= z_out_p0;
		end if;
			

		-- Mapping of Pipe B

		-- LM R7 : flush

		-- LW R7 : flush
		if (op_c = "0100" and ir_out_pc(11 downto 9) = "111") then
			ir_in_pb <= (others => '1');
			contr_in_pb <= (others => '0');

			c_in_pb <= '0';
			z_in_pb <= '0';
			npc_in_pb <= (others => '0');
			t1_in_pb <= (others => '0');
			t2_in_pb <= (others => '0');
			t3_in_pb <= (others => '0');
			memd_in_pb <= (others => '0');

		-- BEQ, JAL : flush
		elsif ( (op_b = "1100" and (branch_eq = '1') ) or op_b = "1000") then
			ir_in_pb <= (others => '1');
			contr_in_pb <= (others => '0');

			c_in_pb <= '0';
			z_in_pb <= '0';
			npc_in_pb <= (others => '0');
			t1_in_pb <= (others => '0');
			t2_in_pb <= (others => '0');
			t3_in_pb <= (others => '0');
			memd_in_pb <= (others => '0');

		-- Arith R7 : flush
		elsif (contr_pb_out(0) = '1' and ( ir_out_pb(5 downto 3) = "111" and ( ir_out_pb(15 downto 14) = "00" and not ir_out_pb(15 downto 12) = "0011" ) ) ) then 
				ir_in_pb <= (others => '1');
				contr_in_pb <= (others => '0');

				c_in_pb <= '0';
				z_in_pb <= '0';
				npc_in_pb <= (others => '0');
				t1_in_pb <= (others => '0');
				t2_in_pb <= (others => '0');
				t3_in_pb <= (others => '0');
				memd_in_pb <= (others => '0');

		-- JLR LW : stall and flush
		elsif ((op_a = "1001") and (op_b = "0100") and (ir_out_pa(8 downto 6) = ir_out_pb(11 downto 9))) then
			ir_in_pb <= (others => '1');
			contr_in_pb <= (others => '0');

			c_in_pb <= '0';
			z_in_pb <= '0';
			npc_in_pb <= (others => '0');
			t1_in_pb <= (others => '0');
			t2_in_pb <= (others => '0');
			t3_in_pb <= (others => '0');
			memd_in_pb <= (others => '0');
		

		-- LM : Stall and flush
		
		--elsif ((op_b = "0110") or (op_c = "0110") or ((op_d = "0110") and (lm_fin = '0'))) then 
		--	pb_en <= '1';

		elsif ((op_b = "0110") or (op_c = "0110")) then --LM
			ir_in_pb <= (others => '1');
			contr_in_pb <= (others => '0');

			c_in_pb <= '0';
			z_in_pb <= '0';
			npc_in_pb <= (others => '0');
			t1_in_pb <= (others => '0');
			t2_in_pb <= (others => '0');
			t3_in_pb <= (others => '0');
			memd_in_pb <= (others => '0');

		elsif ((op_d = "0110") and (lm_fin = '0')) then
			-- pb_in <= pd_out
			-- ir_in_pb <= ir_out_pd;
			
			for i in 0 to 7 loop
				if(to_integer(unsigned(lm_index)) = i) then
					ir_in_pb(i) <= '0';
				else
					ir_in_pb(i) <= ir_out_pd(i);
				end if;
			end loop;

			ir_in_pb(15 downto 8) <= ir_out_pd(15 downto 8);
			npc_in_pb <= npc_out_pd;
			t1_in_pb <= t1_out_pd;
			t2_in_pb <= t2_out_pd;
			t3_in_pb <= t3_out_pd;
			memd_in_pb <= memd_out_pd;
			contr_in_pb <= contr_pd_out;
			c_in_pb <= c_out_pd;
			z_in_pb <= z_out_pd;

		---- SM : Stall and flush
		--elsif ((op_a = "0111") or (op_b = "0111") or ((op_c = "0111") and (sm_fin = '0'))) then --!*
		--	pb_en <= '1';			
		
		-- JLR : flush !*
		elsif (op_a = "1001" and ((op_b = "0000") or (op_b = "0010")) and (ir_out_pa(8 downto 6) = ir_out_pb(5 downto 3))) then -- ADD, ADC, ADZ, NDU, NDC, NDZ
			ir_in_pb <= ir_out_pa;
			t1_in_pb <= rf_D1;
			t2_in_pb <= rf_D2;

			ir_in_pb <= ir_out_pa;
			npc_in_pb <= malu_out; -- New PC for R7
			t3_in_pb <= npc_out_pa; --!*
			memd_in_pb <= npc_out_pa; -- Old PC for WB in reg A
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;

		
		elsif ( op_a = "1001" and (op_b = "0001") and ( ir_out_pa(8 downto 6) = ir_out_pb(8 downto 6) ) ) then -- ADI
			t1_in_pb <= rf_D1;
			t2_in_pb <= rf_D2;

			ir_in_pb <= ir_out_pa;
			npc_in_pb <= malu_out; -- New PC for R7
			t3_in_pb <= npc_out_pa; --!*
			memd_in_pb <= npc_out_pa; -- Old PC for WB in reg A
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;			

		--Not needed due to Priority
		elsif ( op_a = "1001" and (op_b = "1000" or op_b = "1001") and ( ir_out_pa(8 downto 6) = ir_out_pb(11 downto 9) ) ) then -- JAL JLR
			t1_in_pb <= rf_D1;
			t2_in_pb <= rf_D2;

			ir_in_pb <= ir_out_pa;
			npc_in_pb <= npc_out_pb; -- New PC for R7
			t3_in_pb <= npc_out_pa; --!*
			memd_in_pb <= npc_out_pa; -- Old PC for WB in reg A
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;

		elsif ( op_a = "1001" and (op_b = "0011") and ( ir_out_pa(8 downto 6) = ir_out_pb(11 downto 9) ) ) then -- LHI
			t1_in_pb <= rf_D1;
			t2_in_pb <= rf_D2;

			ir_in_pb <= ir_out_pa;
			npc_in_pb <= ir_out_pb_80; -- New PC for R7
			t3_in_pb <= npc_out_pa; --!*
			memd_in_pb <= npc_out_pa; -- Old PC for WB in reg A
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;			


		elsif (op_a = "1001" and ((op_c = "0000") or (op_c = "0010")) and (ir_out_pa(8 downto 6) = ir_out_pc(5 downto 3))) then -- ADD, ADC, ADZ, NDU, NDC, NDZ
			ir_in_pb <= ir_out_pa;
			t1_in_pb <= rf_D1;
			t2_in_pb <= rf_D2;

			ir_in_pb <= ir_out_pa;
			npc_in_pb <= t3_out_pc; -- New PC for R7
			t3_in_pb <= npc_out_pa; --!*
			memd_in_pb <= npc_out_pa; -- Old PC for WB in reg A
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;

		
		elsif ( op_a = "1001" and (op_c = "0001") and ( ir_out_pa(8 downto 6) = ir_out_pc(8 downto 6) ) ) then -- ADI
			t1_in_pb <= rf_D1;
			t2_in_pb <= rf_D2;

			ir_in_pb <= ir_out_pa;
			npc_in_pb <= t3_out_pc; -- New PC for R7
			t3_in_pb <= npc_out_pa; --!*
			memd_in_pb <= npc_out_pa; -- Old PC for WB in reg A
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;			

		elsif ( op_a = "1001" and (op_c = "1000" or op_c = "1001") and ( ir_out_pa(8 downto 6) = ir_out_pc(11 downto 9) ) ) then -- JAL JLR
			t1_in_pb <= rf_D1;
			t2_in_pb <= rf_D2;

			ir_in_pb <= ir_out_pa;
			npc_in_pb <= npc_out_pc; -- New PC for R7
			t3_in_pb <= npc_out_pa; --!*
			memd_in_pb <= npc_out_pa; -- Old PC for WB in reg A
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;

		elsif ( op_a = "1001" and (op_c = "0011") and ( ir_out_pa(8 downto 6) = ir_out_pc(11 downto 9) ) ) then -- LHI
			t1_in_pb <= rf_D1;
			t2_in_pb <= rf_D2;

			ir_in_pb <= ir_out_pa;
			npc_in_pb <= ir_out_pc_80; -- New PC for R7
			t3_in_pb <= npc_out_pa; --!*
			memd_in_pb <= npc_out_pa; -- Old PC for WB in reg A
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;

		elsif (op_a = "1001" and op_c = "0100" and ir_out_pa(8 downto 6) = ir_out_pc(11 downto 9) ) then -- LW
			t1_in_pb <= rf_D1;
			t2_in_pb <= rf_D2;

			ir_in_pb <= ir_out_pa;
			npc_in_pb <= datamem_out; -- New PC for R7
			t3_in_pb <= npc_out_pa; --!*
			memd_in_pb <= npc_out_pa; -- Old PC for WB in reg A
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;			

		elsif (op_a = "1001" and ((op_d = "0000") or (op_d = "0010")) and (ir_out_pa(8 downto 6) = ir_out_pd(5 downto 3))) then -- ADD, ADC, ADZ, NDU, NDC, NDZ
			ir_in_pb <= ir_out_pa;
			t1_in_pb <= rf_D1;
			t2_in_pb <= rf_D2;

			ir_in_pb <= ir_out_pa;
			npc_in_pb <= t3_out_pd; -- New PC for R7
			t3_in_pb <= npc_out_pa; --!*
			memd_in_pb <= npc_out_pa; -- Old PC for WB in reg A
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;

		
		elsif ( op_a = "1001" and (op_d = "0001") and ( ir_out_pa(8 downto 6) = ir_out_pd(8 downto 6) ) ) then -- ADI
			t1_in_pb <= rf_D1;
			t2_in_pb <= rf_D2;

			ir_in_pb <= ir_out_pa;
			npc_in_pb <= t3_out_pd; -- New PC for R7
			t3_in_pb <= npc_out_pa; --!*
			memd_in_pb <= npc_out_pa; -- Old PC for WB in reg A
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;			

		elsif ( op_a = "1001" and (op_d = "1000" or op_d = "1001") and ( ir_out_pa(8 downto 6) = ir_out_pd(11 downto 9) ) ) then -- JAL JLR
			t1_in_pb <= rf_D1;
			t2_in_pb <= rf_D2;

			ir_in_pb <= ir_out_pa;
			npc_in_pb <= npc_out_pd; -- New PC for R7
			t3_in_pb <= npc_out_pa; --!*
			memd_in_pb <= npc_out_pa; -- Old PC for WB in reg A
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;

		elsif ( op_a = "1001" and (op_c = "0011") and ( ir_out_pa(8 downto 6) = ir_out_pd(11 downto 9) ) ) then -- LHI
			t1_in_pb <= rf_D1;
			t2_in_pb <= rf_D2;

			ir_in_pb <= ir_out_pa;
			npc_in_pb <= ir_out_pd_80; -- New PC for R7
			t3_in_pb <= npc_out_pa; --!*
			memd_in_pb <= npc_out_pa; -- Old PC for WB in reg A
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;

		elsif (op_a = "1001" and op_c = "0100" and ir_out_pa(8 downto 6) = ir_out_pd(11 downto 9) ) then -- LW
			t1_in_pb <= rf_D1;
			t2_in_pb <= rf_D2;

			ir_in_pb <= ir_out_pa;
			npc_in_pb <= memd_out_pd; -- New PC for R7
			t3_in_pb <= npc_out_pa; --!*
			memd_in_pb <= npc_out_pa; -- Old PC for WB in reg A
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;	

		elsif (op_a = "1001") then
			t1_in_pb <= rf_D1;
			t2_in_pb <= rf_D2;

			ir_in_pb <= ir_out_pa;
			npc_in_pb <= rf_D2; -- New PC for R7
			t3_in_pb <= npc_out_pa; -- Old PC for WB in reg A
			memd_in_pb <= memd_out_pa;
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;			



		-- Forwarding from Pd to Pa
		--Src = Arith, BEQ
		elsif (((op_a = "0000") or (op_a = "0010") or (op_a = "1100")) and ((op_d = "0000") or (op_d = "0010")) and (ir_out_pd(5 downto 3) = ir_out_pa(11 downto 9) or ir_out_pd(5 downto 3) = ir_out_pa(8 downto 6) ) ) then -- ADD, ADC, ADZ, NDU, NDC, NDZ
			ir_in_pb <= ir_out_pa;
			npc_in_pb <= npc_out_pa;
			t3_in_pb <= t3_out_pa;
			memd_in_pb <= memd_out_pa;
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;

			if ( ir_out_pd(5 downto 3) = ir_out_pa(11 downto 9) ) then
				t1_in_pb <= t3_out_pd;
				t2_in_pb <= rf_D2;
			else
				t1_in_pb <= rf_D1;
				t2_in_pb <= t3_out_pd;					
			end if;
		elsif (( (op_a = "0000") or (op_a = "0010") or (op_a = "1100")) and (op_d = "0001") and ( ir_out_pd(8 downto 6) = ir_out_pa(11 downto 9) or ir_out_pd(8 downto 6) = ir_out_pa(8 downto 6) ) ) then -- ADI
			ir_in_pb <= ir_out_pa;
			npc_in_pb <= npc_out_pa;
			t3_in_pb <= t3_out_pa;
			memd_in_pb <= memd_out_pa;
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;

			if ( ir_out_pd(8 downto 6) = ir_out_pa(11 downto 9) ) then
				t1_in_pb <= t3_out_pd;
				t2_in_pb <= rf_D2;
			else
				t1_in_pb <= rf_D1;
				t2_in_pb <= t3_out_pd;					
			end if;
		elsif (( (op_a = "0000") or (op_a = "0010") or (op_a = "1100")) and ((op_d = "0011") or (op_d = "1000") or (op_d = "1001") ) and ( ir_out_pd(11 downto 9) = ir_out_pa(11 downto 9) or ir_out_pc(11 downto 9) = ir_out_pa(8 downto 6) ) ) then -- LHI, JAL. JLR
			ir_in_pb <= ir_out_pa;
			npc_in_pb <= npc_out_pa;
			t3_in_pb <= t3_out_pa;
			memd_in_pb <= memd_out_pa;
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;

			if ( ir_out_pd(11 downto 9) = ir_out_pa(11 downto 9) ) then
				if (op_d = "0011") then --LHI
					t1_in_pb <= ir_out_pd_80; -- *Check
					t2_in_pb <= rf_D2;		
				else --JAL and JLR
					t1_in_pb <= npc_out_pd;
					t2_in_pb <= rf_D2;
				end if ;
				
			else
				if (op_d = "0011") then --LHI
					t2_in_pb <= ir_out_pd_80; -- *Check
					t1_in_pb <= rf_D1;		
				else --JAL and JLR
					t2_in_pb <= npc_out_pd;
					t1_in_pb <= rf_D1;
				end if ;					
			end if;

		elsif ( ( (op_b = "0000") or (op_b = "0010") or (op_b = "1100")) and (op_d = "0100") and (( ir_out_pd(11 downto 9) = ir_out_pb(11 downto 9) or ir_out_pd(11 downto 9) = ir_out_pb(8 downto 6) )) ) then --Arith _ LW
			ir_in_pb <= ir_out_pa;
			npc_in_pb <= npc_out_pa;
			t3_in_pb <= t3_out_pa;
			memd_in_pb <= memd_out_pa;
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;

			if ( ir_out_pd(11 downto 9) = ir_out_pb(11 downto 9) ) then
				t1_in_pb <= memd_out_pd; -- *Check
				t2_in_pb <= rf_D2;	
			
			else
				t1_in_pb <= rf_D1;
				t2_in_pb <= memd_out_pd;
			end if;			

		--Src = LW, SW
		elsif (((op_a = "0101") or (op_a = "0100")) and ((op_d = "0000") or (op_d = "0010")) and ( ir_out_pd(5 downto 3) = ir_out_pa(8 downto 6) ) ) then -- ADD, ADC, ADZ, NDU, NDC, NDZ
			ir_in_pb <= ir_out_pa;
			npc_in_pb <= npc_out_pa;
			t3_in_pb <= t3_out_pa;
			memd_in_pb <= memd_out_pa;
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;

			t1_in_pb <= ir_out_pa_50;
			t2_in_pb <= t3_out_pd;
		elsif (( (op_a = "0101") or (op_a = "0100") ) and (op_d = "0001") and ( ir_out_pd(8 downto 6) = ir_out_pa(8 downto 6) ) ) then -- ADI
			ir_in_pb <= ir_out_pa;
			npc_in_pb <= npc_out_pa;
			t3_in_pb <= t3_out_pa;
			memd_in_pb <= memd_out_pa;
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;

			t1_in_pb <= ir_out_pa_50;
			t2_in_pb <= t3_out_pd;
		elsif (( (op_a = "0101") or (op_a = "0100") ) and ((op_d = "0011") or (op_d = "1000") or (op_d = "1001") ) and ( ir_out_pd(11 downto 9) = ir_out_pa(8 downto 6) ) ) then -- LHI, JAL. JLR
			ir_in_pb <= ir_out_pa;
			npc_in_pb <= npc_out_pa;
			t3_in_pb <= t3_out_pa;
			memd_in_pb <= memd_out_pa;
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;

			if (op_d = "0011") then --LHI
				t1_in_pb <= ir_out_pa_50;
				t2_in_pb <= ir_out_pd_80;	
			else --JAL and JLR
				t1_in_pb <= ir_out_pa_50;
				t2_in_pb <= npc_out_pd;
			end if ;

		elsif ( ( (op_b = "0101") or (op_b = "0100") ) and (op_d = "0100") and ( ir_out_pd(11 downto 9) = ir_out_pb(8 downto 6) ) ) then --Arith _ LW
			ir_in_pb <= ir_out_pa;
			npc_in_pb <= npc_out_pa;
			t3_in_pb <= t3_out_pa;
			memd_in_pb <= memd_out_pa;
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;

			t1_in_pb <= ir_out_pa_50;
			t2_in_pb <= memd_out_pd;

		--Src = LM, SM
		elsif (((op_a = "0111") or (op_a = "0110")) and ((op_d = "0000") or (op_d = "0010")) and (ir_out_pd(5 downto 3) = ir_out_pa(11 downto 9)) ) then -- ADD, ADC, ADZ, NDU, NDC, NDZ
			ir_in_pb <= ir_out_pa;
			npc_in_pb <= npc_out_pa;
			t3_in_pb <= t3_out_pa;
			memd_in_pb <= memd_out_pa;
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;

			t1_in_pb <= t3_out_pd;
			t2_in_pb(0) <= iter_out;
			t2_in_pb(15 downto 1) <= (others => '0');
		elsif (( (op_a = "0111") or (op_a = "0110") ) and (op_d = "0001") and ( ir_out_pd(8 downto 6) = ir_out_pa(11 downto 9) ) ) then -- ADI
			ir_in_pb <= ir_out_pa;
			npc_in_pb <= npc_out_pa;
			t3_in_pb <= t3_out_pa;
			memd_in_pb <= memd_out_pa;
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;

			t1_in_pb <= t3_out_pd;
			t2_in_pb(0) <= iter_out;
			t2_in_pb(15 downto 1) <= (others => '0');
		elsif (( (op_a = "0111") or (op_a = "0110") ) and ((op_d = "0011") or (op_d = "1000") or (op_d = "1001") ) and ( ir_out_pd(11 downto 9) = ir_out_pa(11 downto 9) ) ) then -- LHI, JAL. JLR
			ir_in_pb <= ir_out_pa;
			npc_in_pb <= npc_out_pa;
			t3_in_pb <= t3_out_pa;
			memd_in_pb <= memd_out_pa;
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;

			if (op_d = "0011") then --LHI
				t1_in_pb <= ir_out_pd_80;
				t2_in_pb(0) <= iter_out;
				t2_in_pb(15 downto 1) <= (others => '0');	
			else --JAL and JLR
				t1_in_pb <= npc_out_pd;
				t2_in_pb(0) <= iter_out;
				t2_in_pb(15 downto 1) <= (others => '0');
			end if ;

		elsif ( ( (op_b = "0101") or (op_b = "0100") ) and (op_d = "0100") and ( ir_out_pd(11 downto 9) = ir_out_pb(8 downto 6) ) ) then --Arith _ LW
			ir_in_pb <= ir_out_pa;
			npc_in_pb <= npc_out_pa;
			t3_in_pb <= t3_out_pa;
			memd_in_pb <= memd_out_pa;
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;				

			t1_in_pb <= memd_out_pd;
			t2_in_pb(0) <= iter_out;
			t2_in_pb(15 downto 1) <= (others => '0');


		-- SW forwarding		

		elsif ( op_a = "0101"  and ((op_c = "0000") or (op_c = "0010")) and ( ir_out_pc(5 downto 3) = ir_out_pa(11 downto 9) ) ) then -- ADD, ADC, ADZ, NDU, NDC, NDZ
			ir_in_pb <= ir_out_pa;
			npc_in_pb <= npc_out_pa;
			t3_in_pb <= t3_out_pa;
			memd_in_pb <= memd_out_pa;
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;

			t1_in_pb <= rf_D1;
			t2_in_pb <= t3_out_pd;
		elsif (op_a = "0101" and op_d = "0001" and ( ir_out_pc(8 downto 6) = ir_out_pa(11 downto 9) ) ) then -- ADI
			ir_in_pb <= ir_out_pa;
			npc_in_pb <= npc_out_pa;
			t3_in_pb <= t3_out_pa;
			memd_in_pb <= memd_out_pa;
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;

			t1_in_pb <= rf_D1;
			t2_in_pb <= t3_out_pc;
		elsif (op_a = "0101" and ((op_c = "0011") or (op_c = "1000") or (op_c = "1001") ) and ( ir_out_pc(11 downto 9) = ir_out_pa(11 downto 9) ) ) then -- LHI, JAL. JLR
			ir_in_pb <= ir_out_pa;
			npc_in_pb <= npc_out_pa;
			t3_in_pb <= t3_out_pa;
			memd_in_pb <= memd_out_pa;
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;

			if (op_c = "0011") then --LHI
				t1_in_pb <= rf_D1;
				t2_in_pb <= ir_out_pc_80;	
			else --JAL and JLR
				t1_in_pb <= rf_D1;
				t2_in_pb <= npc_out_pc;
			end if ;

		elsif ( op_b = "0101"  and op_c = "0100" and ( ir_out_pc(11 downto 9) = ir_out_pa(11 downto 9) ) ) then --Arith _ LW
			ir_in_pb <= ir_out_pa;
			npc_in_pb <= npc_out_pa;
			t3_in_pb <= t3_out_pa;
			memd_in_pb <= memd_out_pa;
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;

			t1_in_pb <= rf_D1;
			t2_in_pb <= datamem_out;

		elsif ( op_a = "0101"  and ((op_d = "0000") or (op_d = "0010")) and ( ir_out_pd(5 downto 3) = ir_out_pa(11 downto 9) ) ) then -- ADD, ADC, ADZ, NDU, NDC, NDZ
			ir_in_pb <= ir_out_pa;
			npc_in_pb <= npc_out_pa;
			t3_in_pb <= t3_out_pa;
			memd_in_pb <= memd_out_pa;
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;

			t1_in_pb <= rf_D1;
			t2_in_pb <= t3_out_pd;
		elsif (op_a = "0101" and op_d = "0001" and ( ir_out_pd(8 downto 6) = ir_out_pa(11 downto 9) ) ) then -- ADI
			ir_in_pb <= ir_out_pa;
			npc_in_pb <= npc_out_pa;
			t3_in_pb <= t3_out_pa;
			memd_in_pb <= memd_out_pa;
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;

			t1_in_pb <= rf_D1;
			t2_in_pb <= t3_out_pd;
		elsif (op_a = "0101" and ((op_d = "0011") or (op_d = "1000") or (op_d = "1001") ) and ( ir_out_pd(11 downto 9) = ir_out_pa(11 downto 9) ) ) then -- LHI, JAL. JLR
			ir_in_pb <= ir_out_pa;
			npc_in_pb <= npc_out_pa;
			t3_in_pb <= t3_out_pa;
			memd_in_pb <= memd_out_pa;
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;

			if (op_d = "0011") then --LHI
				t1_in_pb <= rf_D1;
				t2_in_pb <= ir_out_pd_80;	
			else --JAL and JLR
				t1_in_pb <= rf_D1;
				t2_in_pb <= npc_out_pd;
			end if ;

		elsif ( op_b = "0101"  and op_d = "0100" and ( ir_out_pd(11 downto 9) = ir_out_pa(11 downto 9) ) ) then --Arith _ LW
			ir_in_pb <= ir_out_pa;
			npc_in_pb <= npc_out_pa;
			t3_in_pb <= t3_out_pa;
			memd_in_pb <= memd_out_pa;
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;

			t1_in_pb <= rf_D1;
			t2_in_pb <= memd_out_pd;

		-- Default
		else 
			-- pb_in <= pa_out
			t1_in_pb <= rf_D1;
			t2_in_pb <= rf_D2;

			ir_in_pb <= ir_out_pa;
			npc_in_pb <= npc_out_pa;
			t3_in_pb <= t3_out_pa;
			memd_in_pb <= memd_out_pa;
			contr_in_pb <= contr_pa_out;
			c_in_pb <= c_out_pa;
			z_in_pb <= z_out_pa;
		end if;

		-- Mapping of Pipe C

		-- LM R7 : flush

		-- LW R7 : flush
		if (op_c = "0100" and ir_out_pc(11 downto 9) = "111") then
			ir_in_pc <= (others => '1');
			contr_in_pc <= (others => '0');
			c_in_pc <= '0';
			z_in_pc <= '0';
			npc_in_pc <= (others => '0');
			t1_in_pc <= (others => '0');
			t2_in_pc <= (others => '0');
			t3_in_pc <= (others => '0');
			memd_in_pc <= (others => '0');

		-- Arith LW : stall and flush 
		elsif ((contr_pb_out(10) = '1') and (contr_pc_out(7) = '1')) then
			if (((op_b = "0001") or (op_b = "0110")) and (ir_out_pc(11 downto 9) = ir_out_pb(11 downto 9))) then -- ADI & LM, checking RA only
				ir_in_pc <= (others => '1');
				contr_in_pc <= (others => '0');
				c_in_pc <= '0';
				z_in_pc <= '0';
				npc_in_pc <= (others => '0');
				t1_in_pc <= (others => '0');
				t2_in_pc <= (others => '0');
				t3_in_pc <= (others => '0');
				memd_in_pc <= (others => '0');
			elsif (((op_b = "0100") or (op_b = "0101")) and (ir_out_pc(11 downto 9) = ir_out_pb(8 downto 6))) then -- SW/LW - LW
				ir_in_pc <= (others => '1');
				contr_in_pc <= (others => '0');
				c_in_pc <= '0';
				z_in_pc <= '0';
				npc_in_pc <= (others => '0');
				t1_in_pc <= (others => '0');
				t2_in_pc <= (others => '0');
				t3_in_pc <= (others => '0');
				memd_in_pc <= (others => '0');
			elsif (ir_out_pc(11 downto 9) = ir_out_pb(11 downto 9) or (ir_out_pc(11 downto 9) = ir_out_pb(8 downto 6))) then
				ir_in_pc <= (others => '1');
				contr_in_pc <= (others => '0');
				c_in_pc <= '0';
				z_in_pc <= '0';
				npc_in_pc <= (others => '0');
				t1_in_pc <= (others => '0');
				t2_in_pc <= (others => '0');
				t3_in_pc <= (others => '0');
				memd_in_pc <= (others => '0');			
			--else
			--	-- Register match failed; No LM-SM either, and hence clear.
			--	p0_en <= '1';
			end if;


		-- BEQ, JAL : flush
		elsif (op_b = "1100" or op_b = "1000") then
			t3_in_pc <= npc_out_pb; -- Old PC to WB into Reg A
			ir_in_pc <= ir_out_pb;
			npc_in_pc <= malu_out; -- New PC for R7
			t1_in_pc <= t1_out_pb;
			t2_in_pc <= t2_out_pb;
			memd_in_pc <= memd_out_pb;
			contr_in_pc <= contr_pb_out;
			c_in_pc <= c_out_pb;
			z_in_pc <= z_out_pb;

		-- Arith R7 : flush
		elsif (contr_pb_out(0) = '1' and ( ir_out_pb(5 downto 3) = "111" and ( ir_out_pb(15 downto 14) = "00" and not ir_out_pb(15 downto 12) = "0011" ) ) ) then 

				t3_in_pc <= npc_out_pb; -- Old PC to WB into Reg A
				ir_in_pc <= ir_out_pb;
				npc_in_pc <= malu_out; -- New PC for R7
				t1_in_pc <= t1_out_pb;
				t2_in_pc <= t2_out_pb;
				memd_in_pc <= memd_out_pb;
				contr_in_pc <= contr_pb_out;
				c_in_pc <= c_out_pb;
				z_in_pc <= z_out_pb;

		---- LM : Stall and flush
		--elsif ((op_b = "0110") or (op_c = "0110") or ((op_d = "0110") and (lm_fin = '0'))) then 
		--	p0_en <= '0';

		---- SM : Stall and flush
		--elsif ((op_a = "0111") or (op_b = "0111") or ((op_c = "0111") and (sm_fin = '0'))) then 
		--	p0_en <= '0';
			

		elsif ((op_b = "0110") or (op_b = "0111")) then -- LM/SM means T1 updated !*
			t1_in_pc <= malu_out;
			t3_in_pc <= malu_out;
			ir_in_pc <= ir_out_pb;
			npc_in_pc <= npc_out_pb;
			t2_in_pc <= t2_out_pb;
			memd_in_pc <= memd_out_pb;
			contr_in_pc <= contr_pb_out;
			c_in_pc <= c_out_pb;
			z_in_pc <= z_out_pb;
				
		-- Default
		else
			-- Directly Mapping from pb
			t3_in_pc <= malu_out;
			ir_in_pc <= ir_out_pb;
			npc_in_pc <= npc_out_pb;
			t1_in_pc <= t1_out_pb;
			t2_in_pc <= t2_out_pb;
			memd_in_pc <= memd_out_pb;
			contr_in_pc <= contr_pb_out;
			c_in_pc <= c_out_pb;
			z_in_pc <= z_out_pb;		
		end if;

		
		-- Mapping of Pipe D

		-- LW R7 : flush
		if (op_c = "0100" and ir_out_pc(11 downto 9) = "111") then
			memd_in_pd <= datamem_out;

			ir_in_pd <= ir_out_pc;
			npc_in_pd <= datamem_out; -- New R7
			t1_in_pd <= t1_out_pc;
			t2_in_pd <= t2_out_pc;
			t3_in_pd <= t3_out_pc;
			contr_in_pd <= contr_pc_out;
			c_in_pd <= c_out_pc;
			z_in_pd <= z_out_pc;
		

		-- Default
		else 
			memd_in_pd <= datamem_out;

			ir_in_pd <= ir_out_pc;
			npc_in_pd <= npc_out_pc;
			t1_in_pd <= t1_out_pc;
			t2_in_pd <= t2_out_pc;
			t3_in_pd <= t3_out_pc;
			contr_in_pd <= contr_pc_out;
			c_in_pd <= c_out_pc;
			z_in_pd <= z_out_pc;

		end if;

		
		-- Enable signals for the pipes
		
		-- Pipe D enable

		-- LM R7 : flush

		-- Default
		pd_en <= '1';
		

		-- Pipe C enable

		-- LM R7 : flush

		-- Default
		pc_en <= '1';


		-- Pipe B enable

		-- LM R7 : flush

		-- LW R7 : flush
		if (op_c = "0100" and ir_out_pc(11 downto 9) = "111") then
			pb_en <= '1';

		-- Arith LW : stall and flush 
		elsif ((contr_pb_out(10) = '1') and (contr_pc_out(7) = '1')) then
			if (((op_b = "0001") or (op_b = "0110")) and (ir_out_pc(11 downto 9) = ir_out_pb(11 downto 9))) then -- ADI & LM, checking RA only
				pb_en <= '0';
			elsif (((op_b = "0100") or (op_b = "0101")) and (ir_out_pc(11 downto 9) = ir_out_pb(8 downto 6))) then -- SW/LW - LW
				pb_en <= '0';
			elsif (ir_out_pc(11 downto 9) = ir_out_pb(11 downto 9) or (ir_out_pc(11 downto 9) = ir_out_pb(8 downto 6))) then
				pb_en <= '0';
			--else
			--	-- Register match failed; No LM-SM either, and hence clear.
			--	p0_en <= '1';
			end if;


		-- BEQ, JAL : flush
		elsif ( (op_b = "1100" and (branch_eq = '1') ) or op_b = "1000") then
			pb_en <= '1';

		-- Arith R7 : flush
		elsif (contr_pb_out(0) = '1' and ( ir_out_pb(5 downto 3) = "111" and ( ir_out_pb(15 downto 14) = "00" and not ir_out_pb(15 downto 12) = "0011" ) ) ) then
			pb_en <= '1';

		-- JLR LW : stall and flush
		elsif ((op_a = "1001") and (op_b = "0100") and (ir_out_pa(8 downto 6) = ir_out_pb(11 downto 9))) then
			pb_en <= '1';
		

		-- LM : Stall and flush
		elsif ((op_b = "0110") or (op_c = "0110") or ((op_d = "0110") and (lm_fin = '0'))) then 
			pb_en <= '1';

		-- SM : Stall and flush
		elsif ((op_a = "0111") or (op_b = "0111") or ((op_c = "0111") and (sm_fin = '0'))) then 
			pb_en <= '1';			
		
		-- Default
		else
			pb_en <= '1';
		end if;

		-- Pipe A enable

		-- LM R7 : flush

		-- LW R7 : flush
		if (op_c = "0100" and ir_out_pc(11 downto 9) = "111") then
			pa_en <= '1';

		-- Arith LW : stall and flush 
		elsif ((contr_pb_out(10) = '1') and (contr_pc_out(7) = '1')) then
			if (((op_b = "0001") or (op_b = "0110")) and (ir_out_pc(11 downto 9) = ir_out_pb(11 downto 9))) then -- ADI & LM, checking RA only
				pa_en <= '0';
			elsif (((op_b = "0100") or (op_b = "0101")) and (ir_out_pc(11 downto 9) = ir_out_pb(8 downto 6))) then -- SW/LW - LW
				pa_en <= '0';
			elsif (ir_out_pc(11 downto 9) = ir_out_pb(11 downto 9) or (ir_out_pc(11 downto 9) = ir_out_pb(8 downto 6))) then
				pa_en <= '0';
			--else
			--	-- Register match failed; No LM-SM either, and hence clear.
			--	p0_en <= '1';
			end if;


		-- BEQ, JAL : flush
		elsif ( (op_b = "1100" and (branch_eq = '1') ) or op_b = "1000") then
			pa_en <= '1';

		-- Arith R7 : flush
		elsif (contr_pb_out(0) = '1' and ( ir_out_pb(5 downto 3) = "111" and ( ir_out_pb(15 downto 14) = "00" and not ir_out_pb(15 downto 12) = "0011" ) ) ) then
			pa_en <= '1';
		
		-- JLR LW : stall and flush
		elsif ((op_a = "1001") and (op_b = "0100") and (ir_out_pa(8 downto 6) = ir_out_pb(11 downto 9))) then
			pa_en <= '0';
		

		-- LM : Stall and flush
		elsif ((op_b = "0110") or (op_c = "0110") or ((op_d = "0110") and (lm_fin = '0'))) then 
			pa_en <= '0';

		-- SM : Stall and flush
		elsif ((op_a = "0111") or (op_b = "0111") or ((op_c = "0111") and (sm_fin = '0'))) then 
			pa_en <= '1';
		
		-- JLR : flush
		elsif (op_a = "1001") then
			pa_en <= '1';			
		
		-- Default
		else
			pa_en <= '1';
		end if;

		-- Pipe 0 enable

		-- LM R7 : flush

		-- LW R7 : flush
		if (op_c = "0100" and ir_out_pc(11 downto 9) = "111") then
			p0_en <= '1';

		-- Arith LW : stall and flush 
		elsif ((contr_pb_out(10) = '1') and (contr_pc_out(7) = '1')) then
			if (((op_b = "0001") or (op_b = "0110")) and (ir_out_pc(11 downto 9) = ir_out_pb(11 downto 9))) then -- ADI & LM, checking RA only
				p0_en <= '0';
			elsif (((op_b = "0100") or (op_b = "0101")) and (ir_out_pc(11 downto 9) = ir_out_pb(8 downto 6))) then -- SW/LW - LW
				p0_en <= '0';
			elsif (ir_out_pc(11 downto 9) = ir_out_pb(11 downto 9) or (ir_out_pc(11 downto 9) = ir_out_pb(8 downto 6))) then
				p0_en <= '0';
			--else
			--	-- Register match failed; No LM-SM either, and hence clear.
			--	p0_en <= '1';
			end if;


		-- BEQ, JAL : flush
		elsif ( (op_b = "1100" and (branch_eq = '1') ) or op_b = "1000") then
			p0_en <= '1';

		-- Arith R7 : flush
		elsif (contr_pb_out(0) = '1' and ( ir_out_pb(5 downto 3) = "111" and ( ir_out_pb(15 downto 14) = "00" and not ir_out_pb(15 downto 12) = "0011" ) ) ) then
			p0_en <= '1';

		-- JLR LW : stall and flush
		elsif ((op_a = "1001") and (op_b = "0100") and (ir_out_pa(8 downto 6) = ir_out_pb(11 downto 9))) then
			p0_en <= '0';
		

		-- LM : Stall and flush
		elsif ((op_b = "0110") or (op_c = "0110") or ((op_d = "0110") and (lm_fin = '0'))) then 
			p0_en <= '0';

		-- SM : Stall and flush
		elsif ((op_a = "0111") or (op_b = "0111") or ((op_c = "0111") and (sm_fin = '0'))) then 
			p0_en <= '0';
		
		-- JLR : flush
		elsif (op_a = "1001") then
			p0_en <= '1';
			
		-- LHI R7 : flush
		elsif (op_0 = "0011" and ir_out_p0(11 downto 9) = "111") then
			p0_en <= '1';
		
		-- Default
		else
			p0_en <= '1';
		end if;
	end if;
	end process;
end pipelined;
