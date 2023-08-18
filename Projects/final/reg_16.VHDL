library ieee;
use ieee.std_logic_1164.all;

package reg is
	component tr is
		port (A: in std_logic_vector(15 downto 0); clk: in std_logic; Y: out std_logic_vector(15 downto 0));
	end component tr;

	component pc is
		port (A: in std_logic_vector(15 downto 0); clk,pcw: in std_logic; Y: out std_logic_vector(15 downto 0));
	end component pc;

	component ir is
		port (A: in std_logic_vector(15 downto 0); clk,irw: in std_logic; Y: out std_logic_vector(15 downto 0));
	end component ir;
end package reg;

library ieee;
use ieee.std_logic_1164.all;

entity tr is
	port (A: in std_logic_vector(15 downto 0); clk: in std_logic; Y: out std_logic_vector(15 downto 0));
end entity tr;

architecture arc of tr is
begin
	process(A,clk)
	begin
		if(clk'event and clk='0') then
			Y <= A;
		end if;
	end process;
end arc;

library ieee;
use ieee.std_logic_1164.all;

entity pc is
	port (A: in std_logic_vector(15 downto 0); clk,pcw: in std_logic; Y: out std_logic_vector(15 downto 0));
end entity pc;

architecture arc of pc is
begin
	process(A,clk,pcw)
	begin
		if (clk'event and clk='0' and pcw='1') then
			Y <= A;
		end if;
	end process;
end arc;

library ieee;
use ieee.std_logic_1164.all;

entity ir is
	port (A: in std_logic_vector(15 downto 0); clk,irw: in std_logic; Y: out std_logic_vector(15 downto 0));
end entity ir;

architecture arc of ir is
begin
	process(A,clk)
	begin
		if(clk'event and clk='0' and irw='1') then
			Y <= A;
		end if;
	end process;
end arc;