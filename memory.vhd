library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all; 
library ieee;
use ieee.numeric_std.all; 

entity memory is 
	port ( wr,rd, init : in std_logic; 
			Add_in, D_in: in std_logic_vector(15 downto 0);
			Y_out: out std_logic_vector(15 downto 0)); 
end entity; 

architecture memory_behave of memory is 
	type registerFile is array(0 to ((2**4)-1)) of std_logic_vector(15 downto 0);
	signal mem_reg: registerFile;
	begin
	process(init, wr, Add_in, D_in)
		begin 
		
		if (init = '1') then
			-- Initialise some memory
         mem_reg(0) <= "0001000000111111"; -- ADDI  111111 in reg 0
         mem_reg(1) <= "0001001001111111"; -- ADDI 111111 in reg 1
         mem_reg(2) <= "0001010010000111"; -- ADDI 000111 in reg2
         mem_reg(3) <= "0010000001100001"; -- NDZ store 0 in reg 4 and set zero flag
         mem_reg(4) <= "0010001010100000"; -- NDU something in 111000  reg4 
         mem_reg(5) <= "0010010100110010"; -- NDC still -32 in reg6 (output is 19) 
         mem_reg(6) <= "0000001000110010"; -- ADC  -16 in reg2 
         mem_reg(7) <= "0010010100110010"; -- NDC still -32 in reg6 (output is 19) 
         mem_reg(8) <= "0010010001100001"; -- NDZ 
         mem_reg(9) <= "0000000010011001"; -- ADZ 0 in reg3
        
			for i in 10 to 15 loop
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




