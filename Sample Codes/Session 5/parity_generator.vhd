library ieee;
use ieee.std_logic_1164.all;

entity parity_generator is  
	port(data: in std_logic_vector(3 downto 0);
		p_data: out std_logic_vector(4 downto 0));
end entity;

architecture arch of parity_generator is 
signal parity: std_logic := '1';
begin						  
	parity <= data(0) xor data(1) xor data(2) xor data(3);
	p_data <= parity & data;
end arch; 
