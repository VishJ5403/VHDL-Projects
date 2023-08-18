library ieee;
use ieee.std_logic_1164.all;

package memory_im is
	component mem_im is
		port (I: in std_logic_vector(15 downto 0);clk,iclk: in std_logic; Iout: out std_logic_vector(15 downto 0));
	end component mem_im;
end package memory_im;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mem_im is
	port (I: in std_logic_vector(15 downto 0); clk,iclk:in std_logic; Iout: out std_logic_vector(15 downto 0));
end entity mem_im;

architecture arc of mem_im is
	type mem_array is array (0 to 65535) of std_logic_vector(15 downto 0);
	signal m: mem_array;
begin
--	process (I,Iw,iclk)
--		variable l: integer := 0;
--	begin
--		if (Iw='1') then
--			m(l) <= I;
--			l := l+1;
--		end if;
--	end process;
	process (I)
	begin
					Iout(15 downto 0) <= m(to_integer(unsigned(I)));	
	end process;
end arc;
