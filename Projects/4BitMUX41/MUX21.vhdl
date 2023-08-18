library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

library ieee;
use ieee.std_logic_1164.all;
package MUX_21 is
  component MUX21 is
   port(I0,I1,S: in std_logic;
          Cout: out std_logic);
  end component MUX21;
  end package MUX_21;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity MUX21 is
port(I0,I1,S: in std_logic;
          Cout: out std_logic);
end entity MUX21;
architecture Structure of MUX21 is

signal C1, C2, C3, C4: std_logic;

begin
    inv :INVERTER
         port map(S,C1);
	 a0 :AND_2
	      port map(I0, C1, C2);
	 a1 :AND_2
	      port map(I1,  S, C3);
	 o : OR_2
	      port map(C2, C3, C4);
			
	Cout<=C4;
			
			
		
			
end Structure;