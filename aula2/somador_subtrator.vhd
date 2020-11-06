library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity somador_subtrator is
	generic (n: integer := 8);
	port(
	opA, opB: in std_logic_vector(n-1 downto 0);
	opcode: in std_logic;
	S: out std_logic_vector(n downto 0)
	);
	
end somador_subtrator;

architecture comportamento of somador_subtrator is
	signal saidaMuxB: std_logic_vector(n-1 downto 0);
begin
	saidaMuxB <= OPb when opcode = '0' else
					not (OPb);
				
	S <= ('0' & opA) + ('0' & SaidaMuxB) + opcode;

end;