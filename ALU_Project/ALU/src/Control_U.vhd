-------------------------------------------------------------------------------
--
-- Title       : Control_U
-- Design      : ALU
-- Author      : Mohamed Khattab
-- Company     : The Egyptian Chinese University
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\MOHAMED_TAHA_SALAH_192000280\ALU\src\Control_U.vhd
-- Generated   : Fri May 13 05:55:04 2022
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
--{entity {Control_U} architecture {Control_U}}

library IEEE;
use IEEE.std_logic_1164.all;

entity Control_U is
	 port(
		 MR : out STD_LOGIC;
		 MW : out STD_LOGIC;
		 OPcode : in STD_LOGIC_VECTOR(15 downto 12)
	     );
end Control_U;

--}} End of automatically maintained section

architecture Control_U of Control_U is
begin

MR <='1' when OPcode="0000" else '0';
MW <='1' when OPcode="0001" else '0';

end Control_U;
