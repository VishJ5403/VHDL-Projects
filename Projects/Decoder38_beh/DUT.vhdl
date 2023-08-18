-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(2 downto 0);
       	output_vector: out std_logic_vector(7 downto 0));
end entity;

architecture DutWrap of DUT is
   component decoder38_beh is
     generic(
        operand_width : integer:=4;
        sel_line : integer:=2
        );
    port (
        I: in std_logic_vector(operand_width-2 downto 0);
        O: out std_logic_vector((operand_width*2)-1 downto 0)
    ) ;
   end component decoder38_beh;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: decoder38_beh 
			port map (
					
					
				I(2 downto 0) => input_vector(2 downto 0),                     
					
				O(7 downto 0) => output_vector(7 downto 0));

end DutWrap;

