LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

entity divisor is
port (reset, clk, inicio: in std_logic;
		ent1, ent2: in std_logic_vector(3 downto 0);
		pronto, erro: out std_logic;
		quoc, resto: out std_logic_vector(3 downto 0)
		);
end divisor;

architecture estrutura of divisor is

component bc is
port (Reset, clk, inicio : in std_logic;
		Bz, AMaiorIgualB : in std_logic;
      pronto : out std_logic;
      CA, CRESTO, CQUOC, CB, CCONT, M1, M2, erro: out std_logic);
end component;

component bo is
port (clk: in std_logic;
		ent1, ent2: in std_logic_vector(3 downto 0);
		m1, m2, cA, cB, cresto, cquoc, ccont: in std_logic;
		AmaiorigualB, Bz: out std_logic;
		saidaA, saidaB: out std_logic_vector(3 downto 0)
		);
end component;

signal Bz, AMaiorIgualB: std_logic;
signal cA, cresto, cquoc, cb, ccont, m1, m2: std_logic;
signal saidaA, saidaB: std_logic_vector(3 downto 0);

begin
bc1: bc port map (reset, clk, inicio, Bz, AMaiorIgualB, pronto, cA, cresto, cquoc, cb, ccont, m1, m2, erro);
bo1: bo port map (clk, ent1, ent2, m1, m2, cA, cB, cresto, cquoc, ccont, AMaiorIgualB, Bz, saidaA, saidaB);

resto <= saidaA;
quoc <= saidaB;

end estrutura;