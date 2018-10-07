----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:20:01 09/29/2018 
-- Design Name: 
-- Module Name:    spi_595 - Behavioral 
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

entity spi_595 is
    Port ( i_CLK : in  STD_LOGIC;
           i_SEND : in  STD_LOGIC; -- sinal com duração de um ciclio de clk
           i_DATA : in  STD_LOGIC_VECTOR (7 downto 0);

           o_SPI_CLK : out  STD_LOGIC;
           o_SPI_DATA : out  STD_LOGIC;
           o_SPI_LATCH : out  STD_LOGIC;
           o_DEBUG_SPI_FINISHED : out STD_LOGIC);
end spi_595;

architecture Behavioral of spi_595 is
	type t_STATE is (s_IDLE, s_SENDING, s_LATCH_DOWN);
	signal r_FSM_STATE : t_STATE := s_IDLE;
	signal r_spi_start_send : STD_LOGIC := '0';
	signal r_spi_finished : STD_LOGIC := '0';
begin

	spi_master : entity work.spi
	PORT MAP(
		i_CLK => i_CLK,
        i_DATA => i_DATA,
        i_START => r_spi_start_send,

        o_SPI_CLK => o_SPI_CLK,
        o_DATA => o_SPI_DATA,
        o_FINISHED => r_spi_finished
	);

	o_DEBUG_SPI_FINISHED <= r_spi_finished;

	process (i_CLK)
	begin
		if (rising_edge(i_CLK)) then
			case r_FSM_STATE is
				when s_IDLE =>
					if (i_SEND = '1') then 
						r_spi_start_send <= '1';
						r_FSM_STATE <= s_LATCH_DOWN;
					else
						r_FSM_STATE <= s_IDLE;
						o_SPI_LATCH <= '1';
					end if ;

				when s_LATCH_DOWN =>
					-- foi necessário inserir um 'delay' de um ciclo de clock para que o modulo SPI comece a enviar os dados
					r_spi_start_send <= '0';
					o_SPI_LATCH <= '0';
					r_FSM_STATE <= s_SENDING;

				when s_SENDING =>
					if (r_spi_finished = '1') then 
						r_FSM_STATE <= s_IDLE;
					else 
						r_FSM_STATE <= s_SENDING;
					end if ;

			end case;
		end if ;
	end process;
	--TODO criar um módulo para encapsular o funcionamento do 595
	--este modulo deverá receber clk, i_SEND
	--deverá ter como saida spi_clk, mosi, cs(latch), 
	--funcionamento, criar uma FSM
	--quando i_SEND deverá colocar cs em low
	--aguardar um clk do spi (usar uma nova instancia do divisor de clk do spi)
	--enviar os dados
	--aguardar um clk do spi
	--colocar cs em high



end Behavioral;

