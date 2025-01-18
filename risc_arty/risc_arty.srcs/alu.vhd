library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity alu is
  port(a, b:       in   STD_ULOGIC_VECTOR(31 downto 0);
       ALUControl: in   STD_ULOGIC_VECTOR(4  downto 0);
       ALUResult:  out  STD_ULOGIC_VECTOR(31 downto 0);
       Zero:       out  STD_ULOGIC;
       Less:       out  STD_ULOGIC);
end;

architecture behave of alu is


  --M extension
  component multiplier
    port(a, b:     in  STD_ULOGIC_VECTOR(31 downto 0);
         mul_type: in  STD_ULOGIC_VECTOR(1 downto 0);
         y:        out STD_ULOGIC_VECTOR(31 downto 0));
  end component;

  component divider
    port(a, b:       in  STD_ULOGIC_VECTOR(31 downto 0);
         div_signed: in  STD_ULOGIC;
         y:          out STD_ULOGIC_VECTOR(31 downto 0));
  end component;

  component remainder
    port(a, b:       in  STD_ULOGIC_VECTOR(31 downto 0);
         rem_signed: in  STD_ULOGIC;
         y:          out STD_ULOGIC_VECTOR(31 downto 0));
  end component;

  signal sum :          STD_ULOGIC_VECTOR(31 downto 0);
  signal ALUResultInt : STD_ULOGIC_VECTOR(31 downto 0);
  signal lt :           STD_ULOGIC;
  
  --M extension
  signal mul_result:    STD_ULOGIC_VECTOR(31 downto 0);
  signal div_result:    STD_ULOGIC_VECTOR(31 downto 0);
  signal rem_result:    STD_ULOGIC_VECTOR(31 downto 0);
  signal mul_type:      STD_ULOGIC_VECTOR(1 downto 0);
  
begin
  sum <= std_ulogic_vector(unsigned(a) + unsigned(b)) when Alucontrol(0)='0' else  -- a + b
         std_ulogic_vector(unsigned(a) + unsigned(not(b)) + 1);                    -- a + (-b)
  lt  <= (a(31) and not(b(31))) or (a(31) and sum(31)) or (not(b(31)) and sum(31)) when ALUControl(1) = '0' else  -- compare signed
         sum(31);                                                                                                 -- compare unsigned
         
  mult: multiplier port map(a => a, b => b, mul_type => mul_type, y => mul_result);
  div:  divider port map(a => a, b => b, div_signed => ALUControl(0), y => div_result);
  rema:  remainder port map(a => a, b => b, rem_signed => ALUControl(0), y => rem_result);      
         
   mul_type <= ALUControl(1 downto 0);      
            
  process(a,b,ALUControl,sum,lt,ALUResultInt) begin
    case ALUControl is
      when "00000" | "00001"  => ALUResultInt <= sum;
      when "00010"           => ALUResultInt <= std_ulogic_vector(SHIFT_LEFT(unsigned(a), to_integer(unsigned(b(4 downto 0)))));
      when "00101" | "00111"  => ALUResultInt <= (0 => lt, others => '0');
      when "01000"           => ALUResultInt <= a xor b;
      when "01010"           => ALUResultInt <= std_ulogic_vector(SHIFT_RIGHT(unsigned(a), to_integer(unsigned(b(4 downto 0)))));
                               -- arithmetic shift right: sign bit extension and unsigned shift right (arithmetic shift not available in NUMERIC_STD_UNSIGNED)
      when "01011"           => --if (a(31) = '1') then  -- check sign bit (MSB)
                                 --ALUResultInt <= not(To_StdLogicVector(2**(31-to_integer(b(4 downto 0)))-1, ALUResult'length)) or SHIFT_RIGHT(a, to_integer(b(4 downto 0)));
                               --else
                                 ALUResultInt <= std_ulogic_vector(SHIFT_RIGHT(signed(a), to_integer(unsigned(b(4 downto 0)))));
                               --end if;  
      when "01100"           => ALUResultInt <= a or b;
      when "01110"           => ALUResultInt <= a and b; 
      
      -- M extension operations
      when "10000" | "10001" | 
           "10010" | "10011" => ALUResultInt <= mul_result;            -- MUL/MULH/MULHSU/MULHU
      when "10100" | "10101" => ALUResultInt <= div_result;            -- DIV/DIVU
      when "10110" | "10111" => ALUResultInt <= rem_result;            -- REM/REMU
           
      when others           => ALUResultInt <= (others => 'X');
    end case;
  end process;
  
  Zero      <= '1' when ALUResultInt = X"00000000" else '0';
  Less      <= lt;
  ALUResult <= ALUResultInt;
  
end;
