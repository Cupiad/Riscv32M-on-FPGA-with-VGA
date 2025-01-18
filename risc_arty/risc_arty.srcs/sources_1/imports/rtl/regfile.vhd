library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD_UNSIGNED.all;
use IEEE.NUMERIC_STD.all;
entity regfile is
 -- three-port register file
  port(clk:        in  STD_ULOGIC;
       reset:      in  STD_ULOGIC;
       we3:        in  STD_ULOGIC;
       a1, a2, a3: in  STD_ULOGIC_VECTOR(4  downto 0);
       wd3:        in  STD_ULOGIC_VECTOR(31 downto 0);
       rd1, rd2:   out STD_ULOGIC_VECTOR(31 downto 0);
       
       dreg0, dreg1, dreg2, dreg3, dreg4, dreg5, dreg6, dreg7, dreg8, dreg9:  out STD_ULOGIC_VECTOR(31 downto 0));
end;

architecture behave of regfile is
  
  attribute dont_touch : string;
  attribute dont_touch of dreg0 : signal is "true";
  attribute dont_touch of dreg1 : signal is "true";
  attribute dont_touch of dreg2 : signal is "true";
  attribute dont_touch of dreg3 : signal is "true";
  attribute dont_touch of dreg4 : signal is "true";
  attribute dont_touch of dreg5 : signal is "true";
  attribute dont_touch of dreg6 : signal is "true";
  attribute dont_touch of dreg7 : signal is "true";
  attribute dont_touch of dreg8 : signal is "true";
  attribute dont_touch of dreg9 : signal is "true";
  
  
  type ramtype is array (31 downto 0) of STD_ULOGIC_VECTOR(31 downto 0);
  signal mem: ramtype;
begin
  -- three ported register file
  -- read two ports combinationally (A1/RD1, A2/RD2)
  -- write third port on rising edge of clock (A3/WD3/WE3)
  -- register 0 hardwired to 0
  process(clk, reset) begin
    if (reset = '1') then
      mem <= (others => (others => '0'));
    elsif rising_edge(clk) then
       if we3='1' then  mem(to_integer(a3)) <= wd3;
      end if;
    end if;
  end process;
  process(a1, a2, mem) begin
    if (to_integer(a1)=0) then rd1 <= X"00000000";
    else rd1 <= mem(to_integer(a1));
    end if;
    if (to_integer(a2)=0) then rd2 <= X"00000000";
    else rd2 <= mem(to_integer(a2));
    end if;
  end process;
  
  dreg0 <= mem(0); 
  dreg1 <= mem(1);  
  dreg2 <= mem(2); 
  dreg3 <= mem(3);  
  dreg4 <= mem(4);  
  dreg5 <= mem(5);
  dreg6 <= mem(6); 
  dreg7 <= mem(7);  
  dreg8 <= mem(8);  
  dreg9 <= mem(9);  
  
end architecture;
