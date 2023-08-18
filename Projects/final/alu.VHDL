library ieee;
use ieee.std_logic_1164.all;

package arithmetic_logical_unit is
	component alu is
		port (A,B: in std_logic_vector(15 downto 0); S: in std_logic_vector(1 downto 0); Y: out std_logic_vector(15 downto 0); C,Z: out std_logic);
	end component alu;
end package arithmetic_logical_unit;

library ieee;
use ieee.std_logic_1164.all;

entity alu is
	port (A,B: in std_logic_vector(15 downto 0); S: in std_logic_vector(1 downto 0); Y: out std_logic_vector(15 downto 0); C,Z: out std_logic);
end entity alu;

architecture arc of alu is
	function add(A: in std_logic_vector(15 downto 0); B: in std_logic_vector(15 downto 0)) return std_logic_vector is
		variable i : integer;
		variable sum : std_logic_vector(16 downto 0) := (others => '0');
		variable carry : std_logic_vector(16 downto 0) := (others => '0');
	begin
		carry(0) := '0';
		for i in 0 to 15 loop
			carry(i+1) := (A(i) AND B(i)) OR (A(i) AND carry(i)) OR (carry(i) AND B(i));
         	sum(i) := carry(i) XOR A(i) XOR B(i);
        end loop;
			sum(16) := carry(16);
        return sum;
    end add;

    begin
    	process (A,B,S)
    	begin
    		if (S="00") then
		    	Y <= add(A,B)(15 downto 0);
		    	C <= add(A,B)(16);
					if (add(A,B)(15 downto 0)="0000000000000000") then
				Z <= '1';
			else
				Z <= '0';
			end if;
			elsif (S="01") then
				Y <= A xor B;
					if ((A xor B)="0000000000000000") then
				Z <= '1';
			else
				Z <= '0';
			end if;
			elsif (S="10") then
				Y <= A NAND B;
					if ((A NAND B)="0000000000000000") then
				Z <= '1';
			else
				Z <= '0';
			end if;
			end if;
		end process;
end arc;