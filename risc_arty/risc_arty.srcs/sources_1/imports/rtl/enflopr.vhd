library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity enflopr is -- flip-flop with synchronous reset
  generic(width: integer);
  port(clk:   in  STD_ULOGIC;
       reset: in  STD_ULOGIC;
       clr:   in  STD_ULOGIC;
       en:    in  STD_ULOGIC;
       d:     in  STD_ULOGIC_VECTOR(width-1 downto 0);
       q:     out STD_ULOGIC_VECTOR(width-1 downto 0));
end;

architecture asynchronous of enflopr is
begin
  process(clk, reset) is
    variable mem: STD_ULOGIC_VECTOR(width-1 downto 0);
  begin
   -- if reset='1' then                      mem := (others => '0');
   -- elsif rising_edge(clk) and en='1' then mem := d;
   -- end if;
   -- q <= mem;
    if reset='1' then   q <= (others => '0');
    elsif rising_edge(clk) then
      if clr = '1' then q <= (others => '0');
      elsif en='1' then q <= d;
      end if;
    end if;
  end process;
end;
