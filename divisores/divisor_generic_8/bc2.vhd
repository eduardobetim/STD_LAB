LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bc2 IS
PORT (Reset, clk, inicio : IN STD_LOGIC;
		Bz, AMaiorIgualB : IN STD_LOGIC;
      pronto : OUT STD_LOGIC;
      CA, CRESTO, CQUOC, CB, CCONT, M1, M2, erro: OUT STD_LOGIC);
END bc2;


ARCHITECTURE estrutura OF bc2 IS
        TYPE state_type IS (S0, S1, S2, S3, S4, S5, errado);
        SIGNAL state: state_type;
BEGIN
        -- Logica de proximo estado 
        PROCESS (clk, Reset)
        BEGIN
                if(Reset = '1') THEN
                        state <= S0 ;
                ELSIF (clk'EVENT AND clk = '1') THEN
                        CASE state IS
                                WHEN S0 =>
                                        if inicio = '1' then
                                                state <= S1;
                                        elsif inicio = '0' then
                                                state <= S0;
                                        end if;
											
										  WHEN errado => 
													if inicio = '1' then 
																state <= S1;
													elsif inicio = '0' then
																state <= errado;
													end if;
													 	 

                                WHEN S1 =>
											
													state <= S2;
													 
                                WHEN S2 =>
                                        if Bz = '0' and AMaiorIgualB = '1' then
                                                state <= S3;
                                        elsif Bz = '1' then
                                                state <= errado;
                                        elsif Bz = '0' and AmaiorIgualB = '0' then
																state <= S5;
													 end if;
													 
                                WHEN S3 =>													 
													state <= S4;
											
										  WHEN S4 =>
													state <= S2;
													 
                                WHEN S5 =>
                                       state <= S0;
													

                        END CASE;
                END IF;
        END PROCESS;
 
 -- logica de saida
 
		PROCESS (state)
        BEGIN
                CASE state IS
                        WHEN S0 =>
								
                        pronto <= '1';
								CA <= '0';
								CB <= '0';
								CRESTO <= '0';
								CQUOC <= '0';
								CCONT <= '0';
								M1 <= '0';
								M2 <= '0';
								erro <= '0';
                                
                        WHEN S1 =>
								
                        pronto <= '0';
								CA <= '1';
								CB <= '1';
								CRESTO <= '0';
								CQUOC <= '0';
								CCONT <= '1';
								M1 <= '1';
								M2 <= '1';
								erro <= '0';
								
                        WHEN S2 =>
								
                        pronto <= '0';
								CA <= '0';
								CB <= '0';
								CRESTO <= '0';
								CQUOC <= '0';
								CCONT <= '0';
								M1 <= '0';
								M2 <= '0';
								erro <= '0';
								
                        WHEN S3 =>
								
                        pronto <= '0';
								CA <= '1';
								CB <= '0';
								CRESTO <= '0';
								CQUOC <= '0';
								CCONT <= '0';
								M1 <= '0';
								M2 <= '0';
								erro <= '0';
								
                        WHEN S4 =>
								
                        pronto <= '0';
								CA <= '0';
								CB <= '0';
								CRESTO <= '0';
								CQUOC <= '0';
								CCONT <= '1';
								M1 <= '0';
								M2 <= '0';
								erro <= '0';

                       WHEN S5 =>
								
                        pronto <= '0';
								CA <= '0';
								CB <= '0';
								CRESTO <= '1';
								CQUOC <= '1';
								CCONT <= '0';
								M1 <= '0';
								M2 <= '0';
								erro <= '0';
								
								
								WHEN errado => 
								
                        pronto <= '1';
								CA <= '0';
								CB <= '0';
								CRESTO <= '0';
								CQUOC <= '0';
								CCONT <= '0';
								M1 <= '0';
								M2 <= '0';
								erro <= '1';
								
								
                END CASE;
        END PROCESS;
END estrutura;	