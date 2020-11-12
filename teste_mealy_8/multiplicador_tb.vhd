library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity multiplicador_tb is
end multiplicador_tb;

architecture tb of multiplicador_tb is

	COMPONENT multiplicador IS
	PORT (clk, reset, inicio: in std_logic;
			entA, entB: in std_logic_vector(7 downto 0);
			pronto: out std_logic;
			saida: out std_logic_vector(7 downto 0)
	);
	END COMPONENT;

    signal reset, clk, inicio: std_logic;
	 signal entA, entB: std_logic_vector(7 downto 0);
	 signal pronto: std_logic;
	 signal saida: std_logic_vector(7 downto 0);
begin

	 M1: multiplicador port map (clk, reset, inicio, entA, entB, pronto, saida);
		

	 reset <= '0', '1' after 20 ns, '0' after 40 ns;
	 inicio <= '0', '1' after 40 ns, '0' after 60 ns;
	 entA <= "00000011";
	 entB <= "00000100";
	 

	 tb1 : process
        constant periodo: time := 20 ns; 
        begin
				clk <= '1';
            wait for periodo/2;
				clk <= '0';
				wait for periodo/2;
        end process;
end tb;