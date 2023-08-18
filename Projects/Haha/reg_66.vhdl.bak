library ieee;
use ieee.std_logic_1164.all;

package reg_42 is
	component s1 is
		port (A: in std_logic_vector(65 downto 0); clk: in std_logic; Y: out std_logic_vector(65 downto 0));
	end component s1;
end package reg_42;


library ieee;
use ieee.std_logic_1164.all;

entity s1 is
	port (A: in std_logic_vector(65 downto 0); clk: in std_logic; Y: out std_logic_vector(65 downto 0));
end entity s1;

architecture arc of s1 is
begin
	process(A,clk)
	begin
		if(clk'event and clk='0') then
			Y <= A;
		end if;
	end process;
end arc;