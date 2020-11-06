library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_contadorsincrono is
end tb_contadorsincrono;


architecture tb of tb_contadorsincrono is 
signal j1, k1, rst1, clk1: std_logic;
signal q1: std_logic_vector(3 downto 0);


	component contadorsincrono is
	port(
		j,k,rst,clk:in std_logic;
		q:out std_logic_vector(3 downto 0)
		);
	end component;

begin

UUT: entity work.contadorsincrono port map (j => j1, k => k1, rst => rst1, clk => clk1, q => q1);

j1 <= '1';
k1 <= '1';

tb1: process
	constant periodo: time:= 20 ns;
	begin
		clk1 <= '1';
		rst1 <= '0';
		wait for (periodo/2);
		clk1 <= '0';
		rst1 <= '0';
		wait for (periodo/2);
	end process;	
end tb;