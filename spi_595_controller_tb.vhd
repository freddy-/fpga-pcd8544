--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:57:34 10/06/2018
-- Design Name:   
-- Module Name:   F:/DEV/FPGA/projetos/PCD8544/spi_595_controller_tb.vhd
-- Project Name:  PCD8544
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: spi_595
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY spi_595_controller_tb IS
END spi_595_controller_tb;
 
ARCHITECTURE behavior OF spi_595_controller_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT spi_595
    PORT(
         i_CLK : IN  std_logic;
         i_SEND : IN  std_logic;
         i_DATA : IN  std_logic_vector(7 downto 0);
         o_SPI_CLK : OUT  std_logic;
         o_SPI_DATA : OUT  std_logic;
         o_SPI_LATCH : OUT  std_logic;
         o_DEBUG_SPI_FINISHED : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i_CLK : std_logic := '0';
   signal i_SEND : std_logic := '0';
   signal i_DATA : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal o_SPI_CLK : std_logic;
   signal o_SPI_DATA : std_logic;
   signal o_SPI_LATCH : std_logic;
   signal o_DEBUG_SPI_FINISHED : std_logic;

   -- Clock period definitions
   constant i_CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: spi_595 PORT MAP (
          i_CLK => i_CLK,
          i_SEND => i_SEND,
          i_DATA => i_DATA,
          o_SPI_CLK => o_SPI_CLK,
          o_SPI_DATA => o_SPI_DATA,
          o_SPI_LATCH => o_SPI_LATCH,
          o_DEBUG_SPI_FINISHED => o_DEBUG_SPI_FINISHED
        );

   -- Clock process definitions
   i_CLK_process :process
   begin
		i_CLK <= '0';
		wait for i_CLK_period/2;
		i_CLK <= '1';
		wait for i_CLK_period/2;
   end process;
  

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;  

      i_DATA <= "00000001";
      i_SEND <= '1';
      wait for i_CLK_period;  
      i_SEND <= '0';

      wait for 2 us; 

      i_DATA <= "00000010";
      i_SEND <= '1';
      wait for i_CLK_period;  
      i_SEND <= '0';


      wait;
   end process;

END;
