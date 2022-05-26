library ieee ;
use ieee.std_logic_1164.all ;
entity Led_blink is
port (
	clck : in std_logic ;
	pul : out std_logic
);
end Led_blink;

architecture behavioral of Led_blink is
			signal puls : std_logic :='0' ;
			signal count : integer range 0 to 50000000 := 0 ;

	begin
	counter :process(clck)
			-- constant COUNT_MAX : natural := 50e6-1;
			--signal count : natural range 0 to 50e6-1 ;
		begin
		 if rising_edge (clck) then 
			if count = 49999999 then
			count <= 0;
			puls <= not puls;
		else
			count <=count + 1;
		end if;
	end if;
	end process ;
	pul<=puls;
end behavioral;