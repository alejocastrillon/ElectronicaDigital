--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:36:45 09/25/2017
-- Design Name:   
-- Module Name:   /home/alejandro/Documentos/Laboratorio de Electronica/projectAnd/tbprojectAnd.vhd
-- Project Name:  projectAnd
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: andModule
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
 
ENTITY tbprojectAnd IS
END tbprojectAnd;
 
ARCHITECTURE behavior OF tbprojectAnd IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT andModule
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';

 	--Outputs
   signal c : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: andModule PORT MAP (
          a => a,
          b => b,
          c => c
        );

   -- Stimulus process
   stim_proc: process
   begin		
		a <= '0';
		b <= '0';
      wait for 100 ns;	
		a <= '1';
		b <= '0';
      wait for 100 ns;	
		a <= '0';
		b <= '1';
      wait for 100 ns;	
		a <= '1';
		b <= '1';
      wait for 100 ns;	
   end process;

END;
