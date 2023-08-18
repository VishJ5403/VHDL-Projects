
library ieee;
use ieee.std_logic_1164.all;

entity ls_beh is
    generic(
        operand_width : integer:=16
        );
    port (
        A: in std_logic_vector(operand_width-1 downto 0);
		  B: in std_logic_vector(8 downto 0);
        sel: in std_logic;
        op: out std_logic_vector(operand_width-1 downto 0)
    ) ;
end ls_beh;

architecture l1 of ls_beh is
    --function add(A: in std_logic_vector(operand_width-1 downto 0); B: in std_logic_vector(operand_width-1 downto 0))
        --return std_logic_vector is
            -- Declare "sum" and "carry" variable
            -- you can use aggregate to initialize the variables & signals as shown below
            --    variable variable_name : std_logic_vector(3 downto 0) := (others => '0');
				--variable i:integer;
				--variable sum : std_logic_vector(16 downto 0) := (others => '0');
				--variable carry : std_logic_vector(16 downto 0) := (others => '0');
        --begin
            -- write logic for addition
            -- Hint: Use for loop
				--carry(0):='0';
				--for i in 0 to 15 loop
				--carry(i+1):=(A(i) AND B(i)) OR (A(i) AND carry(i)) OR (carry(i) AND B(i));
             --sum(i):=carry(i) XOR A(i) XOR B(i);
            --end loop;
				--sum(16):=carry(16);
            --return sum;
    --end add;
  signal C:std_logic_vector(15 downto 0);
 
begin
ls : process( A,B,sel )
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
C(0)<=A(15);
C(15 downto 1)<=A(14 downto 0);
	if (sel='0') then
		    op<=C;
	else
         op<=B&"0000000";
end if;
end process ; -- alu
end l1 ; -- a1
