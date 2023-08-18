library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
library ieee;
use ieee.std_logic_1164.all;
entity Vow is
port(I    : in std_logic_vector(3 downto 0);
     Y    : out std_logic);
end entity Vow;
architecture Structure of Vow is

signal a,b,c,d: std_logic;

begin
  i1: INVERTER port map (a,b);
  i2: INVERTER port map (I(0),d);
  a1: AND_2 port map (I(3),I(2),a);
  a2: AND_2 port map (d,c,Y);
  xo1: XOR_2  port map (b,I(1),c);
end Structure;
