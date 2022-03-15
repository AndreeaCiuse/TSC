LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY add_8_monitor IS
PORT ( a   : IN  std_logic_vector(7 DOWNTO 0);
       b   : IN  std_logic_vector(7 DOWNTO 0);
       s   : IN  std_logic_vector(7 DOWNTO 0);
       err : OUT std_logic );
END add_8_monitor;

ARCHITECTURE add_8_monitor OF add_8_monitor IS
BEGIN

  PROCESS( a, b, s )
  BEGIN
    IF( s = a + b ) THEN
       err <= '0';
    ELSE
       err <= '1';
    END IF; 
  END PROCESS;
END add_8_monitor;  





