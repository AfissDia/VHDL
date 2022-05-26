library ieee ;
use ieee.std_logic_1164.all ;
entity gen_pulse is
port (
	clocks : in std_logic ;
	pulse : out std_logic
);
end;
architecture behave of gen_pulse is
			signal count : natural range 0 to 50e6-1 ;

	begin
	process
			-- constant COUNT_MAX : natural := 50e6-1;
			--signal count : natural range 0 to 50e6-1 ;
		begin
		wait until rising_edge ( clocks );
		if count < 50e6-1 then
			count <= count +1;
			pulse <= '0';
		else
			count <= 0;
			pulse <= '1';
		end if;
		
	end process ;
end;
