library ieee;
use ieee.std_logic_1164.all;
package flipflops is
  
  component dff2 is port(D,clk,reset:in std_logic;Q:out std_logic);
  end component dff2;
  component dff1 is port(D,clk,reset:in std_logic;Q:out std_logic);
  end component dff1;
-- Instantiate remaining components  
  

end package flipflops; 



--D flip flop2
library ieee;
use ieee.std_logic_1164.all;
entity dff2 is port(D,clk,reset:in std_logic;Q:out std_logic);
end entity dff2;
architecture behav of dff2 is
begin
dff2: process (clk,reset)
begin
--on reset make Q 0 or 1 based on requirement 
if(reset='1')then
Q <= '0';
elsif (clk'event and (clk='1')) then
Q <= D;
end if;
end process dff2;
end behav;
library ieee;
use ieee.std_logic_1164.all;
entity dff1 is port(D,clk,reset:in std_logic;Q:out std_logic);
end entity dff1;
architecture behav of dff1 is
begin
dff1: process (clk,reset)
begin
--on reset make Q 0 or 1 based on requirement 
if(reset='1')then
Q <= '1';
elsif (clk'event and (clk='1')) then
Q <= D;
end if;
end process dff1;
end behav;
