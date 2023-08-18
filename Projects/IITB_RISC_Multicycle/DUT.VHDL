library ieee;
use ieee.std_logic_1164.all;
library work;
use work.controller.all;
use work.DP.all;

entity DUT is
	port (reset,clk: in std_logic);
end entity DUT;

architecture arc of DUT is
	signal ctrl: std_logic_vector(21 downto 0);
	signal ccr,ccf: std_logic_vector(1 downto 0);
	signal instr: std_logic_vector(15 downto 0);
	begin
		FSM0: fsm port map (instr,ccr,ccf,reset,clk,ctrl);
		DATA_PATH0: data_path port map (clk,ctrl,ccr,ccf,instr);
end arc;
