LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bc IS
PORT (Reset, clk, inicio : IN STD_LOGIC;
      Az, Bz : IN STD_LOGIC;
      pronto : OUT STD_LOGIC;
      CA, CP, CB, MP, MA: OUT STD_LOGIC);
END bc;

-- Sinais de comando
-- mp = mA = CB = ini
-- CP = CA
-- cmult
-- pronto

ARCHITECTURE estrutura OF bc IS
        TYPE state_type IS (S0, S1, S2, S3);
        SIGNAL state: state_type;
BEGIN
        PROCESS (clk, Reset)
        BEGIN
                if(Reset = '1') THEN
                        state <= S0 ;
                ELSIF (clk'EVENT AND clk = '1') THEN
                        CASE state IS
                                WHEN S0 =>
                                        if inicio = '1' then
                                                state <= S1;
                                        else
                                                state <= S0;
                                        end if;
													 	 

                                WHEN S1 =>
											
													state <= S2;
													 
                                WHEN S2 =>
                                        if (not Az and not Bz) = '1' then
                                                state <= S3;
                                        elsif (Az or Bz) = '1' then
                                                state <= S0;
                                        end if;
													 
                                WHEN S3 =>													 
													state <= S2;
                        END CASE;
                END IF;
        END PROCESS;
 
		PROCESS (state, Az, Bz)
        BEGIN
                CASE state IS
                        WHEN S0 =>
								
                        pronto <= '0';
								CA <= '0';
								CB <= '0';
								CP <= '0';
								MP <= '0';
								MA <= '0';        
                                
                        WHEN S1 =>
								
                        pronto <= '0';
								CA <= '1';
								CB <= '1';
								CP <= '1';
								MP <= '1';
								MA <= '1';
								
                        WHEN S2 =>
								if (not Az and Not Bz) = '1' then
                        pronto <= '0';
								CA <= '0';
								CB <= '0';
								CP <= '0';
								MP <= '0';
								MA <= '0';
								
								elsif (Az or Bz) = '1' then
								pronto <= '1';
								CA <= '0';
								CB <= '0';
								CP <= '0';
								MP <= '0';
								MA <= '0';
								end if;
								
                        WHEN S3 =>
								
                        pronto <= '0';
								CA <= '1';
								CB <= '0';
								CP <= '1';
								MP <= '0';
								MA <= '0';
								
                END CASE;
        END PROCESS;
END estrutura;