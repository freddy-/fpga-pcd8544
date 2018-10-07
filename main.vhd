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
		i_CLK: in std_logic; -- 29.498MHZ
		i_button: in std_logic_vector(1 downto 0);
		o_LED_VERDE: out std_logic := '1';
		o_LED_LARANJA: out std_logic := '1';
		
		o_LCD_CLK: out std_logic := '0';
		o_LCD_MOSI: out std_logic := '0';
		o_LCD_CS: out std_logic := '0';
		o_LCD_DC: out std_logic := '0';
		o_LCD_RESET: out std_logic := '1';
		o_LCD_BACKLIGHT: out std_logic := '0' -- pwm
	);
end main;

architecture Behavioral of main is
	signal r_slowClk: std_logic := '0';
	signal w_buttonUp: std_logic := '1';
	signal w_buttonDown: std_logic := '1';
	signal r_counter: std_logic_vector(7 downto 0) := (others => '0');
	signal r_new_counter_val: std_logic := '0';
begin
	o_LED_VERDE <= i_button(0);
	o_LED_LARANJA <= i_button(1);

	--TODO descrever um sistema que aceitará a entrada de 2 botões para incrementar e decrementar um contador 8 bits
	--TODO o valor do contador deverá ser enviado por SPI ao registrador de deslocamento toda vez que houver uma ação dos botões
	--TODO usar os módulos já criados de debouncer e counter

	-- Controle dos botões
	clkDiv_inst: entity work.clkDiv
	PORT MAP(
		i_clk => i_CLK,
		o_slowClk => r_slowClk
	);

	debouncer_up_ins: entity work.debouncer
	PORT MAP(
		i_clk => r_slowClk,
		i_raw => i_button(0),
		o_clean => w_buttonUp
	);

	debouncer_down_ins: entity work.debouncer
	PORT MAP(
		i_clk => r_slowClk,
		i_raw => i_button(1),
		o_clean => w_buttonDown
	);


	-- Processo para incrementar e decrementar
	up_down_inst : entity work.up_down_counter
	GENERIC MAP (
		g_OUTPUT_WIDTH => 8
	)
	PORT MAP (
		i_CLK => i_CLK,
		i_UP => w_buttonUp,
		i_DOWN => w_buttonDown,
		o_VALUE => r_counter,
		o_NEW_VALUE => r_new_counter_val
	);
	
	spi_595_controller : entity work.spi_595
	PORT MAP (
		i_CLK => i_CLK,
		i_SEND => r_new_counter_val,
		i_DATA => r_counter,

        o_SPI_CLK => o_LCD_CLK,
        o_SPI_DATA => o_LCD_MOSI,
        o_SPI_LATCH => o_LCD_CS
	);


	-- fluxo display:
	-- criar uma FSM para executar os seguintes passos
	-- ao iniciar deverá manter reset em nivel baixo por 2ms

--	spi_master : entity work.spi
--	PORT MAP(
--		i_CLK => i_CLK,
--        i_DATA => r_counter,
--        i_START => r_new_counter_val,
--
--        o_SPI_CLK => o_LCD_CLK,
--        o_DATA => o_LCD_MOSI
--	);

end Behavioral;

