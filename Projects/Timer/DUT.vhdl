-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(5 downto 0);
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
	component timer_controller is
       port( inp_switch:in std_logic_vector(2 downto 0);
             reset,clock_50, clock_1:in std_logic;
             out_LED: out std_logic_vector(3 downto 0));
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: timer_controller 
			port map (
					
					inp_switch(2 downto 0)   => input_vector(5 downto 3),
					reset                    => input_vector(2),
					clock_50                 => input_vector(1), 
					clock_1                  => input_vector(0),
                                       
					out_LED                  => output_vector(3 downto 0));

end DutWrap;

