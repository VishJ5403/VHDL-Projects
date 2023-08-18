library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.MUX_21.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.MUX_41.all;
library ieee;
use ieee.std_logic_1164.all;
entity BMUX is
port(A,B,C,D : in std_logic_vector(3 downto 0); S0,S1:in std_logic ;
          Y: out std_logic_vector(3 downto 0));
end entity BMUX;
architecture Structure of BMUX is
begin
m0:MUX41
    port map(A(0) ,B(0) ,C(0) ,D(0) ,S1 ,S0,Y(0) );
m1:MUX41
    port map(A(1) ,B(1) ,C(1) ,D(1) ,S1 ,S0,Y(1) );
m2:MUX41
    port map(A(2) ,B(2) ,C(2) ,D(2) ,S1 ,S0,Y(2) );
m3:MUX41
    port map(A(3) ,B(3) ,C(3) ,D(3) ,S1 ,S0,Y(3) );
end Structure;
