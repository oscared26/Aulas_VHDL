library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity arith_unit is
	port(
		a:in std_logic_vector(7 downto 0);
		b:in std_logic_vector(7 downto 0);
		sel:in std_logic_vector(2 downto 0);
		cin: in std_logic;
		x:out std_logic_vector(7 downto 0)
	);
end arith_unit;

architecture behavorial of arith_unit is

begin

	with sel select
		x<=a when "000",
			a+1 when "001",
			a-1 when "010",
			b when "011",
			b+1 when "100",
			b-1 when "101",
			a+b when "110",
			a+b+cin when others;

end behavorial;