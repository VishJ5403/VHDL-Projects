-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Multiplier.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(6 downto 0);
       	output_vector: out std_logic_vector(6 downto 0));
end entity;

architecture DutWrap of DUT is
   component mul is
       port (A0,A1,A2,A3:in std_logic;
        B0,B1,B2:in std_logic;
		  S0,S1,S2,S3,S4,S5,S6:out std_logic);
   end component mul;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: mul
			port map (
					-- order of inputs <A3 A2 A1 A0 B2 B1 B0>
					
					
					A3  => input_vector(6),
					A2  => input_vector(5),
					A1  => input_vector(4),
					A0  => input_vector(3),
					B2  => input_vector(2),
					B1  => input_vector(1),
					B0  => input_vector(0),
                                        -- order of outputs <S6 S5 S4 S3 S2 S1 S0>
				
					S6 => output_vector(6),
					S5 => output_vector(5),
					S4 => output_vector(4),
					S3 => output_vector(3),
					S2 => output_vector(2),
					S1 => output_vector(1),
					S0 => output_vector(0));
					

end DutWrap;

