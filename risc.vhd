library std;
use std.textio.all;

library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity risc is
	port (	
			X_main : in std_logic_vector(32 downto 0);
			clock : in std_logic;
			Y_main : out std_logic_vector(9 downto 0)); -- Stores the current state
end entity;

architecture risc_proc of risc is

component alu is 
	port( X,Y : in std_logic_vector(15 downto 0);
		x0,x1 : in std_logic ;
		C_in: in std_logic;
		C_out, Z_out: out std_logic;
		S : out std_logic_vector(15 downto 0));
end component; 

component se7 is 
	port( se_in : in std_logic_vector(8 downto 0);
		  se_type : in std_logic;
		  se_out: out std_logic_vector(15 downto 0));
end component;

component se10 is 
	port( se_in : in std_logic_vector(5 downto 0);
		  se_out: out std_logic_vector(15 downto 0));
end component;

component rf is 
	port( A1,A2,A3 : in std_logic_vector(2 downto 0);
		  D3: in std_logic_vector(15 downto 0);
		  
		clk,wr: in std_logic ;
		D1, D2: out std_logic_vector(15 downto 0));
end component;

component dregister is                 -- no. of bits
  port (
    din  : in  std_logic_vector(15 downto 0);
    dout : out std_logic_vector(15 downto 0);
    enable: in std_logic;
    clk     : in  std_logic);
end component;

component memory is 
	port ( wr,rd : in std_logic; 
			Add_in, D_in: in std_logic_vector(15 downto 0);
			Y_out: out std_logic_vector(15 downto 0)); 
end component; 

component pr_encoder is
	port( x_in : in std_logic_vector (7 downto 0);
		  x_out : out std_logic_vector(2 downto 0);
		  x_none: out std_logic);
end component;

component dregister_1 is 
	port (
    din  : in  std_logic;
    dout : out std_logic;
    enable: in std_logic;
    clk     : in  std_logic);
end component;


signal state, next_state : std_logic_vector(4 downto 0) := "00000";
signal t1_en, t2_en, t3_en, a_en, c_en, ir_en, rwr, car_in, car_out, z_out, alu_op0, alu_op1, mem_wr, mem_rd, pe_fail, zero_in, zero_out, zero_en, carry_in, carry_out, carry_en : std_logic := '0';
signal t1_in, t1_out, t2_in, t2_out, t3_in, t3_out, a_in, a_out, c_in, c_out, ir_in, ir_out, rD1, rD2, rD3, alu_x, alu_y, alu_out, mem_a, mem_din, mem_dout, const_one : std_logic_vector(15 downto 0) := "0000000000000000";
signal rA1, rA2, rA3, pe_out : std_logic_vector(2 downto 0) := "000";
signal op_code : std_logic_vector(3 downto 0);
signal pe_in : std_logic_vector(7 downto 0) := "00000000";


begin
t1: dregister port map (t1_in, t1_out, t1_en, clock);
t2: dregister port map (t2_in, t2_out, t2_en, clock);
t3: dregister port map (t3_in, t3_out, t3_en, clock);

a: dregister port map (a_in, a_out, a_en, clock);
c: dregister port map (c_in, c_out, c_en, clock);
ir: dregister port map (ir_in, ir_out, ir_en, clock); 

z_flag: dregister_1 port map (zero_in, zero_out, zero_en, clock); 
c_flag: dregister_1 port map (carry_in, carry_out, carry_en, clock); 



pe_main : pr_encoder port map (pe_in, pe_out, pe_fail);
rf_main : rf port map (rA1, rA2, rA3, rD3, clock, rwr, rD1, rD2);
alu_main : alu port map (alu_x, alu_y, alu_op0, alu_op1, car_in, car_out, z_out, alu_out);
mem_main : memory port map (mem_wr, mem_rd, mem_a, mem_din, mem_dout);

process (X_main, clock)
begin

	if (state = "00000") then
		mem_a <= X_main(32 downto 17);
		mem_din <= X_main(16 downto 1);
		mem_wr <= '1';
		mem_rd <= '0';
		zero_en <= '0';
		carry_en <= '0';

		if (X_main(0) = '1') then
			next_state <= "00001";
		else
			next_state <= "00000";
		end if;
	end if;

   if (state = "00001") then
   		mem_wr <= '0';
   		rA1 <= "111"; -- PC is required
   		mem_a <= rD1;
   		ir_en <= '1';
   		rwr <= '1';
   		alu_x <= rD1;
   		alu_y <= const_one;
   		alu_op0 <= '1';
   		alu_op1 <= '1';
   		rA3 <= "111"; -- Writing into PC
   		rD3 <= alu_out;
   		a_en <= '0';
   		c_en <= '0';
   		t1_en <= '0';
   		t2_en <= '0';
   		t3_en <= '1'; 
   		zero_en <= '0';
   		carry_en <= '0';

   		t3_in <= alu_out; 
   		
   		next_state <= "10001";
   	elsif (state = "10001") then
   		mem_wr <= '0';
   		rwr <= '0';
   		a_en <= '0';
   		c_en <= '0';
   		ir_en <= '0';
   		t1_en <= '0';
   		t2_en <= '0';
   		t3_en <= '0';
   		zero_en <= '0';
   		carry_en <= '0';

   		if ((op_code(3 downto 2) = "00") or (op_code(3 downto 1) = "010") or (op_code = "1100")) then
   			-- Go to state 2
   			next_state <= "00010";
   		elsif (op_code = "0110") then
   			if (pe_fail = '1') then
   				next_state <= "00001";
   			else
   				next_state <= "10000";
   			end if;
  		elsif (op_code = "0111") then
  			if (pe_fail = '1') then
   				next_state <= "00001";
   			else
   				next_state <= "01011";
   			end if;
   		elsif (op_code = "1000") then
   			next_state <= "00100";
   		elsif (op_code = "1001") then
   			next_state <= "01111";
   	   	end if;
   	
   	elsif (state = "00010") then    -- STATE 
   		-- common signals for all instructions 
   		mem_wr <= '0';
   		rwr <= '0';
   		ir_en <= '0';
   		a_en <= '0';
   		c_en <= '0'; 
   		t1_en <= '1';
   		t2_en <= '1';
   		rA1 <= ir_out(11 downto 9); 
   		rA2 <= ir_out(8 downto 6); 

   		t1_in <= rD1; 
   		t2_in <= rD2; 

   		zero_en <= '0';
   		carry_en <= '0';

   		-- state multiplexing 

   		if ((op_code(3 downto 0) = "0000") or (op_code(3 downto 0) = "0010") or (op_code(3 downto 0) = "1100"))
   			-- Go to state 3 
   			next_state <= "00011"; 
   		elsif ((op_code(3 downto 0) = "0001") or (op_code(3 downto 1) = "010") or (op_code(3 downto 0) = "1100"))
   			-- Go to state 5 
   			next_state <="00101"; 
   		end if; 

   	elsif (state = "00011") then           -- STATE 3
   		-- common signals for all instructions 
   		mem_wr <= '0';
   		rwr <= '0';
   		ir_en <= '0';
   		a_en <= '0';
   		c_en <= '0'; 
   		alu_x <= t1_out; 
   		alu_y <= t2_out; 
   		t3_en <= '1';
   		t3_in <= alu_out;


    	-- state multiplexing 

    	if ((op_code(3 downto 0) = "0000")) then -- or (op_code(3 downto 0) = "0010")) 
    		-- Go to state 4 
    		next_state <= "00100";  
    		zero_en <= '1'; 
    		zero_in <= z_out; 
    		carry_en <=1; 
    		carry_in <= c_out; 
    		alu_op0 <= '1';
   			alu_op1 <= '1';  
    	elsif ((op_code(3 downto 0) = "0010")) then 
    		next_state <= "00100";  
    		zero_en <= '1'; 
    		zero_in <= z_out; 
    		alu_op0 <= '0';
   			alu_op1 <= '1';  
    	elsif ((op_code(3 downto 0) = "1100")) then 
    		if (zero_out = '0')
    			next_state <= "01101"; 
    		else 
    			next_state <= "00001";
    		end if;  

    end if;  

    
    elsif (state = "00100") then            -- STATE 4 
    	-- common signals for all instructions 
    	mem_wr <= '0';
   		ir_en <= '0';
   		a_en <= '0';
   		c_en <= '0'; 

   		zero_en <= '0';
   		carry_en <= '0';
     
    	 if ((ir_out(1 downto 0) = "00") and (op_code(3 downto 0) = "0000")) then  --  ADD
     		rwr <= '1'; 
     		rD3 <= t3_out; 
     		rA3 <= ir_out(5 downto 3); 
        	next_state <= "00001"; 
        
        elsif ((ir_out(1 downto 0) = "10") and (op_code(3 downto 0) = "0000")) then  -- ADC
        	rwr <= carry_out; 
     		
     		if (carry_out = '1')
     			rD3 <= t3_out;
     		end if; 
   
     		rA3 <= ir_out(5 downto 3); 
        	next_state <= "00001"; 
        
        elsif ((ir_out(1 downto 0) = "01") and (op_code(3 downto 0) = "0000")) then  -- ADZ
        	rwr <= zero_out; 
     		
     		if (zero_out = '1')
     			rD3 <= t3_out;
     		end if; 
   
     		rA3 <= ir_out(5 downto 3); 
        	next_state <= "00001"; 

        elsif ((op_code(3 downto 0) = "0001")) then                   -- ADI 
        	rwr <= '1'; 
     		rD3 <= t3_out; 
     		rA3 <= ir_out(8 downto 6); 
        	next_state <= "00001"; 

        elsif ((ir_out(1 downto 0) = "00") and (op_code(3 downto 0) = "0010")) then 						-- NDU 
        	rwr <= '1'; 
     		rD3 <= t3_out; 
     		rA3 <= ir_out(5 downto 3); 
        	next_state <= "00001";  
        
        elsif ((ir_out(1 downto 0) = "10") and (op_code(3 downto 0) = "0010")) then  -- NDC
        	rwr <= carry_out; 
     		
     		if (carry_out = '1')
     			rD3 <= t3_out;
     		end if; 
   
     		rA3 <= ir_out(5 downto 3); 
        	next_state <= "00001";  

        elsif ((ir_out(1 downto 0) = "01") and (op_code(3 downto 0) = "0010")) then  -- NDZ
        	rwr <= zero_out; 
     		
     		if (zero_out = '1')
     			rD3 <= t3_out;
     		end if; 
   
     		rA3 <= ir_out(5 downto 3); 
        	next_state <= "00001"; 

         elsif ((op_code(3 downto 0) = "1000")) then                   -- JAL
        	rwr <= '1'; 
     		rD3 <= t3_out; 
     		rA3 <= ir_out(11 downto 9); 
        	next_state <= "01110"; 	

		end if;  

	elsif (state = "00101")

		-- common signals for all instructions 
   		mem_wr <= '0';
   		rwr <= '0';
   		ir_en <= '0';
   		a_en <= '0';
   		c_en <= '0'; 
   		alu_x <= t1_out; 
   		alu_y <= se10_out; 
   		t3_en <= '1';
   		t3_in <= alu_out;

   		if (op_code(3 downto 0) = "0001")
   			next_state <= "00100";
   		elsif (op_code(3 downto 0) = "0100")
   			next_state <= "01000"; 
   		elsif (op_code(3 downto 0) = "0101")
   			next_state <= "00110";
   		end if; 

   	elsif (state = "00110")



   	end if;
	
    

	pe_in <= ir_out(7 downto 0);
	state <= next_state;
   	mem_rd <= '1'; 
	ir_in <= mem_dout;
	const_one <= "0000000000000001";
	op_code <= ir_out(15 downto 12); 

 	-- ADD SE7 and SE10 definitions 
 

	--Y_main(9 downto 5) <= state; -- Output of the RISC is the current and next state
	--Y_main(4 downto 0) <= next_state;
end process;


end risc_proc;