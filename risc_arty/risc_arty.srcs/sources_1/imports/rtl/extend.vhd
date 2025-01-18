library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity extend is -- extend unit
  port(instr:  in  STD_ULOGIC_VECTOR(31 downto 7);
    immsrc: in  STD_ULOGIC_VECTOR(2  downto 0);
    immext: out STD_ULOGIC_VECTOR(31 downto 0));
end;
    
architecture behave of extend is
begin
  process(instr, immsrc) begin
    case immsrc is
      -- I-type
      when "000" =>
        immext <= (31 downto 12 => instr(31)) & instr(31 downto 20);
      -- S-types (stores)
      when "001" =>
        immext <= (31 downto 12 => instr(31)) & instr(31 downto 25) & instr(11 downto 7);
      -- B-type (branches)
      when "010" =>
        immext <= (31 downto 12 => instr(31)) & instr(7) & instr(30 downto 25) & instr(11 downto 8) & '0';
      -- J-type (jal, jalr)
      when "011" =>
        immext <= (31 downto 20 => instr(31)) & instr(19 downto 12) & instr(20) & instr(30 downto 21) & '0';
      -- U-type (lui, auipc)  
      when "100" =>
        immext <= instr(31 downto 12) & (11 downto 0 => '0');
      -- I-type shift (slli, srli, srai)  
      when "101" =>
        immext <= (31 downto 5 => '0') & instr(24 downto 20);
      when others =>
        immext <= (31 downto 0 => 'X');
    end case;
  end process;
end;