-----------------------------------------
-- Institute for Complex Systems (ICS)
-- ICS RV32I v1.0.0
-- based on Harris&Harris Implementation (see below **)
-- daniel.grosse@jku.at
-- lucas.klemmer@jku.at
-- thanks to Richard Feichtinger for his work on this core
--
-----------------------
-- **
-- RISC-V single-cycle processor
-- From Section 7.6 of Digital Design & Computer Architecture
-- 27 April 2020
-- David_Harris@hmc.edu 
-- Sarah.Harris@unlv.edu



-- riscvsingle.sv

-- run 210
-- Expect simulator to print "Simulation succeeded"
-- when the value 25 (0x19) is written to address 100 (0x64)

-- Single-cycle implementation of RISC-V (RV32I)
-- User-level Instruction Set Architecture V2.2 (May 7, 2017)
-- Implements a subset of the base integer instructions:
--    lw, sw
--    add, sub, and, or, slt, 
--    addi, andi, ori, slti
--    beq
--    jal
-- Exceptions, traps, and interrupts not implemented
-- little-endian memory

-- 31 32-bit registers x1-x31, x0 hardwired to 0
-- R-Type instructions
--   add, sub, and, or, slt
--   INSTR rd, rs1, rs2
--   Instr[31:25] = funct7 (funct7b5 & opb5 = 1 for sub, 0 for others)
--   Instr[24:20] = rs2
--   Instr[19:15] = rs1
--   Instr[14:12] = funct3
--   Instr[11:7]  = rd
--   Instr[6:0]   = opcode
-- I-Type Instructions
--   lw, I-type ALU (addi, andi, ori, slti)
--   lw:         INSTR rd, imm(rs1)
--   I-type ALU: INSTR rd, rs1, imm (12-bit signed)
--   Instr[31:20] = imm[11:0]
--   Instr[24:20] = rs2
--   Instr[19:15] = rs1
--   Instr[14:12] = funct3
--   Instr[11:7]  = rd
--   Instr[6:0]   = opcode
-- S-Type Instruction
--   sw rs2, imm(rs1) (store rs2 into address specified by rs1 + immm)
--   Instr[31:25] = imm[11:5] (offset[11:5])
--   Instr[24:20] = rs2 (src)
--   Instr[19:15] = rs1 (base)
--   Instr[14:12] = funct3
--   Instr[11:7]  = imm[4:0]  (offset[4:0])
--   Instr[6:0]   = opcode
-- B-Type Instruction
--   beq rs1, rs2, imm (PCTarget = PC + (signed imm x 2))
--   Instr[31:25] = imm[12], imm[10:5]
--   Instr[24:20] = rs2
--   Instr[19:15] = rs1
--   Instr[14:12] = funct3
--   Instr[11:7]  = imm[4:1], imm[11]
--   Instr[6:0]   = opcode
-- J-Type Instruction
--   jal rd, imm  (signed imm is multiplied by 2 and added to PC, rd = PC+4)
--   Instr[31:12] = imm[20], imm[10:1], imm[11], imm[19:12]
--   Instr[11:7]  = rd
--   Instr[6:0]   = opcode


-- Supported Instruction Set Extension 
-- 2022-05-09 Richard Feichtinger

--   Instruction  opcode    funct3    funct7		  NEW
--   add          0110011   000       0000000
--   sub          0110011   000       0100000
--   xor          0110011   100       0000000		  x
--   or           0110011   110       0000000
--   and          0110011   111       0000000
--   sll	  0110011   001       0000000		  x
--   srl	  0110011   101       0000000		  x
--   sra          0110011   101       0000010		  x
--   slt          0110011   010       0000000
--   sltu         0110011   011       0000000		  x
--   addi         0010011   000       immediate
--   xori         0010011   100       immediate	          x
--   ori          0010011   110       immediate
--   andi         0010011   111       immediate
--   slli         0010011   001       0000000   	x   
--   srli         0010011   101       0000000  		x     
--   srai         0010011   101       0000010           x
--   slti         0010011   010       immediate
--   sltiu        0010011   011       immediate		x
--   lb           0000011   000       immediate		x
--   lh           0000011   001       immediate		x
--   lw           0000011   010       immediate
--   lbu          0000011   100       immediate		x
--   lhu          0000011   101       immediate		x
--   sb           0100011   000       immediate		x
--   sh           0100011   001       immediate		x
--   sw           0100011   010       immediate
--   beq          1100011   000       immediate
--   bne          1100011   001       immediate		x
--   blt          1100011   100       immediate		x
--   bge          1100011   101       immediate		x
--   bltu         1100011   110       immediate		x
--   bgeu         1100011   111       immediate		x
--   jal          1101111   immediate immediate
--   jalr         1100111   000       immediate		x
--   lui          0110111   immediate immediate		x
--   auipc        0010111   immediate immediate		x

--------- Design Hierarchy ---------------------------------------------------------
--
--        - riscvsingle
--        -- controller
--        --- maindec
--        --- aludec
--        -- datapath
--        --- pcreg (FF)
--        --- pcadd4 (adder)
--        --- pctargetmux (mux3)
--        --- pcaddbranch (adder)
--        --- pcmux (mux2)
--        --- regfile
--        --- extend (Imm Value Extension)
--        --- datasignext (Sign Bit Extension for 8/16 Bit Data Memory Read Access)
--        --- scrbmux (mux2)
--        --- mainalu
--        --- resultmux (mux4)
------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity riscvpipeline is -- pipeline RISC-V processor
  port(clk:                     in  STD_ULOGIC;
       reset:                   in  STD_ULOGIC;
       
       PC:                      out STD_ULOGIC_VECTOR(31 downto 0);
       Instr:                   in  STD_ULOGIC_VECTOR(31 downto 0);
       MemWrite:                out STD_ULOGIC;
       ALUResult:               out STD_ULOGIC_VECTOR(31 downto 0);
       MemSel:                  out STD_ULOGIC_VECTOR(1  downto 0);
       WriteData:               out STD_ULOGIC_VECTOR(31 downto 0);
       ReadData:                in  STD_ULOGIC_VECTOR(31 downto 0);
       dreg0, dreg1, dreg2, dreg3, dreg4, dreg5, dreg6, dreg7, dreg8, dreg9:  out STD_ULOGIC_VECTOR(31 downto 0)
       
       
       );
end;

architecture struct_pos of riscvpipeline is
  component controller
    port(op:           in  STD_ULOGIC_VECTOR(6 downto 0);
        funct3:        in  STD_ULOGIC_VECTOR(2 downto 0);
        funct7b5:      in  STD_ULOGIC;
        funct7b0:      in  STD_ULOGIC;
        ResultSrc:     out STD_ULOGIC_VECTOR(1 downto 0);
        MemWrite:      out STD_ULOGIC;
        PCSrc:         out STD_ULOGIC_VECTOR(1 downto 0);
        ALUSrc:        out STD_ULOGIC;
        RegWrite:      out STD_ULOGIC;
        ImmSrc:        out STD_ULOGIC_VECTOR(2 downto 0);
        PCTargetSel:   out STD_ULOGIC_VECTOR(1 downto 0);
        MemSel:        out STD_ULOGIC_VECTOR(1 downto 0);
        SignExtEn:     out STD_ULOGIC;
        ALUControl:    out STD_ULOGIC_VECTOR(4 downto 0));
  end component;
  component datapath
  port(clk:                  in     STD_ULOGIC;
       reset:                in     STD_ULOGIC;
       PCF:                  out    STD_ULOGIC_VECTOR(31 downto 0);
       InstrF:               in     STD_ULOGIC_VECTOR(31 downto 0);
       MemWriteM:            out    STD_ULOGIC;
       MemSelM:              out    STD_ULOGIC_VECTOR( 1 downto 0);
       ALUResultM:           out    STD_ULOGIC_VECTOR(31 downto 0);
       WriteDataM:           out    STD_ULOGIC_VECTOR(31 downto 0);
       ReadDataM:            in     STD_ULOGIC_VECTOR(31 downto 0);
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
       ImmSrcD:              in     STD_ULOGIC_VECTOR( 2 downto 0));
  end component;


  signal InstrD:                STD_ULOGIC_VECTOR(31 downto 0);
  signal PCSrcD:                STD_ULOGIC_VECTOR( 1 downto 0);
  signal RegWriteD:             STD_ULOGIC;
  signal ResultSrcD:            STD_ULOGIC_VECTOR( 1 downto 0);
  signal SignExtEnD:            STD_ULOGIC;
  signal MemWriteD:             STD_ULOGIC;
  signal MemSelD:               STD_ULOGIC_VECTOR( 1 downto 0);
  signal ALUControlD:           STD_ULOGIC_VECTOR( 4 downto 0);
  signal PCTargetSelD:          STD_ULOGIC_VECTOR( 1 downto 0);
  signal ALUSrcD:               STD_ULOGIC;
  signal ImmSrcD:               STD_ULOGIC_VECTOR( 2 downto 0);
  
  
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
  
begin
  c: controller port map(
    InstrD(6 downto 0), InstrD(14 downto 12), InstrD(30), InstrD(25),
    ResultSrcD,   MemWriteD,  PCSrcD,
    ALUSrcD,      RegWriteD,  ImmSrcD,
    PCTargetSelD, MemSelD, SignExtEnD,
    ALUControlD
  );
  dp: entity work.datapath(struct_write_on_pos_edge) port map(
    clk,       reset, PC,        Instr,
    MemWrite,  MemSel, ALUResult, WriteData,
    ReadData,
    --
    InstrD,       PCSrcD,    RegWriteD, ResultSrcD,
    SignExtEnD,   MemWriteD, MemSelD,   ALUControlD,
    PCTargetSelD, ALUSrcD,   ImmSrcD, dreg0, dreg1, dreg2, dreg3, dreg4, dreg5, dreg6, dreg7, dreg8, dreg9
  );
end;



architecture struct_neg of riscvpipeline is
  component controller
    port(op:           in  STD_ULOGIC_VECTOR(6 downto 0);
        funct3:        in  STD_ULOGIC_VECTOR(2 downto 0);
        funct7b5:      in  STD_ULOGIC;
        funct7b0:      in  STD_ULOGIC;
        ResultSrc:     out STD_ULOGIC_VECTOR(1 downto 0);
        MemWrite:      out STD_ULOGIC;
        PCSrc:         out STD_ULOGIC_VECTOR(1 downto 0);
        ALUSrc:        out STD_ULOGIC;
        RegWrite:      out STD_ULOGIC;
        ImmSrc:        out STD_ULOGIC_VECTOR(2 downto 0);
        PCTargetSel:   out STD_ULOGIC_VECTOR(1 downto 0);
        MemSel:        out STD_ULOGIC_VECTOR(1 downto 0);
        SignExtEn:     out STD_ULOGIC;
        ALUControl:    out STD_ULOGIC_VECTOR(4 downto 0));
  end component;
  component datapath
  port(clk:                  in     STD_ULOGIC;
       reset:                in     STD_ULOGIC;
       PCF:                  out    STD_ULOGIC_VECTOR(31 downto 0);
       InstrF:               in     STD_ULOGIC_VECTOR(31 downto 0);
       MemWriteM:            out    STD_ULOGIC;
       MemSelM:              out    STD_ULOGIC_VECTOR( 1 downto 0);
       ALUResultM:           out    STD_ULOGIC_VECTOR(31 downto 0);
       WriteDataM:           out    STD_ULOGIC_VECTOR(31 downto 0);
       ReadDataM:            in     STD_ULOGIC_VECTOR(31 downto 0);
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
       ImmSrcD:              in     STD_ULOGIC_VECTOR( 2 downto 0));
  end component;


  signal InstrD:                STD_ULOGIC_VECTOR(31 downto 0);
  signal PCSrcD:                STD_ULOGIC_VECTOR( 1 downto 0);
  signal RegWriteD:             STD_ULOGIC;
  signal ResultSrcD:            STD_ULOGIC_VECTOR( 1 downto 0);
  signal SignExtEnD:            STD_ULOGIC;
  signal MemWriteD:             STD_ULOGIC;
  signal MemSelD:               STD_ULOGIC_VECTOR( 1 downto 0);
  signal ALUControlD:           STD_ULOGIC_VECTOR( 4 downto 0);
  signal PCTargetSelD:          STD_ULOGIC_VECTOR( 1 downto 0);
  signal ALUSrcD:               STD_ULOGIC;
  signal ImmSrcD:               STD_ULOGIC_VECTOR( 2 downto 0);
  
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
  
begin
  c: controller port map(
    InstrD(6 downto 0), InstrD(14 downto 12), InstrD(30), InstrD(25),
    ResultSrcD,   MemWriteD,  PCSrcD,
    ALUSrcD,      RegWriteD,  ImmSrcD,
    PCTargetSelD, MemSelD, SignExtEnD,
    ALUControlD
  );
  dp: entity work.datapath(struct_write_on_neg_edge) port map(
    clk,       reset,  PC,        Instr,
    MemWrite,  MemSel, ALUResult, WriteData,
    ReadData,
    --
    InstrD,       PCSrcD,    RegWriteD, ResultSrcD,
    SignExtEnD,   MemWriteD, MemSelD,   ALUControlD,
    PCTargetSelD, ALUSrcD,   ImmSrcD,dreg0, dreg1, dreg2, dreg3, dreg4, dreg5, dreg6, dreg7, dreg8, dreg9
  );
end;
