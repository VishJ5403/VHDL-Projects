library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
 package timercontroller is
  
  component timer_controller is port( inp_switch:in std_logic_vector(2 downto 0);
                                      reset,clock_50, clock_1:in std_logic;
                                      out_LED: out std_logic_vector(3 downto 0));
  end component;

end package timercontroller;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity timer_controller is
port( inp_switch:in std_logic_vector(2 downto 0);
reset,clock_50, clock_1:in std_logic;
out_LED: out std_logic_vector(3 downto 0));
end timer_controller;


architecture bhv of timer_controller is
component timer_ckt is
port ( clock_1, clock_50, reset : in std_logic;
LED : out std_logic_vector(3 downto 0);
timer_inp : in std_logic_vector(1 downto 0));
end component;
---------------Define state type here-----------------------------

type state is (rst,t1,t2,t3); -- Fill other states here

---------------Define signals of state type-----------------------

signal y_present,y_next: state:=rst;
signal out_p : std_logic_vector(1 downto 0) := "00";

begin
clock_50_proc:process(reset,clock_50)
begin
if(clock_50='1' and clock_50' event) then
   if(reset='1') then
      y_present<=rst;
   else
      y_present<=y_next;
   end if;
end if;
end process;

state_transition_proc:process(inp_switch,y_present)
begin
case y_present is
when rst=>
  if(inp_switch="000") then 
     y_next<=rst;
  elsif(inp_switch="001") then
     y_next<=t1;
  elsif(inp_switch="010") then
     y_next<=t2;
  elsif(inp_switch="100") then
     y_next<=t3;
  else
     y_next<=rst;
  end if;
when t1=>
  if(inp_switch="000") then 
     y_next<=rst;
  elsif(inp_switch="001") then
     y_next<=t1;
  elsif(inp_switch="010") then
     y_next<=t2;
  elsif(inp_switch="100") then
     y_next<=t3;
  else
     y_next<=t1;
  end if;
when t2=>
  if(inp_switch="000") then 
     y_next<=rst;
  elsif(inp_switch="001") then
     y_next<=t1;
  elsif(inp_switch="010") then
     y_next<=t2;
  elsif(inp_switch="100") then
     y_next<=t3;
  else
     y_next<=t2;
  end if;
when t3=>
  if(inp_switch="000") then 
     y_next<=rst;
  elsif(inp_switch="001") then
     y_next<=t1;
  elsif(inp_switch="010") then
     y_next<=t2;
  elsif(inp_switch="100") then
     y_next<=t3;
  else
     y_next<=t3;
  end if;
end case;
end process;

output_proc:process(inp_switch,y_present)
begin
case y_present is
when rst=>
  if(inp_switch="000") then 
     out_LED<="0001";
  elsif(inp_switch="001") then
     out_LED<="1000";
  elsif(inp_switch="010") then
     out_LED<="0111";
  elsif(inp_switch="100") then
     out_LED<="0110";
  else
     out_LED<="0001";
  end if;
when t1=>
  if(inp_switch="000") then 
     out_LED<="0001";
  elsif(inp_switch="001") then
     out_LED<="1000";
  elsif(inp_switch="010") then
     out_LED<="0111";
  elsif(inp_switch="100") then
     out_LED<="0110";
  else
     out_LED<="1000";
  end if;
when t2=>
  if(inp_switch="000") then 
     out_LED<="0001";
  elsif(inp_switch="001") then
     out_LED<="1000";
  elsif(inp_switch="010") then
     out_LED<="0111";
  elsif(inp_switch="100") then
     out_LED<="0110";
  else
     out_LED<="0111";
  end if;
when t3=>
  if(inp_switch="000") then 
     out_LED<="0001";
  elsif(inp_switch="001") then
     out_LED<="1000";
  elsif(inp_switch="010") then
     out_LED<="0111";
  elsif(inp_switch="100") then
     out_LED<="0110";
  else
     out_LED<="0110";
  end if;
end case;
end process;
end bhv;