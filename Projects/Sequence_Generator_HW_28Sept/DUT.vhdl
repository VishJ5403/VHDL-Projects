-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(1 downto 0);
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
     component Sequence_behaviour is
    port (reset,clock: in std_logic;
          y: out std_logic_vector(3 downto 0)) ;
end component Sequence_behaviour;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance:  Sequence_behaviour
			port map (
					
					reset => input_vector(1),
               clock => input_vector(0),                      
				
					y(3 downto 0) => output_vector(3 downto 0));

end DutWrap;
