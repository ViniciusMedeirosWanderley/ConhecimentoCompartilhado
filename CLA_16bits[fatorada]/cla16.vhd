library IEEE; use IEEE.STD_LOGIC_1164.all;

entity cla16 is
	port(a, b: 		   in  STD_LOGIC_VECTOR(15 downto 0);
		 cin:  		   in  STD_LOGIC;
		 s:     	   out STD_LOGIC_VECTOR(15 downto 0);
		 cout: 		   out STD_LOGIC;
		p, g:          buffer STD_LOGIC);
end;

architecture struct of cla16 is

component vuafatorada is
	port(cin: 	 in STD_LOGIC;
		 p, g:   in STD_LOGIC_VECTOR(3 downto 0);
		 pg, gg: out STD_LOGIC;
		 c: 	 buffer STD_LOGIC_VECTOR(4 downto 1));
end component;

component cla4_fatorada is
	port(a, b: 		   in  STD_LOGIC_VECTOR(3 downto 0);
		 cin:  		   in  STD_LOGIC;
		 s:     	   out STD_LOGIC_VECTOR(3 downto 0);
		 p, g: 		   buffer STD_LOGIC);
end component;

signal sinalp, sinalg:   STD_LOGIC_VECTOR(3 downto 0);
signal sinalc:      	 STD_LOGIC_VECTOR(4 downto 1);

begin
	somador4_0: cla4_fatorada   port map (a(3 downto 0), b(3 downto 0), cin, s(3 downto 0), sinalp(0), sinalg(0));
	somador4_1: cla4_fatorada   port map (a(7 downto 4), b(7 downto 4), sinalc(1), s(7 downto 4), sinalp(1), sinalg(1));
	somador4_2: cla4_fatorada   port map (a(11 downto 8), b(11 downto 8),  sinalc(2), s(11 downto 8),  sinalp(2), sinalg(2));
	somador4_3: cla4_fatorada   port map (a(15 downto 12), b(15 downto 12), sinalc(3), s(15 downto 12), sinalp(3), sinalg(3));
	carry: 	 vuafatorada port map (cin, sinalp, sinalg, p, g, sinalc);
	cout <= sinalc(4);
end;