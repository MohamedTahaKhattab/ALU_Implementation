-------------------------------------------------------------------------------
--
-- Title       : ALU
-- Design      : MOHAMED TAHA
-- Author      : Mohamed Khattab
-- Company     : Egyptian Chinese University
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\ALU_MOHAMED_TAHA\MOHAMED TAHA\src\ALU.vhd
-- Generated   : Mon Feb 28 11:30:28 2022
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
--{entity {ALU} architecture {ALU}}

library IEEE;
use IEEE.std_logic_1164.all;

entity PartB is	 
	generic(
	 n:Integer :=16
	);
	 port(
		
		 A : in STD_LOGIC_VECTOR(n-1 downto 0);
		 B : in STD_LOGIC_VECTOR(n-1 downto 0);
		 S : in STD_LOGIC_VECTOR(1 downto 0);
		 F : out STD_LOGIC_VECTOR(n-1 downto 0)
	     );
end PartB;

--}} End of automatically maintained section

architecture PartB_model of PartB is
begin

	-- enter your statements here -- 
F <= (A and B) when S = "00" else	
           (A or B) when S = "01" else
           (A xor B) when S = "10" else
	       (not A) when S = "11" ;
	

end PartB_model;
