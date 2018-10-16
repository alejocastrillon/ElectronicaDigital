--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:22:36 12/06/2017
-- Design Name:   
-- Module Name:   /home/alejandro/Documentos/Laboratorio de Electronica/ALU/ALUTB.vhd
-- Project Name:  ALU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY ALUTB IS
END ALUTB;
 
ARCHITECTURE behavior OF ALUTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         Sc2 : IN  std_logic;
         Sc1 : IN  std_logic;
         Sc0 : IN  std_logic;
         Cout : OUT  std_logic;
         S : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal Sc2 : std_logic := '0';
   signal Sc1 : std_logic := '0';
   signal Sc0 : std_logic := '0';

 	--Outputs
   signal Cout : std_logic;
   signal S : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          A => A,
          B => B,
          Sc2 => Sc2,
          Sc1 => Sc1,
          Sc0 => Sc0,
          Cout => Cout,
          S => S
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      A <= "00110100";
		B <= "00101100";
		Sc2 <= '0';
		Sc1 <= '0';
      Sc0 <= '0';
		
      wait for 20 ns;
		
		A <= "00111100";
		B <= "00100100";
		Sc2 <= '0';
		Sc1 <= '0';
      Sc0 <= '1';
		
      wait for 20 ns;
		
		A <= "00010100";
		B <= "00101100";
		Sc2 <= '0';
		Sc1 <= '1';
      Sc0 <= '0';
		
      wait for 20 ns;
		
		A <= "00101100";
		B <= "00010100";
		Sc2 <= '0';
		Sc1 <= '1';
      Sc0 <= '0';
		
      wait for 20 ns;
		
		A <= "00110100";
		B <= "00101100";
		Sc2 <= '0';
		Sc1 <= '1';
      Sc0 <= '1';
		
      wait for 20 ns;
		
		A <= "00110100";
		B <= "00101100";
		Sc2 <= '1';
		Sc1 <= '0';
      Sc0 <= '0';
		
      wait for 20 ns;
		
		A <= "00110100";
		B <= "00101100";
		Sc2 <= '1';
		Sc1 <= '0';
      Sc0 <= '1';
		
      wait for 20 ns;
		
		A <= "00110100";
		B <= "00101100";
		Sc2 <= '1';
		Sc1 <= '1';
      Sc0 <= '0';
		
      wait for 20 ns;
		
		A <= "00110100";
		B <= "00101100";
		Sc2 <= '1';
		Sc1 <= '1';
      Sc0 <= '1';
		
      wait for 20 ns;


      wait;
   end process;

END;
