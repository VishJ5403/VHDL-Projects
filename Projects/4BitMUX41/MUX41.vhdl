library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.MUX_21.all;
library ieee;
package MUX_41 is
  component MUX41 is
port(I0,I1,I2,I3,S0,S1: in std_logic;
          Y: out std_logic);
  end component MUX41;
  end package MUX_41;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.MUX_21.all;
entity MUX41 is
port(I0,I1,I2,I3,S0,S1: in std_logic;
          Y: out std_logic);
end entity MUX41;
architecture Structure of MUX41 is
signal C1, C2, C3: std_logic;
begin
m0:MUX21
   port map(I0,I1,S1,C1);
m1:MUX21
   port map(I2 ,I3 ,S1 ,C2 );
m2:MUX21
   port map(C1 ,C2 ,S0 ,C3 );
Y<=C3;
end Structure;	
			 