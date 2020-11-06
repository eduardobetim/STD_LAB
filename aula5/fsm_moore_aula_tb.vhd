library ieee;
use ieee.std_logic_1164.all;

entity fsm_moore_aula_tb is
end fsm_moore_aula_tb;

architecture tb of fsm_moore_aula_tb is
	signal clk, rst, entrada: std_logic;
	signal saida: std_logic;
	
begin
	UUT: entity work.fsm_moore_aula port map(clk => clk, rst => rst, entrada => entrada, saida => saida);
	
	rst <= '1', '0' after 10 ns;
	entrada <= '0', '1' after 20 ns, '0' after 40 ns, '0' after 60 ns, '1' after 80 ns;
	
	process
	begin
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
	end process;
end tb;
	