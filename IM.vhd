----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:44:56 10/03/2016 
-- Design Name: 
-- Module Name:    IM - Behavioral 
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
use std.textio.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IM is
    Port ( direccion : in  STD_LOGIC_VECTOR (6 downto 0);
           instruccionmemory : out  STD_LOGIC_VECTOR (31 downto 0));
end IM;

architecture Arq_Instruccion_Memory of Instruccion_Memory is

type Memory_instruccion is array (0 to 127) of std_logic_vector (31 downto 0);
signal Memory_ROM : Memory_instruccion := (X"00000000",X"00000000", X"00000000",X"20840006",X"2085FFFF",X"2086FFFF",X"8D080000",X"10A00003",X"01044020",X"20A5FFFF",X"08000007",X"21040000",X"20C6FFFF",X"20C50000",X"10C00003",X"08000006",X"20890000",X"00000000",X"08000011", others => x"00000000");


begin

instruccion_memory <= Memory_ROM(Conv_integer(direccion));

end Arq_Instruccion_Memory;





