-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  two-bit adder.
library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(33 downto 0); ---Note: for alu testing (17 downto 0) for others (15 downto 0)
       	output_vector: out std_logic_vector(9 downto 0));
end entity;

architecture DutWrap of DUT is

component risc is
	port (	
			X_main : in std_logic_vector(32 downto 0);
			clock : in std_logic;
			Y_main : out std_logic_vector(9 downto 0)); -- Stores the current state
end component;


begin
--dut_in: se7 port map(se_in => input_vector(8 downto 0), se_out => output_vector(15 downto 0)); 
dut_in: risc port map (input_vector(33 downto 1), input_vector(0), output_vector);

end DutWrap;
