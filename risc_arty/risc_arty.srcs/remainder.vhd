
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity remainder is
    Port ( a,b:         in  STD_ULOGIC_VECTOR (31 downto 0);
           rem_signed:  in  STD_ULOGIC;
           y:           out STD_ULOGIC_VECTOR (31 downto 0));
end remainder;

architecture Behavioral of remainder is

begin
  process(a, b, rem_signed)
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
      -- division by zero returns the dividend
      y <= a;
    elsif (rem_signed = '1') then
      -- most negative number divided by -1
      if (a = X"80000000" and b = (b'range => '1')) then
        y <= (others => '0'); 
      else
        y <= std_ulogic_vector(dividend_signed rem divisor_signed);
      end if;
    else
     
      y <= std_ulogic_vector(dividend_unsigned rem divisor_unsigned);
    end if;
  end process;


end Behavioral;
