
library ieee;
use ieee.std_logic_1164.all;

entity scrabble_beh is
    generic(
        operand_width : integer:=4;
        sel_line : integer:=2
        );
    port (
        I: in std_logic_vector(operand_width-1 downto 0);
        O: out std_logic
    ) ;
end scrabble_beh;

architecture a1 of scrabble_beh is
    
begin
alu : process( I )
begin
   -- complete VHDL code for various outputs of ALU based on select lines
   -- Hint: use if/else statement
   --
   -- add function usage :
   --   signal_name <= add(A,B)
   --   variable_name := add(A,B)
   --
   -- concatenate operator usage:
   --    "0000"&A 
	if (I="0001") then
         O<='1';
   elsif (I="0010") then
         O<='1';
	elsif (I="1101") then
         O<='1';
	elsif (I="1110") then
         O<='1';
   else
         O<='0';
end if;
end process ; -- alu
end a1 ; -- a1
