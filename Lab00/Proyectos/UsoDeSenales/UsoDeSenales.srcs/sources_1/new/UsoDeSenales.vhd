----------------------------------------------------------------------------------
-- Company: INTEC
-- Engineer: Ian Gabriel Cañas Fernández - 1092228
-- 
-- Create Date: 05/07/2021 08:17:17 PM
-- Design Name: 
-- Module Name: UsoDeSenales - Behavioral
-- Project Name: Uso de señales
-- Target Devices: XC7A100TCSG324-1
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity UsoDeSenales is
  Port (    a: in STD_LOGIC;
            b: in STD_LOGIC;
            f: out STD_LOGIC); 
end UsoDeSenales;

architecture Behavioral of UsoDeSenales is            
signal auxiliar1 : std_logic; 

begin

auxiliar1 <= a or b;
f <= auxiliar1 and b;

end Behavioral;
