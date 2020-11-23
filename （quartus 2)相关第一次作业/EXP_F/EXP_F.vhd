LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY EXP_F IS
	PORT(A,B,C:IN std_logic;F:OUT std_logic);
END EXP_F;
ARCHITECTURE exp_f OF EXP_F IS
	SIGNAL tmp1,tmp2,tmp3: std_logic;
BEGIN
	tmp1<=A OR (NOT B) OR C;
	tmp2<=A OR B OR (NOT C);
	tmp3<=(NOT A) OR (NOT B) OR (NOT C);
	F<=tmp1 AND tmp2 AND tmp3;
END exp_f;