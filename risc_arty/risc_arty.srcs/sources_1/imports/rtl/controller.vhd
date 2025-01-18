library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity controller is -- multi-cycle controller
  port(op:            in  STD_ULOGIC_VECTOR(6 downto 0);
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
end controller;

architecture struct of controller is

attribute dont_touch : string;
attribute dont_touch of funct7b5 : signal is "true";
attribute dont_touch of funct7b0 : signal is "true";

  component maindec
    port(op:          in  STD_ULOGIC_VECTOR(6 downto 0);
         funct3:      in  STD_ULOGIC_VECTOR(2 downto 0);
         PCSrc:       out STD_ULOGIC_VECTOR(1 downto 0);
         ResultSrc:   out STD_ULOGIC_VECTOR(1 downto 0);
         MemWrite:    out STD_ULOGIC;
         ALUSrc:      out STD_ULOGIC;
         RegWrite:    out STD_ULOGIC;
         ImmSrc:      out STD_ULOGIC_VECTOR(2 downto 0);
         PCTargetSel: out STD_ULOGIC_VECTOR(1 downto 0);
         MemSel:      out STD_ULOGIC_VECTOR(1 downto 0);
         SignExtEn:   out STD_ULOGIC;
         ALUOp:       out STD_ULOGIC_VECTOR(1 downto 0));
  end component;
  component aludec
    port(opb5:        in  STD_ULOGIC;
         funct3:      in  STD_ULOGIC_VECTOR(2 downto 0);
         funct7b5:    in  STD_ULOGIC;
         funct7b0:    in  STD_ULOGIC;
         ALUOp:       in  STD_ULOGIC_VECTOR(1 downto 0);
         ALUControl:  out STD_ULOGIC_VECTOR(4 downto 0));
  end component;
  signal ALUOp:       STD_ULOGIC_VECTOR(1 downto 0);
  

  
begin
  md: maindec port map(op, funct3, PCSrc, ResultSrc, MemWrite, ALUSrc, RegWrite, ImmSrc, PCTargetSel, MemSel, SignExtEn, ALUOp);
  ad: aludec port map(op(5), funct3, funct7b5, funct7b0 ,ALUOp, ALUControl);
end;
