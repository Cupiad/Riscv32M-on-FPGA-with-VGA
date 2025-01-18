library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity signext is
  port(DataIn:      in  STD_ULOGIC_VECTOR(31 downto 0);
       MemSel:      in  STD_ULOGIC_VECTOR(1  downto 0);
       SignExtEn:   in  STD_ULOGIC;
       DataOut:     out STD_ULOGIC_VECTOR(31 downto 0));
end;
    
architecture behave of signext is
begin
  process(DataIn, MemSel) begin
    if (SignExtEn = '1') then
      case MemSel is
        when "00" => -- DataIn 8 LSBs -> extend Bit 31...8
          DataOut <= (31 downto 8 => DataIn(7)) & DataIn(7 downto 0);
        when "01" => -- DataIn 16 LSBs -> extend Bit 31...16
          DataOut <= (31 downto 16 => DataIn(15)) & DataIn(15 downto 0);
        when "10" => -- no sign extension
          DataOut <= DataIn;        
        when others =>
          DataOut <= (others => 'X');
      end case;
    else
      case MemSel is
        when "00" | "01" | "10" => -- no sign extension
          DataOut <= DataIn;
        when others =>
          DataOut <= (others => 'X');
      end case;      
    end if;
  end process;
end;