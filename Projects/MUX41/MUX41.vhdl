library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
use work.MUX_21.all;
library ieee;
use ieee.std_logic_1164.all;
entity MUX41 is
port(I    : in std_logic_vector(3 downto 0);
     S    : in std_logic_vector(1 downto 0);
     Y    : out std_logic);
end entity MUX41;
architecture Structure of MUX41 is

signal a,b: std_logic;
signal tmp1,tmp2,tmp3 : std_logic_vector ( 1 downto 0 );

begin
tmp1<=(I(1) & I(0));
tmp2<=(I(3) & I(2));
tmp3<=(b & a);
  m1:MUX21 port map(tmp1,S(0),a);
  m2:MUX21 port map(tmp2,S(0),b);
  m3:MUX21 port map(tmp3,S(1),Y);
end Structure;
