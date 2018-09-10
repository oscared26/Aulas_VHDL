library ieee;
use ieee.std_logic_1164.all;

entity alu is
	port(
		a:in std_logic_vector(7 downto 0);
		b:in std_logic_vector(7 downto 0);
		sel:in std_logic_vector(3 downto 0);
		cin: in std_logic;
		y:out std_logic_vector(7 downto 0)
	);
end alu;

architecture structural of alu is


	component arith_unit is
		port(
			a:in std_logic_vector(7 downto 0);
			b:in std_logic_vector(7 downto 0);
			sel:in std_logic_vector(2 downto 0);
			cin: in std_logic;
			x:out std_logic_vector(7 downto 0)
		);
	end component;

	component logic_unit is
		port(
			a:in std_logic_vector(7 downto 0);
			b:in std_logic_vector(7 downto 0);
			sel:in std_logic_vector(2 downto 0);
			x:out std_logic_vector(7 downto 0)
		);
	end component;


	component muxi is
		port(
			a:in std_logic_vector(7 downto 0);
			b:in std_logic_vector(7 downto 0);
			sel:in std_logic;
			x:out std_logic_vector(7 downto 0)
		);
	end component;

	signal wire0,wire1:std_logic_vector(7 downto 0):=(others=>'0');

begin


	circuit0:arith_unit
	port map(
		a=>a,
		b=>b,
		sel=>sel(2 downto 0),
		cin=>cin,
		x=>wire0
	);

	circuit1:logic_unit
	port map(
		a=>a,
		b=>b,
		sel=>sel(2 downto 0),
		x=>wire1
	
	);
	
	circuit2:muxi
	port map(
		a=>wire0,
		b=>wire1,
		sel=>sel(3),
		x=>y
	);



end structural;