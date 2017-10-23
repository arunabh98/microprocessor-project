library ieee;
use ieee.std_logic_1164.all;

entity SixteenBitSub is
	port(x,y: in std_logic_vector(15 downto 0);
		z: out std_logic_vector(15 downto 0);
		bor_in: in std_logic;
		bor_out: out std_logic); -- Borrow flag is output, zero flag set by ALU
end entity;

architecture Diff of SixteenBitSub is
	signal d : std_logic_vector(15 downto 0);
	component subtractor is
		port(di,xi,yi: in std_logic;
			do,so: out std_logic);
	end component;

begin
	d(0) <= bor_in;
	bit_1: subtractor
		port map (d(0),x(0),y(0),d(1),z(0));
	bit_2: subtractor
		port map (d(1),x(1),y(1),d(2),z(1));
	bit_3: subtractor
		port map (d(2),x(2),y(2),d(3),z(2));
	bit_4: subtractor
		port map (d(3),x(3),y(3),d(4),z(3));
	bit_5: subtractor
		port map (d(4),x(4),y(4),d(5),z(4));
	bit_6: subtractor
		port map (d(5),x(5),y(5),d(6),z(5));
	bit_7: subtractor
		port map (d(6),x(6),y(6),d(7),z(6));
	bit_8: subtractor
		port map (d(7),x(7),y(7),d(8),z(7));
	bit_9: subtractor
		port map (d(8),x(8),y(8),d(9),z(8));
	bit_10: subtractor
		port map (d(9),x(9),y(9),d(10),z(9));
	bit_11: subtractor
		port map (d(10),x(10),y(10),d(11),z(10));
	bit_12: subtractor
		port map (d(11),x(11),y(11),d(12),z(11));
	bit_13: subtractor
		port map (d(12),x(12),y(12),d(13),z(12));
	bit_14: subtractor
		port map (d(13),x(13),y(13),d(14),z(13));
	bit_15: subtractor
		port map (d(14),x(14),y(14),d(15),z(14));
	bit_16: subtractor
		port map (d(15),x(15),y(15),bor_out,z(15));

end Diff;