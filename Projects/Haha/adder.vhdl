library ieee;
use ieee.std_logic_1164.all;

package ADDER is
	component alu is
		port (A,B: in std_logic_vector(15 downto 0); S: in std_logic_vector(1 downto 0); Y: out std_logic_vector(15 downto 0); C,Z: out std_logic);
	end component alu;
end package ADDER;

library ieee;
use ieee.std_logic_1164.all;

entity addr is
	port (A,B: in std_logic_vector(15 downto 0); Y: out std_logic_vector(15 downto 0));
end entity addr;

architecture arc of addr is
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
    	process (A,B)
    	begin
    		Y<=add(A,B)(15 downto 0);
		end process;
end arc;