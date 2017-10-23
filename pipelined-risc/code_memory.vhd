library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all; 
library ieee;
use ieee.numeric_std.all; 

entity code_memory is 
	port ( wr,rd, init : in std_logic; 
			Add_in, D_in: in std_logic_vector(15 downto 0);
			Y_out: out std_logic_vector(15 downto 0)); 
end entity; 

architecture memory_behave of code_memory is 
	type registerFile is array(0 to ((2**4)-1)) of std_logic_vector(15 downto 0);
	signal mem_reg: registerFile;
	begin
	process(init, wr, Add_in, D_in)
		begin 
		
		if (init = '1') then
			-- Initialise some memory
            mem_reg(0) <= "0000000001010000"; -- ADD 0 1 2 
            mem_reg(1) <= "0000000001011000"; -- ADD 0 1 3
				mem_reg(2) <= "0000010100101010"; -- ADC 2 4 5
				mem_reg(3) <= "0011010000000011"; -- LHI in 2 
				mem_reg(4) <= "0100110000000011"; -- LW in 6 
				for i in 5 to 14 loop
				mem_reg(i) <= "1111111111111111"; -- The End
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




