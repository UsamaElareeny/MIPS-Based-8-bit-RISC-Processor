library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MIPS_Processor is
	port(
		clk,reset : in std_logic;
		pc_out : out std_logic_vector(7 downto 0) := x"00";  -- PC of 8 bits
		destnation_register : out std_logic_vector( 15 downto 0) := x"0000"
	);
end entity;

architecture arc of MIPS_Processor is
	
	type Memory is array (0 to 7) of std_logic_vector (15 downto 0); 
        signal MyRAM: Memory :=((others=> (others=>'0')));   -- Register file 

	type Instructions_rom is array (0 to 255) of std_logic_vector(15 downto 0);
	constant MyRom : Instructions_rom :=(
		"0111000000000000", -- R0 = 0  - Initialize the sum with zero

		"0111001000000101", -- R1 = 5 - Initialize the counter of loop

		"0001000001000000", -- R0 = R0 + R1

		"0011001001000001", -- R1 = R1 - 1

		"1110000000000000", -- Checking the Z flag if (R1 = 0, PC = 0)

		"1111000000000010", -- BUN
	
		others => "0000000000000000" 
	);

	type DataMemory is array (0 to 511) of std_logic_vector (15 downto 0); -- Data Memory 
        signal M: DataMemory :=((others=> (others=>'0')));   

	signal pc_current : std_logic_vector(7 downto 0) := x"00";
	signal alu_func: std_logic_vector (2 downto 0) := "000";
	signal instruction_register : std_logic_vector(15 downto 0) := x"0000";
	signal CF, ZF, SF: std_logic := '0';
	
   	signal WE : std_logic; -- Memory Write Enable
	
	begin
		process(clk, reset)
		variable temp_result : std_logic_vector(15 downto 0);
		variable opcode : std_logic_vector(3 downto 0);
		variable instruction_register_v : std_logic_vector(15 downto 0);
		variable alu_func_v,rs_num, rt_num, rd_num : std_logic_vector (2 downto 0) := "000";
		variable addr12 : std_logic_vector(11  downto 0);
		variable rs,rt: std_logic_vector(15 downto 0) := x"0000";
		variable immediate6,addr6 : std_logic_vector(5 downto 0);
		variable immediate9,addr9 : std_logic_vector(8 downto 0);
		begin
			if reset = '1' then
				pc_current <= x"00";
				pc_out <= x"00";
			elsif (rising_edge(clk)) then
					
					instruction_register_v := MyRom(to_integer(unsigned(pc_current(3 downto 0))));
					
					rs_num := instruction_register_v(11 downto 9);
					rt_num := instruction_register_v(8 downto 6);
					rd_num := instruction_register_v(5 downto 3);
					alu_func_v := instruction_register_v( 2 downto 0);
					immediate6 := instruction_register_v(5 downto 0);
					immediate9 := instruction_register_v(8 downto 0);
					addr9 := instruction_register_v(8 downto 0);
					addr6:= instruction_register_v(5 downto 0);
					addr12 := instruction_register_v(11 downto 0);
					opcode := instruction_register_v(15 downto 12);
					
					rs := MyRAM(to_integer(unsigned(rs_num)));
					rt := MyRAM(to_integer(unsigned(rt_num)));
					
					alu_func <= alu_func_v;
					instruction_register <= instruction_register_v;
				pc_out <= pc_current;
				pc_current <= std_logic_vector(unsigned(pc_current) + 1 );
				pc_out <= pc_current;
				case opcode is
					when x"1" =>
						case alu_func_v is	
							when "000" =>
								temp_result(15 downto 0) := std_logic_vector(unsigned(rs) + unsigned(rt));
								CF <= temp_result(15) xor temp_result(14);
								SF <= temp_result(15);
							when "001" =>
								temp_result(15 downto 0) := std_logic_vector(unsigned(rs) - unsigned(rt));
								CF <= temp_result(15) xor temp_result(14);
								SF <= temp_result(15);
							when "010" =>
								temp_result(15 downto 0) := std_logic_vector(unsigned(rs (7 downto 0)) * unsigned (rt(7 downto 0)));
								CF <= temp_result(15) xor temp_result(14);
								SF <= temp_result(15);							
							when "011" =>
								temp_result(15 downto 0) := std_logic_vector( unsigned(rs) / unsigned(rt) );
								--temp_result(15 downto 8) := std_logic_vector( unsigned(rs) mod unsigned(rt));
								SF <= temp_result(15);							
							when "100" =>
								temp_result(15 downto 0) :=(rs and rt);
							when "101" =>
								temp_result(15 downto 0) :=  (rs or rt);
							when "110" =>
								temp_result(15 downto 0) :=   (rs xor rt);
							when "111" =>
								temp_result(15 downto 0) :=  (not rs);
							when others =>
								
						end case;
        					if temp_result = x"0000" then 
        						ZF <= '1';
        					else 
        						ZF <= '0';
        					end if;

						destnation_register <= temp_result(15 downto 0);

						MyRAM(to_integer(unsigned(rd_num))) <= temp_result(15 downto 0);

					when x"2" =>
						temp_result (15 downto 0) := std_logic_vector(signed(rs) + signed(immediate6));
						rt := temp_result (15 downto 0);
						destnation_register <= temp_result (15 downto 0);
						MyRAM(to_integer(unsigned(rt_num))) <= temp_result (15 downto 0);
					when x"3" =>
						temp_result (15 downto 0) := std_logic_vector(signed(rs) - signed(immediate6));
        					if temp_result = x"0000" then 
        						ZF <= '1';
        					else 
        						ZF <= '0';
        					end if;
						rt := temp_result (15 downto 0);
						--destnation_register <= temp_result (15 downto 0);
						MyRAM(to_integer(unsigned(rt_num))) <= temp_result (15 downto 0);
					when x"4" =>
						temp_result(15 downto 0) := rs and ("0000000000" & immediate6);
						destnation_register <= temp_result(15 downto 0);
						MyRAM(to_integer(unsigned(rt_num))) <= temp_result(15 downto 0);
					when x"5" =>
						temp_result(15 downto 0) := rs or ("0000000000" & immediate6);
						destnation_register <= temp_result(15 downto 0);
						MyRAM(to_integer(unsigned(rt_num))) <= temp_result(15 downto 0);
					when x"6" =>
						temp_result(15 downto 0) := rs xor ("0000000000" & immediate6);
						destnation_register <= temp_result(15 downto 0);
						MyRAM(to_integer(unsigned(rt_num))) <= temp_result(15 downto 0);
					when x"7" =>
						temp_result(15 downto 0) := ("0000000" & immediate9);
						destnation_register <= temp_result(15 downto 0);
						MyRAM(to_integer(unsigned(rs_num))) <= temp_result(15 downto 0);
					when x"8" =>
					        MyRAM(to_integer(unsigned(rs_num))) <= M(to_integer(unsigned(addr9))); 
					when x"9" =>
						if WE = '1' then
						   M(to_integer(unsigned(addr9))) <= rs; 
						end if;
					when x"A" =>
						if rs = rt then
							pc_current(5 downto 0) <= addr6;
							pc_out <= pc_current;
						end if;
					when x"B" =>
						if rs > rt then
							pc_current(5 downto 0) <= addr6;
							pc_out <= pc_current;
						end if;
					when x"C" =>
						if rs < rt then
							pc_current(5 downto 0) <= addr6;
							pc_out <= pc_current;
						end if;
					when x"D" =>
						if CF = '1' then
							pc_current <= addr12(7 downto 0);
							pc_out <= pc_current;
						end if;
					when x"E" =>
						if ZF = '1' then
							pc_current(5 downto 0) <= addr6;
							pc_out <= pc_current;
						end if;
					when x"F" =>
						pc_current <= addr12(7 downto 0);
						pc_out <= pc_current;
					when others =>
						destnation_register <= x"0000";
						ZF <= '1';
				end case;

			end if;
			
			
		end process;
		
end architecture;