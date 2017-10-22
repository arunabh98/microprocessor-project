-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  two-bit adder.
library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(8 downto 0); ---Note: for alu testing (17 downto 0) for others (15 downto 0)
       	output_vector: out std_logic_vector(15 downto 0));
end entity;

architecture DutWrap of DUT is
--component alu is 
--	port( X,Y : in std_logic_vector(7 downto 0); x0,x1 : in std_logic ; Z : out std_logic_vector(7 downto 0));
--end component;

--component SixteenBitAdder is
--	port(x,y: in std_logic_vector(15 downto 0);
--		z: out std_logic_vector(15 downto 0);
--		car_in: in std_logic;
--		car_out: out std_logic); -- Carry flags is output, zero set by main ALU
--end component;

--component SixteenBitSub is
--	port(x,y: in std_logic_vector(15 downto 0);
--		z: out std_logic_vector(15 downto 0);
--		bor_in: in std_logic;
--		bor_out: out std_logic); -- borry flags is output, zero set by main ALU
--end component;

--component SixteenBitNand is
--	port(x,y: in std_logic_vector(15 downto 0);
--		z: out std_logic_vector(15 downto 0));
--end component;

component se7 is 
	port( se_in : in std_logic_vector(8 downto 0);
		  se_out: out std_logic_vector(15 downto 0));
end component;


begin
--dut_in: SixteenBitSub port map(x => input_vector(32 downto 17), y => input_vector(16 downto 1), bor_in => input_vector(0), z => output_vector(16 downto 1), bor_out => output_vector(0));
--dut_in: SixteenBitNand port map( x => input_vector(32 downto 17), y => input_vector(16 downto 1) , z => output_vector(16 downto 1));

--dut_in: memory port map( Add_in => input_vector(33 downto 18), D_in => input_vector(17 downto 2), wr => input_vector(1), rd => input_vector(0) , Y_out => output_vector(15 downto 0));
dut_in: se7 port map(se_in => input_vector(8 downto 0), se_out => output_vector(15 downto 0)); 

end DutWrap;
