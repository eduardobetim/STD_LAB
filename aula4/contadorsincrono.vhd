library ieee;
use ieee.std_logic_1164.all;

entity contadorsincrono is
port(
	j, k, rst, clk:in std_logic;
	q:out std_logic_vector(3 downto 0)
	);
end contadorsincrono;

architecture comportamento of contadorsincrono is 

component flipflopjk is
port(
	j,k, rst, clk:in std_logic;
	q:out std_logic);
end component;


signal i, l, a, b, c, d:std_logic;
begin
i<= a and b;
l<= a and b and c;
a1:flipflopjk port map(j,k,rst,clk,a);
a2:flipflopjk port map(a,a,rst,clk,b);
a3:flipflopjk port map(i,i,rst,clk,c);
a4:flipflopjk port map(l,l,rst,clk,d);

q <= d&c&b&a;
end comportamento;

