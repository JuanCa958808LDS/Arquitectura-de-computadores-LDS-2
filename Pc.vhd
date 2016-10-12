----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:30:42 10/03/2016 
-- Design Name: 
-- Module Name:    Pc - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.All;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Pc is
    Port ( direccion : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           direccionsalida : out  STD_LOGIC_VECTOR (31 downto 0));
end Pc;

architecture Behavioral of Pc is


begin
process(CLK,RST,direccion)
begin
	if(rising_edge(CLK))then
			if RST='1' then
			direccionsalida<=x"00000000";
		else
		direccionsalida <=direccion;		
		end if;
	end if;
end process;


end Behavioral;

