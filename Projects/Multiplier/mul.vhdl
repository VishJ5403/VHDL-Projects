library ieee;
use ieee.std_logic_1164.all;
use work.biadd.all;
  library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity mul  is
   port (A0,A1,A2,A3:in std_logic;
        B0,B1,B2:in std_logic;
		  S0,S1,S2,S3,S4,S5,S6:out std_logic);
end entity mul;
architecture Struct of mul is
  signal x: std_logic_vector(14 downto 0);
  signal Cin:std_logic;
begin
Cin <='0';
an1: AND_2 port map (A0,B0,S0);
an2: AND_2 port map (A1,B0,x(0));
an3: AND_2 port map (A2,B0,x(1));
an4: AND_2 port map (A3,B0,x(2));
an5: AND_2 port map (A0,B1,x(3));
an6: AND_2 port map (A1,B1,x(4));
an7: AND_2 port map (A2,B1,x(5));
an8: AND_2 port map (A3,B1,x(6));
an9: AND_2 port map (A0,B2,x(11));
an10:AND_2 port map (A1,B2,x(12));
an11:AND_2 port map (A2,B2,x(13));
an12:AND_2 port map (A3,B2,x(14));
BA1:bi_add port map(x(0),x(1),x(2),'0',x(3),x(4),x(5),x(6),Cin,S1,x(7),x(8),x(9),x(10));
BA2:bi_add port map(x(7),x(8),x(9),x(10),x(11),x(12),x(13),x(14),Cin,S2,S3,S4,S5,S6);

end Struct;
