library ieee;
use ieee.std_logic_1164.all;

entity SixteenBitAdder is
	port(x,y: in std_logic_vector(15 downto 0);
		z: out std_logic_vector(15 downto 0);
		car_in: in std_logic;
		car_out: out std_logic); -- Carry flags is output, zero set by main ALU
end entity;

architecture Summer of SixteenBitAdder is
	signal c : std_logic_vector(15 downto 0);
	component full_adder is
		port(ci,xi,yi: in std_logic;
			co,so: out std_logic);
	end component;

begin
	c(0) <= car_in;
	bit_1: full_adder
		port map (c(0),x(0),y(0),c(1),z(0));
	bit_2: full_adder
		port map (c(1),x(1),y(1),c(2),z(1));
	bit_3: full_adder
		port map (c(2),x(2),y(2),c(3),z(2));
	bit_4: full_adder
		port map (c(3),x(3),y(3),c(4),z(3));
	bit_5: full_adder
		port map (c(4),x(4),y(4),c(5),z(4));
	bit_6: full_adder
		port map (c(5),x(5),y(5),c(6),z(5));
	bit_7: full_adder
		port map (c(6),x(6),y(6),c(7),z(6));
	bit_8: full_adder
		port map (c(7),x(7),y(7),c(8),z(7));
	bit_9: full_adder
		port map (c(8),x(8),y(8),c(9),z(8));
	bit_10: full_adder
		port map (c(9),x(9),y(9),c(10),z(9));
	bit_11: full_adder
		port map (c(10),x(10),y(10),c(11),z(10));
	bit_12: full_adder
		port map (c(11),x(11),y(11),c(12),z(11));
	bit_13: full_adder
		port map (c(12),x(12),y(12),c(13),z(12));
	bit_14: full_adder
		port map (c(13),x(13),y(13),c(14),z(13));
	bit_15: full_adder
		port map (c(14),x(14),y(14),c(15),z(14));
	bit_16: full_adder
		port map (c(15),x(15),y(15),car_out,z(15));

end Summer;