library ieee;
use ieee.std_logic_1164.all;

entity test is
end entity;

architecture arc of test is
	component DUT is
		port (reset,clk: in std_logic);
	end component DUT;
	signal reset,clk: std_logic := '0';
	begin
		clock:process
		begin
			wait for 5 ns;
			clk <= not clk;
		end process;

		rst:process
		begin
			reset <= '0';
		end process;
end arc;