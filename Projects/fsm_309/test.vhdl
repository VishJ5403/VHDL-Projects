
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all; 
use ieee.numeric_std.all;

entity test is
    port( clk_slow      : in std_logic;                             -- 1 Hz Clock
          inp           : in std_logic_vector(15 downto 0);
			 ccr           : in std_logic_vector(1 downto 0);
			 cf           : in std_logic_vector(1 downto 0);
          clk           : in  std_logic;                            -- 50 Mhz Clock
          rst           : in  std_logic;
          detect        : out std_logic_vector(21 downto 0)                             --To be mapped to LED 4
          );
end entity; 

architecture behave of test is

--  LCD Interfacing signals
    signal erase        : std_logic := '0';                  
    signal put_char     : std_logic := '1';
    signal write_data   : std_logic_vector(7 downto 0)  := "00000000";
    signal write_row    : std_logic_vector( 0 downto 0) := "0";
    signal write_column : std_logic_vector(3 downto 0) := "0000";
    signal ack          : std_logic;
    signal i            : integer := 0;
    
-- covid_det signals
    signal ascii_value  : std_logic_vector(39 downto 0);

-- Clock signal for LCD module  
    signal lcd_clk      : std_logic := '0';

-- Component Declaration
    component fsm is
		port(I: in std_logic_vector(15 downto 0); ccr,cf: in std_logic_vector(1 downto 0); reset,clk: in std_logic; control: out std_logic_vector(21 downto 0));
	end component fsm;

    component lcd_controller is
    port (  clk    : in std_logic;                          --clock i/p
            rst    : in std_logic;                          -- reset
            erase : in std_logic;                           --- clear position
            put_char : in std_logic;
            write_data : in std_logic_vector(7 downto 0) ;
            write_row : in std_logic_vector(0 downto 0);
            write_column : in std_logic_vector(3 downto 0);
            ack : out std_logic;
            lcd_rw : out std_logic;                         --read & write control
            lcd_en : out std_logic;                         --enable control
            lcd_rs : out std_logic;                         --data or command control
            lcd1  : out std_logic_vector(7 downto 0);
            b11 : out std_logic;
            b12 : out std_logic);     --data line
    end component lcd_controller;

begin
        
    -------------------------------------------------------------------------------------
    --- CLOCK divider circuit
    process(clk)--50Mhz/200000 = 250Hz
        variable div_clk: integer := 0;
    begin
        if rising_edge(clk) then
            div_clk := div_clk + 1;
            if div_clk = 100000 then
                lcd_clk <= '1';
            elsif div_clk = 200000 then
                lcd_clk <= '0';
                div_clk := 0;
            end if;
        end if; 
    end process;

    covid_det_instance :fsm port map(
                           I         => inp,
									ccr       =>ccr,
									cf       =>cf,
                           reset       => rst,
                           clk       => clk_slow,
                           control        => detect);

    
    

end behave;
