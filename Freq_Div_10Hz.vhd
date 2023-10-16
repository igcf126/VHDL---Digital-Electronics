-- Código que genera una salida de 10 Hz
-- con una entrada de reloj de 100 MHz
-- 
-- Entradas:
-- 		clk_in: entrada de reloj de 100 MHz
-- 
-- Salidas:
-- 		clk_out: salida de reloj de 10 Hz
-- 

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity clock_10Hz is
    port (
        clk_in: 	in STD_LOGIC;
        clk_out:	out STD_LOGIC
    );
end clock_10Hz;

architecture rtl of clock_10Hz is
	constant MAX_COUNT: INTEGER := 4999999;
	signal count: INTEGER range 0 to MAX_COUNT;
	signal clk_state: STD_LOGIC := '0';
	
begin
	gen_clock: process(clk_in)
	begin
		if clk_in'event and clk_in = '1' then
			if count < MAX_COUNT then 
				count <= count + 1;
			else
				clk_state <= not clk_state;
				count <= 0;
			end if;
		end if;
	end process;
	
	permillisecond: process (clk_state)
	begin
		clk_out <= clk_state;
	end process;
end rtl;
