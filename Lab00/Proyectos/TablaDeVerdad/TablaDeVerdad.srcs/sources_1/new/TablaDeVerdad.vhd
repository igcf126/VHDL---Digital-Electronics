----------------------------------------------------------------------------------
-- Company: INTEC
-- Engineer: Ian Gabriel Cañas Fernández - 1092229
-- 
-- Create Date: 05/07/2021 09:09:11 PM
-- Design Name: Tabla de verdad
-- Module Name: TablaDeVerdad - Behavioral
-- Project Name: Tabla de verdad
-- Target Devices: 
-- Tool Versions: 
-- Description: 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity TablaDeVerdad is
  Port (    A: in STD_LOGIC_VECTOR(1 DOWNTO 0);
            F: out STD_LOGIC);
end TablaDeVerdad;

architecture Behavioral of TablaDeVerdad is
begin

    with A select
        F <=    '1' when "00",
                '0' when "01",
                '1' when "10",
                '1' when others;

end Behavioral;
