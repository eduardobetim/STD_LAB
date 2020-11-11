library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity multiplicador_tb is
end multiplicador_tb;

architecture tb of multiplicador_tb is

	COMPONENT multiplicador IS
	PORT (reset, clk, inicio : IN STD_LOGIC;
			entA, entB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			pronto: OUT STD_LOGIC;
			saida, conteudoA, conteudoB: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
	END COMPONENT;

    signal clk, reset, inicio: std_logic;
	 signal entA, entB: std_logic_vector(3 downto 0);
	 signal pronto: std_logic;
	 signal saida, conteudoA, conteudoB: std_logic_vector(3 downto 0);
begin
	 M1: multiplicador port map (reset, clk, inicio, entA, entB, pronto, saida, conteudoA, conteudoB);
		
	 reset <= '1', '0' after 10 ns;
	 inicio <= '1' after 20 ns, '0' after 40 ns;
	 entA <= "0011";
	 entB <= "0100";
	 
	 tb1 : process
        constant periodo: time := 20 ns;
        begin
				clk <= '1';
            wait for periodo/2;
				clk <= '0';
				wait for periodo/2;
        end process;
end tb;