library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity covid is
port( inp:in std_logic_vector(4 downto 0);
reset,clock:in std_logic;
outp: out std_logic);
end covid;

architecture bhv of covid is

---------------Define state type here-----------------------------

type state is (rst,s1,s2,s3,s4); -- Fill other states here

---------------Define signals of state type-----------------------

signal y_present,y_next: state:=rst;

begin
clock_proc:process(clock,reset)
begin
if(clock='1' and clock' event) then
   if(reset='1') then
      y_present<=rst;
   else
      y_present<=y_next;
   end if;
end if;
end process;

state_transition_proc:process(inp,y_present)
begin
case y_present is
when rst=>
  if(unsigned(inp)=3) then --c has been detected
     y_next<=s1;
  else
     y_next<=rst;
  end if;
when s1=>
  if(unsigned(inp)=15) then --o has been detected
     y_next<=s2;
  else
     y_next<=s1;
  end if;
when s2=>
  if(unsigned(inp)=22) then --v has been detected
     y_next<=s3;
  else
     y_next<=s2;
  end if;
when s3=>
  if(unsigned(inp)=9) then --i has been detected
     y_next<=s4;
  else
     y_next<=s3;
  end if;
when s4=>
  if(unsigned(inp)=4) then --d has been detected
     y_next<=rst;
  else
     y_next<=s4;
  end if;
end case;
end process;

output_proc:process(inp,y_present)
begin
case y_present is
when rst=>
  if(unsigned(inp)=3) then --c has been detected
     outp<='0';
  else
     outp<='0';
  end if;
when s1=>
  if(unsigned(inp)=15) then --o has been detected
     outp<='0';
  else
     outp<='0';
  end if;
when s2=>
  if(unsigned(inp)=22) then --v has been detected
     outp<='0';
  else
     outp<='0';
  end if;
when s3=>
  if(unsigned(inp)=9) then --i has been detected
     outp<='0';
  else
     outp<='0';
  end if;
when s4=>
  if(unsigned(inp)=4) then --d has been detected
     outp<='1';
  else
     outp<='0';
  end if;
end case;
end process;
end bhv;
-------------------------the above code can also be done by using
-------------------------when s4=>
----------------------------if(unsigned(inp)=4) then --d has been detected
-------------------------------outp<='1';
----------------------------else
-------------------------------outp<='0';
----------------------------end if;
-------------------------when others
-------------------------------outp<='0';
-------------------------end case;
---------Fill rest of the code here---------
-------Similarly define output process after this which will give
-------the output based on the present state and input(Mealy machine)
-------I have you have watched the video of Mealy machine.