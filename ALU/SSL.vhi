
-- VHDL Instantiation Created from source file SSL.vhd -- 01:27:44 12/06/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

		COMPONENT SSL
		PORT(
			A : IN std_logic_vector(7 downto 0);
			B : IN std_logic_vector(7 downto 0);          
			Cout : OUT std_logic;
			S : OUT std_logic_vector(7 downto 0)
			);
		END COMPONENT;

	Inst_SSL: SSL PORT MAP(
		A => ,
		B => ,
		Cout => ,
		S => 
	);


