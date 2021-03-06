library ieee ;
use ieee . std_logic_1164 .all ;
entity compteur is
port (
clock : in std_logic ;
led : out integer range 0 to 9
);
end;
architecture behav of compteur is
	signal count : integer range 0 to 9;
	begin
	process ( clock )
		begin
		if rising_edge ( clock ) then
			if count < 9 then
				count <= count + 1;
			else
				count <= 0;
			end if;
		end if;
	end process ;
	led <= count ;
end;