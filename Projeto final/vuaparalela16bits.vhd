library IEEE; use IEEE.STD_LOGIC_1164.ALL;

entity vuaparalela16bits is
	port(c0: in STD_LOGIC;
		 p, g: in STD_LOGIC_VECTOR(3 downto 0);
		 cout: out STD_LOGIC;
		 c: buffer STD_LOGIC_VECTOR(4 downto 1));
end;

architecture synth of vuaparalela16bits is
begin
	c(1) <= g(0) or (p(0) and c0);
	c(2) <= g(1) or (g(0) and p(1)) or (p(0) and p(1) and c0);
	c(3) <= g(2) or (g(1) and p(2)) or (g(0) and p(1) and p(2)) or (c0 and p(0) and p(1) and p(2));
	c(4) <= g(3) or (g(2) and p(3)) or (g(1) and p(2) and p(3)) or (g(0) and p(1) and p(2) and p(3)) or (c0 and p(0) and p(1) and p(2) and p(3));
	
	cout <= g(3) or (g(2) and p(3)) or (g(1) and p(2) and p(3)) or (g(0) and p(1) and p(2) and p(3)) or (c0 and p(0) and p(1) and p(2) and p(3));
end;