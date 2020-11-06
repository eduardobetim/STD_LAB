library ieee;
use ieee.std_logic_1164.all;


entity flipflopjk is
port(
		j,k,rst,clk:in std_logic;
		q:out std_logic);
end flipflopjk;


architecture comportamento of flipflopjk is
signal JK: std_logic_vector(1 downto 0);
signal v: std_logic;
begin
	process(clk,j,k)
	begin
		if(rst='0')then
			if (clk'event and clk = '1') then
			case JK is
			when "10"=>
				v <='1';
			when "01"=>
				v <='0';
			when "11"=>
				v <=not v;
			when others=>
				null;
			end case;
			end if;
		else
			v <='0';
		end if;
q<=v;
end process;
end comportamento;



			