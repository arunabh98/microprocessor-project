library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;

entity pipe is
	port ( X : in std_logic_vector(114 downto 0);
		Y : out std_logic_vector(114 downto 0);
		pipe_en : in std_logic;
		clk : in std_logic);
end entity;

architecture pipe_behave of pipe is
	component dregister is
	  port (
	    din  : in  std_logic_vector(15 downto 0);
	    dout : out std_logic_vector(15 downto 0);
	    enable: in std_logic;
	    clk     : in  std_logic);
	end component;

	component dregister_2 is
	  port (
	    din  : in  std_logic_vector(1 downto 0);
	    dout : out std_logic_vector(1 downto 0);
	    enable: in std_logic;
	    clk     : in  std_logic);
	end component;

	component dregister_1 is
	  port (
	    din  : in  std_logic(15 downto 0);
	    dout : out std_logic(15 downto 0);
	    enable: in std_logic;
	    clk     : in  std_logic);
	end component;

begin

	ir: dregister port map (X(114 downto 99), Y(114 downto 99), pipe_en, clk);
	npc: dregister port map (X(98 downto 83), Y(98 downto 83), pipe_en, clk);
	ir: dregister port map (X(114 downto 99), Y(114 downto 99), pipe_en, clk);
	t1: dregister port map (X(82 downto 67), Y(82 downto 67), pipe_en, clk);
	t2: dregister port map (X(66 downto 51), Y(66 downto 51), pipe_en, clk);
	t3: dregister port map (X(50 downto 35), Y(50 downto 35), pipe_en, clk);
	memd: dregister port map (X(34 downto 19), Y(34 downto 19), pipe_en, clk);
	contr: dregister port map (X(18 downto 0), Y(18 downto 0), pipe_en, clk);
	
end pipe_behave;