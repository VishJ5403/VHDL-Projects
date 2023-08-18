library ieee;
use ieee.std_logic_1164.all;

package left_shift is
	component ls7 is
		port (A: in std_logic_vector(8 downto 0); Y: out std_logic_vector(15 downto 0));
	end component ls7;

	component ls1 is
		port (A: in std_logic_vector(15 downto 0); Y: out std_logic_vector(15 downto 0));
	end component ls1;
end package left_shift;

library ieee;
use ieee.std_logic_1164.all;

entity ls7 is
	port (A: in std_logic_vector(8 downto 0); Y: out std_logic_vector(15 downto 0));
end entity ls7;

architecture arc of ls7 is
begin
	Y <= A&"0000000";
end arc;

library ieee;
use ieee.std_logic_1164.all;

entity ls1 is
	port (A: in std_logic_vector(15 downto 0); Y: out std_logic_vector(15 downto 0));
end entity ls1;

architecture arc of ls1 is
	signal s: std_logic_vector(16 downto 0);
begin
	s <= A&"0";
	Y <= s(15 downto 0);
end arc;