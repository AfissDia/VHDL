library ieee ;
use ieee . std_logic_1164 .all ;
entity simple_gate is
port (
		a , b : in bit ;
		c : out bit
	);
end;
	architecture rtl of simple_gate is
	begin
	c <= a xor b ;
end;
