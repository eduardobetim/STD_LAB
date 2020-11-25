LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

entity bo is
port (clk: in std_logic;
		ent1, ent2: in std_logic_vector(3 downto 0);
		m1, m2, cA, cB, cresto, cquoc, ccont: in std_logic;
		AmaiorigualB, Bz: out std_logic;
		saidaA, saidaB: out std_logic_vector(3 downto 0)
		);
end bo;

architecture estrutura of bo is

component somador is
port (a, b: in std_logic_vector(3 downto 0);
		s: out std_logic_vector(3 downto 0));
end component;

component subtrator is
port (a, b: in std_logic_vector(3 downto 0);
		s: out std_logic_vector(3 downto 0));
end component;

component mux2para1 is
port (a, b : in std_logic_vector(3 downto 0);
		sel: in std_logic;
		y : out std_logic_vector(3 downto 0));
end component;

component registrador is
port (clk, carga : in std_logic;
		d : in std_logic_vector(3 downto 0);
		q : out std_logic_vector(3 downto 0));
end component;

component comparador is
port (a, b: in std_logic_vector(3 DOWNTO 0);
		saida : out std_logic);
end component;

component igualazero is
port (a : in std_logic_vector(3 downto 0);
		igual : out std_logic);
end component;

signal saimux1, saimux2, sairegA, sairegB, sairegcont, sairegresto, sairegquoc: std_logic_vector(3 downto 0);
signal saisub, saisum: std_logic_vector(3 downto 0);

begin
mux1: mux2para1 port map (saisub, ent1, m1, saimux1);
mux2: mux2para1 port map (saisum, "0000", m2, saimux2);
regA: registrador port map (clk, cA, saimux1, sairegA);
regB: registrador port map (clk, cB, ent2, sairegB);
regresto: registrador port map (clk, cresto, sairegA, sairegresto);
regcont: registrador port map (clk, ccont, saimux2, sairegcont);
regquoc: registrador port map (clk, cquoc, sairegcont, sairegquoc);
comp: comparador port map (sairegA, sairegB, AmaiorigualB);
zero: igualazero port map (sairegB, Bz);
sub: subtrator port map (sairegA, sairegB, saisub);
sum: somador port map (sairegcont, "0001", saisum);

saidaA <= sairegresto;
saidaB <= sairegquoc;

end estrutura;