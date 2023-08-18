-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  4X1 MUX.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(5 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
   component MUX41 is
     port(I    : in std_logic_vector(3 downto 0);
          S    : in std_logic_vector(1 downto 0);
          Y    : out std_logic);
   end component MUX41;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: MUX41
			port map (
					-- order of inputs S I(0) I(1) I(2) I(3)
					I(3)  => input_vector(5),
					I(2)  => input_vector(4),
					I(1)  => input_vector(3),
					I(0)  => input_vector(2),
					S(1)     => input_vector(1),
					S(0)     => input_vector(0),
               -- order of outputs Y
					Y     => output_vector(0));

end DutWrap;

