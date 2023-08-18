library ieee;
use ieee.std_logic_1164.all;

package mux2 is
	component mux_2_16 is
		port (A0,A1,A2,A3: in std_logic_vector(15 downto 0); S: in std_logic_vector(1 downto 0); Y: out std_logic_vector(15 downto 0));
	end component mux_2_16;

	component mux_2_3 is
		port (A0,A1,A2,A3: in std_logic_vector(2 downto 0); S: in std_logic_vector(1 downto 0); Y: out std_logic_vector(2 downto 0));
	end component mux_2_3;
end package mux2;

library ieee;
use ieee.std_logic_1164.all;

entity mux_2_16 is
	port (A0,A1,A2,A3: in std_logic_vector(15 downto 0); S: in std_logic_vector(1 downto 0); Y: out std_logic_vector(15 downto 0));
end entity mux_2_16;

architecture arc of mux_2_16 is
begin
	process(S)
	begin
		if (S="00") then
			Y <= A0;
		elsif (S="01") then
			Y <= A1;
		elsif (S="10") then
			Y <= A2;
		else
			Y <= A3;
		end if;
	end process;
end arc;

library ieee;
use ieee.std_logic_1164.all;

entity mux_2_3 is
	port (A0,A1,A2,A3: in std_logic_vector(2 downto 0); S: in std_logic_vector(1 downto 0); Y: out std_logic_vector(2 downto 0));
end entity mux_2_3;

architecture arc of mux_2_3 is
begin
	process(S)
	begin
		if (S="00") then
			Y <= A0;
		elsif (S="01") then
			Y <= A1;
		elsif (S="10") then
			Y <= A2;
		else
			Y <= A3;
		end if;
	end process;
end arc;