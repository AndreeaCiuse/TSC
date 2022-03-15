LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY add_8_test IS
END add_8_test;

ARCHITECTURE add_8_test OF add_8_test IS
  COMPONENT add_8
  PORT ( a  : IN  std_logic_vector(7 DOWNTO 0);
         b  : IN  std_logic_vector(7 DOWNTO 0);
         s  : OUT std_logic_vector(7 DOWNTO 0) );
  END COMPONENT;

  COMPONENT add_8_tb
  GENERIC (per : TIME := 10 ns);
  PORT ( a  : OUT std_logic_vector(7 DOWNTO 0);
         b  : OUT std_logic_vector(7 DOWNTO 0) );
  END COMPONENT;

  COMPONENT add_8_monitor
  PORT ( a   : IN  std_logic_vector(7 DOWNTO 0);
         b   : IN  std_logic_vector(7 DOWNTO 0); 
         s   : IN  std_logic_vector(7 DOWNTO 0);
         err : OUT std_logic );
  END COMPONENT;

  SIGNAL a     : std_logic_vector(7 DOWNTO 0);
  SIGNAL b     : std_logic_vector(7 DOWNTO 0);
  SIGNAL s     : std_logic_vector(7 DOWNTO 0);
  SIGNAL error : std_logic;

  FOR TB: add_8_tb USE ENTITY work.add_8_tb(add_8_tb);
  FOR DUT: add_8 USE ENTITY work.add_8(add_8_df);
  FOR M: add_8_monitor USE ENTITY work.add_8_monitor(add_8_monitor);
   
BEGIN
  TB: add_8_tb GENERIC MAP (per => 20 ns) 
               PORT MAP ( a  => a,
                          b  => b );

  DUT: add_8 PORT MAP ( a  => a,
                        b  => b,
                        s  => s );

  M: add_8_monitor PORT MAP ( a   => a,
                              b   => b,
                              s   => s,
                              err => error );   
END add_8_test;  










