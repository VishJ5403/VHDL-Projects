library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.timercontroller.all; 
entity timer_ckt is
port ( clock_1, clock_50, reset : in std_logic;
LED : out std_logic_vector(3 downto 0);
timer_inp : in std_logic_vector(1 downto 0));
-- timer_inp is State Machine output
end entity timer_ckt;
architecture bhv of timer_controller is
process(clock_50)
begin
variable timer1 : integer range 0 to 500E6 := 1;
variable timer2 : integer range 0 to 500E6 := 1;
variable timer3 : integer range 0 to 500E6 := 1;
-- 500E6 means 500 x 10 ^ 6
-- the above variable will count the number
-- of clock pulses till it reaches required
-- number of seconds
-- Use similar 2 other variables for timer2, timer3


end process;