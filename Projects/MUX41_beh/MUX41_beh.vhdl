library ieee;
use ieee.std_logic_1164.all;

entity mux41_beh is
    generic(
        operand_width : integer:=4;
        sel_line : integer:=2
        );
    port (
        A,B,C,D: in std_logic_vector(operand_width-1 downto 0);
        S: in std_logic_vector(sel_line-1 downto 0);
        Y: out std_logic_vector(operand_width-1 downto 0)
    ) ;
end mux41_beh;

architecture a1 of mux41_beh is
 
begin
alu : process(A,B,C,D,S)
begin
	if (S="00") then
       Y<=A;
   elsif (S="01") then
       Y<=B;
	elsif (S="10") then
       Y<=C;
   else
       Y<=D;
   end if;
end process ; -- alu
end a1 ; -- a1
