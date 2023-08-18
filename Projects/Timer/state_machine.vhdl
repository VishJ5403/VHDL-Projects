library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity state_machine is
port(inp:in std_logic_vector(2 downto 0);
        reset,clock_50, clock_1:in std_logic;
        outp: out std_logic_vector(1 downto 0);
end entity;

architecture bhv of state_machine is
type state is (rst,t1,t2,t3);
signal y_present,y_next: state:=init;
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
	  outp <= "00" ;
  elsif(inp_switch="001") then
     y_next<=t1;
	  outp <= "01";
  elsif(inp_switch="010") then
     y_next<=t2;
	   outp <= "10" ;
  elsif(inp_switch="100") then
     y_next<=t3;
	  outp <= "11" ;
  else
     y_next<=rst;
	  outp <= "00" ;
  end if;
when t1=>
  if(inp_switch="000") then 
     y_next<=rst;
	  outp <= "00" ;
  elsif(inp_switch="001") then
     y_next<=t1;
	  outp <= "01";
  elsif(inp_switch="010") then
     y_next<=t2;
	   outp <= "10" ;
  elsif(inp_switch="100") then
     y_next<=t3;
	  outp <= "11" ;
  else
     y_next<=t1;
	  outp <= "01" ;
  end if;
when t2=>
  if(inp_switch="000") then 
     y_next<=rst;
  elsif(inp_switch="001") then
     y_next<=t1;
	  outp <= "01";
  elsif(inp_switch="010") then
     y_next<=t2;
	   outp <= "10" ;
  elsif(inp_switch="100") then
     y_next<=t3;
	  outp <= "11" ;
  else
     y_next<=t2;
	  outp <= "10" ;
  end if;
when t3=>
  if(inp_switch="000") then 
     y_next<=rst;
	  outp <= "00" ;
  elsif(inp_switch="001") then
     y_next<=t1;
	  outp <= "01";
  elsif(inp_switch="010") then
     y_next<=t2;
	   outp <= "10" ;
  elsif(inp_switch="100") then
     y_next<=t3;
	  outp <= "11" ;
  else
     y_next<=t3;
	  outp <= "11" ;
  end if;
end case;
end process;
end bhv;