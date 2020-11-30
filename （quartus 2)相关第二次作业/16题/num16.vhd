LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY num16  IS
	PORT(data_in:IN std_logic_vector(3 DOWNTO 0);
			en:IN std_logic;
			data_out:OUT std_logic_vector(3 DOWNTO 0));
END num16;
ARCHITECTURE GTB OF num16 IS
	SIGNAL tmp:std_logic_vector(3 DOWNTO 0);
BEGIN
	PROCESS(data_in,en)
	BEGIN
		data_out(3)<=data_in(3) AND en;
		tmp(3)<=data_in(3) AND en;
		data_out(2)<=tmp(3) AND data_in(2) AND en;
		tmp(2)<=tmp(3) AND data_in(2) AND en;
		data_out(1)<=tmp(2) AND data_in(1) AND en;
		tmp(1)<=tmp(2) AND data_in(1) AND en;
		data_out(0)<=tmp(1) AND data_in(0) AND en;
	END PROCESS;
END GTB;