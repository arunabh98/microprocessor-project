library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.numeric_std.all; 


entity dregister_19 is                 -- no. of bits
  port (
    din  : in  std_logic_vector(18 downto 0);
    dout : out std_logic_vector(18 downto 0);
    enable: in std_logic;
    rst : in std_logic;
    clk     : in  std_logic);
end dregister_19;

architecture behave of dregister_19 is

begin  -- behave
process(clk)
begin 
  if (rst = '1') then
    dout <= (others => '0');
  elsif(clk'event and clk = '1') then
    if enable = '1' then
      dout <= din;
    end if;
  end if;
end process;
end behave;
