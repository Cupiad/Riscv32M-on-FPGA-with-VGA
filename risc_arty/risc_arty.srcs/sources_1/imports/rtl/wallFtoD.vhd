library IEEE;
use IEEE.STD_LOGIC_1164.all;
--use IEEE.NUMERIC_STD_UNSIGNED.all;

entity wallFtoD is --
  port(InstrF:   in  STD_ULOGIC_VECTOR(31 downto 0);
       PCF:      in  STD_ULOGIC_VECTOR(31 downto 0);
       PCPlus4F: in  STD_ULOGIC_VECTOR(31 downto 0);
       clk:      in  STD_ULOGIC;
       reset:    in  STD_ULOGIC;
       StallD:   in  STD_ULOGIC;
       FlushD:   in  STD_ULOGIC;
       InstrD:   out STD_ULOGIC_VECTOR(31 downto 0);
       PCD:      out STD_ULOGIC_VECTOR(31 downto 0);
       PCPlus4D: out STD_ULOGIC_VECTOR(31 downto 0));
end;

architecture asynchronous of wallFtoD is
  component enflopr generic(width: integer);
    port(clk:   in  STD_ULOGIC;
         reset: in  STD_ULOGIC;
         clr:   in  STD_ULOGIC;
         en:    in  STD_ULOGIC;
         d:     in  STD_ULOGIC_VECTOR(width-1 downto 0);
         q:     out STD_ULOGIC_VECTOR(width-1 downto 0));
  end component;

begin
    Instr_reg: enflopr generic map(32) port map(clk, reset, FlushD, StallD, InstrF, InstrD);
    PC_reg: enflopr generic map(32) port map(clk, reset, FlushD, StallD, PCF, PCD);
    PCPlus4_reg: enflopr generic map(32) port map(clk, reset, FlushD, StallD, PCPlus4F, PCPlus4D);
end;
