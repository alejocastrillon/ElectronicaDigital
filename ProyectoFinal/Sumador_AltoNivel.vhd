----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:34:43 12/04/2017 
-- Design Name: 
-- Module Name:    Sumador_AltoNivel - Behavioral 
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

entity Sumador_AltoNivel is
    Port ( ENT1 : in  STD_LOGIC_VECTOR (7 downto 0);
           ENT2 : in  STD_LOGIC_VECTOR (7 downto 0);
           Carry : out  STD_LOGIC;
           Resultado : out  STD_LOGIC_VECTOR (7 downto 0));
end Sumador_AltoNivel;

architecture Behavioral of Sumador_AltoNivel is

	COMPONENT sumadormedio
	PORT(
		A : IN std_logic;
		B : IN std_logic;          
		Cout : OUT std_logic;
		Sum : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT Sumador_Completo
	PORT(
		A : IN std_logic;
		B : IN std_logic;
		Cin : IN std_logic;          
		Cout : OUT std_logic;
		Suma : OUT std_logic
		);
	END COMPONENT;
	
	signal C1, C2, C3, C4, C5, C6, C7 : std_logic;
	
begin

	Inst_sumadormedio: sumadormedio PORT MAP(
		A => ENT1(0),
		B => ENT2(0),
		Cout => C1,
		Sum => Resultado(0)
	);
	
	Inst_Sumador_Completo1: Sumador_Completo PORT MAP(
		A => ENT1(1),
		B => ENT2(1),
		Cin => C1,
		Cout => C2,
		Suma => Resultado(1)
	);
	
	Inst_Sumador_Completo2: Sumador_Completo PORT MAP(
		A => ENT1(2),
		B => ENT2(2),
		Cin => C2,
		Cout => C3,
		Suma => Resultado(2)
	);
	
	Inst_Sumador_Completo3: Sumador_Completo PORT MAP(
		A => ENT1(3),
		B => ENT2(3),
		Cin => C3,
		Cout => C4,
		Suma => Resultado(3)
	);
	
	Inst_Sumador_Completo4: Sumador_Completo PORT MAP(
		A => ENT1(4),
		B => ENT2(4),
		Cin => C4,
		Cout => C5,
		Suma => Resultado(4)
	);
	
	Inst_Sumador_Completo5: Sumador_Completo PORT MAP(
		A => ENT1(5),
		B => ENT2(5),
		Cin => C5,
		Cout => C6,
		Suma => Resultado(5)
	);
	
	Inst_Sumador_Completo6: Sumador_Completo PORT MAP(
		A => ENT1(6),
		B => ENT2(6),
		Cin => C6,
		Cout => C7,
		Suma => Resultado(6)
	);
	
	Inst_Sumador_Completo7: Sumador_Completo PORT MAP(
		A => ENT1(7),
		B => ENT2(7),
		Cin => C7,
		Cout => Carry,
		Suma => Resultado(7)
	);

end Behavioral;