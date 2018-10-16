----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:13:10 10/23/2017 
-- Design Name: 
-- Module Name:    Carriles - Behavioral 
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

entity Carriles is
    Port ( S1 : in  STD_LOGIC;
           S2 : in  STD_LOGIC;
           S3 : in  STD_LOGIC;
           S4 : in  STD_LOGIC;
           S5 : in  STD_LOGIC;
           D0 : out  STD_LOGIC;
           D1 : out  STD_LOGIC;
           D2 : out  STD_LOGIC;
           D3 : out  STD_LOGIC);
end Carriles;

architecture Behavioral of Carriles is
SIGNAL EC1, EC2, EC3, EC4, EC5, EC6, EC7, EC8, EC9, EC10, EC11, EC12, EC13, EC14, EC15, EC16, EC17, EC18, EC19, EC20, EC21, EC22, EC23, EC24, EC25, EC26, EC27, EC28, EC29, EC30, EC31, EC32: STD_LOGIC;
begin

EC1 <= ((not S1) and (not S2) and (not S3) and (not S4) and (not S5));
EC2 <= ((not S1) and (not S2) and (not S3) and (not S4) and S5);
EC3 <= ((not S1) and (not S2) and (not S3) and S4 and (not S5));
EC4 <= ((not S1) and (not S2) and (not S3) and S4 and S5);
EC5 <= ((not S1) and (not S2) and S3 and (not S4) and (not S5)); 
EC6 <= ((not S1) and (not S2) and S3 and (not S4) and S5);
EC7 <= ((not S1) and (not S2) and S3 and S4 and (not S5));
EC8 <= ((not S1) and (not S2) and S3 and S4 and S5);
EC9 <= ((not S1) and S2 and (not S3) and (not S4) and (not S5));
EC10 <= ((not S1) and S2 and (not S3) and (not S4) and S5);
EC11 <= ((not S1) and S2 and (not S3) and S4 and (not S5));
EC12 <= ((not S1) and S2 and (not S3) and S4 and S5);
EC13 <= ((not S1) and S2 and S3 and (not S4) and (not S5));
EC14 <= ((not S1) and S2 and S3 and (not S4) and S5);
EC15 <= ((not S1) and S2 and S3 and S4 and (not S5));
EC16 <= ((not S1) and S2 and S3 and S4 and S5);
EC17 <= (S1 and (not S2) and (not S3) and (not S4) and (not S5));
EC18 <= (S1 and (not S2) and (not S3) and (not S4) and S5);
EC19 <= (S1 and (not S2) and (not S3) and S4 and (not S5));
EC20 <= (S1 and (not S2) and (not S3) and S4 and S5);
EC21 <= (S1 and (not S2) and S3 and (not S4) and (not S5));
EC22 <= (S1 and (not S2) and S3 and (not S4) and S5);
EC23 <= (S1 and (not S2) and S3 and S4 and (not S5));
EC24 <= (S1 and (not S2) and S3 and S4 and S5);
EC25 <= (S1 and S2 and (not S3) and (not S4) and (not S5));
EC26 <= (S1 and S2 and (not S3) and (not S4) and S5);
EC27 <= (S1 and S2 and (not S3) and S4 and (not S5));
EC28 <= (S1 and S2 and (not S3) and S4 and S5);
EC29 <= (S1 and S2 and S3 and (not S4) and (not S5));
EC30 <= (S1 and S2 and S3 and (not S4) and S5);
EC31 <= (S1 and S2 and S3 and S4 and (not S5));
EC32 <= (S1 and S2 and S3 and S4 and S5);

D0 <= (EC1 or EC2 or EC3 or EC4 or EC5 or EC6 or EC9 or EC10 or EC11 or EC12 or EC17 or EC18 or EC19 or EC20 or EC21 or EC22 or EC23 or EC24 or EC25 or EC26 or EC29 or EC30);
D1 <= (EC1 or EC2 or EC3 or EC4 or EC7 or EC8 or EC9 or EC10 or EC11 or EC12 or EC17 or EC18 or EC19 or EC20 or EC21 or EC22 or EC23 or EC24 or EC27 or EC28 or EC31 or EC32);
D2 <= (EC1 or EC2 or EC3 or EC4 or EC6 or EC8 or EC9 or EC10 or EC11 or EC12 or EC14 or EC16 or EC17 or EC18 or EC19 or EC20 or EC21 or EC22 or EC23 or EC24 or EC26 or EC28);
D3 <= (EC1 or EC2 or EC3 or EC4 or EC5 or EC7 or EC9 or EC10 or EC11 or EC12 or EC13 or EC15 or EC17 or EC18 or EC19 or EC20 or EC21 or EC22 or EC23 or EC24 or EC25 or EC27);
end Behavioral;

