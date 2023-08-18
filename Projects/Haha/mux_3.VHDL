library ieee;
use ieee.std_logic_1164.all;

package mux3 is
	component mux_3 is
		port (A0,A1,A2,A3,A4,A5,A6,A7: in std_logic_vector(15 downto 0); S: in std_logic_vector(2 downto 0); Y: out std_logic_vector(15 downto 0));
	end component mux_3;
end package mux3;

library ieee;
use ieee.std_logic_1164.all;

entity mux_3 is
	port (A0,A1,A2,A3,A4,A5,A6,A7: in std_logic_vector(15 downto 0); S: in std_logic_vector(2 downto 0); Y: out std_logic_vector(15 downto 0));
end entity mux_3;

architecture arc of mux_3 is
begin
	process(S)
	begin
		if (S="000") then
			Y <= A0;
		elsif (S="001") then
			Y <= A1;
		elsif (S="010") then
			Y <= A2;
		elsif (S="011") then
			Y <= A3;
		elsif (S="100") then
			Y <= A4;
		elsif (S="101") then
			Y <= A5;
		elsif (S="110") then
			Y <= A6;
		elsif (S="111") then
			Y <= A7;
		end if;
	end process;
end arc;
