library ieee;
use ieee.std_logic_1164.all;

package demux is
	component demux_3 is
		port (A: in std_logic_vector(15 downto 0); S: in std_logic_vector(2 downto 0); Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0: out std_logic_vector(15 downto 0));
	end component demux_3;
end package demux;

library ieee;
use ieee.std_logic_1164.all;

entity demux_3 is
	port (EN: in std_logic; A: in std_logic_vector(15 downto 0); S: in std_logic_vector(2 downto 0); Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0: out std_logic_vector(15 downto 0));
end entity demux_3;

architecture arc of demux_3 is
	signal empty:std_logic_vector(15 downto 0);
begin
	process(S)
	begin
		if (EN = '1') then
			if (S="000") then
				Y0 <= A;
			elsif (S="001") then
				Y1 <= A;
			elsif (S="010") then
				Y2 <= A;
			elsif (S="011") then
				Y3 <= A;
			elsif (S="100") then
				Y4 <= A;
			elsif (S="101") then
				Y5 <= A;
			elsif (S="110") then
				Y6 <= A;
			elsif (S="111") then
				Y7 <= A;
			end if;
		else
			empty <= A;
		end if;	
	end process;
end arc;
