library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all; 
library ieee;
use ieee.numeric_std.all; 
entity memory is 
	port ( wr,rd : in std_logic; 
			Add_in, D_in: in std_logic_vector(15 downto 0);
			Y_out: out std_logic_vector(15 downto 0)); 
end entity; 

architecture memory_behave of memory is 
	type registerFile is array(0 to ((2**16)-1)) of std_logic_vector(15 downto 0);
	signal mem_reg: registerFile;
	begin
	process(wr, rd, Add_in, D_in)
		begin 

		if(rd = '1') then
			Y_out <= mem_reg(to_integer(unsigned(Add_in)));
		elsif (rd = '0') then
			Y_out <= "0000000000001100";
		end if;

		if (wr = '1') then
			mem_reg(to_integer(unsigned(Add_in))) <= D_in;
		end if;

	end process; 
	end memory_behave;




