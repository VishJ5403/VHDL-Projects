library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
library ieee;
use ieee.std_logic_1164.all;
entity Minvow is
port(A,B,C,D: in std_logic;
          Y: out std_logic);
end entity Minvow;
architecture Structure of Minvow is

signal C1,C2: std_logic;

begin

a1 : AND_2
         port map(A,B ,C1);
x1 : XOR_2
        port map(C1,C,C2);
n1 : NOR_2
        port map(C2,D,Y);
end Structure;