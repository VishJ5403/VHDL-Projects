
library ieee;
use ieee.std_logic_1164.all;

entity check_beh is
    generic(
        operand_width : integer:=8;
        );
    port (
        A: in std_logic_vector(operand_width-1 downto 0);
		  ctf,chf: out std_logic;
        op: out std_logic_vector(2 downto 0)
    ) ;
end check_beh;

architecture c1 of check_beh is
   variable count: integer;
	variable i:integer;
begin
process( A )
begin
for i in 0 to 7 loop
   if (count=0)
	   if (A(0)='0') then
         chf<='0';
      else
         chf<='1';
      end if;
		ctf<='0';
		op<="000";
	elsif (count=1)
	   if (A(0)='0') then
         chf<='0';
      else
         chf<='1';
      end if;
		ctf<='0';
		op<="001";
	elsif (count=2)
	   if (A(0)='0') then
         chf<='0';
      else
         chf<='1';
      end if;
		ctf<='0';
		op<="010";
	elsif (count=3)
	   if (A(0)='0') then
         chf<='0';
      else
         chf<='1';
      end if;
		ctf<='0';
		op<="011";
	elsif (count=4)
	   if (A(0)='0') then
         chf<='0';
      else
         chf<='1';
      end if;
		ctf<='0';
		op<="100";
	elsif (count=5)
	   if (A(0)='0') then
         chf<='0';
      else
         chf<='1';
      end if;
		ctf<='0';
		op<="101";
	elsif (count=6)
	   if (A(0)='0') then
         chf<='0';
      else
         chf<='1';
      end if;
		ctf<='0';
		op<="110";
	elsif (count=7)
	   if (A(0)='0') then
         chf<='0';
      else
         chf<='1';
      end if;
		ctf<='1';
		op<="111";
	end if;
count+=1;
end loop;
end process ; -- alu
end a1 ; -- a1
