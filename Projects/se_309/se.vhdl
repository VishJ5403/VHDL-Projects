
library ieee;
use ieee.std_logic_1164.all;

entity se_beh is
    port (
        A: in std_logic_vector(5 downto 0);
		  B: in std_logic_vector(8 downto 0);
        sel: in std_logic;
        op: out std_logic_vector(15 downto 0)
    ) ;
end se_beh;

architecture s1 of se_beh is
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

	if (sel='0') then
		    if (A(5)='0') then
			    op<="0000000000"&A;
			 else
			    op<="1111111111"&A;
				 end if;
	else
         if (B(8)='0') then
			    op<="0000000"&B;
			 else
			    op<="1111111"&B;
				 end if;
end if;
end process ; -- alu
end s1 ; -- a1
