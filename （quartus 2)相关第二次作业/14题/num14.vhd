LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY num14  IS
	PORT(d:IN std_logic_vector(3 DOWNTO 0);
			y:OUT std_logic_vector(6 DOWNTO 0));
END num14;
ARCHITECTURE decoder7 OF num14 IS
BEGIN
	PROCESS(d)
	BEGIN
		CASE d IS
				WHEN "0000"=> y <="1111110";
				WHEN "0001"=> y <="0110000";
				WHEN "0010"=> y <="1101101";
				WHEN "0011"=> y <="1111001";
				WHEN "0100"=> y <="0110011";
				WHEN "0101"=> y <="1011011";
				WHEN "0110"=> y <="0011111";
				WHEN "0111"=> y <="1110000";
				WHEN "1000"=> y <="1111111";
				WHEN "1001"=> y <="1110011";
				WHEN OTHERS => y <="XXXXXXX";
		END CASE;
	END PROCESS;
END decoder7;