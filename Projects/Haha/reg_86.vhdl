library ieee;
use ieee.std_logic_1164.all;

package reg_86 is
	component s2 is
		port (A: in std_logic_vector(85 downto 0); clk: in std_logic; Y: out std_logic_vector(85 downto 0));
	end component s2;
end package reg_86;


library ieee;
use ieee.std_logic_1164.all;

entity s2 is
	port (A: in std_logic_vector(85 downto 0); clk: in std_logic; Y: out std_logic_vector(85 downto 0));
end entity s2;

architecture arc of s2 is
begin
	process(A,clk)
	begin
		if(clk'event and clk='0') then
			Y <= A;
		end if;
	end process;
end arc;