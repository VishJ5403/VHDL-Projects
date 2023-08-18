library ieee;
use ieee.std_logic_1164.all;

package condition_code_register is
	component ccr is
		port(Ci,Zi,clk: in std_logic; opcode: in std_logic_vector(3 downto 0); C,Z: out std_logic);
	end component ccr;
end package condition_code_register;

library ieee;
use ieee.std_logic_1164.all;

entity ccr is
	port(Ci,Zi,clk: in std_logic; opcode: in std_logic_vector(3 downto 0); C,Z: out std_logic);
end entity ccr;

architecture arc of ccr is
begin
	process(Ci, Zi, clk, opcode)
	begin
		if (clk'event and clk='0') then
			if (opcode="0001" or opcode="0000") then
				C <= Ci;
				Z <= Zi;
			elsif (opcode="0010" or opcode="0111") then
				Z <= Zi;
			end if;
		end if;
	end process;
end arc;