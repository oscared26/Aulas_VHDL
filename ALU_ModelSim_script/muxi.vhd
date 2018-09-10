library ieee;
use ieee.std_logic_1164.all;

entity muxi is
	port(
		a:in std_logic_vector(7 downto 0);
		b:in std_logic_vector(7 downto 0);
		sel:in std_logic;
		x:out std_logic_vector(7 downto 0)
	);
end muxi;

architecture behavorial of muxi is

begin

	with sel select
		x<= a when '0',
			 b when others;


end behavorial;