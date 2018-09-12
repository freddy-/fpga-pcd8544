--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:06:40 09/10/2018
-- Design Name:   
-- Module Name:   F:/DEV/FPGA/projetos/SPI_MASTER/spi_tb.vhd
-- Project Name:  SPI_MASTER
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: spi
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
 
ENTITY spi_tb IS
END spi_tb;
 
ARCHITECTURE behavior OF spi_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT spi
    PORT(
         i_CLK : IN  std_logic;
         i_DATA : IN  std_logic_vector(7 downto 0);
         i_START : IN  std_logic;
         o_SPI_CLK : OUT  std_logic;
         o_DATA : OUT  std_logic;
         o_FINISHED : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i_CLK : std_logic := '0';
   signal i_DATA : std_logic_vector(7 downto 0) := "11110001";
   signal i_START : std_logic := '0';

 	--Outputs
   signal o_SPI_CLK : std_logic;
   signal o_DATA : std_logic;
   signal o_FINISHED : std_logic;

   -- Clock period definitions
   constant i_CLK_period : time := 10 ns;
   constant o_SPI_CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: spi PORT MAP (
          i_CLK => i_CLK,
          i_DATA => i_DATA,
          i_START => i_START,
          o_SPI_CLK => o_SPI_CLK,
          o_DATA => o_DATA,
          o_FINISHED => o_FINISHED
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
      wait for 1 us;	
      i_START <= '1';

      wait for 10 ns;
      i_START <= '0';


      wait for 5 us;  
      i_DATA <= "11001101";
      i_START <= '1';

      wait for 10 ns;
      i_START <= '0';


      wait;
   end process;

END;
