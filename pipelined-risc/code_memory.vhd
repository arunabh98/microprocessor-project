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
            mem_reg(0) <= "0001000000000011"; -- ADI 3 in 0
            mem_reg(1) <= "0001001001000011"; -- ADI 3 in 1
            mem_reg(2) <= "0001010010000011"; -- ADI 3 in 2
            mem_reg(3) <= "0001011011000011"; -- ADI 3 in 3
            mem_reg(4) <= "0001100100000011"; -- ADI 3 in 4
            mem_reg(5) <= "0001101101000011"; -- ADI 3 in 5
            mem_reg(6) <= "0000110001000000"; -- ADD 0 and 1 and store in 6

				for i in 7 to 14 loop
				mem_reg(i) <= "1111111111111111"; -- The End
			end loop;
		elsif (rd = '1') then
			Y_out <= mem_reg(to_integer(unsigned(Add_in(3 downto 0))));
		end if;

		if (wr = '1') then
			mem_reg(to_integer(unsigned(Add_in(3 downto 0)))) <= D_in;
		end if;

	end process; 
	end memory_behave;




