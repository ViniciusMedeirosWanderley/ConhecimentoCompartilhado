<<<<<<< HEAD
library IEEE; use IEEE.STD_LOGIC_1164.all;

entity mux2_estruturado is	
	port(d0, d1: in STD_LOGIC_VECTOR(3 downto 0);
		s: in STD_LOGIC;
		y: out STD_LOGIC_VECTOR(3 downto 0));
	end;
	
architecture struct of mux2_estruturado is
	component tristate
	port(a: in STD_LOGIC_VECTOR(3 downto 0);
		en: in STD_LOGIC;
		y: out STD_LOGIC_VECTOR(3 downto 0));
	end component;
	component inv
	port(a: in STD_LOGIC;
		 y: out STD_LOGIC);
	end component;
	signal sbar: STD_LOGIC;
	
begin
	tinv: inv port map (s, sbar);
	t0: tristate port map(d0, sbar, y);
	t1: tristate port map(d1,s,y);
end;
=======
library IEEE; use IEEE.STD_LOGIC_1164.all;

entity mux2_estruturado is	
	port(d0, d1: in STD_LOGIC_VECTOR(3 downto 0);
		s: in STD_LOGIC;
		y: out STD_LOGIC_VECTOR(3 downto 0));
	end;
	
architecture struct of mux2_estruturado is
	component tristate
	port(a: in STD_LOGIC_VECTOR(3 downto 0);
		en: in STD_LOGIC;
		y: out STD_LOGIC_VECTOR(3 downto 0));
	end component;
	component inv
	port(a: in STD_LOGIC;
		 y: out STD_LOGIC);
	end component;
	signal sbar: STD_LOGIC;
	
begin
	tinv: inv port map (s, sbar);
	t0: tristate port map(d0, sbar, y);
	t1: tristate port map(d1,s,y);
end;
>>>>>>> 995b63df5e9ee88801d316310e5ccdcb269c0878
