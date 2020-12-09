LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE std.textio.ALL;
USE ieee.std_logic_textio.ALL; -- para tratamento de arquivos e texto
ENTITY divisor_tb IS
END divisor_tb;

ARCHITECTURE tb OF divisor_tb IS

    COMPONENT divisor IS
        PORT (
            reset, clk, inicio : IN STD_LOGIC;
            ent1, ent2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            pronto, erro : OUT STD_LOGIC;
            quoc, resto : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
        );
    END COMPONENT;
    CONSTANT clk_period : TIME := 20 ns;
    SIGNAL clk, reset, inicio : STD_LOGIC;
    SIGNAL ent1, ent2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL pronto, erro : STD_LOGIC;
    SIGNAL quoc, resto : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
    UUT : ENTITY work.divisor PORT MAP (reset, clk, inicio, ent1, ent2, pronto, erro, quoc, resto);

    reset <= '1', '0' AFTER 5 ns;
    inicio <= '1';
    

    clock_gen : PROCESS
    BEGIN
        clk <= '1';
        WAIT FOR clk_period/2;
        clk <= '0';
        WAIT FOR clk_period/2;
    END PROCESS;

    file_io : PROCESS
        VARIABLE read_col_from_input_buf : line; -- buffers de entrada e saida
        FILE input_buf : text; -- text is keyword
        VARIABLE write_col_to_output_buf : line;
        FILE output_buf : text; -- text is keyword

        VARIABLE val_A, val_B : STD_LOGIC_VECTOR(3 DOWNTO 0); -- entradas A e B do arquivo
        VARIABLE val_SPACE : CHARACTER; -- para espacos

    BEGIN
        file_open(input_buf, "C:\Users\Eduardo Betim\Documents\Repo-UFSC\STD_LAB\divisores\divisor_txt\entradas.txt", read_mode);
        file_open(output_buf, "C:\Users\Eduardo Betim\Documents\Repo-UFSC\STD_LAB\divisores\divisor_txt\saidas_tb.txt", write_mode);

        WAIT UNTIL reset = '0'; -- espera reset desligar

        WHILE NOT endfile(input_buf) LOOP
            readline(input_buf, read_col_from_input_buf);
            read(read_col_from_input_buf, val_A);
            read(read_col_from_input_buf, val_SPACE); -- read in the space character
            read(read_col_from_input_buf, val_B);

            -- Pass the read values to signals
            ent1 <= val_A;
            ent2 <= val_B;

            WAIT UNTIL pronto'EVENT and pronto = '0';
				WAIT FOR 2 ns;
            write(write_col_to_output_buf, quoc);
            write(write_col_to_output_buf, val_SPACE);
            write(write_col_to_output_buf, resto);
            writeline(output_buf, write_col_to_output_buf); -- 

        END LOOP;

        write(write_col_to_output_buf, STRING'("SIMULACAO CONCLUIDA"));
        writeline(output_buf, write_col_to_output_buf); -- 

        file_close(input_buf);
        file_close(output_buf);

        WAIT;
    END PROCESS;
END tb;