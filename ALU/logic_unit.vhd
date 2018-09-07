library ieee;
use ieee.std_logic_1164.all;

entity logic_unit is
	port(
		a:in std_logic_vector(7 downto 0);
		b:in std_logic_vector(7 downto 0);
		sel:in std_logic_vector(2 downto 0);
		x:out std_logic_vector(7 downto 0)
	);
end logic_unit;

architecture behavorial of logic_unit is

begin

	with sel select
		x<= not a when "000",
			not b when "001",
			a and b when "010",
			a or b when "011",
			a nand b when "100",
			a nor b when "101",
			a xor b when "110",
			not(a xor b) when others;


end behavorial;