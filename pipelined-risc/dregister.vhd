library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.numeric_std.all; 


entity dregister is                 -- no. of bits
  port (
    din  : in  std_logic_vector(15 downto 0);
    dout : out std_logic_vector(15 downto 0);
    enable: in std_logic;
    rst : in std_logic;
    clk     : in  std_logic);
end dregister;

architecture behave of dregister is

begin  -- behave
process(clk, rst)
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
