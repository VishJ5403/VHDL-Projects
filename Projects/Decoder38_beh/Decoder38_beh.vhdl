
library ieee;
use ieee.std_logic_1164.all;

entity decoder38_beh is
    generic(
        operand_width : integer:=4;
        sel_line : integer:=2
        );
    port (
        I: in std_logic_vector(operand_width-2 downto 0);
        O: out std_logic_vector((operand_width*2)-1 downto 0)
    ) ;
end decoder38_beh;

architecture a1 of decoder38_beh is
    
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
	if (I="000") then
         O<="10000000";
   elsif (I="001") then
         O<="01000000";
	elsif (I="010") then
         O<="00100000";
	elsif (I="011") then
         O<="00010000";
	elsif (I="100") then
         O<="00001000";
	elsif (I="101") then
         O<="00000100";
	elsif (I="110") then
         O<="00000010";
   else
         O<="00000001";
end if;
end process ; -- alu
end a1 ; -- a1
