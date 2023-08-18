-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  2X1 MUX.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(2 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
   component MUX21 is
     port(I    : in std_logic_vector(1 downto 0);
          S    : in std_logic;
          Y    : out std_logic);
   end component MUX21;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: MUX21
			port map (
					-- order of inputs S I(0) I(1) 
					I(1)  => input_vector(2),
					I(0)  => input_vector(1),
					S     => input_vector(0),
               -- order of outputs Y
					Y     => output_vector(0));

end DutWrap;
