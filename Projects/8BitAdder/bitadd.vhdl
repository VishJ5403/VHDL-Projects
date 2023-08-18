library ieee;
use ieee.std_logic_1164.all;
use work.FullAdder.all;
  library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity bitadd  is
  port (A,B:in std_logic_vector(7 downto 0);
		  S:out std_logic_vector(7 downto 0); 
		  Cout: out std_logic);
end entity bitadd;
architecture Struct of bitadd is
  signal x: std_logic_vector(6 downto 0);
begin

FA1:Full_Adder port map(A(0),B(0),'0', S(0),x(0)); 
FA2:Full_Adder port map(A(1),B(1),x(0), S(1),x(1));
FA3:Full_Adder port map(A(2),B(2),x(1), S(2),x(2));
FA4:Full_Adder port map(A(3),B(3),x(2), S(3),x(3));
FA5:Full_Adder port map(A(4),B(4),x(3), S(4),x(4));
FA6:Full_Adder port map(A(5),B(5),x(4), S(5),x(5));
FA7:Full_Adder port map(A(6),B(6),x(5), S(6),x(6));
FA8:Full_Adder port map(A(7),B(7),x(6), S(7),Cout);

end Struct;
