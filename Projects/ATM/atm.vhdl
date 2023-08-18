--///////////////////////////////////////////////////////////////////////////

-- @ Soumyajit Langal (WEL IITB)
-- The skeleton code for Mid-Semester EE214. 

--///////////////////////////////////////////////////////////////////////////

library ieee;
use ieee.std_logic_1164.all;

entity atm is
    port(I    : in std_logic_vector(7 downto 0);
         P1    : out std_logic;
			P0    : out std_logic;
         A    : out std_logic_vector(1 downto 0);
			B    : out std_logic;
			C    : out std_logic_vector(5 downto 0));
end entity atm;

architecture struct of atm is

component div is
generic(
			N : integer:=8; -- operand width
			NN : integer:=16 -- result width
        );
port (
			Nu: in std_logic_vector(N-1 downto 0);-- Nu (read numerator) is dividend
			D: in std_logic_vector(N-1 downto 0);-- D (read Denominator) is divisor
			RQ: out std_logic_vector(NN-1 downto 0)--upper N bits of RQ will have remainder and lower N bits will have quotient
) ;
end component;


signal l,m,n: std_logic_vector(15 downto 0);

begin

   d1:div port map (I,"01100100",l);
	d2:div port map (l(15 downto 8),"00110010",m);
	d3:div port map (m(15 downto 8),"00000001",n);
   A(1)<=l(1);
	A(0)<=l(0);
	B   <=m(0);
	C(5)<=n(5);
	C(4)<=n(4);
	C(3)<=n(3);
	C(2)<=n(2);
	C(1)<=n(1);
	C(0)<=n(0);
	P1<='0';
	P0<='0';
end struct;
