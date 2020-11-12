LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY bo IS
PORT (clk : IN STD_LOGIC;
		CP, CA, CB, MP, MA: IN STD_LOGIC;
		entA, entB : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		Az, Bz : OUT STD_LOGIC;
		REGSAIDA: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END bo;

-- Sinais de comando
-- ini = RstP = mA = CB => ini=1 somente em S1
-- CA=1 em S1 e em S4
-- dec = op = m1 = m2 => dec=1 somente em S4 (estado no qual ocorre A <= A - 1 )
-- CP=1 somente em S3 (estado no qual ocorre P <= P + B )

ARCHITECTURE estrutura OF bo IS

COMPONENT registrador_r IS
	PORT (clk, reset, carga : IN STD_LOGIC;
	d : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END COMPONENT;

COMPONENT registrador IS
	PORT (clk, carga : IN STD_LOGIC;
	d : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END COMPONENT;

COMPONENT mux2para1 IS
	PORT ( a, b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	sel: IN STD_LOGIC;
	y : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END COMPONENT;

COMPONENT somadorsubtrator IS
	PORT (a, b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	op: IN STD_LOGIC;
	s : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END COMPONENT;

COMPONENT igualazero IS
	PORT (a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	igual : OUT STD_LOGIC);
END COMPONENT;

SIGNAL SaidaMuxP, SaidaMuxA, SaidaRegP, SaidaRegA, SaidaRegB: STD_LOGIC_VECTOR(7 downto 0);
SIGNAL SaidaSum, SaidaSub: STD_LOGIC_VECTOR(7 downto 0);

BEGIN
	muxp: mux2para1 PORT MAP (SaidaSum, "00000000", MP, SaidaMuxP);
	regP: registrador PORT MAP (clk, CP, SaidaMuxP, SaidaRegP);
	regB: registrador PORT MAP (clk, CB, entB, SaidaRegB);
	regA: registrador PORT MAP (clk, CA, SaidaMuxA, SaidaRegA);
	muxA: mux2para1 PORT MAP (SaidaSub, entA, MA, SaidaMuxA);
	Somador: somadorsubtrator PORT MAP(SaidaRegP, SaidaRegB, '0', SaidaSum);
	Subtrator: somadorsubtrator PORT MAP(SaidaRegA, "00000001", '1', SaidaSub);
	geraAz: igualazero PORT MAP (SaidaRegA, Az);
	geraBz: igualazero PORT MAP (SaidaRegB, Bz);

REGSAIDA <= SaidaRegP;

END estrutura;