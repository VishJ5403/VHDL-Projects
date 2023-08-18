library ieee;
use ieee.std_logic_1164.all;

package DP is
	component data_path is
		port (clk: in std_logic;
	      	control: in std_logic_vector(21 downto 0);
				cond,chec: out std_logic_vector(1 downto 0); I: out std_logic_vector(15 downto 0));
	end component data_path;
end package DP;

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.all;							--mux2.VHDL

entity data_path is
	port (clk: in std_logic;
      	control: in std_logic_vector(21 downto 0);
			cond,chec: out std_logic_vector(1 downto 0); I: out std_logic_vector(15 downto 0));
end entity data_path;

architecture arc of data_path is
	signal pcw,mw,mr,mem_a,irw,rfw,rf_a1,t1,t3: std_logic;
	signal rf_a2,rf_a3,rf_d3,alu_B,alu_OP: std_logic_vector(1 downto 0);
	signal alu_A: std_logic_vector(2 downto 0);
	signal aluc,pcy,t3y,mema,memdin,memdout,iry,se9y,ls7y,se6y,rfd1,rfd2,rfd3,t1i,t1o,ls1y,alua,t2y,alub,t3i: std_logic_vector(15 downto 0);
	signal ctfo,chfo,ctf,chf,c,z,cf,zf: std_logic;
	signal cha,rfa1,rfa2,rfa3: std_logic_vector(2 downto 0);
			--aluc: output of ALU
			--pcy: output of PC
			--t3y: output of t3
			--mema: input to MEM_A
			--memdin: input to MEM_Din
			--memdout: output of MEM_Dout
			--iry: output of ir
			--ctfo: counter flag output from check
			--chfo: check flag output from check
			--cha: address output from check
			--ctf: counter flag from check_register
			--chf: check flag from check_register
			--se9y: output of SE9
			--rfa1: input to RF_A1
			--ls7y: output of LS7
			--se6y: output of SE6
			--rfa2: input to RF_A2
			--rfa3: input to RF_A3
			--rfd1: output of RF_D1
			--rfd2: output of RF_D2
			--rfd3: input to RF_D3
			--t1i: input to T1
			--t1o: output of T1
			--ls1y: output of LS1
			--alua: input to ALU_A
			--t2y: output of T2
			--alub: input to ALU_B
			--c: carry
			--z: Zero
			--cf: carry flag in CCR
			--zf: zero flag in CCR
			--t3i: input to T3
	--pcw(pc write enable) mw(memory write enable) mr(memory read enable) mem_a0(mux before memory) irw(ir write enable) rfw(rf write enable) rf_a1_0(mux before rf_a1) rf_a2_1(mux before rf_a2) rf_a2_0(mux before rf_a2) rf_a3_1(mux before rf_a3) rf_a3_0(mux before rf_a3) rf_d3_1(mux before rf_d3) rf_d3_0(mux before rf_d3) t1_0(mux before t1) t3_0(mux before t1) aluA2(mux before alu_A) aluA1(mux before alu_A) aluA0(mux before alu_A) aluB1(mux before alu_B) aluB0(mux before alu_B) alu_OP(operation select) alu_OP(operation select)
	begin
		pcw <= control(21);
		mw <= control(20);
		mr <= control(19);
		mem_a <= control(18);
		irw <= control(17);
		rfw <= control(16);
		rf_a1 <= control(15);
		rf_a2 <= control(14 downto 13);
		rf_a3 <= control(12 downto 11);
		rf_d3 <= control(10 downto 9);
		t1 <= control(8);
		t3 <= control(7);
		alu_A <= control(6 downto 4);
		alu_B <= control(3 downto 2);
		alu_OP <= control(1 downto 0);

		PC: pc_1 port map (aluc,clk,pcw,pcy);
		MUX0: mux_1_16 port map (pcy,t3y,mem_a,mema);									--PC mux
		M1: mem port map (mema,memdin,mr,mw,clk,memdout);
		I1: ir port map (memdout,clk,irw,iry);
		CHECK1: check port map (iry(7 downto 0),ctfo,chfo,cha);
		CHECK_REG1: check_reg port map (ctfo,chfo,clk,ctf,chf);
		SE91: se9 port map (iry(8 downto 0),se9y);
		MUX1: mux_1_3 port map ("111",iry(5 downto 3),rf_a1,rfa1);						--RF_A1
		MUX2: mux_2_3 port map ("000",iry(8 downto 6),iry(11 downto 9),cha,rf_a2,rfa2);		--RF_A2
		MUX3: mux_2_3 port map (iry(11 downto 9),"111",cha,"000",rf_a3,rfa3);						--RF_A3
		LS71: ls7 port map (iry(8 downto 0),ls7y);
		MUX4: mux_2_16 port map(t3y,memdout,ls7y,pcy,rf_d3,rfd3);									--RF_D3
		SE61: se6 port map (iry(5 downto 0),se6y);
		RF1: rf port map (rfd3,rfw,clk,rfa1,rfa2,rfa3,rfd1,rfd2);
		MUX5: mux_1_16 port map (rfd1,se9y,t1,t1i);										--T1 mux
		T_1: tr port map (t1i,clk,t1o);
		LS11: ls1 port map (t1o,ls1y);
		MUX6: mux_3 port map (pcy,t3y,ls1y,t1o,se6y,"0000000000000000","0000000000000000","0000000000000000",alu_A,alua);	--ALU_A
		T_2: tr port map (rfd2,clk,t2y);
		MUX7: mux_2_16 port map ("0000000000000001",t2y,se9y,se6y,alu_B,alub);			--ALU_B
		ALU1: alu port map (alua,alub,alu_OP,aluc,c,z);
		CCR1: ccr port map (c,z,clk,iry(15 downto 12),cf,zf);
		MUX8: mux_1_16 port map (aluc,rfd2,t3,t3i);
		T_3: tr port map (t3i,clk,t3y);
		
		cond(1) <= cf;
		cond(0) <= zf;
		chec(1) <= ctf;
		chec(0) <= chf;
		I <= iry;
end arc;
		