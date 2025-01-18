 library IEEE;
use IEEE.STD_LOGIC_1164.all;
--use IEEE.NUMERIC_STD_UNSIGNED.all;

entity wallMtoW is --
  port(RegWriteM:   in  STD_ULOGIC;
       ResultSrcM:  in  STD_ULOGIC_VECTOR(1 downto 0);
       SignExtEnM:  in  STD_ULOGIC;
       MemSelM:     in  STD_ULOGIC_VECTOR(1 downto 0);
       --
       ALUResultM:  in  STD_ULOGIC_VECTOR(31 downto 0);
       ReadDataM:   in  STD_ULOGIC_VECTOR(31 downto 0);
       RdM:         in  STD_ULOGIC_VECTOR( 4 downto 0);
       PCTargetM:   in  STD_ULOGIC_VECTOR(31 downto 0);
       PCPlus4M:    in  STD_ULOGIC_VECTOR(31 downto 0);
       --
       clk:         in  STD_ULOGIC;
       reset:       in  STD_ULOGIC;
       --
       RegWriteW:   out STD_ULOGIC;
       ResultSrcW:  out STD_ULOGIC_VECTOR(1 downto 0);
       SignExtEnW:  out STD_ULOGIC;
       MemSelW:     out STD_ULOGIC_VECTOR(1 downto 0);
       --
       ALUResultW:  out STD_ULOGIC_VECTOR(31 downto 0);
       ReadDataW:   out STD_ULOGIC_VECTOR(31 downto 0);
       RdW:         out STD_ULOGIC_VECTOR( 4 downto 0);
       PCTargetW:   out STD_ULOGIC_VECTOR(31 downto 0);
       PCPlus4W:    out STD_ULOGIC_VECTOR(31 downto 0));
end;

architecture asynchronous of wallMtoW is
  component flopr generic(width: integer);
    port(clk:   in  STD_ULOGIC;
         reset: in  STD_ULOGIC;
         d:     in  STD_ULOGIC_VECTOR(width-1 downto 0);
         q:     out STD_ULOGIC_VECTOR(width-1 downto 0));
  end component;

  signal regOutput:     STD_ULOGIC_VECTOR(138 downto 0);

begin
    reg: flopr generic map(139) port map(clk, reset,
        RegWriteM  & ResultSrcM & SignExtEnM & MemSelM   &
        ALUResultM & ReadDataM  & RdM        & PCTargetM &
        PCPlus4M,
        regOutput
    );

    RegWriteW  <= regOutput (138);
    ResultSrcW <= regOutput (137 downto 136);
    SignExtEnW <= regOutput (135);
    MemSelW    <= regOutput (134 downto 133);
    --
    ALUResultW <= regOutput (132 downto 101);
    ReadDataW  <= regOutput (100 downto  69);
    RdW        <= regOutput ( 68 downto  64);
    PCTargetW  <= regOutput ( 63 downto  32);
    PCPlus4W   <= regOutput ( 31 downto   0);
end;
