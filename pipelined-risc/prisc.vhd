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

signal zeros, pc_in, pc_out, alu_out, codemem_out, ir_out_p0, ir_out_pa, ir_out_pb, ir_out_pc, ir_out_pd : std_logic_vector(15 downto 0) := "0000000000000000";
signal one : std_logic_vector(15 downto 0) := "0000000000000001";
signal pc_en, codemem_init, p0_en, pa_en, pb_en, pc_en, pd_en : std_logic := '0';
signal contr_pa_in, contr_pa_out, contr_pb_in, contr_pb_out, contr_pc_in, contr_pc_out, contr_pd_in, contr_pd_out : std_logic_vector(18 downto 0) := "0000000000000000000";
signal pe_out : std_logic_vector(2 downto 0) := "000";

begin

-- Instruction Fetch
pc: dregister port map (pc_in, pc_out, pc_en, clk);
codemem: memory port map ('0', '1', codemem_init, pc_out, zeros, codemem_out);
palu: alu port map (X => pc_out, Y => one, x0 => '1', x1 => '1', C_in => '0', S => alu_out);
-- Instruction Decode
dec: decoder port map (ir_out_p0(15 downto 12), contr_pa_in);
pipe0: pipe port map (ir_in => codemem_out, npc_in => alu_out, t1_in => zeros, t2_in => zeros, t3_in => 0, memd_in => zeros, contr_in => "0000000000000000000", pipe_en => p0_en, clk => clk, ir_out => ir_out_p0, npc_out => npc_out_p0);
-- Register Read
rf_main: rf port map (rf_A1, rf_A2, rf_A3, rf_D3, clk, rf_wr, rf_rst, rf_D1, rf_D2);
pipeA: pipe port map (ir_in => ir_out_p0, npc_in => npc_out_p0, t1_in => zeros, t2_in => zeros, t3_in => zeros, memd_in => zeros, contr_in => contr_pa_in, pipe_en => pa_en, clk => clk, ir_out => ir_out_pa, npc_out => npc_out_pa, contr_out => contr_pa_out);


process(clk, rst)
	begin
		pc_in <= alu_out;
		rf_A1 <= ir_out_pa(12 downto 10);
		if (contr_pa_out(17) = '0') then
			rf_A2 <= ir_out_pa(9 downto 7);
		else
			rf_A2 <= pe_out;
		end if;
		





	end process;
end pipelined;