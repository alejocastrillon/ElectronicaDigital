----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:46:20 09/26/2017 
-- Design Name: 
-- Module Name:    PrimoModule - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PrimoModule is
    Port ( a1 : in  STD_LOGIC;
           a2 : in  STD_LOGIC;
           a3 : in  STD_LOGIC;
           a4 : in  STD_LOGIC;
           b : out  STD_LOGIC);
end PrimoModule;

architecture Behavioral of PrimoModule is

SIGNAL E1: STD_LOGIC;
SIGNAL E2: STD_LOGIC;
SIGNAL E3: STD_LOGIC;
SIGNAL E4: STD_LOGIC;
SIGNAL E5: STD_LOGIC;
SIGNAL E6: STD_LOGIC;
SIGNAL E7: STD_LOGIC;
SIGNAL E8: STD_LOGIC;

begin

E1 <= (not a1) and (not a2) and (not a3) and (not a4);
E2 <= (not a1) and (not a2) and (not a3) and a4;
E3 <= (not a1) and (not a2) and a3 and (not a4);
E4 <= (not a1) and (not a2) and a3 and a4;
E5 <= (not a1) and a2 and (not a3) and a4;
E6 <= (not a1) and a2 and a3 and a4;
E7 <= a1 and (not a2) and a3 and a4;
E8 <= a1 and a2 and (not a3) and a4;
b <= E1 or E2 or E3 or E4 or E5 or E6 or E7 or E8;

end Behavioral;

