library ieee;
use ieee.std_logic_1164.all;

package register_file is
	component rf is
		port(D3: in std_logic_vector(15 downto 0); w,clk: in std_logic; A1,A2,A3: in std_logic_vector(2 downto 0); D1,D2: out std_logic_vector(15 downto 0));
	end component rf;
end package register_file;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
library work;
use work.checker.all;						--check.VHDL
use work.check_register.all;				--check_reg.VHDL
use work.condition_code_register.all;		--ccr.VHDL
use work.reg.all;							--reg_16.VHDL
use work.register_file.all;					--rf.VHDL
use work.left_shift.all;					--ls.VHDL
use work.sign_extend.all;					--se.VHDL
use work.arithmetic_logical_unit.all;		--alu.VHDL
use work.memory.all;	

entity rf is
	port(D3: in std_logic_vector(15 downto 0); w,clk: in std_logic; A1,A2,A3: in std_logic_vector(2 downto 0); D1,D2: out std_logic_vector(15 downto 0));
end entity rf;

architecture arc of rf is
	type reg_array is array (0 to 7) of std_logic_vector(15 downto 0);
	signal r: reg_array;

begin
--MUX_3_0: mux_3 port map(r(0),r(1),r(2),r(3),r(4),r(5),r(6),r(7),A1,D1);
--MUX_3_1: mux_3 port map(r(0),r(1),r(2),r(3),r(4),r(5),r(6),r(7),A2,D2);
--DEMUX_3: demux_3 port map(D3,A3,r(7),r(6),r(5),r(4),r(3),r(2),r(1),r(0));
	process(A1,A2,A3,D3,w,clk)
	begin
		if (w='1') then
			if (clk'event and clk='0') then
				r(to_integer(unsigned(A3))) <= D3;
			end if;
		elsif (w='0') then
		   if (clk'event and clk='0') then
				D1 <= r(to_integer(unsigned(A1)));
				D2 <= r(to_integer(unsigned(A2)));
			end if;
		end if;
	end process;
end arc;
