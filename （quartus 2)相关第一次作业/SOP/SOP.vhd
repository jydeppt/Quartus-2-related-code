LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY SOP IS
	PORT(A,B,C,D,E,F:IN std_logic;X:OUT std_logic);
END SOP;
ARCHITECTURE sop OF SOP IS
	SIGNAL tmp1,tmp2,tmp3: std_logic;
BEGIN
	tmp1<=A AND B;
	tmp2<=C AND D;
	tmp3<=E AND F;
	X<=tmp1 OR tmp2 OR tmp3;
END sop;