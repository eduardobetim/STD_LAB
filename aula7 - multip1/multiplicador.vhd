LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY multiplicador IS
PORT (reset, clk, inicio : IN STD_LOGIC;
entA, entB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
pronto: OUT STD_LOGIC;
saida, conteudoA, conteudoB: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END multiplicador;

ARCHITECTURE estrutura of multiplicador IS
COMPONENT bc IS
PORT (Reset, clk, inicio : IN STD_LOGIC;
Az, Bz : IN STD_LOGIC;
pronto : OUT STD_LOGIC;
ini, CA, dec, CP: OUT STD_LOGIC );
END COMPONENT;

COMPONENT bo IS
PORT (clk : IN STD_LOGIC;
ini, CP, CA, dec: IN STD_LOGIC;
entA, entB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
Az, Bz : OUT STD_LOGIC;
saida, saidaA, saidaB: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END COMPONENT;

SIGNAL ini, CP, CA, dec: STD_LOGIC; -- Sinais de comando para o BO
SIGNAL Az, Bz: STD_LOGIC; -- Sinais de comando para o BC
SIGNAL saida_f, saidaA, saidaB: STD_LOGIC_VECTOR(3 downto 0);

BEGIN
bc1: bc PORT MAP (reset, clk, inicio, Az, Bz, pronto, ini, CA, dec, CP);
bo1: bo PORT MAP (clk, ini, CP, CA, dec, entA, entB, Az, Bz, saida_f, saidaA, saidaB);

saida <= saida_f;
conteudoA <= saidaA;
conteudoB <= saidaB;

END estrutura;