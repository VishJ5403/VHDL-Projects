library ieee;
use ieee.std_logic_1164.all;

package sign_extend is
	component se6 is
		port (A: in std_logic_vector(5 downto 0); Y: out std_logic_vector(15 downto 0));
	end component se6;

	component se9 is
		port (A: in std_logic_vector(8 downto 0); Y: out std_logic_vector(15 downto 0));
	end component se9;
end package sign_extend;

library ieee;
use ieee.std_logic_1164.all;

entity se6 is
	port (A: in std_logic_vector(5 downto 0); Y: out std_logic_vector(15 downto 0));
end entity se6;

architecture arc of se6 is
begin
	process(A)
	begin
		if(A(5)='0') then
			Y <= "0000000000"&A;
		else
			Y <= "1111111111"&A;
		end if;
	end process;
end arc;

library ieee;
use ieee.std_logic_1164.all;

entity se9 is
	port (A: in std_logic_vector(8 downto 0); Y: out std_logic_vector(15 downto 0));
end entity se9;

architecture arc of se9 is
begin
	process(A)
	begin
		if(A(8)='0') then
			Y <= "0000000"&A;
		else
			Y <= "1111111"&A;
		end if;
	end process;
end arc;
