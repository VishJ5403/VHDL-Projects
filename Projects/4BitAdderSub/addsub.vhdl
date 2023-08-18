library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
library ieee;
use ieee.std_logic_1164.all;
use work.FullAdder.all;
library ieee;
use ieee.std_logic_1164.all;
entity addsub is
port(M    : in std_logic;
     A,B  : in std_logic_vector(3 downto 0);
     S    : out std_logic_vector(3 downto 0);
     Cout : out std_logic);
end entity addsub;
architecture Structure of addsub is

signal W,X,Y,Z,C1, C2, C3, C4: std_logic;

begin
W<= B(0) xor M;
X<= B(1) xor M;
Y<= B(2) xor M;
Z<= B(3) xor M;
FA1:Full_Adder port map(A(0),W,M, S(0),C1); 
FA2:Full_Adder port map(A(1),X,C1, S(1),C2);
FA3:Full_Adder port map(A(2),Y,C2, S(2),C3); 
FA4:Full_Adder port map(A(3),Z,C3, S(3),C4); 

Cout <= C4;
end Structure;
