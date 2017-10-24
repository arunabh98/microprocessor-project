library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all; 
library ieee;
use ieee.numeric_std.all; 

type registerFile is array(0 to 511) of std_logic_vector(15 downto 0);

entity memory is 
	port ( wr,rd : in std_logic; 
			Add_in,D_in: in std_logic_vector(15 downto 0);
			Y_out: out std_logic_vector(15 downto 0)); 

	end entity; 

	architecture memory_behave of memory is 
		begin
		
		signal mem_reg: registerFile;	
		
		process(wr,rd,X_in,Y_out) 
		begin 

		if(rd = '1') 
			Y_out <= mem_reg(to_integer(unsigned(Add_in)));
		else
			Y_out <= "0000000000000000";
		end if;

		if (wr = '1')
			mem_reg(to_integer(unsigned(Add_in))) <= D_in;
		end if;

		end process; 
		end memory_behave;
		



