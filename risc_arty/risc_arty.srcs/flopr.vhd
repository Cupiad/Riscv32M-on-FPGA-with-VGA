library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity flopr is -- flip-flop with synchronous reset
  generic(width: integer);
  port(clk:   in  STD_ULOGIC; 
       reset: in  STD_ULOGIC;
       d:     in  STD_ULOGIC_VECTOR(width-1 downto 0);
       q:     out STD_ULOGIC_VECTOR(width-1 downto 0));
end;

architecture asynchronous of flopr is
begin
  process(clk, reset) begin
    if reset='1' then           q <= (others => '0');
    elsif rising_edge(clk) then q <= d;
    end if;
  end process;
end;
