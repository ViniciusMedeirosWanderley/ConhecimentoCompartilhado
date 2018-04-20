library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use STD.TEXTIO.ALL ;

entity latch is -- no inputs or outputs
end;
architecture sim of latch is
	component latch
		port(clk: in STD_LOGIC;
         	 d: in STD_LOGIC_VECTOR (3 downto 0);
         	 q: out STD_LOGIC_VECTOR (3 downto 0));
	end component;
signal clk: STD_LOGIC;
signal d: STD_LOGIC_VECTOR(3 downto 0);
signal yexpected: STD_LOGIC_VECTOR(3 downto 0);
constant MEMSIZE: integer := 32; --colocar numero de linhas aqui que eu vou escolher.
type tvarray is array (MEMSIZE downto 0) of
STD_LOGIC_VECTOR (9 downto 0); --número de colunas começando a contar do 0.
signal testvectors: tvarray;
shared variable vectornum, errors: integer;
begin
-- instantiate device under test
dut: latch port map (clk, d, q);
-- generate clock
process begin
	clk <= '1'; wait for 15 ns;  --mudar esses números.
	clk <= '0'; wait for 5 ns;  --mudar esses números.
end process;
-- at start of test, load vectors
-- and pulse reset
process is
file tv: TEXT;
variable i, j: integer;
variable L: line;
variable ch: character;
begin
	-- read file of test vectors
	i := 0;
	FILE_OPEN (tv, "./latch.tv", READ_MODE);
	while not endfile(tv) loop
		readline (tv, L);
		for j in 9 downto 0 loop --número de colunas.
			read (L, ch);
			if (ch = '_') then read (L, ch);
			end if;
			if (ch = '0') then
			testvectors (i) (j) <= '0';
			else testvectors (i) (j) <= '1';
			end if;
		end loop;
		i := i + 1;
	end loop;
	vectornum := 0; errors := 0;
	-- reset <= '1'; wait for 27 ns; reset <= '0';
	wait;
end process;
-- apply test vectors on rising edge of clk
process (clk) begin
	if (clk'event and clk='1') the
		clk <= testvectors (vectornum) (8);
		d <= testvectors (vectornum) (7 downto 4);
		yexpected <= testvectors (vectornum)(3 downto 0); --numero de colunas da tabela verdade começando da direita.
	end if;
end process;
-- check results on falling edge of clk
process (clk) begin
	if (clk'event and clk = '0')then
		for k in 0 to 3 loop
			assert y(k)= yexpected(k)
				report "Vetor deu erro n. Teste: " &integer'image(vectornum)&". Esperado yesp ="& STD_LOGIC'image(yexpected(k))&"Valor Obtido: y1("&integer'image(k)&") ="& STD_LOGIC'image(y(k));
			
			if (y /= yexpected) then
				errors := errors + 1;
			end if;
		end loop;
		
		vectornum := vectornum + 1;
		--if (is_x (testvectors(vectornum))) then
			if (errors = 0) then
				--report "Just kidding --" &
				integer'image (vectornum) &
				"tests completed successfully."
				severity failure;
			else
				report integer'image (vectornum) &
				"tests completed, errors = " &
				integer'image (errors)
				severity failure;
			end if;
		end if;
	end if;
	
end process;
end;
