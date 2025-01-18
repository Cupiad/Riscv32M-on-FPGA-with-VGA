
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity multiplier is
    Port ( a, b :       in            STD_ULOGIC_VECTOR (31 downto 0);
           mul_type :   in            STD_ULOGIC_VECTOR (1 downto 0);
           y :          out           STD_ULOGIC_VECTOR (31 downto 0)
           );
end multiplier;

architecture Behavioral of multiplier is

  signal product_signed   : STD_ULOGIC_VECTOR(63 downto 0);
  signal product_unsigned : STD_ULOGIC_VECTOR(63 downto 0);
  signal product_su      : STD_ULOGIC_VECTOR(63 downto 0);
  signal a_signed        : signed(31 downto 0);
  signal b_signed        : signed(31 downto 0);
  signal a_unsigned      : unsigned(31 downto 0);
  signal b_unsigned      : unsigned(31 downto 0);
  
begin

  a_signed <= signed(a);
  b_signed <= signed(b);
  a_unsigned <= unsigned(a);
  b_unsigned <= unsigned(b);
 
  product_signed   <= std_ulogic_vector(a_signed * b_signed);
  product_unsigned <= std_ulogic_vector(a_unsigned * b_unsigned);
  product_su      <= std_ulogic_vector(resize(a_signed * signed('0' & b_unsigned), 64));
 
  process(mul_type, product_signed, product_unsigned, product_su) begin
    case mul_type is
      when "00" =>   y <= product_signed(31 downto 0);    -- MUL: lower 32 bits
      when "01" =>   y <= product_signed(63 downto 32);   -- MULH: upper 32 bits signed
      when "10" =>   y <= product_unsigned(63 downto 32); -- MULHU: upper 32 bits unsigned
      when "11" =>   y <= product_su(63 downto 32);       -- MULHSU: upper 32 bits signed*unsigned
      when others => y <= (others => 'X');
    end case;
  end process;


end Behavioral;
