LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY num13  IS
	PORT(g1,g2:IN std_logic;
			d:IN std_logic_vector(2 DOWNTO 0);
			y:OUT std_logic_vector(7 DOWNTO 0));
END num13;
ARCHITECTURE decoder OF num13 IS
BEGIN
	PROCESS(g1,g2,d)
	BEGIN
		IF(g1='1' AND g2='0')THEN
			CASE d IS
				WHEN "000"=> y <="11111110";
				WHEN "001"=> y <="11111101";
				WHEN "010"=> y <="11111011";
				WHEN "011"=> y <="11110111";
				WHEN "100"=> y <="11101111";
				WHEN "101"=> y <="11011111";
				WHEN "110"=> y <="10111111";
				WHEN "111"=> y <="01111111";
				WHEN OTHERS => y <="XXXXXXXX";
			END CASE;
		ELSE
			y<="11111111";
		END IF;
	END PROCESS;
END decoder;