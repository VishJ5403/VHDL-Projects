-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Minvow.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(15 downto 0);
       	output_vector: out std_logic_vector(15 downto 0));
end entity;

architecture DutWrap of DUT is
   component se_beh is
    port (
        A: in std_logic_vector(5 downto 0);
		  B: in std_logic_vector(8 downto 0);
        sel: in std_logic;
        op: out std_logic_vector(15 downto 0)
    )  ;
   end component se_beh;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: se_beh
         
			port map (
					-- order of inputs D C B A
					sel    => input_vector(15),
					B(8 downto 0) => input_vector(14 downto 6),
					A(5 downto 0) => input_vector(5 downto 0),
					
                                        -- order of outputs Y
					op(15 downto 0) => output_vector(15 downto 0));
					
end DutWrap;
