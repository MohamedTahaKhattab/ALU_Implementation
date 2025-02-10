-------------------------------------------------------------------------------
--
-- Title       : \Register\
-- Design      : ALU
-- Author      : Mohamed Khattab
-- Company     : The Egyptian Chinese University
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\MOHAMED_TAHA_SALAH_192000280\ALU\src\Register.vhd
-- Generated   : Sun Feb 13 03:18:35 2022
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
--{entity {\Register\} architecture {\Register\}}

library IEEE;
use IEEE.std_logic_1164.all;

entity \Register\ is
	generic(n:integer :=16);
	 port(
		 CLK : in STD_LOGIC;
		 Rst : in STD_LOGIC;
		 Datain : in STD_LOGIC_VECTOR(n-1 downto 0);
		 Dataout : out STD_LOGIC_VECTOR(n-1 downto 0)
	     );
end \Register\;

--}} End of automatically maintained section

architecture \Register\ of \Register\ is
begin

process(CLK,Rst)
begin
if Rst='1' then Dataout<=(others=>'Z');
elsif Rst='0' and rising_edge(CLK) then Dataout	<= Datain;
end if;	
end process;
end \Register\;
