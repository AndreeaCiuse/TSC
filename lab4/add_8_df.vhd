ARCHITECTURE add_8_df OF add_8 IS
  SIGNAL carry : std_logic_vector(8 DOWNTO 0);
BEGIN
  carry(0)          <= '0'; 
  s                 <= a XOR b XOR carry(7 DOWNTO 0);  
  carry(8 DOWNTO 1) <= (a AND b) OR (carry(7 DOWNTO 0) AND (a OR b)); 
END add_8_df;


