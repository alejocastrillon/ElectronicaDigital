--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:48:57 12/06/2017
-- Design Name:   
-- Module Name:   /home/alejandro/Documentos/Laboratorio de Electronica/ALU/Sumador8bitsTB.vhd
-- Project Name:  ALU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Sumador8bits
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
 
ENTITY Sumador8bitsTB IS
END Sumador8bitsTB;
 
ARCHITECTURE behavior OF Sumador8bitsTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Sumador8bits
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         S : OUT  std_logic_vector(7 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal S : std_logic_vector(7 downto 0);
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
	signal e,f,g,h,i,j,k,l: std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Sumador8bits PORT MAP (
          A => A,
          B => B,
          S => S,
          Cout => Cout
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		A <= "00110100";
		B <= "00101100";
		S 
      wait for 100 ns;	

      -- insert stimulus here 

      wait;
   end process;

END;
