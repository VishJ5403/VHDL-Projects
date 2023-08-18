

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(7 downto 0);
       	output_vector: out std_logic_vector(10 downto 0));
end entity;

architecture DutWrap of DUT is
   component atm is
    port(I    : in std_logic_vector(7 downto 0);
         P1    : out std_logic;
			P0    : out std_logic;
         A    : out std_logic_vector(1 downto 0);
			B    : out std_logic;
			C    : out std_logic_vector(5 downto 0));
   end component atm;
begin

   add_instance: atm
			port map (
					-- order of inputs 
					I(7)  => input_vector(7),
					I(6)  => input_vector(6),
					I(5)  => input_vector(5),
					I(4)  => input_vector(4),
					I(3)  => input_vector(3),
					I(2)  => input_vector(2),
					I(1)  => input_vector(1),
					I(0)  => input_vector(0),
					
               -- order of outputs 
					P1     => output_vector(10),
					P0     => output_vector(9),
					A(1)     => output_vector(8),
					A(0)     => output_vector(7),
					B     => output_vector(6),
					C(5)     => output_vector(5),
					C(4)     => output_vector(4),
					C(3)     => output_vector(3),
					C(2)     => output_vector(2),
					C(1)     => output_vector(1),
					C(0)     => output_vector(0));

end DutWrap;

