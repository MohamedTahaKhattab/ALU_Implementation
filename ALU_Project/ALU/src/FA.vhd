-------------------------------------------------------------------------------
--
-- Title       : FA
-- Design      : MOHAMED TAHA
-- Author      : Mohamed Khattab
-- Company     : Egyptian Chinese University
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\ALU_MOHAMED_TAHA\MOHAMED TAHA\src\FA.vhd
-- Generated   : Thu Mar  3 17:50:35 2022
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
--{entity {FA} architecture {FA}}

library IEEE;
use IEEE.std_logic_1164.all;

entity FA is
	 port(
		 A : in STD_LOGIC;
		 B : in STD_LOGIC;
		 CIN : in STD_LOGIC;
		 S : out STD_LOGIC;
		 COUT : out STD_LOGIC
	     );
end FA;

--}} End of automatically maintained section

architecture FA of FA is
begin

	-- enter your statements here --
	S <= A Xor B Xor CIN;
	COUT <= ((A xor B) and CIN) or (A and B);

end FA;
