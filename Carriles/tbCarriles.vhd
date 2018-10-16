--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:35:03 10/23/2017
-- Design Name:   
-- Module Name:   /home/alejandro/Documentos/Laboratorio de Electronica/Carriles/tbCarriles.vhd
-- Project Name:  Carriles
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Carriles
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
 
ENTITY tbCarriles IS
END tbCarriles;
 
ARCHITECTURE behavior OF tbCarriles IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Carriles
    PORT(
         S1 : IN  std_logic;
         S2 : IN  std_logic;
         S3 : IN  std_logic;
         S4 : IN  std_logic;
         S5 : IN  std_logic;
         D0 : OUT  std_logic;
         D1 : OUT  std_logic;
         D2 : OUT  std_logic;
         D3 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal S1 : std_logic := '0';
   signal S2 : std_logic := '0';
   signal S3 : std_logic := '0';
   signal S4 : std_logic := '0';
   signal S5 : std_logic := '0';

 	--Outputs
   signal D0 : std_logic;
   signal D1 : std_logic;
   signal D2 : std_logic;
   signal D3 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Carriles PORT MAP (
          S1 => S1,
          S2 => S2,
          S3 => S3,
          S4 => S4,
          S5 => S5,
          D0 => D0,
          D1 => D1,
          D2 => D2,
          D3 => D3
        );
		  
   -- Stimulus process
   stim_proc: process
   begin	
		S1 <= '0';
		S2 <= '0';
		S3 <= '0';
		S4 <= '0';
		S5 <= '0';
      wait for 20 ns;
		S1 <= '0';
		S2 <= '0';
		S3 <= '0';
		S4 <= '0';
		S5 <= '1';
      wait for 20 ns;
		S1 <= '0';
		S2 <= '0';
		S3 <= '0';
		S4 <= '1';
		S5 <= '0';
      wait for 20 ns;
		S1 <= '0';
		S2 <= '0';
		S3 <= '0';
		S4 <= '1';
		S5 <= '1';
      wait for 20 ns;
		S1 <= '0';
		S2 <= '0';
		S3 <= '1';
		S4 <= '0';
		S5 <= '0';
      wait for 20 ns;
		S1 <= '0';
		S2 <= '0';
		S3 <= '1';
		S4 <= '0';
		S5 <= '1';
      wait for 20 ns;
		S1 <= '0';
		S2 <= '0';
		S3 <= '1';
		S4 <= '1';
		S5 <= '0';
      wait for 20 ns;
		S1 <= '0';
		S2 <= '0';
		S3 <= '1';
		S4 <= '1';
		S5 <= '1';
      wait for 20 ns;
		S1 <= '0';
		S2 <= '1';
		S3 <= '0';
		S4 <= '0';
		S5 <= '0';
      wait for 20 ns;
		S1 <= '0';
		S2 <= '1';
		S3 <= '0';
		S4 <= '0';
		S5 <= '1';
      wait for 20 ns;
		S1 <= '0';
		S2 <= '1';
		S3 <= '0';
		S4 <= '1';
		S5 <= '0';
      wait for 20 ns;
		S1 <= '0';
		S2 <= '1';
		S3 <= '0';
		S4 <= '1';
		S5 <= '1';
      wait for 20 ns;
		S1 <= '0';
		S2 <= '1';
		S3 <= '1';
		S4 <= '0';
		S5 <= '0';
      wait for 20 ns;
		S1 <= '0';
		S2 <= '1';
		S3 <= '1';
		S4 <= '0';
		S5 <= '1';
      wait for 20 ns;
		S1 <= '0';
		S2 <= '1';
		S3 <= '1';
		S4 <= '1';
		S5 <= '0';
      wait for 20 ns;
		S1 <= '0';
		S2 <= '1';
		S3 <= '1';
		S4 <= '1';
		S5 <= '1';
      wait for 20 ns;
		S1 <= '1';
		S2 <= '0';
		S3 <= '0';
		S4 <= '0';
		S5 <= '0';
      wait for 20 ns;
		S1 <= '1';
		S2 <= '0';
		S3 <= '0';
		S4 <= '0';
		S5 <= '1';
      wait for 20 ns;
		S1 <= '1';
		S2 <= '0';
		S3 <= '0';
		S4 <= '1';
		S5 <= '0';
      wait for 20 ns;
		S1 <= '1';
		S2 <= '0';
		S3 <= '0';
		S4 <= '1';
		S5 <= '1';
      wait for 20 ns;
		S1 <= '1';
		S2 <= '0';
		S3 <= '1';
		S4 <= '0';
		S5 <= '0';
      wait for 20 ns;
		S1 <= '1';
		S2 <= '0';
		S3 <= '1';
		S4 <= '0';
		S5 <= '1';
      wait for 20 ns;
		S1 <= '1';
		S2 <= '0';
		S3 <= '1';
		S4 <= '1';
		S5 <= '0';
      wait for 20 ns;
		S1 <= '1';
		S2 <= '0';
		S3 <= '1';
		S4 <= '1';
		S5 <= '1';
      wait for 20 ns;
		S1 <= '1';
		S2 <= '1';
		S3 <= '0';
		S4 <= '0';
		S5 <= '0';
      wait for 20 ns;
		S1 <= '1';
		S2 <= '1';
		S3 <= '0';
		S4 <= '0';
		S5 <= '1';
      wait for 20 ns;
		S1 <= '1';
		S2 <= '1';
		S3 <= '0';
		S4 <= '1';
		S5 <= '0';
      wait for 20 ns;
		S1 <= '1';
		S2 <= '1';
		S3 <= '0';
		S4 <= '1';
		S5 <= '1';
      wait for 20 ns;
		S1 <= '1';
		S2 <= '1';
		S3 <= '1';
		S4 <= '0';
		S5 <= '0';
      wait for 20 ns;
		S1 <= '1';
		S2 <= '1';
		S3 <= '1';
		S4 <= '0';
		S5 <= '1';
      wait for 20 ns;
		S1 <= '1';
		S2 <= '1';
		S3 <= '1';
		S4 <= '1';
		S5 <= '0';
      wait for 20 ns;
		S1 <= '1';
		S2 <= '1';
		S3 <= '1';
		S4 <= '1';
		S5 <= '1';
      wait for 20 ns;
		wait;
   end process;

END;
