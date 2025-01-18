 library IEEE;
use IEEE.STD_LOGIC_1164.all;
--use IEEE.NUMERIC_STD_UNSIGNED.all;

entity wallEtoM is --
  port(RegWriteE:   in  STD_ULOGIC;
       ResultSrcE:  in  STD_ULOGIC_VECTOR( 1 downto 0);
       SignExtEnE:  in  STD_ULOGIC;
       MemWriteE:   in  STD_ULOGIC;
       MemSelE:     in  STD_ULOGIC_VECTOR( 1 downto 0);
       --
       ALUResultE:  in  STD_ULOGIC_VECTOR(31 downto 0);
       WriteDataE:  in  STD_ULOGIC_VECTOR(31 downto 0);
       RdE:         in  STD_ULOGIC_VECTOR( 4 downto 0);
       PCTargetE:   in  STD_ULOGIC_VECTOR(31 downto 0);
       PCPlus4E:    in  STD_ULOGIC_VECTOR(31 downto 0);
       --
       clk:         in  STD_ULOGIC;
       reset:       in  STD_ULOGIC;
       --
       RegWriteM:   out STD_ULOGIC;
       ResultSrcM:  out STD_ULOGIC_VECTOR( 1 downto 0);
       SignExtEnM:  out STD_ULOGIC;
       MemWriteM:   out STD_ULOGIC;
       MemSelM:     out STD_ULOGIC_VECTOR( 1 downto 0);
       --
       ALUResultM:  out STD_ULOGIC_VECTOR(31 downto 0);
       WriteDataM:  out STD_ULOGIC_VECTOR(31 downto 0);
       RdM:         out STD_ULOGIC_VECTOR( 4 downto 0);
       PCTargetM:   out STD_ULOGIC_VECTOR(31 downto 0);
       PCPlus4M:    out STD_ULOGIC_VECTOR(31 downto 0));
end;

architecture asynchronous of wallEtoM is
  component flopr generic(width: integer);
    port(clk:   in  STD_ULOGIC;
         reset: in  STD_ULOGIC;
         d:     in  STD_ULOGIC_VECTOR(width-1 downto 0);
         q:     out STD_ULOGIC_VECTOR(width-1 downto 0));
  end component;

  signal regOutput:     STD_ULOGIC_VECTOR(139 downto 0);

begin
    reg: flopr generic map(140) port map(clk, reset,
        RegWriteE & ResultSrcE & SignExtEnE & MemWriteE &
        MemSelE   & ALUResultE & WriteDataE & RdE       &
        PCTargetE & PCPlus4E,
        regOutput
    );

    RegWriteM  <= regOutput (139);
    ResultSrcM <= regOutput (138 downto 137);
    SignExtEnM <= regOutput (136);
    MemWriteM  <= regOutput (135);
    MemSelM    <= regOutput (134 downto 133);
    --
    ALUResultM <= regOutput (132 downto 101);
    WriteDataM <= regOutput (100 downto  69);
    RdM        <= regOutput ( 68 downto  64);
    PCTargetM  <= regOutput ( 63 downto  32);
    PCPlus4M   <= regOutput ( 31 downto   0);

end;
