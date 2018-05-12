library ieee;
use ieee.std_logic_1164.all;

entity generic_example is
	generic(n: integer := 8);
	port(a, b: in std_logic_vector(n-1 downto 0);
		outp: out std_logic);
end generic_example;

architecture arch of generic_example is	
begin	  
	outp <= a(n-1) xor b(n-1);			 
	-- or
	-- outp <= a(a'high) xor b(b'high);  
end arch;
	