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
			pipe_en : in std_logic;
			clk : in std_logic);
	end component;

	component alu is 
		port( X,Y : in std_logic_vector(15 downto 0);
			x0,x1 : in std_logic ;
			C_in: in std_logic;
			C_out, Z_out: out std_logic;
			S : out std_logic_vector(15 downto 0));
	end component;

	component memory is 
		port ( wr,rd, init : in std_logic; 
				Add_in, D_in: in std_logic_vector(15 downto 0);
				Y_out: out std_logic_vector(15 downto 0)); 
	end component; 

	component rf is 
		port( A1,A2,A3 : in std_logic_vector(2 downto 0);
			  D3: in std_logic_vector(15 downto 0);
			  
			clk,wr, reset: in std_logic ; -- No separate control for PC required; simply drive 111 to A_
			D1, D2: out std_logic_vector(15 downto 0));
	end component;

	component dregister_1 is                 -- no. of bits
	  port (
	    din  : in  std_logic;
	    dout : out std_logic;
	    enable: in std_logic;
	    clk     : in  std_logic);
	end component;

	component dregister is                 -- no. of bits
	  port (
	    din  : in  std_logic_vector(15 downto 0);
	    dout : out std_logic_vector(15 downto 0);
	    enable: in std_logic;
	    clk     : in  std_logic);
	end component;

	component pr_encoder is
		port( x_in : in std_logic_vector (7 downto 0);
			  x_out: out std_logic_vector(2 downto 0);
			  x_none: out std_logic);
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

signal zeros, pc_in, pc_out, palu_out, malu_out, codemem_out, ir_out_p0, ir_out_pa, ir_out_pb, ir_out_pc, ir_out_pd, npc_out_p0, npc_out_pb,
npc_out_pa, rf_D1, rf_D2, rf_D3, npc_out_pd, memd_out_pd, t3_out_pd, datamem_a, datamem_out, datamem_din , t1_in, t2_out_pb, t2_out_pc, t2_out_pd,
t1_out_pb, t3_out_pb, npc_out_pc, t1_out_pc, t1_out_pd, t3_out_pc, alu_1, alu_2, ir_out_pb_50, ir_out_pb_80, ir_out_pd_80, ir : std_logic_vector(15 downto 0) := "0000000000000000";
signal one : std_logic_vector(15 downto 0) := "0000000000000001";
signal pc_en, codemem_init, p0_en, pa_en, pb_en, pd_en, rf_wr, rf_rst, cen, zen, datamem_init, datamem_rd,
datamem_wr, zin, zout, cin, cout, alu_op1, iter_in, iter_out, iter_en : std_logic := '0';
signal contr_pa_in, contr_pa_out, contr_pb_out, contr_pc_out, contr_pd_out : std_logic_vector(18 downto 0) := "0000000000000000000";
signal pe_out,rf_A1,rf_A2,rf_A3 : std_logic_vector(2 downto 0) := "000";

begin

-- Instruction Fetch
pc: dregister port map (pc_in, pc_out, pc_en, clk);
codemem: memory port map ('0', '1', codemem_init, pc_out, zeros, codemem_out);
palu: alu port map (X => pc_out, Y => one, x0 => '1', x1 => '1', C_in => '0', S => palu_out);
-- Instruction Decode
dec: decoder port map (ir_out_p0(15 downto 12), contr_pa_in);
pipe0: pipe port map (ir_in => codemem_out, npc_in => palu_out, t1_in => zeros, t2_in => zeros, t3_in => zeros, memd_in => zeros, contr_in => "0000000000000000000", pipe_en => p0_en,
						clk => clk, ir_out => ir_out_p0, npc_out => npc_out_p0);
-- Register Read
rf_main: rf port map (rf_A1, rf_A2, rf_A3, rf_D3, clk, rf_wr, rf_rst, rf_D1, rf_D2);
pipeA: pipe port map (ir_in => ir_out_p0, npc_in => npc_out_p0, t1_in => zeros, t2_in => zeros, t3_in => zeros, memd_in => zeros, contr_in => contr_pa_in, pipe_en => pa_en,
						clk => clk, ir_out => ir_out_pa, npc_out => npc_out_pa, contr_out => contr_pa_out);
-- Execute
malu: alu port map (X => alu_1, Y => alu_2, x0 => alu_op1, x1 => '1', C_in => cout, C_out => cin, Z_out => zin, S => malu_out);
pipeB: pipe port map (ir_in => ir_out_pa, npc_in => npc_out_pa, t1_in => rf_D1, t2_in => rf_D2, t3_in => zeros, memd_in => zeros, contr_in => contr_pa_out, pipe_en => pb_en,
						clk => clk, ir_out => ir_out_pb, npc_out => npc_out_pb, contr_out => contr_pb_out, t1_out => t1_out_pb, t2_out => t2_out_pb, t3_out => t3_out_pb);
-- Memory
datamem: memory port map (datamem_wr, datamem_rd, datamem_init, datamem_a, datamem_din, datamem_out);
pipeC: pipe port map (ir_in => ir_out_pb, npc_in => npc_out_pb, t1_in => t1_out_pb, t2_in => t2_out_pb, t3_in => malu_out, memd_in => zeros, contr_in => contr_pb_out,
						pipe_en => pc_en, clk => clk, ir_out => ir_out_pc, npc_out => npc_out_pc, contr_out => contr_pc_out, t1_out => t1_out_pc, t2_out => t2_out_pc,
						t3_out => t3_out_pc);
-- RF Write-Back
pipeD: pipe port map (ir_in => ir_out_pc, npc_in => npc_out_pc, t1_in => t1_out_pc, t2_in => t2_out_pc, t3_in => t3_out_pc, memd_in => datamem_out, contr_in => contr_pc_out,
						pipe_en => pd_en, clk => clk, ir_out => ir_out_pd, npc_out => npc_out_pd, contr_out => contr_pd_out, t1_out => t1_out_pd, t2_out => t2_out_pd,
						t3_out => t3_out_pd, memd_out => memd_out_pd);


alu_se10: se10 port map (ir_out_pb(5 downto 0), ir_out_pb_50); -- sign extended for alu_1
alu_se7: se7 port map (ir_out_pb(8 downto 0), '1', ir_out_pb_80);
pd_se7: se7 port map (ir_out_pd(8 downto 0), '0', ir_out_pd_80);
car: dregister_1 port map (cin, cout, cen, clk);
zer: dregister_1 port map (zin, zout, zen, clk);
iter: dregister_1 port map (iter_in, iter_out, iter_en, clk);

process(clk, rst)
	begin
		pc_in <= palu_out;
		rf_A1 <= ir_out_pa(12 downto 10);

		-- RF signals dep on contr_pa_out
		if (contr_pa_out(17) = '0') then
			rf_A2 <= ir_out_pa(9 downto 7);
		else
			rf_A2 <= pe_out;
		end if;

		-- ALU signals dep on contr_pb_out
		if (contr_pb_out(15 downto 14) = "00") then
			alu_1 <= t1_out_pb;
		elsif (contr_pb_out(15 downto 14) = "01") then
			alu_1 <= ir_out_pb_50;
		-- elsif (contr_pb_out(15 downto 14) = "10") then -- replacing with else to prevent latch possibility / NA
		else
			alu_1 <= ir_out_pb_80;
		end if;

		alu_op1 <= not contr_pb_out(11); -- Op Code logic
		cen <= contr_pb_out(9);
		zen <= contr_pb_out(8);

		-- MEM signals dep on contr_pc_out
		datamem_rd <= contr_pc_out(7);
		datamem_wr <= contr_pc_out(6);
		datamem_din <= t1_out_pc;
		if (contr_pc_out(5) = '1') then
			datamem_a <= t3_out_pc;
		else
			datamem_a <= zeros;
		end if;

		-- RF_WB signals dep on contr_pd_out
		if (contr_pd_out(4 downto 3) = "01") then
			rf_A3 <= ir_out_pd(6 downto 4);
		elsif (contr_pd_out(4 downto 3) = "10") then
			rf_A3 <= ir_out_pd(12 downto 10);
		else -- Including 
			rf_A3 <= pe_out;
		end if;
		
		rf_wr <= contr_pd_out(0);

		if (contr_pd_out(2 downto 1) = "00") then
			rf_D3 <= t3_out_pd;
		elsif (contr_pd_out(2 downto 1) = "01") then
			rf_D3 <= npc_out_pd;
		elsif (contr_pd_out(2 downto 1) = "10") then
			rf_D3 <= memd_out_pd;
		else
			rf_D3 <= ir_out_pd_80;
		end if;
			

	end process;
end pipelined;