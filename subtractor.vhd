library ieee;
use ieee.std_logic_1164.all;

entity subtractor is
	port(di,xi,yi: in std_logic;
		do,so: out std_logic);
end entity;

architecture Form of subtractor is
	signal xor_i: std_logic;

begin
	xor_i <= xi xor yi;
	so <= xor_i xor di;
	do <= (((not xi) and (yi)) or (di and (not xor_i)));

end Form;