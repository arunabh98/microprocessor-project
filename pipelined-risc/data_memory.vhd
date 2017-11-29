library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all; 
library ieee;
use ieee.numeric_std.all; 

entity data_memory is 
	port ( wr,rd, init : in std_logic; 
			Add_in, D_in: in std_logic_vector(15 downto 0);
			Y_out: out std_logic_vector(15 downto 0)); 
end entity; 

architecture memory_behave of data_memory is 
	type registerFile is array(0 to ((2**4)-1)) of std_logic_vector(15 downto 0);
	signal mem_reg: registerFile;
	begin
	process(init, wr, Add_in, D_in)
		begin 
		
		if (init = '1') then
			-- Initialise some memory
            mem_reg(0) <= "0000000000000011"; 
            mem_reg(1) <= "0000000000000000"; 
         -- mem_reg(1) <= "1001101001000000"; 
			for i in 2 to 4 loop
				mem_reg(i) <= "0010101010101010"; 
			end loop;
			for i in 5 to 14 loop
				mem_reg(i) <= "1111111111111111"; 
			end loop;
		elsif (rd = '1') then
			Y_out <= mem_reg(to_integer(unsigned(Add_in(3 downto 0))));
		elsif (rd = '0') then
			Y_out <= "1111111111111111";
		end if;

		if (wr = '1') then
			mem_reg(to_integer(unsigned(Add_in(3 downto 0)))) <= D_in;
		end if;

	end process; 
	end memory_behave;




