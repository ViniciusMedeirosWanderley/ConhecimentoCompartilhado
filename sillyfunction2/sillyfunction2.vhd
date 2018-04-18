library IEEE; use IEEE.STD_LOGIC_1164.all;

 entity sillyfunction2 is 
 port(a, b, c: in STD_LOGIC;
 y: out STD_LOGIC);
 end; 
 
 architecture synth of sillyfunction2 is 
 begin 
	y <= (a and not b ) or
	( not b and not c);
	end;