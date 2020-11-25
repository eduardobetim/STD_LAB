LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY comparador IS
PORT (a, b: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
saida : OUT STD_LOGIC);
END comparador;

ARCHITECTURE estrutura OF comparador IS
BEGIN
	saida <= '1' WHEN a >= b ELSE '0';
END estrutura;