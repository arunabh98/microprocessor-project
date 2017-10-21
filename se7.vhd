 
 library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;


entity se7 is 
	port( se_in : in std_logic_vector(8 downto 0);
		  se_out: out std_logic_vector(15 downto 0));
end entity;

architecture behave_se7 of se7 is 

begin 
 se_out(8 downto 0) <= se_in(8 downto 0); 
 se_out(15 downto 9) <="0000000"; 
 end behave_se7; 

  

