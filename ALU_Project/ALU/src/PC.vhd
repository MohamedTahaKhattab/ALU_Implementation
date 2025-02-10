-------------------------------------------------------------------------------
--
-- Title       : PC
-- Design      : ALU
-- Author      : Mohamed
-- Company     : egyptian chinese universty
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\MOHAMED_TAHA_SALAH_192000280\ALU\src\PC.vhd
-- Generated   : Fri May 13 08:10:04 2022
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
--{entity {PC} architecture {PC}}

library IEEE;
use IEEE.std_logic_1164.all;

entity PC is
	generic(n:integer:=16);
	 port(
		 Rst : in STD_LOGIC;
		 CLK : in STD_LOGIC;
		 PCin : in STD_LOGIC_VECTOR(n-1 downto 0);
		 PCout : out STD_LOGIC_VECTOR(n-1 downto 0)
	     );
end PC;

--}} End of automatically maintained section

architecture PC of PC is 
component \add_sub\ is	 
	generic(
		  n : Integer :=16
	);
	 port(
		 CIN : in STD_LOGIC;
		 A : in STD_LOGIC_VECTOR(n-1 downto 0);
		 B : in STD_LOGIC_VECTOR(n-1 downto 0);
		 S : out STD_LOGIC_VECTOR(n-1 downto 0);
		 COUT : out std_logic
	     );
end component; 
component \Register\ is
	generic(n:integer :=16);
	 port(
		 CLK : in STD_LOGIC;
		 Rst : in STD_LOGIC;
		 Datain : in STD_LOGIC_VECTOR(n-1 downto 0);
		 Dataout : out STD_LOGIC_VECTOR(n-1 downto 0)
	     );
end component;
signal s1 : std_logic;
signal s2,s3 : std_logic_vector(n-1 downto 0);
begin

add : \add_sub\ port map ('1',PCin,x"0000",s2,s1) ;	
reg:\Register\ port map(CLK,'0',s2,s3) ;

PCout<=x"0000" when Rst='1' else s3 when Rst='0' ;

end PC;
