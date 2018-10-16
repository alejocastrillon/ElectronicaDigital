--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:18:51 10/04/2017
-- Design Name:   
-- Module Name:   /home/alejandro/Documentos/Laboratorio de Electronica/Combinacion/tbCombinacion.vhd
-- Project Name:  Combinacion
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Combinacion
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
 
ENTITY tbCombinacion IS
END tbCombinacion;
 
ARCHITECTURE behavior OF tbCombinacion IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Combinacion
    PORT(
         A4 : IN  std_logic;
         A3 : IN  std_logic;
         A2 : IN  std_logic;
         A1 : IN  std_logic;
         Z2 : OUT  std_logic;
         Z1 : OUT  std_logic;
         Z0 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A4 : std_logic := '0';
   signal A3 : std_logic := '0';
   signal A2 : std_logic := '0';
   signal A1 : std_logic := '0';

 	--Outputs
   signal Z2 : std_logic;
   signal Z1 : std_logic;
   signal Z0 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Combinacion PORT MAP (
          A4 => A4,
          A3 => A3,
          A2 => A2,
          A1 => A1,
          Z2 => Z2,
          Z1 => Z1,
          Z0 => Z0
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		A4 <= '0';
		A3 <= '0';
		A2 <= '0';
		A1 <= '0';
      wait for 20 ns;	
		A4 <= '0';
		A3 <= '0';
		A2 <= '0';
		A1 <= '1';
      wait for 20 ns;
		A4 <= '0';
		A3 <= '0';
		A2 <= '1';
		A1 <= '0';
      wait for 20 ns;
		A4 <= '0';
		A3 <= '0';
		A2 <= '1';
		A1 <= '1';
      wait for 20 ns;
		A4 <= '0';
		A3 <= '1';
		A2 <= '0';
		A1 <= '0';
      wait for 20 ns;
		A4 <= '0';
		A3 <= '1';
		A2 <= '0';
		A1 <= '1';
      wait for 20 ns;
		A4 <= '0';
		A3 <= '1';
		A2 <= '1';
		A1 <= '0';
      wait for 20 ns;
		A4 <= '0';
		A3 <= '1';
		A2 <= '1';
		A1 <= '1';
      wait for 20 ns;
		A4 <= '1';
		A3 <= '0';
		A2 <= '0';
		A1 <= '0';
      wait for 20 ns;
		A4 <= '1';
		A3 <= '0';
		A2 <= '0';
		A1 <= '1';
      wait for 20 ns;
		A4 <= '1';
		A3 <= '0';
		A2 <= '1';
		A1 <= '0';
      wait for 20 ns;
		A4 <= '1';
		A3 <= '0';
		A2 <= '1';
		A1 <= '1';
      wait for 20 ns;
		A4 <= '1';
		A3 <= '1';
		A2 <= '0';
		A1 <= '0';
      wait for 20 ns;
		A4 <= '1';
		A3 <= '1';
		A2 <= '0';
		A1 <= '1';
      wait for 20 ns;
		A4 <= '1';
		A3 <= '1';
		A2 <= '1';
		A1 <= '0';
      wait for 20 ns;
		A4 <= '1';
		A3 <= '1';
		A2 <= '1';
		A1 <= '1';
      wait for 20 ns;
      -- insert stimulus here 

      wait;
   end process;

END;
