<<<<<<< HEAD
library IEEE; use IEEE.STD_LOGIC_1164.all;

entity inv is
	port(a: in STD_LOGIC;
		 y: out STD_LOGIC);
end;

architecture synth of inv is
begin
	y <= not a;
=======
library IEEE; use IEEE.STD_LOGIC_1164.all;

entity inv is
	port(a: in STD_LOGIC;
		 y: out STD_LOGIC);
end;

architecture synth of inv is
begin
	y <= not a;
>>>>>>> 995b63df5e9ee88801d316310e5ccdcb269c0878
end;