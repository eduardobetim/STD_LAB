library ieee;
use ieee.std_logic_1164.all;

entity fsm_moore_aula is
port (clk, rst: in std_logic;
		entrada: in std_logic;
		saida: out std_logic);
end fsm_moore_aula;

architecture fsm of fsm_moore_aula is
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
	saida <= '1' when estado = sf else '0';
end fsm;

					
				