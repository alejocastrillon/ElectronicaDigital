--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:45:50 12/04/2017
-- Design Name:   
-- Module Name:   /home/alejandro/Documentos/Laboratorio de Electronica/ProyectoFinal/TBSumador_AltoNivel.vhd
-- Project Name:  ProyectoFinal
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Sumador_AltoNivel
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
 
ENTITY TBSumador_AltoNivel IS
END TBSumador_AltoNivel;
 
ARCHITECTURE behavior OF TBSumador_AltoNivel IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Sumador_AltoNivel
    PORT(
         ENT1 : IN  std_logic_vector(7 downto 0);
         ENT2 : IN  std_logic_vector(7 downto 0);
         Carry : OUT  std_logic;
         Resultado : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ENT1 : std_logic_vector(7 downto 0) := (others => '0');
   signal ENT2 : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Carry : std_logic;
   signal Resultado : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Sumador_AltoNivel PORT MAP (
          ENT1 => ENT1,
          ENT2 => ENT2,
          Carry => Carry,
          Resultado => Resultado
        );
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		ENT1(0) <= '1';
		ENT1(1) <= '0';
		ENT1(2) <= '0';
		ENT1(3) <= '0';
		ENT1(4) <= '0';
		ENT1(5) <= '0';
		ENT1(6) <= '0';
		ENT1(7) <= '0';
		ENT2(0) <= '1';
		ENT2(1) <= '0';
		ENT2(1) <= '0';
		ENT2(2) <= '0';
		ENT2(3) <= '0';
		ENT2(4) <= '0';
		ENT2(5) <= '0';
		ENT2(6) <= '0';
		ENT2(7) <= '0';
      wait for 100 ns;	

      -- insert stimulus here 

      wait;
   end process;

END;
