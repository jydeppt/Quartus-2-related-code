LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY num15  IS
	PORT(i:IN std_logic_vector(7 DOWNTO 0);
			ei,eo:OUT std_logic;
			d:OUT std_logic_vector(2 DOWNTO 0));
END num15;
ARCHITECTURE coder OF num15 IS
BEGIN
	PROCESS(i)
	BEGIN
		IF i(7)='0' THEN d<="000";ei<='0';eo<='1';
		ELSIF i(6)='0' THEN d<="001";ei<='0';eo<='1';
		ELSIF i(5)='0' THEN d<="010";ei<='0';eo<='1';
		ELSIF i(4)='0' THEN d<="011";ei<='0';eo<='1';
		ELSIF i(3)='0' THEN d<="100";ei<='0';eo<='1';
		ELSIF i(2)='0' THEN d<="101";ei<='0';eo<='1';
		ELSIF i(1)='0' THEN d<="110";ei<='0';eo<='1';
		ELSIF i(0)='0' THEN d<="111";ei<='0';eo<='1';
		ELSE
		d<="111";ei<='1';eo<='0';
		END IF;
	END PROCESS;
END coder;