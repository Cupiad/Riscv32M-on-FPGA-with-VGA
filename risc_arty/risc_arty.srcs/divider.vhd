
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity divider is
    Port ( a, b:            in STD_ULOGIC_VECTOR (31 downto 0);
           div_signed:      in STD_ULOGIC;
           y:               out STD_ULOGIC_VECTOR (31 downto 0));
end divider;

architecture Behavioral of divider is
begin
  process(a, b, div_signed)
    variable dividend_signed   : signed(31 downto 0);
    variable divisor_signed    : signed(31 downto 0);
    variable dividend_unsigned : unsigned(31 downto 0);
    variable divisor_unsigned  : unsigned(31 downto 0);
  begin
   
    dividend_signed := signed(a);
    divisor_signed := signed(b);
    dividend_unsigned := unsigned(a);
    divisor_unsigned := unsigned(b);

    if (b = (b'range => '0')) then
      -- Division by zero returns all ones
      y <= (others => '1');
    elsif (div_signed = '1') then
      -- Special case for signed division
      if (a = X"80000000" and b = (b'range => '1')) then
        y <= X"80000000";  -- Return most negative number
      else
        y <= std_ulogic_vector(dividend_signed / divisor_signed);
      end if;
    else
      y <= std_ulogic_vector(dividend_unsigned / divisor_unsigned);
    end if;
  end process;
end Behavioral;
