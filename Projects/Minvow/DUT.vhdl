-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Minvow.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(3 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
   component Minvow is
     port(A,B,C,D: in std_logic;
          Y: out std_logic);
   end component Minvow;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: Minvow 
			port map (
					-- order of inputs D C B A
					A => input_vector(3),
					B => input_vector(2),
					C => input_vector(1),
					D => input_vector(0),
					
                                        -- order of outputs Y
					Y => output_vector(0));
					
end DutWrap;

