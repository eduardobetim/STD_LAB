library ieee;
use ieee.std_logic_1164.all;

entity fsm_mealy_aula is
port (clk, rst: in std_logic;
		entrada: in std_logic;
		saida: out std_logic);
end fsm_mealy_aula;

architecture fsm of fsm_mealy_aula is
	type tipo_estado is (S, s1, sf);
	
	signal estado: tipo_estado;
	
begin
	process(clk, rst)
	begin
	if rst = '1' then
		estado <= S;
	elsif clk'event and clk = '1' then
		case estado is
			when S =>
				if entrada = '1' then
					estado <= s1;
				else
					estado <= S;
				end if;
			when s1 =>
				if entrada = '0' then
					estado <= s1;
				else
					estado <= sf;
				end if;
			when sf =>
				estado <= sf;
			end case;
		end if;
	end process;
	
	process(entrada, estado)
	begin
		case estado is
			when s1 =>
				if entrada = '1' then
					saida <= '1';
				else
					saida <= '0';
				end if;
			when s2 =>
				saida <= '1';
			when others =>
				saida <= '0';				
			end case;
		end process;
end fsm;

					
				