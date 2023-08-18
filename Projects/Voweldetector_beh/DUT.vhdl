-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(3 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
   component Vow_beh is
    generic(
        operand_width : integer:=4;
        sel_line : integer:=2
        );
    port (
        I: in std_logic_vector(operand_width-1 downto 0);
        O: out std_logic
    ) ;
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: Vow_beh 
			port map (
					-- order of inputs Cin B A
					
					I(3 downto 0)   => input_vector(3 downto 0),
                                        -- order of output Y
					O      => output_vector(0));

end DutWrap;

