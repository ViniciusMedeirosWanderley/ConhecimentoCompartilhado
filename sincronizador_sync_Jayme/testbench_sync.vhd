library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use STD.TEXTIO.ALL ;

entity testbench_sync is -- no inputs or outputs
end;
architecture sim of testbench_sync is
	component sync
		port(clk: in STD_LOGIC;
         	 d: in STD_LOGIC;
         	 q: out STD_LOGIC);
	end component;
signal clk: STD_LOGIC;
signal clk2: STD_LOGIC;
signal d: STD_LOGIC;
signal q: STD_LOGIC;
signal qexpected: STD_LOGIC;
constant MEMSIZE: integer := 9; --colocar numero de linhas aqui que eu vou escolher.
type tvarray is array (MEMSIZE downto 0) of
STD_LOGIC_VECTOR (2 downto 0); --número de colunas começando a contar do 0.
signal testvectors: tvarray;
shared variable vectornum, errors: integer;
begin
-- instantiate device under test
dut: sync port map (clk2, d, q);
-- generate clock
process begin
	clk <= '1'; wait for 10 ns;  --mudar esses números.
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
	FILE_OPEN (tv, "./sync.tv", READ_MODE);
	while not endfile(tv) loop
		readline (tv, L);
		for j in 2 downto 0 loop --número de colunas.
			read (L, ch);
			if (ch = '_') then read (L, ch);
			end if;
			if (ch = 'U') then 
				testvectors (i) (j) <= 'U';
			end if;
			if (ch = '0') then
				testvectors (i) (j) <= '0';
			end if;
			if (ch = '1') then 
				testvectors (i) (j) <= '1';
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
	if (clk'event and clk='1') then
		d <= testvectors (vectornum) (2);
		clk2 <= testvectors (vectornum) (1);
		qexpected <= testvectors (vectornum)(0); --numero de colunas da tabela verdade começando da direita.
	end if;
end process;
-- check results on falling edge of clk
process (clk) begin
	if (clk'event and clk = '0')then
		--for k in 0 to 3 loop
			assert q = qexpected
				report "Vetor deu erro n. Teste: " &integer'image(vectornum)&". Esperado qesp ="& STD_LOGIC'image(qexpected)&"Valor Obtido: q1 ="& STD_LOGIC'image(q);
			
			if (q /= qexpected) then
				errors := errors + 1;
			end if;
		--end loop;
		
		vectornum := vectornum + 1;
		if (vectornum = MEMSIZE) then
			if (errors = 0) then
				--report "Just kidding --" &
				report integer'image (vectornum) &
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
