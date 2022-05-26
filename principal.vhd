library ieee ;
use ieee.std_logic_1164.all ;
entity principal is
port (
	input_p: in std_logic ;
	output_p : out std_logic_vector (6 downto 0)
--	output_p1 : out std_logic_vector (6 downto 0)
);
end principal;

Architecture arch of principal is
	 signal sign1 : std_logic ;
	 signal sign2 : integer;
	 signal sign3 : integer;
begin
module1 : entity work.Led_blink port map(clck => input_p, pul => sign1); 
module2 : entity work.compteur port map(clock => sign1, led=>sign2);
module3 : entity work.dec_7seg port map(digit => sign2, segments =>output_p);
--module4 : entity work.principal port map(output_p => sign2 , segments1 => output_p1); 
end;