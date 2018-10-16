----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:17:27 10/04/2017 
-- Design Name: 
-- Module Name:    Combinacion - Behavioral 
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

entity Combinacion is
    Port ( A4 : in  STD_LOGIC;
           A3 : in  STD_LOGIC;
           A2 : in  STD_LOGIC;
           A1 : in  STD_LOGIC;
           Z2 : out  STD_LOGIC;
           Z1 : out  STD_LOGIC;
           Z0 : out  STD_LOGIC);
end Combinacion;

architecture Behavioral of Combinacion is
SIGNAL EC1, EC2, EC3, EC4, EC5, EC6, EC7, EC8, EC9, EC10, EC11, EC12, EC13, EC14, EC15, EC16: STD_LOGIC;
begin

EC1 <= ((not A4) and (not A3) and (not A2) and (not A1));
EC2 <= ((not A4) and (not A3) and (not A2) and A1);
EC3 <= ((not A4) and (not A3) and A2 and (not A1));
EC4 <= ((not A4) and (not A3) and A2 and A1);
EC5 <= ((not A4) and A3 and (not A2) and (not A1));
EC6 <= ((not A4) and A3 and (not A2) and A1);
EC7 <= ((not A4) and A3 and A2 and (not A1));
EC8 <= ((not A4) and A3 and A2 and A1);
EC9 <= (A4 and (not A3) and (not A2) and (not A1));
EC10 <= (A4 and (not A3) and (not A2) and A1);
EC11 <= (A4 and (not A3) and A2 and (not A1));
EC12 <= (A4 and (not A3) and A2 and A1);
EC13 <= (A4 and A3 and (not A2) and (not A1));
EC14 <= (A4 and A3 and (not A2) and A1);
EC15 <= (A4 and A3 and A2 and (not A1));
EC16 <= (A4 and A3 and A2 and A1);


Z2 <= (EC1 or EC9);
Z1 <= (EC3 or EC5 or EC7 or EC11 or EC13 or EC15);
Z0 <= (EC1 or EC2 or EC4 or EC5 or EC6 or EC8 or EC10 or EC12 or EC13 or EC14 or EC16);
end Behavioral;


