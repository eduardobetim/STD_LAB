library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ULA is
generic(N: natural := 4);
	port(
	A, B: in std_logic_vector(N-1 downto 0);
	sel: in std_logic_vector(2 downto 0);
	S: out std_logic_vector(N-1 downto 0)
	);
	
end ULA;

architecture comportamento of ULA is
signal temp: std_logic_vector(N-1 downto 0);
begin
process (A, B, sel, temp)
	begin
		case sel is
			when "000" =>
				temp <= A + B;
				
			when "001" =>
				temp <= A - B;
				
			when "010" =>
				temp <= A or B;
			when "011" =>
				temp <= A and B;
			when "100" =>
				temp <= not A;
			when "101" =>
				if A < B then
					temp <= "0001";
				else
					temp <= "0000";
				end if;
			when others =>
				temp <= "XXXX";
		end case;
	end process;
	S <= temp;
end;