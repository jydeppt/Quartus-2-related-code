LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.all;
ENTITY clock_mod10  IS
	PORT(clk,clr:IN std_logic;
		led7:OUT std_logic_vector(6 DOWNTO 0));
END clock_mod10;
ARCHITECTURE CLOCK OF clock_mod10 IS
signal q: std_logic_vector(3 downto 0);
BEGIN
	PROCESS(clk,clr)
	BEGIN
		CASE q IS
				WHEN "0000"=>led7 <="1111110";
				WHEN "0001"=>led7 <="0110000";
				WHEN "0010"=>led7 <="1101101";
				WHEN "0011"=>led7 <="1111001";
				WHEN "0100"=>led7 <="0110011";
				WHEN "0101"=>led7 <="1011011";
				WHEN "0110"=>led7 <="0011111";
				WHEN "0111"=>led7 <="1110000";
				WHEN "1000"=>led7 <="1111111";
				WHEN "1001"=>led7 <="1110011";
				WHEN OTHERS =>led7 <="XXXXXXX";
		END CASE;	
	END PROCESS;
	PROCESS(clk,clr)
	BEGIN
		if (clr='1')then q<="0000";
		else if(clk'event and clk='1')then
			if(q="1001")then q<="0000";
				else q<=q+'1';
				end if;
			end if;
		end if;
	END PROCESS;
END CLOCK;