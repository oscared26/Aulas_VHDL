library ieee;
use ieee.std_logic_1164.all;

entity fibonacci is
port
(
	clk:in std_logic;
	rst:in std_logic
);
end entity;

architecture behavorial of fibonacci is

	signal old_value,new_value:integer:=0;

begin

	process(clk,rst)

	begin

		if rst='1' then
			old_value<=0;
			new_value<=1;

		else
			if rising_edge(clk) then
				new_value<=old_value+new_value;
				old_value<=new_value;
			end if;

		end if;


	end process;





end behavorial;