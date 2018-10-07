--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:27:06 10/06/2018
-- Design Name:   
-- Module Name:   F:/DEV/FPGA/projetos/PCD8544/up_down_counter_tb.vhd
-- Project Name:  PCD8544
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: up_down_counter
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
 
ENTITY up_down_counter_tb IS
END up_down_counter_tb;
 
ARCHITECTURE behavior OF up_down_counter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT up_down_counter
      generic(
    g_OUTPUT_WIDTH : in positive
  );
    PORT(
         i_CLK : IN  std_logic;
         i_UP : IN  std_logic;
         i_DOWN : IN  std_logic;
         o_VALUE : OUT  std_logic_vector(7 downto 0);
         o_NEW_VALUE : OUT  std_logic
        );
    END COMPONENT;    

   --Inputs
   signal i_CLK : std_logic := '0';
   signal i_UP : std_logic := '0';
   signal i_DOWN : std_logic := '0';

 	--Outputs
   signal o_VALUE : std_logic_vector(7 downto 0);
   signal o_NEW_VALUE : std_logic;

   -- Clock period definitions
   constant i_CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: up_down_counter
   GENERIC MAP (
     g_OUTPUT_WIDTH => 8
   )
   PORT MAP (
          i_CLK => i_CLK,
          i_UP => i_UP,
          i_DOWN => i_DOWN,
          o_VALUE => o_VALUE,
          o_NEW_VALUE => o_NEW_VALUE
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

      i_UP <= '1';
      wait for 100 ns;  
      i_UP <= '0';
      wait for 200 ns;  

      i_UP <= '1';
      wait for 100 ns;  
      i_UP <= '0';
      wait for 200 ns;  

      i_UP <= '1';
      wait for 100 ns;  
      i_UP <= '0';
      wait for 200 ns;  

      i_DOWN <= '1';
      wait for 100 ns;  
      i_DOWN <= '0';
      wait for 200 ns;  

      i_DOWN <= '1';
      wait for 100 ns;  
      i_DOWN <= '0';
      wait for 200 ns;  

      wait for i_CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
