library ieee;
use ieee.std_logic_1164.all;


entity fibonacci_tb is
end entity;



architecture behavorial of fibonacci_tb is

	signal clk:std_logic:='0';
	signal rst:std_logic:='1';



	component fibonacci is
	port
	(
		clk:in std_logic;
		rst:in std_logic
	);
	end component;



begin

	DUT: fibonacci
	port map
	(
		clk=>clk,
		rst=>rst
	);



	clk<=not clk after 20 ns;

	rst<='1','0' after 30 ns;




end behavorial;