library ieee;
use ieee.std_logic_1164.all;
package biadd is
  component bi_add is
   port (A0,A1,A2,A3,B0,B1,B2,B3,Cin:in std_logic;
		  S0,S1,S2,S3:out std_logic; 
		  Cout: out std_logic);
  end component bi_add;
  end package biadd;
use work.FullAdder.all;
  library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity bi_add  is
 port (A0,A1,A2,A3,B0,B1,B2,B3,Cin:in std_logic;
		  S0,S1,S2,S3:out std_logic; 
		  Cout: out std_logic);
end entity bi_add;
architecture Struct of bi_add is
  signal x: std_logic_vector(2 downto 0);
begin

FA1:Full_Adder port map(A0,B0,'0', S0,x(0)); 
FA2:Full_Adder port map(A1,B1,x(0), S1,x(1));
FA3:Full_Adder port map(A2,B2,x(1), S2,x(2));
FA4:Full_Adder port map(A3,B3,x(2), S3,Cout);

end Struct;
