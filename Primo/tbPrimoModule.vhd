--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:56:16 09/26/2017
-- Design Name:   
-- Module Name:   /home/alejandro/Documentos/Laboratorio de Electronica/Primo/tbPrimoModule.vhd
-- Project Name:  Primo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PrimoModule
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
 
ENTITY tbPrimoModule IS
END tbPrimoModule;
 
ARCHITECTURE behavior OF tbPrimoModule IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PrimoModule
    PORT(
         a1 : IN  std_logic;
         a2 : IN  std_logic;
         a3 : IN  std_logic;
         a4 : IN  std_logic;
         b : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a1 : std_logic := '0';
   signal a2 : std_logic := '0';
   signal a3 : std_logic := '0';
   signal a4 : std_logic := '0';

 	--Outputs
   signal b : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PrimoModule PORT MAP (
          a1 => a1,
          a2 => a2,
          a3 => a3,
          a4 => a4,
          b => b
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
		a4 <= '0';
		a3 <= '0';
		a2 <= '0';
		a1 <= '0';
      -- hold reset state for 100 ns.
      wait for 100 ns;
		a4 <= '1';
		a3 <= '0';
		a2 <= '0';
		a1 <= '0';
      -- hold reset state for 100 ns.
      wait for 100 ns;
		a4 <= '0';
		a3 <= '1';
		a2 <= '0';
		a1 <= '0';
      -- hold reset state for 100 ns.
      wait for 100 ns;
		a4 <= '1';
		a3 <= '1';
		a2 <= '0';
		a1 <= '0';
      -- hold reset state for 100 ns.
      wait for 100 ns;
		a4 <= '0';
		a3 <= '0';
		a2 <= '1';
		a1 <= '0';
      -- hold reset state for 100 ns.
      wait for 100 ns;
		a4 <= '1';
		a3 <= '0';
		a2 <= '1';
		a1 <= '0';
      -- hold reset state for 100 ns.
      wait for 100 ns;
		a4 <= '0';
		a3 <= '1';
		a2 <= '1';
		a1 <= '0';
      -- hold reset state for 100 ns.
      wait for 100 ns;
		a4 <= '1';
		a3 <= '1';
		a2 <= '1';
		a1 <= '0';
      -- hold reset state for 100 ns.
      wait for 100 ns;
		a4 <= '0';
		a3 <= '0';
		a2 <= '0';
		a1 <= '1';
      -- hold reset state for 100 ns.
      wait for 100 ns;
		a4 <= '1';
		a3 <= '0';
		a2 <= '0';
		a1 <= '1';
      -- hold reset state for 100 ns.
      wait for 100 ns;
		a4 <= '0';
		a3 <= '1';
		a2 <= '0';
		a1 <= '1';
      -- hold reset state for 100 ns.
      wait for 100 ns;
		a4 <= '1';
		a3 <= '1';
		a2 <= '0';
		a1 <= '1';
      -- hold reset state for 100 ns.
      wait for 100 ns;
		a4 <= '0';
		a3 <= '0';
		a2 <= '1';
		a1 <= '1';
      -- hold reset state for 100 ns.
      wait for 100 ns;
		a4 <= '1';
		a3 <= '0';
		a2 <= '1';
		a1 <= '1';
      -- hold reset state for 100 ns.
      wait for 100 ns;
		a4 <= '0';
		a3 <= '1';
		a2 <= '1';
		a1 <= '1';
      -- hold reset state for 100 ns.
      wait for 100 ns;
		a4 <= '1';
		a3 <= '1';
		a2 <= '1';
		a1 <= '1';
      -- hold reset state for 100 ns.
      wait for 100 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
