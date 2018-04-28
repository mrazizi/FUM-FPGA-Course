library ieee;
use ieee.std_logic_1164.all;

entity nand_example is
	port(a,b : in std_logic;
	outp: out std_logic);
end nand_example;

architecture arch of nand_example is
begin		 
	outp <= a nand b;
end arch;

	