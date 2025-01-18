library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity branchunit is -- branch unit
  port(PCSrcE: in  STD_ULOGIC_VECTOR(1 downto 0);
       zero:   in  STD_ULOGIC;
       less:   in  STD_ULOGIC;
       PCSrc:  out STD_ULOGIC);
end;

architecture behave of branchunit is
begin
  process (PCSrcE, zero, less)
  begin
    if ((PCSrcE="11") or (PCSrcE="10" and zero='1') or (PCSrcE="01" and less='1')) then
      PcSrc <= '1';
    else
      PCSrc <= '0';
    end if;
  end process;
end;
