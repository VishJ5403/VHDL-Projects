library ieee;
use ieee.std_logic_1164.all;

package check_register is
	component check_reg is
		port(ctfi,chfi,clk: in std_logic; ctf,chf: out std_logic);
	end component check_reg;
end package check_register;

library ieee;
use ieee.std_logic_1164.all;

entity check_reg is
	port(ctfi,chfi,clk: in std_logic; ctf,chf: out std_logic);
end entity check_reg;

architecture arc of check_reg is
begin
	process(ctfi,chfi,clk)
	begin
		if (clk'event and clk='0') then
			ctf <= ctfi;
			chf <= chfi;
		end if;
	end process;
end arc;