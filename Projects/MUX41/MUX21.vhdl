library ieee;
use ieee.std_logic_1164.all;
package MUX_21 is
  component MUX21 is
   port(I    : in std_logic_vector(1 downto 0);
        S    : in std_logic;
        Y    : out std_logic);
  end component MUX21;
  end package MUX_21;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
library ieee;
use ieee.std_logic_1164.all;
entity MUX21 is
port(I    : in std_logic_vector(1 downto 0);
     S    : in std_logic;
     Y    : out std_logic);
end entity MUX21;
architecture Structure of MUX21 is

signal a,b,c: std_logic;

begin
  i1: INVERTER port map (S,b);
  a1: AND_2 port map (I(0),b,a);
  a2: AND_2 port map (S,I(1),c);
  o1: OR_2  port map (a,c,Y);
end Structure;
