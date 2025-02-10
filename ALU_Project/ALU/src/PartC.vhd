-------------------------------------------------------------------------------
--
-- Title       : PartC
-- Design      : ALU
-- Author      : Mohamed Khattab
-- Company     : Egyptian Chinese University
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\ALU_MOHAMED_TAHA_192000280\ALU\src\PartC.vhd
-- Generated   : Sun Mar  6 18:55:16 2022
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
--{entity {PartC} architecture {PartC}}

library IEEE;
use IEEE.std_logic_1164.all;

entity PartC is
	generic(
	 n:Integer :=16
	);
	 port(
	     A : in STD_LOGIC_VECTOR(n-1 downto 0);
	     CIN :in STd_logic;
		 S : in STD_LOGIC_VECTOR(1 downto 0);
		 F : out STD_LOGIC_VECTOR(n-1 downto 0)
	     );
end PartC;

--}} End of automatically maintained section

architecture PartC of PartC is
begin

F <= '0' & A(n-1 downto 1) when S ="00" else
    A(0) & A(n-1 downto 1) when S ="01" else
     CIN & A(n-1 downto 1) when S ="10" else
   A(n-1) & A(n-1 downto 1) when S="11";

end PartC;
