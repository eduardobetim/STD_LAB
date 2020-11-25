library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity divisor_tb is
end divisor_tb;

architecture tb of divisor_tb is

component divisor is
port (reset, clk, inicio: in std_logic;
		ent1, ent2: in std_logic_vector(3 downto 0);
		pronto, erro: out std_logic;
		quoc, resto: out std_logic_vector(3 downto 0)
		);
end component;

    signal clk, reset, inicio: std_logic;
	 signal ent1, ent2: std_logic_vector(3 downto 0);
	 signal pronto, erro: std_logic;
	 signal quoc, resto: std_logic_vector(3 downto 0);
begin
	 M1: divisor port map (reset, clk, inicio, ent1, ent2, pronto, erro, quoc, resto);
		
	 reset <= '1', '0' after 10 ns;
	 inicio <= '1' after 20 ns, '0' after 40 ns;
	 ent1 <= "1100";
	 ent2 <= "0101";
	 
	 tb1 : process
        constant periodo: time := 20 ns;
        begin
				clk <= '1';
            wait for periodo/2;
				clk <= '0';
				wait for periodo/2;
        end process;
end tb;