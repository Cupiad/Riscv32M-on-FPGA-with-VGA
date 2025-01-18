library IEEE;
use IEEE.STD_LOGIC_1164.all;
--use IEEE.NUMERIC_STD_UNSIGNED.all;

entity wallDtoE is --
  port(PCSrcD:      in  STD_ULOGIC_VECTOR( 1 downto 0);
       RegWriteD:   in  STD_ULOGIC;
       ResultSrcD:  in  STD_ULOGIC_VECTOR( 1 downto 0);
       SignExtEnD:  in  STD_ULOGIC;
       MemWriteD:   in  STD_ULOGIC;
       MemSelD:     in  STD_ULOGIC_VECTOR( 1 downto 0);
       ALUControlD: in  STD_ULOGIC_VECTOR( 4 downto 0);
       PCTargetSelD:in  STD_ULOGIC_VECTOR( 1 downto 0);
       ALUSrcD:     in  STD_ULOGIC;
       --
       RD1D:        in  STD_ULOGIC_VECTOR(31 downto 0);
       RD2D:        in  STD_ULOGIC_VECTOR(31 downto 0);
       RdD:         in  STD_ULOGIC_VECTOR( 4 downto 0);
       PCD:         in  STD_ULOGIC_VECTOR(31 downto 0);
       Rs1D:        in  STD_ULOGIC_VECTOR( 4 downto 0);
       Rs2D:        in  STD_ULOGIC_VECTOR( 4 downto 0);
       ImmExtD:     in  STD_ULOGIC_VECTOR(31 downto 0);
       PCPlus4D:    in  STD_ULOGIC_VECTOR(31 downto 0);
       --
       clk:         in  STD_ULOGIC;
       reset:       in  STD_ULOGIC;
       FlushE:      in  STD_ULOGIC;
       --
       PCSrcE:      out STD_ULOGIC_VECTOR( 1 downto 0);
       RegWriteE:   out STD_ULOGIC;
       ResultSrcE:  out STD_ULOGIC_VECTOR( 1 downto 0);
       SignExtEnE:  out STD_ULOGIC;
       MemWriteE:   out STD_ULOGIC;
       MemSelE:     out STD_ULOGIC_VECTOR( 1 downto 0);
       ALUControlE: out STD_ULOGIC_VECTOR( 4 downto 0);
       PCTargetSelE:out STD_ULOGIC_VECTOR( 1 downto 0);
       ALUSrcE:     out STD_ULOGIC;
       --
       RD1E:        out STD_ULOGIC_VECTOR(31 downto 0);
       RD2E:        out STD_ULOGIC_VECTOR(31 downto 0);
       RdE:         out STD_ULOGIC_VECTOR( 4 downto 0);
       PCE:         out STD_ULOGIC_VECTOR(31 downto 0);
       Rs1E:        out STD_ULOGIC_VECTOR( 4 downto 0);
       Rs2E:        out STD_ULOGIC_VECTOR( 4 downto 0);
       ImmExtE:     out STD_ULOGIC_VECTOR(31 downto 0);
       PCPlus4E:    out STD_ULOGIC_VECTOR(31 downto 0));
end;

architecture asynchronous of wallDtoE is
  component enflopr generic(width: integer);
    port(clk:   in  STD_ULOGIC;
         reset: in  STD_ULOGIC;
         clr:   in  STD_ULOGIC;
         en:    in  STD_ULOGIC;
         d:     in  STD_ULOGIC_VECTOR(width-1 downto 0);
         q:     out STD_ULOGIC_VECTOR(width-1 downto 0));
  end component;

  signal regOutput:     STD_ULOGIC_VECTOR(191 downto 0);

begin
    reg: enflopr generic map(192) port map(clk, reset, FlushE, '1',
        PCSrcD    & RegWriteD & ResultSrcD  & SignExtEnD   &
        MemWriteD & MemSelD   & ALUControlD & PCTargetSelD &
        ALUSrcD   & RD1D      & RD2D        & RdD          &
        PCD       & Rs1D        & Rs2D      & ImmExtD      &
        PCPlus4D,
        regOutput
    );

    PCSrcE      <= regOutput (191 downto 190);
    RegWriteE   <= regOutput (189);
    ResultSrcE  <= regOutput (188 downto 187);
    SignExtEnE  <= regOutput (186);
    MemWriteE   <= regOutput (185);
    MemSelE     <= regOutput (184 downto 183);
    ALUControlE <= regOutput (182 downto 178);
    PCTargetSelE<= regOutput (177 downto 176);
    ALUSrcE     <= regOutput (175);
    --
    RD1E        <= regOutput (174 downto 143);
    RD2E        <= regOutput (142 downto 111);
    RdE         <= regOutput (110 downto 106);
    PCE         <= regOutput (105 downto  74);
    Rs1E        <= regOutput ( 73 downto  69);
    Rs2E        <= regOutput ( 68 downto  64);
    ImmExtE     <= regOutput ( 63 downto  32);
    PCPlus4E    <= regOutput ( 31 downto   0);

end;
