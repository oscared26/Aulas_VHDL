library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity contador is
	generic ( nbits : natural := 8 ) ;
	port(
	clk			:in std_logic;
	rst 		:in std_logic;
	start 		:in std_logic;
	preload		:in std_logic_vector(nbits-1 downto 0);
	numero		:out std_logic_vector(nbits-1 downto 0)
	);
end entity;

architecture behavorial of contador is

	--signals std_logic_vector
	signal sum0:std_logic_vector(7 downto 0):=(others=>'0');--inicializa em 0
	signal sum1:std_logic_vector(nbits-1 downto 0):=(others=>'0');--inicializa em 0
	signal sum2:std_logic_vector(nbits-1 downto 0):=(others=>'0');--inicializa em 0
	signal sum3:std_logic_vector(nbits-1 downto 0):=(others=>'0');--inicializa em 0

	signal saida0:std_logic_vector(nbits-1 downto 0):=(others=>'0');--inicializa em 0
	signal saida1:std_logic_vector(nbits-1 downto 0):=(others=>'0');--inicializa em 0
begin

--====================================================

	--Reset síncrono rising_edge
	process(clk)--lista de sensitividade
	begin
		if rising_edge(clk) then
			if rst='1' then
				sum0<=(others=>'0');
			else
				sum0<=sum0+1;
			end if;
		end if;
	end process;


	--Reset síncrono clk'event
	process(clk)--lista de sensitividade
	begin
		if clk'event and clk='1' then
			if rst='1' then
				sum1<=(0=>'1',others=>'0');--inicializa em 1
			else
				sum1<=sum1+1;
			end if;
		end if;
	end process;

	saida0<=sum1;
--===============================================

	--Reset assíncrono
	process(clk,rst)--lista de sensitividade
	begin
		if rst='1' then
			sum2<=(others=>'0');
		else
			if rising_edge(clk) then
				sum2<=sum2+1;
			end if;
		end if;
	end process;




--===============================================
	--Uso de variables
	process(clk,rst)--lista de sensitividade
		variable var1:integer;
	begin
		if rst='1' then
			var1:=0;
		else
			if rising_edge(clk) then
				var1:=var1+1;
			end if;
		end if;
		saida1<=std_logic_vector(to_unsigned(var1,nbits));
	end process;

--===============================================
	
	process(clk,rst)--lista de sensitividade
		variable var2:integer;
	begin
		if rst='1' then
			var2:=0;
		else
			if rising_edge(clk) then
				var2:=to_integer(unsigned(saida1));
				--var2:=var2+1;
			end if;
		end if;
	end process;

--==================Contador======================


	process(clk,rst)
		variable var3:integer;
		variable var4:integer;
	begin
		if rst='1' then
			var3:=0;
			var4:=0;
		else
			if rising_edge(clk) then

				if start='1' then
					if var3<10 then
						var3:=var3+1;
					else
						var3:=0;
						if var4 <10 then
							var4:=var4+1;
						else
							var4:=0;
						end if;
					end if;
				else
					var3:=to_integer(unsigned(preload));
					var4:=0;
				end if;	


			end if;
		end if;
		numero<=std_logic_vector(to_unsigned(var3,nbits));
	end process;
--===============================================







end behavorial;



