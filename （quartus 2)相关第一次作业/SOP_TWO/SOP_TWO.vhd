LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY SOP_TWO IS
	PORT(A,B,C,D,E,F:IN std_logic;X:OUT std_logic);
END SOP_TWO;
ARCHITECTURE sop_two OF SOP_TWO IS
	SIGNAL tmp1,tmp2,tmp3: std_logic;
	COMPONENT AND_T
		PORT(A,B:IN std_logic;C:OUT std_logic);
	END COMPONENT;
BEGIN
	U0: AND_T
		PORT MAP(A=>A,B=>B,C=>tmp1);
	U1:AND_T
		PORT MAP(A=>C,B=>D,C=>tmp2);
	U2:AND_T
		PORT MAP(A=>E,B=>F,C=>tmp3);
	X<=tmp1 OR tmp2 OR tmp3;
END sop_two;