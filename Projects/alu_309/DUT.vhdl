-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Minvow.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(33 downto 0);
       	output_vector: out std_logic_vector(16 downto 0));
end entity;

architecture DutWrap of DUT is
   component alu_beh is
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
   end component alu_beh;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: alu_beh
         
			port map (
					-- order of inputs D C B A
					sel(1 downto 0)    => input_vector(33 downto 32),
					A(15 downto 0) => input_vector(31 downto 16),
					B(15 downto 0) => input_vector(15 downto 0),
					
                                        -- order of outputs Y
					C => output_vector(16),
					op(15 downto 0) => output_vector(15 downto 0));
					
end DutWrap;
