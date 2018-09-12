----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:36:35 09/04/2018 
-- Design Name: 
-- Module Name:    main - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main is
	port(
		CLK: in std_logic; -- 29.498MHZ
		button: in std_logic_vector(1 downto 0);
		LED_VERDE: out std_logic := '1';
		LED_LARANJA: out std_logic := '1';
		
		LCD_CLK: out std_logic := '0';
		LCD_MOSI: out std_logic := '0';
		LCD_CS: out std_logic := '0';
		LCD_DC: out std_logic := '0';
		LCD_RESET: out std_logic := '1';
		LCD_BACKLIGHT: out std_logic := '0' -- pwm
	);
end main;

architecture Behavioral of main is

begin
	LED_VERDE <= button(0);
	LED_LARANJA <= button(1);


	-- TODO criar módulo do spi básico
	-- usar um divisor de clock pra aproximadamente 2MHz

	-- entradas do módulo SPI:
	-- CLK
	-- DATA std_logic_vector(7 downto 0)
	-- START
	-- RESET 

	-- saidas:
	-- CLK
	-- DATA_OUT std_logic
	-- FINISH



end Behavioral;

