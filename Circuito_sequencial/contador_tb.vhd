library ieee;
use ieee.std_logic_1164.all;


entity contador_tb is
	generic ( nbits : natural := 8 ) ;
end entity;

architecture behavorial of contador_tb is

	signal clk		:std_logic:='0';
	signal rst		:std_logic:='0';
	signal start	:std_logic:='0';
	signal preload	:std_logic_vector(nbits-1 downto 0):=(others=>'0');
	signal numero	:std_logic_vector(nbits-1 downto 0):=(others=>'0');

	--constants
	constant period:time:=20 ns;


	component contador is
	port(
		clk		:in std_logic;
		rst		:in std_logic;
		start 	:in std_logic;
		preload	:in std_logic_vector(nbits-1 downto 0);
		numero	:out std_logic_vector(nbits-1 downto 0)
		);
	end component;

begin

	DUT:contador
	port map(
			clk=>clk,
			rst=>rst,
			start=>start,
			preload=>preload,
			numero=>numero
		);

	clk<=not clk after period;	

	rst<='1','0' after 30 ns;

	start<='0','1' after 200 ns,
			   '0' after 500 ns;

	preload<=X"02";

end behavorial;



