library ieee;
use ieee.std_logic_1164.all;
library work;
use work.DP.all;
use work.controller.all;

entity DUT is
	port (I: in std_logic_vector(15 downto 0); Iw,clk,iclk: in std_logic);
end entity DUT;

architecture arc of DUT is
	signal ctrl: std_logic_vector(21 downto 0);
	signal ccr,ccf: std_logic_vector(1 downto 0);
	signal instr: std_logic_vector(15 downto 0);
begin
	FSM0: fsm port map (instr(15 downto 12),instr(1 downto 0),ccr,ccf,clk,ctrl);
	DATA_PATH0: data_path port map (I,Iw,clk,iclk,ctrl,ccr,ccf,instr);
end arc;
