library ieee;
use ieee.std_logic_1164.all;

entity generic_example is
	generic(n: integer := 8);
	port(a, b: in std_logic_vector(n-1 downto 0);
		outp: out std_logic);
end generic_example;

architecture arch of generic_example is	  
	signal h: bit;
begin	  
	outp <= a(n-1) xor b(n-1);			 
	outp <= a(a'high) xor b(b'high);		-- OK because std_logic is resolved.
	
	-- h <= '1';
	-- h <= '0';							-- NOT OK, bit is NOT resolved.
										
end arch;
	