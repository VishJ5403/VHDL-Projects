library ieee;
use ieee.std_logic_1164.all;

package checker is
	component check is
		generic (operand_width : integer:=8);
		port (A: in std_logic_vector(operand_width-1 downto 0); ctf,chf: out std_logic; op: out std_logic_vector(2 downto 0));
	end component check;
end package checker;

library ieee;
use ieee.std_logic_1164.all;

entity check is
	generic (operand_width : integer:=8);
	port (A: in std_logic_vector(operand_width-1 downto 0); ctf,chf: out std_logic; op: out std_logic_vector(2 downto 0));
end entity check;

architecture arc of check is
begin
	process (A)
	variable count : integer := 0;
	variable i : integer := 0;
	begin
		for i in 0 to 7 loop
			if (count=0) then
				if (A(0)='0') then
					chf <= '0';
				else
					chf <= '1';
				end if;
				ctf <= '0';
				op <= "000";
			elsif (count=1) then
				if (A(0)='0') then
					chf <= '0';
				else
					chf <= '1';
				end if;
				ctf <= '0';
				op <= "001";
			elsif (count=2) then
				if (A(0)='0') then
					chf <= '0';
				else
					chf <= '1';
				end if;
				ctf <= '0';
				op <= "010";
			elsif (count=3) then
				if (A(0)='0') then
					chf <= '0';
				else
					chf <= '1';
				end if;
				ctf <= '0';
				op <= "011";
			elsif (count=4) then
				if (A(0)='0') then
					chf <= '0';
				else
					chf <= '1';
				end if;
				ctf <= '0';
				op <= "100";
			elsif (count=5) then
				if (A(0)='0') then
					chf <= '0';
				else
					chf <= '1';
				end if;
				ctf <= '0';
				op <= "101";
			elsif (count=6) then
				if (A(0)='0') then
					chf <= '0';
				else
					chf <= '1';
				end if;
				ctf <= '0';
				op <= "110";
			elsif (count=7) then
				if (A(0)='0') then
					chf <= '0';
				else
					chf <= '1';
				end if;
				ctf <= '1';
				op <= "111";
			end if;
		end loop;
	end process ; -- alu
end arc ; -- a1