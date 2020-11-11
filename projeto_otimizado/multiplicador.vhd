LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY multiplicador IS
PORT (clk, reset, inicio : IN STD_LOGIC;
		entA, entB : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		pronto: OUT STD_LOGIC;
		saida : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END multiplicador;

ARCHITECTURE estrutura of multiplicador IS
COMPONENT bc IS
PORT (Reset, clk, inicio : IN STD_LOGIC;
      Az, Bz : IN STD_LOGIC;
      pronto : OUT STD_LOGIC;
      CA, CP, MP, MA: OUT STD_LOGIC);
END COMPONENT;

COMPONENT bo IS
PORT (clk : IN STD_LOGIC;
		CP, CA, MP, MA: IN STD_LOGIC;
		entA, entB : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		Az, Bz : OUT STD_LOGIC;
		REGSAIDA: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END COMPONENT;

SIGNAL CA, CP, CB, MP, MA: STD_LOGIC; 
SIGNAL Az, Bz: STD_LOGIC; 
SIGNAL REGSAIDA: STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN
bc1: bc PORT MAP (reset, clk, inicio, Az, Bz, pronto, CA, CP, MP, MA);
bo1: bo PORT MAP (clk, CP, CA, MP, MA, entA, entB, Az, Bz, REGSAIDA);

saida <= REGSAIDA;
END estrutura;