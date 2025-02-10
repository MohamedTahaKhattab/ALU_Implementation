-------------------------------------------------------------------------------
--
-- Title       : PartD
-- Design      : ALU
-- Author      : Mohamed Khattab
-- Company     : Egyptian Chinese University
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\ALU_MOHAMED_TAHA_192000280\ALU\src\PartD.vhd
-- Generated   : Sun Mar  6 20:52:22 2022
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
--{entity {PartD} architecture {PartD}}

library IEEE;
use IEEE.std_logic_1164.all;

entity PartD is	
	generic(
	 n:Integer :=16
	);
	 port(
		 CIN : in STD_LOGIC;
		 A : in STD_LOGIC_VECTOR(n-1 downto 0);
		 S : in STD_LOGIC_VECTOR(1 downto 0);
		 F : out STD_LOGIC_VECTOR(n-1 downto 0)
	     );
end PartD;

--}} End of automatically maintained section

architecture PartD of PartD is
begin

	 F <= A(14 downto 0) & '0' when S ="00" else
          A(14 downto 0) & A(n-1) when S ="01" else
	      A(14 downto 0) & CIN when S ="10" else
		  x"0000" when S ="11" ;


end PartD;
