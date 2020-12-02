LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.all;
ENTITY clock_mod60  IS
	PORT(clk,clr:IN std_logic;
		led2:OUT std_logic_vector(3 DOWNTO 0);
		led1:OUT std_logic_vector(6 DOWNTO 0));
END clock_mod60;
ARCHITECTURE CLOCK OF clock_mod60 IS
signal q2: std_logic_vector(3 downto 0);
signal q1: std_logic_vector(3 downto 0);
BEGIN
	PROCESS(clk,clr)
	BEGIN
		CASE q1(3 downto 0) IS
				WHEN "0000"=>led1 <="1111110";
				WHEN "0001"=>led1 <="0110000";
				WHEN "0010"=>led1 <="1101101";
				WHEN "0011"=>led1 <="1111001";
				WHEN "0100"=>led1 <="0110011";
				WHEN "0101"=>led1 <="1011011";
				WHEN "0110"=>led1 <="0011111";
				WHEN "0111"=>led1 <="1110000";
				WHEN "1000"=>led1 <="1111111";
				WHEN "1001"=>led1 <="1110011";
				WHEN OTHERS =>led1 <="XXXXXXX";
		END CASE;
		led2<=q2;
	END PROCESS;
	PROCESS(clk,clr)
	BEGIN
		if (clr='1')then q1<="0000";q2<="0000";
		else 
		if(clk'event and clk='1')then
			if(q1="1001" and q2="0101")then q1<="0000";q2<="0000";
				elsif(q1="1001")then q1<="0000";q2<=q2+'1';
				else
				q1<=q1+'1';
				end if;
			end if;
		end if;
	END PROCESS;
END CLOCK;