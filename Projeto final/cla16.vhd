library IEEE; use IEEE.STD_LOGIC_1164.all;

entity cla16 is
	port(a, b: in  STD_LOGIC_VECTOR(15 downto 0);
		 cin:  in  STD_LOGIC;
		 cout: out STD_LOGIC;
		 s:    out STD_LOGIC_VECTOR(15 downto 0));
end;

architecture struct of cla16 is

component cla4 is
	port(a, b: 		   in  STD_LOGIC_VECTOR(3 downto 0);
		 cin:  		   in  STD_LOGIC;
		 s:     	   out STD_LOGIC_VECTOR(3 downto 0);
		 cout: 		   out STD_LOGIC;
		 p, g: 		   out STD_LOGIC);
end component;

component vuaparalela16bits is
	port (c0: in STD_LOGIC;
		  p, g: in STD_LOGIC_VECTOR(3 downto 0);
		  cout: out STD_LOGIC;
		  c: buffer STD_LOGIC_VECTOR(4 downto 1));
end component;

signal sinalp, sinalg:     STD_LOGIC_VECTOR(3 downto 0);
signal sinalc:             STD_LOGIC_VECTOR(3 downto 0);
signal pLCU, gLCU, ignore: STD_LOGIC;

begin
	cla4_1: cla4 port map (a(3  downto  0), b(3  downto  0),  cin		, s(3  downto  0), ignore, sinalp(0), sinalg(0));
	cla4_2: cla4 port map (a(7  downto  4), b(7  downto  4),  sinalc(0)	, s(7  downto  4), ignore, sinalp(1), sinalg(1));
	cla4_3: cla4 port map (a(11 downto  8), b(11 downto  8),  sinalc(1)	, s(11 downto  8), ignore, sinalp(2), sinalg(2));
	cla4_4: cla4 port map (a(15 downto 12), b(15 downto 12),  sinalc(2)	, s(15 downto 12), ignore, sinalp(3), sinalg(3));
	
	v1: vuaparalela16bits port map (cin, sinalp, sinalg, cout, sinalc);
end;