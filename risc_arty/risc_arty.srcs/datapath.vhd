library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity datapath is -- RISC-V datapath
  port(clk:                  in     STD_ULOGIC; 
       reset:                in     STD_ULOGIC;
       
       

       -- Instruction memory
       PCF:                  out    STD_ULOGIC_VECTOR(31 downto 0);
       InstrF:               in     STD_ULOGIC_VECTOR(31 downto 0);
      
       
       -- Data memory
       MemWriteM:            out    STD_ULOGIC;
       MemSelM:              out    STD_ULOGIC_VECTOR( 1 downto 0);
       ALUResultM:           out    STD_ULOGIC_VECTOR(31 downto 0);
       WriteDataM:           out    STD_ULOGIC_VECTOR(31 downto 0);
       ReadDataM:            in     STD_ULOGIC_VECTOR(31 downto 0);

       -- Control Unit
       InstrD:               out    STD_ULOGIC_VECTOR(31 downto 0);
       PCSrcD:               in     STD_ULOGIC_VECTOR( 1 downto 0);
       RegWriteD:            in     STD_ULOGIC;
       ResultSrcD:           in     STD_ULOGIC_VECTOR( 1 downto 0);
       SignExtEnD:           in     STD_ULOGIC;
       MemWriteD:            in     STD_ULOGIC;
       MemSelD:              in     STD_ULOGIC_VECTOR( 1 downto 0);
       ALUControlD:          in     STD_ULOGIC_VECTOR( 4 downto 0);
       PCTargetSelD:         in     STD_ULOGIC_VECTOR( 1 downto 0);
       ALUSrcD:              in     STD_ULOGIC;
       ImmSrcD:              in     STD_ULOGIC_VECTOR( 2 downto 0);
       dreg0, dreg1, dreg2, dreg3, dreg4, dreg5, dreg6, dreg7, dreg8, dreg9:  out STD_ULOGIC_VECTOR(31 downto 0)
       );
end;

architecture struct_write_on_pos_edge of datapath is
  component flopr generic(width: integer);
    port(clk:   in  STD_ULOGIC;
         reset: in  STD_ULOGIC;
         d:     in  STD_ULOGIC_VECTOR(width-1 downto 0);
         q:     out STD_ULOGIC_VECTOR(width-1 downto 0));
  end component;
  component adder
    port(a:     in  STD_ULOGIC_VECTOR(31 downto 0);
         b:     in  STD_ULOGIC_VECTOR(31 downto 0);
         y:     out STD_ULOGIC_VECTOR(31 downto 0));
  end component;
  component mux2 generic(width: integer);
    port(d0:    in  STD_ULOGIC_VECTOR(width-1 downto 0);
         d1:    in  STD_ULOGIC_VECTOR(width-1 downto 0);
         s:     in  STD_ULOGIC;
         y:     out STD_ULOGIC_VECTOR(width-1 downto 0));
  end component;
  component mux3 generic(width: integer);
    port(d0:    in  STD_ULOGIC_VECTOR(width-1 downto 0);
         d1:    in  STD_ULOGIC_VECTOR(width-1 downto 0);
         d2:    in  STD_ULOGIC_VECTOR(width-1 downto 0);
         s:     in  STD_ULOGIC_VECTOR(1 downto 0);
         y:     out STD_ULOGIC_VECTOR(width-1 downto 0));
  end component;
  component mux4 generic(width: integer);
    port(d0:    in  STD_ULOGIC_VECTOR(width-1 downto 0);
         d1:    in  STD_ULOGIC_VECTOR(width-1 downto 0);
         d2:    in  STD_ULOGIC_VECTOR(width-1 downto 0);
         d3:    in  STD_ULOGIC_VECTOR(width-1 downto 0);
         s:     in  STD_ULOGIC_VECTOR(1 downto 0);
         y:     out STD_ULOGIC_VECTOR(width-1 downto 0));
  end component;
  component regfile
    port(clk:   in  STD_ULOGIC;
         reset: in  STD_ULOGIC;
         we3:   in  STD_ULOGIC;
         a1:    in  STD_ULOGIC_VECTOR(4  downto 0);
         a2:    in  STD_ULOGIC_VECTOR(4  downto 0);
         a3:    in  STD_ULOGIC_VECTOR(4  downto 0);
         wd3:   in  STD_ULOGIC_VECTOR(31 downto 0);
         rd1:   out STD_ULOGIC_VECTOR(31 downto 0);
         rd2:   out STD_ULOGIC_VECTOR(31 downto 0);
         dreg0, dreg1, dreg2, dreg3, dreg4, dreg5, dreg6, dreg7, dreg8, dreg9:  out STD_ULOGIC_VECTOR(31 downto 0)
         );
  end component;
  component extend
    port(instr:  in  STD_ULOGIC_VECTOR(31 downto 7);
         immsrc: in  STD_ULOGIC_VECTOR(2  downto 0);
         immext: out STD_ULOGIC_VECTOR(31 downto 0));
  end component;
  component alu
    port(a:          in   STD_ULOGIC_VECTOR(31 downto 0); 
         b:          in   STD_ULOGIC_VECTOR(31 downto 0);
         ALUControl: in   STD_ULOGIC_VECTOR(4  downto 0);
         ALUResult:  out  STD_ULOGIC_VECTOR(31 downto 0);
         Zero:       out  STD_ULOGIC;
         Less:       out  STD_ULOGIC);
  end component;
  
  component signext
  port(DataIn:      in  STD_ULOGIC_VECTOR(31 downto 0);
       MemSel:      in  STD_ULOGIC_VECTOR(1  downto 0);
       SignExtEn:   in  STD_ULOGIC;
       DataOut:     out STD_ULOGIC_VECTOR(31 downto 0));
  end component;

  component enflopr generic(width: integer);
  port(clk:   in  STD_ULOGIC;
       reset: in  STD_ULOGIC;
       clr:   in  STD_ULOGIC;
       en:    in  STD_ULOGIC;
       d:     in  STD_ULOGIC_VECTOR(width-1 downto 0);
       q:     out STD_ULOGIC_VECTOR(width-1 downto 0));
  end component;

  component wallFtoD
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
  end component;

  component wallDtoE
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
  end component;
  
  component wallEtoM
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
  end component;

  component wallMtoW
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
  end component;

  component branchunit
  port(PCSrcE: in  STD_ULOGIC_VECTOR(1 downto 0);
       zero:   in  STD_ULOGIC;
       less:   in  STD_ULOGIC;
       PCSrc:  out STD_ULOGIC);
  end component;

  component hazardunitext
  port(Rs1D:        in  STD_ULOGIC_VECTOR(4 downto 0);
       Rs2D:        in  STD_ULOGIC_VECTOR(4 downto 0);
       PCSrc:       in  STD_ULOGIC;
       Rs1E:        in  STD_ULOGIC_VECTOR(4 downto 0);
       Rs2E:        in  STD_ULOGIC_VECTOR(4 downto 0);
       RdE:         in  STD_ULOGIC_VECTOR(4 downto 0);
       ResultSrcE0: in  STD_ULOGIC;
       RegWriteE:   in  STD_ULOGIC;
       RdM:         in  STD_ULOGIC_VECTOR(4 downto 0);
       RegWriteM:   in  STD_ULOGIC;
       RdW:         in  STD_ULOGIC_VECTOR(4 downto 0);
       RegWriteW:   in  STD_ULOGIC;
       StallF:      out STD_ULOGIC;
       StallD:      out STD_ULOGIC;
       FlushD:      out STD_ULOGIC;
       ForwardAD:   out STD_ULOGIC;
       ForwardBD:   out STD_ULOGIC;
       FlushE:      out STD_ULOGIC;
       ForwardAE:   out STD_ULOGIC_VECTOR(1 downto 0);
       ForwardBE:   out STD_ULOGIC_VECTOR(1 downto 0));
  end component;
 
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
  
  -- Fetch
  signal PCNext:          STD_ULOGIC_VECTOR(31 downto 0);
  signal PCPlus4F:        STD_ULOGIC_VECTOR(31 downto 0);
 
  -- Decode
  signal RD1D:            STD_ULOGIC_VECTOR(31 downto 0);
  signal RD2D:            STD_ULOGIC_VECTOR(31 downto 0);
  signal RdD:             STD_ULOGIC_VECTOR( 4 downto 0);
  signal PCD:             STD_ULOGIC_VECTOR(31 downto 0);
  signal Rs1D:            STD_ULOGIC_VECTOR( 4 downto 0);
  signal Rs2D:            STD_ULOGIC_VECTOR( 4 downto 0);
  signal ImmExtD:         STD_ULOGIC_VECTOR(31 downto 0);
  signal PCPlus4D:        STD_ULOGIC_VECTOR(31 downto 0);
  signal SrcAD:           STD_ULOGIC_VECTOR(31 downto 0);
  signal SrcBD:           STD_ULOGIC_VECTOR(31 downto 0);

  -- Execute
  signal RegWriteE:       STD_ULOGIC;
  signal ResultSrcE:      STD_ULOGIC_VECTOR( 1 downto 0);
  signal SignExtEnE:      STD_ULOGIC;
  signal MemWriteE:       STD_ULOGIC;
  signal MemSelE:         STD_ULOGIC_VECTOR( 1 downto 0);
  signal ALUControlE:     STD_ULOGIC_VECTOR( 4 downto 0);
  signal PCTargetSelE:    STD_ULOGIC_VECTOR( 1 downto 0);
  signal ALUSrcE:         STD_ULOGIC;

  signal PCSrcE:          STD_ULOGIC_VECTOR( 1 downto 0);
  signal Less:            STD_ULOGIC;
  signal Zero:            STD_ULOGIC;
  signal PCSrc:           STD_ULOGIC;

  signal RD1E:            STD_ULOGIC_VECTOR(31 downto 0);
  signal RD2E:            STD_ULOGIC_VECTOR(31 downto 0);
  signal RdE:             STD_ULOGIC_VECTOR( 4 downto 0);
  signal PCE:             STD_ULOGIC_VECTOR(31 downto 0);
  signal Rs1E:            STD_ULOGIC_VECTOR( 4 downto 0);
  signal Rs2E:            STD_ULOGIC_VECTOR( 4 downto 0);
  signal ImmExtE:         STD_ULOGIC_VECTOR(31 downto 0);
  signal PCPlus4E:        STD_ULOGIC_VECTOR(31 downto 0);
  signal SrcA:            STD_ULOGIC_VECTOR(31 downto 0);
  signal SrcB:            STD_ULOGIC_VECTOR(31 downto 0);
  signal WriteDataE:      STD_ULOGIC_VECTOR(31 downto 0);
  signal PCSel:           STD_ULOGIC_VECTOR(31 downto 0);
  signal ALUResultE:      STD_ULOGIC_VECTOR(31 downto 0);
  signal PCTargetE:       STD_ULOGIC_VECTOR(31 downto 0);

  -- Memory
  signal RegWriteM:       STD_ULOGIC;
  signal ResultSrcM:      STD_ULOGIC_VECTOR( 1 downto 0);
  signal SignExtEnM:      STD_ULOGIC;

  signal RdM:             STD_ULOGIC_VECTOR( 4 downto 0);
  signal PCTargetM:       STD_ULOGIC_VECTOR(31 downto 0);
  signal PCPlus4M:        STD_ULOGIC_VECTOR(31 downto 0);

  -- Writeback
  signal RegWriteW:       STD_ULOGIC;
  signal ResultSrcW:      STD_ULOGIC_VECTOR( 1 downto 0);
  signal SignExtEnW:      STD_ULOGIC;
  signal MemSelW:         STD_ULOGIC_VECTOR( 1 downto 0);

  signal RdW:             STD_ULOGIC_VECTOR( 4 downto 0);
  signal ALUResultW:      STD_ULOGIC_VECTOR(31 downto 0);
  signal ReadDataW:       STD_ULOGIC_VECTOR(31 downto 0);
  signal PCTargetW:       STD_ULOGIC_VECTOR(31 downto 0);
  signal PCPlus4W:        STD_ULOGIC_VECTOR(31 downto 0);
  signal ResultW:         STD_ULOGIC_VECTOR(31 downto 0);
  signal ReadDataExtW:    STD_ULOGIC_VECTOR(31 downto 0);

  -- Hazard Handling
  signal StallF:          STD_ULOGIC;
  signal StallD:          STD_ULOGIC;
  signal FlushD:          STD_ULOGIC;
  signal ForwardAD:       STD_ULOGIC;
  signal ForwardBD:       STD_ULOGIC;
  signal FlushE:          STD_ULOGIC;
  signal ForwardAE:       STD_ULOGIC_VECTOR( 1 downto 0);
  signal ForwardBE:       STD_ULOGIC_VECTOR( 1 downto 0);
  
begin
  
  
  -- Fetch
  pcmux: mux2 generic map(32) port map(PCPlus4F, PCTargetE, PCSrc, PCNext);
  pcreg: enflopr generic map(32) port map(
    clk => clk, 
    reset => reset,
    clr => '0',
    en => not(StallF),
    d => PCNext,
    q => PCF
);
  
  
  pcadd4: adder port map(PCF, X"00000004", PCPlus4F);

  -- Fetch to Decode
  FtoD: wallFtoD port map(
    InstrF, PCF, PCPlus4F,
    --
    clk, reset, not(StallD), FlushD,
    --
    InstrD, PCD, PCPlus4D
  );

  -- Decode
  rf: regfile port map(clk, reset, RegWriteW, InstrD(19 downto 15), InstrD(24 downto 20), RdW, ResultW, RD1D, RD2D, dreg0, dreg1, dreg2, dreg3, dreg4, dreg5, dreg6, dreg7, dreg8, dreg9);
  RdD  <= InstrD (11 downto  7);
  Rs1D <= InstrD (19 downto 15);
  Rs2D <= InstrD (24 downto 20);
  ext: extend port map(InstrD(31 downto 7), ImmSrcD, ImmExtD);

  srcadmux: mux2 generic map(32) port map(RD1D, ResultW, ForwardAD, SrcAD);
  srcbdmux: mux2 generic map(32) port map(RD2D, ResultW, ForwardBD, SrcBD);

  -- Decode to Execute
  DtoE: wallDtoE port map(
    PCSrcD,      RegWriteD,    ResultSrcD,
    SignExtEnD,  MemWriteD,    MemSelD,
    ALUControlD, PCTargetSelD, ALUSrcD,
    --
    SrcAD, SrcBD, RdD,     PCD,
    Rs1D,  Rs2D,  ImmExtD, PCPlus4D,
    --
    clk, reset, FlushE,
    --
    PCSrcE,      RegWriteE,    ResultSrcE,
    SignExtEnE,  MemWriteE,    MemSelE,
    ALUControlE, PCTargetSelE, ALUSrcE,
    --
    RD1E, RD2E, RdE,     PCE,
    Rs1E, Rs2E, ImmExtE, PCPlus4E
  );

  -- Execute
  forwardamux: mux3 generic map(32) port map(RD1E, ResultW, ALUResultM, ForwardAE, SrcA);
  forwardbmux: mux3 generic map(32) port map(RD2E, ResultW, ALUResultM, ForwardBE, WriteDataE);
  srcbmux: mux2 generic map(32) port map(WriteDataE, ImmExtE, ALUSrcE, SrcB);
  mainalu: alu port map(SrcA, SrcB, ALUControlE, ALUResultE, Zero, Less);
  pctargetmux: mux3 generic map(32) port map(PCE, WriteDataE, x"00000000", PCTargetSelE, PCSel);
  pcaddbranch: adder port map(PCSel, ImmExtE, PCTargetE);

  -- Branch handling
  bu: branchunit port map(PCSrcE, Zero, Less, PCSrc);

  -- Execute to Memory
  EtoM: wallEtoM port map(
    RegWriteE, ResultSrcE, SignExtEnE, MemWriteE, MemSelE,
    ALUResultE, WriteDataE, RdE, PCTargetE, PCPlus4E,
    --
    clk, reset,
    --
    RegWriteM, ResultSrcM, SignExtEnM, MemWriteM, MemSelM,
    ALUResultM, WriteDataM, RdM, PCTargetM, PCPlus4M
  );

  -- Memory
  -- all logic handled externally

  -- Memory to Writeback
  MtoW: wallMtoW port map(
    RegWriteM, ResultSrcM, SignExtEnM, MemSelM,
    ALUResultM, ReadDataM, RdM, PCTargetM, PCPlus4M,
    --
    clk, reset,
    --
    RegWriteW, ResultSrcW, SignExtEnW, MemSelW,
    ALUResultW, ReadDataW, RdW, PCTargetW, PCPlus4W
  );

  -- Writeback
  datasignext: signext port map(ReadDataW, MemSelW, SignExtEnW, ReadDataExtW);
  resultmux: mux4 generic map(32) port map(ALUResultW, ReadDataExtW, PCPlus4W, PCTargetW, ResultSrcW, ResultW);
  
  -- Hazard handling
  hu: hazardunitext port map(
    Rs1D, Rs2D,          PCSrc,         Rs1E,
    Rs2E, RdE,           ResultSrcE(0), RegWriteE,
    RdM,  RegWriteM,     RdW,           RegWriteW,
    --
    StallF,    StallD, FlushD,    ForwardAD,
    ForwardBD, FlushE, ForwardAE, ForwardBE
  );
  

end;

architecture struct_write_on_neg_edge of datapath is
  component flopr generic(width: integer);
    port(clk:   in  STD_ULOGIC;
         reset: in  STD_ULOGIC;
         d:     in  STD_ULOGIC_VECTOR(width-1 downto 0);
         q:     out STD_ULOGIC_VECTOR(width-1 downto 0));
  end component;
  component adder
    port(a:     in  STD_ULOGIC_VECTOR(31 downto 0);
         b:     in  STD_ULOGIC_VECTOR(31 downto 0);
         y:     out STD_ULOGIC_VECTOR(31 downto 0));
  end component;
  component mux2 generic(width: integer);
    port(d0:    in  STD_ULOGIC_VECTOR(width-1 downto 0);
         d1:    in  STD_ULOGIC_VECTOR(width-1 downto 0);
         s:     in  STD_ULOGIC;
         y:     out STD_ULOGIC_VECTOR(width-1 downto 0));
  end component;
  component mux3 generic(width: integer);
    port(d0:    in  STD_ULOGIC_VECTOR(width-1 downto 0);
         d1:    in  STD_ULOGIC_VECTOR(width-1 downto 0);
         d2:    in  STD_ULOGIC_VECTOR(width-1 downto 0);
         s:     in  STD_ULOGIC_VECTOR(1 downto 0);
         y:     out STD_ULOGIC_VECTOR(width-1 downto 0));
  end component;
  component mux4 generic(width: integer);
    port(d0:    in  STD_ULOGIC_VECTOR(width-1 downto 0);
         d1:    in  STD_ULOGIC_VECTOR(width-1 downto 0);
         d2:    in  STD_ULOGIC_VECTOR(width-1 downto 0);
         d3:    in  STD_ULOGIC_VECTOR(width-1 downto 0);
         s:     in  STD_ULOGIC_VECTOR(1 downto 0);
         y:     out STD_ULOGIC_VECTOR(width-1 downto 0));
  end component;
  component regfile
    port(clk:   in  STD_ULOGIC;
         reset: in  STD_ULOGIC;
         we3:   in  STD_ULOGIC;
         a1:    in  STD_ULOGIC_VECTOR(4  downto 0);
         a2:    in  STD_ULOGIC_VECTOR(4  downto 0);
         a3:    in  STD_ULOGIC_VECTOR(4  downto 0);
         wd3:   in  STD_ULOGIC_VECTOR(31 downto 0);
         rd1:   out STD_ULOGIC_VECTOR(31 downto 0);
         rd2:   out STD_ULOGIC_VECTOR(31 downto 0);
         dreg0, dreg1, dreg2, dreg3, dreg4, dreg5, dreg6, dreg7, dreg8, dreg9:  out STD_ULOGIC_VECTOR(31 downto 0)
         );
  end component;
  component extend
    port(instr:  in  STD_ULOGIC_VECTOR(31 downto 7);
         immsrc: in  STD_ULOGIC_VECTOR(2  downto 0);
         immext: out STD_ULOGIC_VECTOR(31 downto 0));
  end component;
  component alu
    port(a:          in   STD_ULOGIC_VECTOR(31 downto 0);
         b:          in   STD_ULOGIC_VECTOR(31 downto 0);
         ALUControl: in   STD_ULOGIC_VECTOR(4  downto 0);
         ALUResult:  out  STD_ULOGIC_VECTOR(31 downto 0);
         Zero:       out  STD_ULOGIC;
         Less:       out  STD_ULOGIC);
  end component;

  component signext
  port(DataIn:      in  STD_ULOGIC_VECTOR(31 downto 0);
       MemSel:      in  STD_ULOGIC_VECTOR(1  downto 0);
       SignExtEn:   in  STD_ULOGIC;
       DataOut:     out STD_ULOGIC_VECTOR(31 downto 0));
  end component;

  component enflopr generic(width: integer);
  port(clk:   in  STD_ULOGIC;
       reset: in  STD_ULOGIC;
       clr:   in  STD_ULOGIC;
       en:    in  STD_ULOGIC;
       d:     in  STD_ULOGIC_VECTOR(width-1 downto 0);
       q:     out STD_ULOGIC_VECTOR(width-1 downto 0));
  end component;

  component wallFtoD
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
  end component;

  component wallDtoE
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
  end component;

  component wallEtoM
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
  end component;

  component wallMtoW
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
  end component;

  component branchunit
  port(PCSrcE: in  STD_ULOGIC_VECTOR(1 downto 0);
       zero:   in  STD_ULOGIC;
       less:   in  STD_ULOGIC;
       PCSrc:  out STD_ULOGIC);
  end component;

  component hazardunit
  port(Rs1D:        in  STD_ULOGIC_VECTOR(4 downto 0);
       Rs2D:        in  STD_ULOGIC_VECTOR(4 downto 0);
       PCSrc:       in  STD_ULOGIC;
       Rs1E:        in  STD_ULOGIC_VECTOR(4 downto 0);
       Rs2E:        in  STD_ULOGIC_VECTOR(4 downto 0);
       RdE:         in  STD_ULOGIC_VECTOR(4 downto 0);
       ResultSrcE0: in  STD_ULOGIC;
       RdM:         in  STD_ULOGIC_VECTOR(4 downto 0);
       RegWriteM:   in  STD_ULOGIC;
       RdW:         in  STD_ULOGIC_VECTOR(4 downto 0);
       RegWriteW:   in  STD_ULOGIC;
       StallF:      out STD_ULOGIC;
       StallD:      out STD_ULOGIC;
       FlushD:      out STD_ULOGIC;
       FlushE:      out STD_ULOGIC;
       ForwardAE:   out STD_ULOGIC_VECTOR(1 downto 0);
       ForwardBE:   out STD_ULOGIC_VECTOR(1 downto 0));
  end component;
  
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

  -- Fetch
  signal PCNext:          STD_ULOGIC_VECTOR(31 downto 0);
  signal PCPlus4F:        STD_ULOGIC_VECTOR(31 downto 0);
 

  -- Decode
  signal RD1D:            STD_ULOGIC_VECTOR(31 downto 0);
  signal RD2D:            STD_ULOGIC_VECTOR(31 downto 0);
  signal RdD:             STD_ULOGIC_VECTOR( 4 downto 0);
  signal PCD:             STD_ULOGIC_VECTOR(31 downto 0);
  signal Rs1D:            STD_ULOGIC_VECTOR( 4 downto 0);
  signal Rs2D:            STD_ULOGIC_VECTOR( 4 downto 0);
  signal ImmExtD:         STD_ULOGIC_VECTOR(31 downto 0);
  signal PCPlus4D:        STD_ULOGIC_VECTOR(31 downto 0);

  -- Execute
  signal RegWriteE:       STD_ULOGIC;
  signal ResultSrcE:      STD_ULOGIC_VECTOR( 1 downto 0);
  signal SignExtEnE:      STD_ULOGIC;
  signal MemWriteE:       STD_ULOGIC;
  signal MemSelE:         STD_ULOGIC_VECTOR( 1 downto 0);
  signal ALUControlE:     STD_ULOGIC_VECTOR( 4 downto 0);
  signal PCTargetSelE:    STD_ULOGIC_VECTOR( 1 downto 0);
  signal ALUSrcE:         STD_ULOGIC;

  signal PCSrcE:          STD_ULOGIC_VECTOR( 1 downto 0);
  signal Less:            STD_ULOGIC;
  signal Zero:            STD_ULOGIC;
  signal PCSrc:           STD_ULOGIC;

  signal RD1E:            STD_ULOGIC_VECTOR(31 downto 0);
  signal RD2E:            STD_ULOGIC_VECTOR(31 downto 0);
  signal RdE:             STD_ULOGIC_VECTOR( 4 downto 0);
  signal PCE:             STD_ULOGIC_VECTOR(31 downto 0);
  signal Rs1E:            STD_ULOGIC_VECTOR( 4 downto 0);
  signal Rs2E:            STD_ULOGIC_VECTOR( 4 downto 0);
  signal ImmExtE:         STD_ULOGIC_VECTOR(31 downto 0);
  signal PCPlus4E:        STD_ULOGIC_VECTOR(31 downto 0);
  signal SrcA:            STD_ULOGIC_VECTOR(31 downto 0);
  signal SrcB:            STD_ULOGIC_VECTOR(31 downto 0);
  signal WriteDataE:      STD_ULOGIC_VECTOR(31 downto 0);
  signal PCSel:           STD_ULOGIC_VECTOR(31 downto 0);
  signal ALUResultE:      STD_ULOGIC_VECTOR(31 downto 0);
  signal PCTargetE:       STD_ULOGIC_VECTOR(31 downto 0);

  -- Memory
  signal RegWriteM:       STD_ULOGIC;
  signal ResultSrcM:      STD_ULOGIC_VECTOR( 1 downto 0);
  signal SignExtEnM:      STD_ULOGIC;

  signal RdM:             STD_ULOGIC_VECTOR( 4 downto 0);
  signal PCTargetM:       STD_ULOGIC_VECTOR(31 downto 0);
  signal PCPlus4M:        STD_ULOGIC_VECTOR(31 downto 0);

  -- Writeback
  signal RegWriteW:       STD_ULOGIC;
  signal ResultSrcW:      STD_ULOGIC_VECTOR( 1 downto 0);
  signal SignExtEnW:      STD_ULOGIC;
  signal MemSelW:         STD_ULOGIC_VECTOR( 1 downto 0);

  signal RdW:             STD_ULOGIC_VECTOR( 4 downto 0);
  signal ALUResultW:      STD_ULOGIC_VECTOR(31 downto 0);
  signal ReadDataW:       STD_ULOGIC_VECTOR(31 downto 0);
  signal PCTargetW:       STD_ULOGIC_VECTOR(31 downto 0);
  signal PCPlus4W:        STD_ULOGIC_VECTOR(31 downto 0);
  signal ResultW:         STD_ULOGIC_VECTOR(31 downto 0);
  signal ReadDataExtW:    STD_ULOGIC_VECTOR(31 downto 0);

  -- Hazard Handling
  signal StallF:          STD_ULOGIC;
  signal StallD:          STD_ULOGIC;
  signal FlushD:          STD_ULOGIC;
  signal FlushE:          STD_ULOGIC;
  signal ForwardAE:       STD_ULOGIC_VECTOR( 1 downto 0);
  signal ForwardBE:       STD_ULOGIC_VECTOR( 1 downto 0);

begin

  -- Fetch
  pcmux: mux2 generic map(32) port map(PCPlus4F, PCTargetE, PCSrc, PCNext);
  pcreg: enflopr generic map(32) port map(
    clk => clk, 
    reset => reset,
    clr => '0',
    en => not(StallF),
    d => PCNext,
    q => PCF
);
  
  pcadd4: adder port map(PCF, X"00000004", PCPlus4F);

  -- Fetch to Decode
  FtoD: wallFtoD port map(
    InstrF, PCF, PCPlus4F,
    --
    clk, reset, not(StallD), FlushD,
    --
    InstrD, PCD, PCPlus4D
  );

  -- Decode
  rf: regfile port map(not(clk), reset, RegWriteW, InstrD(19 downto 15), InstrD(24 downto 20), RdW, ResultW, RD1D, RD2D, dreg0, dreg1, dreg2, dreg3, dreg4, dreg5, dreg6, dreg7, dreg8, dreg9);
  RdD  <= InstrD (11 downto  7);
  Rs1D <= InstrD (19 downto 15);
  Rs2D <= InstrD (24 downto 20);
  ext: extend port map(InstrD(31 downto 7), ImmSrcD, ImmExtD);

  -- Decode to Execute
  DtoE: wallDtoE port map(
    PCSrcD,      RegWriteD,    ResultSrcD,
    SignExtEnD,  MemWriteD,    MemSelD,
    ALUControlD, PCTargetSelD, ALUSrcD,
    --
    RD1D, RD2D, RdD,     PCD,
    Rs1D, Rs2D, ImmExtD, PCPlus4D,
    --
    clk, reset, FlushE,
    --
    PCSrcE,      RegWriteE,    ResultSrcE,
    SignExtEnE,  MemWriteE,    MemSelE,
    ALUControlE, PCTargetSelE, ALUSrcE,
    --
    RD1E, RD2E, RdE,     PCE,
    Rs1E, Rs2E, ImmExtE, PCPlus4E
  );

  -- Execute
  forwardamux: mux3 generic map(32) port map(RD1E, ResultW, ALUResultM, ForwardAE, SrcA);
  forwardbmux: mux3 generic map(32) port map(RD2E, ResultW, ALUResultM, ForwardBE, WriteDataE);
  srcbmux: mux2 generic map(32) port map(WriteDataE, ImmExtE, ALUSrcE, SrcB);
  mainalu: alu port map(SrcA, SrcB, ALUControlE, ALUResultE, Zero, Less);
  pctargetmux: mux3 generic map(32) port map(PCE, SrcA, x"00000000", PCTargetSelE, PCSel);
  pcaddbranch: adder port map(PCSel, ImmExtE, PCTargetE);

  -- Branch handling
  bu: branchunit port map(PCSrcE, Zero, Less, PCSrc);

  -- Execute to Memory
  EtoM: wallEtoM port map(
    RegWriteE, ResultSrcE, SignExtEnE, MemWriteE, MemSelE,
    ALUResultE, WriteDataE, RdE, PCTargetE, PCPlus4E,
    --
    clk, reset,
    --
    RegWriteM, ResultSrcM, SignExtEnM, MemWriteM, MemSelM,
    ALUResultM, WriteDataM, RdM, PCTargetM, PCPlus4M
  );

  -- Memory
  -- all logic handled externally

  -- Memory to Writeback
  MtoW: wallMtoW port map(
    RegWriteM, ResultSrcM, SignExtEnM, MemSelM,
    ALUResultM, ReadDataM, RdM, PCTargetM, PCPlus4M,
    --
    clk, reset,
    --
    RegWriteW, ResultSrcW, SignExtEnW, MemSelW,
    ALUResultW, ReadDataW, RdW, PCTargetW, PCPlus4W
  );

  -- Writeback
  datasignext: signext port map(ReadDataW, MemSelW, SignExtEnW, ReadDataExtW);
  resultmux: mux4 generic map(32) port map(ALUResultW, ReadDataExtW, PCPlus4W, PCTargetW, ResultSrcW, ResultW);

  -- Hazard handling
  hu: hazardunit port map(
    Rs1D,      Rs2D, PCSrc,         Rs1E,
    Rs2E,      RdE,  ResultSrcE(0), RdM,
    RegWriteM, RdW,  RegWriteW,
    --
    StallF, StallD,    FlushD,
    FlushE, ForwardAE, ForwardBE
  );


end;

