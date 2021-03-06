LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY multiplicador IS
PORT (clk, reset, inicio : IN STD_LOGIC;
		entA, entB : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		pronto: OUT STD_LOGIC;
		saida, ConteudoA, ConteudoB: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END multiplicador;

ARCHITECTURE estrutura of multiplicador IS
COMPONENT bc IS
PORT (Reset, clk, inicio : IN STD_LOGIC;
      Az, Bz : IN STD_LOGIC;
      pronto : OUT STD_LOGIC;
      CA, CP, CB, CMULT, MP, MA: OUT STD_LOGIC);
END COMPONENT;

COMPONENT bo IS
PORT (clk : IN STD_LOGIC;
		CP, CA, CB, MP, MA, CMULT: IN STD_LOGIC;
		entA, entB : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		Az, Bz : OUT STD_LOGIC;
		REGSAIDA, SaidaA, SaidaB: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END COMPONENT;

SIGNAL CA, CP, CB, CMULT, MP, MA: STD_LOGIC; 
SIGNAL Az, Bz: STD_LOGIC;
SIGNAL REGSAIDA, SaidaA, SaidaB: STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN
bc1: bc PORT MAP (reset, clk, inicio, Az, Bz, pronto, CA, CP, CB, CMULT, MP, MA);
bo1: bo PORT MAP (clk, CP, CA, CB, MP, MA, CMULT, entA, entB, Az, Bz, REGSAIDA, SaidaA, SaidaB);

ConteudoA <= SaidaA;
ConteudoB <= SaidaB;
saida <= REGSAIDA;

END estrutura;