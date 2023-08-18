library ieee;
use ieee.std_logic_1164.all;

package memory is
	component mem is
		port (I,A,Din: in std_logic_vector(15 downto 0); Iw,r,w,clk: in std_logic; Dout: out std_logic_vector(15 downto 0));
	end component mem;
end package memory;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mem is
	port (I,A,Din: in std_logic_vector(15 downto 0); Iw,r,w,clk:in std_logic; Dout: out std_logic_vector(15 downto 0));
end entity mem;

architecture arc of mem is
	type mem_array is array (0 to 65535) of std_logic_vector(15 downto 0);
	signal m: mem_array;
begin
	process (I,A,Din,Iw,r,w,clk,m)
		variable l: integer := 0;
	begin
		if (Iw='1') then
			m(l) <= I;
			l := l+1;
		else
			if (r='1' AND w='0') then
				--address = (to_integer(unsigned(A)));
				Dout(15 downto 0) <= m(to_integer(unsigned(A)));		--big endian
				--Dout(7 downto 0) <= m((2*to_integer(unsigned(A)))+1);
			elsif(r='0' AND w='1') then
				if(clk'event and clk='0') then
					--address = to_integer(unsigned(A));
					m(to_integer(unsigned(A))) <= Din(15 downto 0);		--big endian
					--m((2*to_integer(unsigned(A)))+1) <= Din(7 downto 0);
				end if;
			end if;
		end if;
	end process;
end arc;
