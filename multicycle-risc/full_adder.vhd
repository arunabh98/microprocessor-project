library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
	port(ci,xi,yi: in std_logic;
		co,so: out std_logic);
end entity;

architecture Form of full_adder is
	signal xor_i: std_logic;
begin
	xor_i <= xi xor yi;
	so <= xor_i xor ci;
	co <= ((xi and yi) or (yi and ci) or (ci and xi));
end Form;