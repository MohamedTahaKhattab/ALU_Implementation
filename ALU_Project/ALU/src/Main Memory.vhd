-------------------------------------------------------------------------------
--
-- Title       : \Main Memory\
-- Design      : ALU
-- Author      : Mohamed Khattab
-- Company     : The Egyptian Chinese University
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\MOHAMED_TAHA_SALAH_192000280\ALU\src\Main Memory.vhd
-- Generated   : Mon Mar 28 11:27:23 2022
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {\Main Memory\} architecture {\Main Memory\}}

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity \Main Memory\ is	 
	generic(
		  n : Integer :=16
	);
	 port(
		 clk : in STD_LOGIC;
		 rst : in STD_LOGIC;
		 MR : in STD_LOGIC;
		 MW : in STD_LOGIC;
		 address : in STD_LOGIC_VECTOR(n-1 downto 0);
		 WD : in STD_LOGIC_VECTOR(n-1 downto 0);									   
		 RD : out STD_LOGIC_VECTOR(n-1 downto 0)
	     );
end \Main Memory\;

--}} End of automatically maintained section

architecture \Main_Memory_model\ of \Main Memory\ is 
type RAM_TYPE is array(0to((2**(n-1)-1)))of std_logic_vector(n-1 downto 0);
type ROM_TYPE is array(0 to 15)of std_logic_vector(n-1 downto 0);
signal ram : RAM_TYPE;
signal rom : ROM_TYPE;
begin
process (clk,rst)
begin  
if (rst='1')then 
	 -- memory locations (contents) --
ram(3630)<=x"0002"; 
ram(3631)<=x"0001";	
ram(3632)<=x"0002";
ram(3633)<=x"0007";
ram(3634)<=x"0005";
ram(3635)<=x"0003";
ram(3636)<=x"0F0F";
ram(3637)<=x"000A";
ram(3638)<=x"0000";	
     -- Instructions --
rom(0)<=	x"1E2E"	;  ---load---
rom(1)<=	x"3E2F"	;  ---store---
rom(2)<=	x"2E30"	;  ---add---
rom(3)<=	x"1E31"	;  ---sub---
rom(4)<=	x"2E32"	;  ---and---
rom(5)<=	x"2E33"	;  ---or---
rom(6)<=	x"1E34"	;  ---xor---
rom(7)<=	x"1E35"	;  ---not---
rom(8)<=	x"3E36"	;  ---SHL---
rom(9)<=	x"2E37"	;  ---SHR---
rom(10)<=   x"3E38"	;  ---ROL---
rom(11)<=   x"1E39"	;  ---ROR---
rom(12)<=   x"1E3A"	;  ---MOV---
rom(13)<=   x"1E3B"	;  ---INC---
rom(14)<=   x"1E35"	; ---DEC---
rom(15)<=   x"1E34"	; ---REST---
--------------------------------------
elsif (rising_edge(clk)) and MR = '0' and MW = '0' Then
	RD <= rom(to_integer(unsigned(address)));
elsif(rising_edge(clk))and MW ='1' then
	rom(to_integer(unsigned(address))) <= WD;
elsif(rising_edge(clk)) and MR = '1' Then
	RD <= rom(to_integer(unsigned(address(11 downto 0))));	
end if;	
end process;
end \Main_Memory_model\ ;
	