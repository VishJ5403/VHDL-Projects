
library ieee;
use ieee.std_logic_1164.all;

entity alu_beh is
    generic(
        operand_width : integer:=16
        );
    port (
        A: in std_logic_vector(operand_width-1 downto 0);
        B: in std_logic_vector(operand_width-1 downto 0);
        sel: in std_logic_vector(1 downto 0);
        op: out std_logic_vector(operand_width-1 downto 0);
		  C: out std_logic
    ) ;
end alu_beh;

architecture a1 of alu_beh is
    function add(A: in std_logic_vector(operand_width-1 downto 0); B: in std_logic_vector(operand_width-1 downto 0))
        return std_logic_vector is
            -- Declare "sum" and "carry" variable
            -- you can use aggregate to initialize the variables & signals as shown below
            --    variable variable_name : std_logic_vector(3 downto 0) := (others => '0');
				variable i:integer;
				variable sum : std_logic_vector(16 downto 0) := (others => '0');
				variable carry : std_logic_vector(16 downto 0) := (others => '0');
        begin
            -- write logic for addition
            -- Hint: Use for loop
				carry(0):='0';
				for i in 0 to 15 loop
				carry(i+1):=(A(i) AND B(i)) OR (A(i) AND carry(i)) OR (carry(i) AND B(i));
             sum(i):=carry(i) XOR A(i) XOR B(i);
            end loop;
				sum(16):=carry(16);
            return sum;
    end add;

 
begin
alu : process( A, B, sel )
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
	if (sel="00") then
		    op<=add(A,B)(15 downto 0);C<=add(A,B)(16);
	elsif (sel="01") then
	       op<=A XOR B;
	else
         op<=A NAND B;
end if;
end process ; -- alu
end a1 ; -- a1
