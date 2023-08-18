-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Minvow.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(22 downto 0);
       	output_vector: out std_logic_vector(62 downto 0));
end entity;

architecture DutWrap of DUT is
   component instr is
     port(   I:in std_logic_vector(15 downto 0);
        ccr:in std_logic_vector(1 downto 0);
        cf:in std_logic_vector(1 downto 0);--1st bit is ctf and 0bit is chf
		  z: in std_logic;
        reset,clock:in std_logic;
        outp: out std_logic;
		  control:out std_logic_vector(21 downto 0);
        out_ascii: out std_logic_vector(39 downto 0));
   end component instr;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: instr
         
			port map (
					-- order of inputs D C B A
					sel(1 downto 0)    => input_vector(9 downto 8),
					A(3 downto 0) => input_vector(7 downto 4),
					B(3 downto 0) => input_vector(3 downto 0),
					
                                        -- order of outputs Y
					op(7 downto 0) => output_vector(7 downto 0));
					
end DutWrap;

