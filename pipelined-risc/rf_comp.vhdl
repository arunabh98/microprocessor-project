library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.numeric_std.all; 
library std;
use std.textio.all;


entity rf_comp is 
	port( A1, A2, A3 : in std_logic_vector(2 downto 0);
		  D3, D_pc_in: in std_logic_vector(15 downto 0);
		  
		clk, wr, reset, pc_wr: in std_logic ; -- No separate control for PC required; simply drive 111 to A_
		D1, D2, D_pc_out: out std_logic_vector(15 downto 0));
end entity;

architecture rf_behave of rf_comp is 
 
type registerFile is array(0 to 7) of std_logic_vector(15 downto 0);
signal registers: registerFile;

begin 

process (clk)
begin 
	if((clk'event and clk = '1')) then
		if (reset = '1') then
			for i in 0 to 7 loop
				registers(i) <= "0000000000000000";
			end loop;
		else
         	if (not ((wr = '1') and (A3 = "111"))) then
	   		   if (wr = '1') then
	   				registers(to_integer(unsigned(A3))) <= D3;
	   			end if;
	   			if (pc_wr = '1') then
	   				registers(7) <= D_pc;
	   			end if;
	   		end if;
	   	end if;
	end if;
end process;

process (clk, A1, A2, D_pc, pc_wr)
begin
	D1 <= registers(to_integer(unsigned(A1)));
	D2 <= registers(to_integer(unsigned(A2)));
	D_pc_out <= registers(7);
end process;
		  
end rf_behave;
	    
