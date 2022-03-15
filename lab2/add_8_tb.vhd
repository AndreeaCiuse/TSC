LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY add_8_tb IS
GENERIC (per : TIME := 10 ns);
PORT ( a  : OUT std_logic_vector(7 DOWNTO 0);
       b  : OUT std_logic_vector(7 DOWNTO 0) );
END add_8_tb;

ARCHITECTURE add_8_tb OF add_8_tb IS
  SIGNAL a_int : std_logic_vector(7 DOWNTO 0) := "00000000";
  SIGNAL b_int : std_logic_vector(7 DOWNTO 0) := "11111111";
BEGIN
  a_int <= a_int + "00000001" AFTER per;
  b_int <= b_int - "00000001" AFTER per;
  a <= a_int;
  b <= b_int;
END add_8_tb;







