----------------------------------------------------------------------------------
-- Company: INTEC
-- Engineer: Ian Gabriel Cañas Fernández
-- 
-- Create Date: 05/05/2021 11:52:15 PM
-- Design Name: Hola Mundo
-- Module Name: Hola Mundo - Behavioral
-- Project Name: Laboratiorios1092228
-- Target Devices: Nexys A7
-- Tool Versions: n/a
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity HolaMundo is
    Port (  entrada1 : in STD_LOGIC;
            entrada2 : in STD_LOGIC;
            salida : out STD_LOGIC);
end HolaMundo;

architecture Behavioral of HolaMundo is
begin

salida <= entrada1 or entrada2;

end Behavioral;