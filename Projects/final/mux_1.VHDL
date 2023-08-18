library ieee;
use ieee.std_logic_1164.all;

package mux1 is
	component mux_1_16 is
		port (A0,A1: in std_logic_vector(15 downto 0); S: in std_logic; Y: out std_logic_vector(15 downto 0));
	end component mux_1_16;

	component mux_1_3 is
		port (A0,A1: in std_logic_vector(2 downto 0); S: in std_logic; Y: out std_logic_vector(2 downto 0));
	end component mux_1_3;
end package mux1;

library ieee;
use ieee.std_logic_1164.all;

entity mux_1_16 is
	port (A0,A1: in std_logic_vector(15 downto 0); S: in std_logic; Y: out std_logic_vector(15 downto 0));
end entity mux_1_16;

architecture arc of mux_1_16 is
begin
	process(A0,A1,S)
	begin
		if (S='0') then
			Y <= A0;
		else
			Y <= A1;
		end if;
	end process;
end arc;

library ieee;
use ieee.std_logic_1164.all;

entity mux_1_3 is
	port (A0,A1: in std_logic_vector(2 downto 0); S: in std_logic; Y: out std_logic_vector(2 downto 0));
end entity mux_1_3;

architecture arc of mux_1_3 is
begin
	process(S)
	begin
		if (S='0') then
			Y <= A0;
		else
			Y <= A1;
		end if;
   end process;
end arc;