library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package controller is
	component fsm is
		port(I: in std_logic_vector(15 downto 0); ccr,cf: in std_logic_vector(1 downto 0); reset,clock: in std_logic; control: out std_logic_vector(21 downto 0));
	end component fsm;
end package controller;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fsm is
	port(I: in std_logic_vector(15 downto 0); ccr,cf: in std_logic_vector(1 downto 0); reset,clock: in std_logic; control: out std_logic_vector(21 downto 0));
end fsm;

architecture arc of fsm is
	type state is (s0,s1,s2,s3,s4,s5,s7,s10,s12,s13,s14,s15,s16,s17,s18,s20,s22);
	signal opcode: std_logic_vector(3 downto 0);
	signal condition: std_logic_vector(1 downto 0);
	signal ra,rb,rc: std_logic_vector(2 downto 0);
	signal imm6: std_logic_vector(5 downto 0);
	signal imm9: std_logic_vector(8 downto 0);
	signal y_present,y_next: state := s0;
	signal out_sig: std_logic;
	signal concat: std_logic_vector(19 downto 0);
	signal rst: std_logic := '0';
begin
	opcode <= I(15 downto 12);
	ra <= I(11 downto 9);
	rb <= I(8 downto 6);
	rc <= I(5 downto 3);
	condition <= I(1 downto 0);
	imm6 <= I(5 downto 0);
	imm9 <= I(8 downto 0);
	
	clock_proc:process(clock,reset)
	begin
	    if(reset='1') then
	        y_present <= s0;
	    elsif (rst='1') then
				y_present <= s2;
		 elsif(clock='1' and clock' event) then
	        y_present <= y_next;
	    end if;
	    
	end process;
	
	process(y_present)
	begin
	    case y_present is
		    when s0 =>
			    control <= "1010101111111100000001";
			when s1 =>
			    control <= "0001001011111011111100";
		    when s2 =>
			    control <= "00000001111111101101"&((opcode(2) and not(opcode(3))) or (opcode(0) and not(opcode(2))))&(not(opcode(2) or opcode(0)));
			when s3 =>
			    control <= "0000011110000000000000";
		    when s4 =>
			    control <= "0000011110111111111100";
			when s5 =>
			    control <= "0000000000000000100100";
			when s7 =>
			    control <= "0000000000000001000100";
		    when s10 =>
			    control <= "0000011110010000000000";
		    when s12 =>
			    control <= "0011011111001000000000";
			when s13 =>
			    control <= "0101000100000000000000";
		    when s14 =>
			    control <= "0001001101111110000000";
			when s15 =>
			    control <= "0011010001001000000000";
		    when s16 =>
			    control <= "0000000000000000010001";
			when s17 =>
			    control <= "0100001110000000000000";
		    when s18 =>
			    control <= "1000000000000000001101";
		    when s20 =>
			    control <= "1000000000000000001001";
		    when s22 =>
			    control <= "0000000100000100000000";
		end case;	
	end process;

	state_transition_proc:process(I,y_present)
	begin
	    case y_present is
	        when s0 =>
	            y_next <= s1;  
			when s1 =>
				if (opcode="0001") then 
				    if (condition="00") then 
				           y_next <= s2;
					elsif (condition="01") then
						if (ccr(0)='0') then
							y_next <= s4;
						else 
						    y_next <= s2;
						end if;
					elsif (condition="10") then
					    if (ccr(1)='0') then
						    y_next <= s4;
						else 
						    y_next <= s2;
						end if;
					elsif (condition="11") then
						     y_next <= s5;
					end if; 
				elsif (opcode="0000") then
				    y_next <= s7;
				elsif (opcode="0010") then
				    if (condition="00") then 
			            y_next <= s2;
					elsif (condition="01") then
					    if (ccr(0)='0') then
						     y_next <= s4;
						else 
						     y_next <= s2;
						end if;
					elsif (condition="10") then
					    if (ccr(1)='0') then
						    y_next <= s4;
						else 
					    	y_next <= s2;
						end if;
					end if;
				elsif (opcode="0011") then
			        y_next <= s10;
				elsif (opcode="0111" or opcode="0101") then
			        y_next <= s7;
				elsif (opcode="1100" or opcode="1101") then
			        y_next <= s14;
				elsif (opcode="1001" or opcode="1010") then
			        y_next <= s3;
				elsif (opcode="1000") then
			        y_next <= s2;
				elsif (opcode="1011") then
			        y_next <= s22;
				end if;	 
			when s2 =>
			        if (opcode="1000") then
					    if (ccr(0)='0') then
						    y_next <= s4;
						else 
						    y_next <= s18;
						end if;
					elsif (opcode="1011") then
					    y_next <= s4;
					elsif (opcode="0001" or opcode="0010") then
					    y_next <= s3;
					elsif (opcode="0000") then
					    y_next <= s7;
					elsif (opcode="1111") then
						rst <= '1';
					end if;
			when s3 =>
		         if (opcode="1010") then
						 y_next <= s1;
					elsif (opcode="1001") then
					    y_next <= s20;
					else
					    y_next <= s4;
					end if;
			when s4 =>
	            y_next <= s0;
			when s5 =>
	            y_next <= s3;
			when s7 =>
	            if (opcode="0000") then
				    y_next <= s3;
				elsif (opcode="0111") then
				    y_next <= s12;
				elsif (opcode="0101") then
				    y_next <= s13;
				end if;
			when s10 =>
	            y_next <= s4;     
			when s12 =>
	            y_next <= s4; 
			when s13 =>
		         y_next <= s4;
			when s14 =>
		        if (cf(0)='0') then
				    y_next <= s17;
				else 
				    y_next <= s15;
				end if;
			when s15 =>
			    y_next <= s16;
			when s16 =>
		       if (cf(0)='0') then
			        if (cf(1)='0') then
					    y_next <= s16;
					else
					    y_next <= s4;
					end if;
				else
			        if (cf(1)='0') then
					    y_next <= s15;
					else 
					    y_next <= s4;
					end if;
				end if;
		    when s17 =>
			    y_next <= s16;
			when s18 =>
			    y_next <= s4;
			when s20 =>
			    y_next <= s4;
			when s22 =>
			    y_next <= s2;
	        end case;
	end process;


end arc;