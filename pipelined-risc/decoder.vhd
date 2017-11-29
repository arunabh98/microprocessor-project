library ieee;
use ieee.std_logic_1164.all;
library std;
use std.standard.all;
library ieee;
use ieee.numeric_std.all; 
library std;
use std.textio.all;

entity decoder is
	port(X: in std_logic_vector(3 downto 0);
		 Y: out std_logic_vector(18 downto 0));
end decoder;

architecture decoder_behave of decoder is
signal A1,A2,rf_r,alua_opc,alua_en,alua_cen,alua_zen,mem_r,mem_wr,mem_a,rf_wr: std_logic;
signal alu_in1,alu_in2,A3,D3: std_logic_vector(1 downto 0);
begin

		Y(18) <= A1;
		Y(17) <= A2;
		Y(4 downto 3) <= A3(1 downto 0);
		Y(2 downto 1) <= D3;
		Y(16) <= rf_r;
		Y(10) <= alua_en;
		Y(9) <= alua_cen;
		Y(8) <= alua_zen;
		Y(15 downto 14) <= alu_in1;
		Y(13 downto 12) <= alu_in2;
		Y(7) <= mem_r;
		Y(5) <= mem_a;
		Y(6) <= mem_wr;
		Y(0) <= rf_wr;
		Y(11) <= alua_opc;

	process(X)
	begin
		if((X = "0000") or (X = "0010") or (X = "0001")) then
			A1 <= '0'; 
			A2 <= '0';
			A3 <= "01";
			D3 <= "00";
			rf_r <= '1';
			alua_en <= '1';
			alua_cen <= '1';
			alua_zen <= '1';
			alu_in1 <= "00";
			
			mem_r <= '0';
			mem_a <= '0';
			mem_wr <= '0';
			rf_wr <= '1';   -- conditional ADC bleh bleh 

			if (X = "0001") then -- ADI
				alu_in2 <= "11";
			else
				alu_in2 <= "00";
			end if;

			if (X(1) = '0') then
				alua_opc <= '0';
			else 
				alua_opc <= '1';
			end if;
		elsif (X = "0011") then 
			A1 <= '0';
			A2 <= '0';
			A3 <=  "10";
			D3 <=  "11";
			rf_r <= '0';
			rf_wr <= '1';
			alua_opc <= '0';
			alua_en <= '0';
			alua_cen <= '0';
			alua_zen <= '0';
			alu_in1 <= "00";
			alu_in2 <= "00";
			mem_r <= '0';
			mem_a <= '0';
			mem_wr <= '0';

			

		elsif (X = "0100") then
			A1 <= '0';
			A2 <= '0';
			A3 <= "10";
			D3 <= "10"; 
			rf_r <= '1';
			rf_wr <= '1';
			alua_opc <= '0';
			alua_en <= '1';
			alua_cen <= '0';
			alua_zen <= '1';
			alu_in1 <= "01";
			alu_in2 <= "00";
			mem_r <= '1';
			mem_a <= '1';
			mem_wr <= '0';

		
		elsif (X = "0101") then
			A1 <= '0';
			A2 <= '0';
			A3 <=  "00";
			D3 <=  "00";
			rf_r <= '1';
			rf_wr <= '0';
			alua_opc <= '0';
			alua_en <= '1';
			alua_cen <= '0';
			alua_zen <= '0';
			alu_in1 <= "01";
			alu_in2 <= "00";
			mem_r <= '0';
			mem_a <= '1';
			mem_wr <= '1';

					
	    elsif (X = "0110") then
	    	A1 <= '0';
			A2 <= '0';
			A3 <=  "11";
			D3 <= "10";
			rf_r <= '0';
			rf_wr <= '1';
			alua_opc <= '0';
			alua_en <= '1';
			alua_cen <= '0';
			alua_zen <= '0';
			alu_in1 <= "00";
			alu_in2 <= "10";
			mem_r <= '1';
			mem_a <= '1';
			mem_wr <= '0';

	    elsif (X = "0111") then
	    	A1 <= '0';
			A2 <= '1';
			A3 <=  "00";
			D3 <= "00";
			rf_r <= '1';
			rf_wr <= '0';
			alua_opc <= '0';
			alua_en <= '1';
			alua_cen <= '0';
			alua_zen <= '0';
			alu_in1 <= "00";
			alu_in2 <= "10";
			mem_r <= '0';
			mem_a <= '1';
			mem_wr <= '1';

	    elsif (X = "1100") then

	    	A1 <= '0';
			A2 <= '0';
			A3 <=  "00";
			D3 <= "00";
			rf_r <= '1';
			rf_wr <= '0';
			alua_opc <= '0';
			alua_en <= '1';
			alua_cen <= '0';
			alua_zen <= '0';
			alu_in1 <= "01";
			alu_in2 <= "01";
			mem_r <= '0';
			mem_a <= '0';
			mem_wr <= '1';


	    elsif (X = "1000") then

	    	A1 <= '0';
			A2 <= '0';
			A3 <=  "10";
			D3 <= "01";
			rf_r <= '0';
			rf_wr <= '1';
			alua_opc <= '0';
			alua_en <= '1';
			alua_cen <= '0';
			alua_zen <= '0';
			alu_in1 <= "10";
			alu_in2 <= "01";
			mem_r <= '0';
			mem_a <= '0';
			mem_wr <= '0';


	    else  			
	    				-- JLR
	    	A1 <= '0';
			A2 <= '0';
			A3 <=  "10";
			D3 <= "01";
			rf_r <= '1';
			rf_wr <= '1';
			alua_opc <= '0';
			alua_en <= '0';
			alua_cen <= '0';
			alua_zen <= '0';
			alu_in1 <= "00";
			alu_in2 <= "00";
			mem_r <= '0';
			mem_a <= '0';
			mem_wr <= '0';
	    	
	    end if;
			
	end process;						

end architecture decoder_behave; 
