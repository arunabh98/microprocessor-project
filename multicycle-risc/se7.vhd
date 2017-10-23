 
 library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;


entity se7 is 
	port( se_in : in std_logic_vector(8 downto 0);
		  se_type : in std_logic;
		  se_out: out std_logic_vector(15 downto 0));
end entity;

architecture behave_se7 of se7 is 

begin 

process (se_in, se_type)
begin
	if (se_type = '1') then
	-- Normal SE
		se_out(8 downto 0) <= se_in(8 downto 0); 
		se_out(15) <= se_in(8);
		se_out(14) <= se_in(8); 
		se_out(13) <= se_in(8);
		se_out(12) <= se_in(8); 
		se_out(11) <= se_in(8);
		se_out(10) <= se_in(8);
		se_out(9) <= se_in(8);
	elsif (se_type = '0') then
		se_out(15 downto 7) <= se_in(8 downto 0); 
		se_out(6 downto 0) <= "0000000";
	end if;
end process;
end behave_se7; 

  

