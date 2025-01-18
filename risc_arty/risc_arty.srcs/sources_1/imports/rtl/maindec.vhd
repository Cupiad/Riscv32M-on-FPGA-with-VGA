library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD_UNSIGNED.all;

entity maindec is -- main control decoder
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
end;

architecture behave of maindec is
  signal controls:      STD_ULOGIC_VECTOR(16 downto 0);
  signal Branch:        STD_ULOGIC;
  signal BranchEq:      STD_ULOGIC;
  signal Jump:          STD_ULOGIC;
begin
  process(op, funct3) begin
    
    case op is
      when "0000011" => if (funct3 = "000") then
                          controls <= "10100000000110000";  -- lb
                        elsif (funct3 = "100") then
                          controls <= "10000000000110000";  -- lbu
                        elsif (funct3 = "001") then
                          controls <= "10101000000110000";  -- lh
                        elsif (funct3 = "101") then
                          controls <= "10001000000110000";  -- lhu
                        elsif (funct3 = "010") then
                          controls <= "10010000000110000";  -- lw
                        else
                          controls <= (others => 'X');      -- not valid
                        end if;
      when "0100011" => if (funct3 = "000") then
                          controls <= "01000000010010000";  -- sb
                        elsif (funct3 = "001") then
                          controls <= "01001000010010000";  -- sh
                        elsif (funct3 = "010") then
                          controls <= "01010000010010000";  -- sw
                        else
                          controls <= (others => 'X');      -- not valid
                        end if;
      when "0110011" => controls <= "10000000000001000";    -- R-type
      when "1100011" => controls <= "00000000100000110";    -- B-type
      when "0010011" => if ((funct3 = "001") or (funct3 = "101")) then
                          controls <= "10000001010011000";    -- I-type shift (slli, srli, srai)
                        else  
                          controls <= "10000000000011000";    -- I-type ALU
                        end if;
      when "1101111" => controls <= "10000000111000001";    -- J-type
      when "1100111" => if (funct3 = "000") then
                          controls <= "10000010001000001";  -- jalr
                        else
                          controls <= (others => '0');      -- not valid --> replaced with NOP
                        end if;
      when "0110111" => controls <= "10000101001100000";    -- lui
      when "0010111" => controls <= "10000001001100000";    -- auipc
      when others    => controls <= (others => '0');        -- not valid --> replaced with NOP
    end case;    
    
  end process;

  with TO_INTEGER(funct3) select
    BranchEq     <= '1'   when 0, -- beq
                    '0'   when 1, -- bne
                    '0'   when 4, -- blt
                    '1'   when 5, -- bge
                    '0'   when 6, -- bltu
                    '1'   when 7, -- bgeu
                    '0'   when others;
                    
  -- PCSrc = '00': lb, lh, lw, lbu, lhu, sb, sh, sw, add, sub, xor, or, and, sll, srl, sra, slt, sltu, addi, xori, ori,
  --              andi, slli, srli, srai, slti, sltiu, lui, auipc, [BranchEnable = '0']: beq, bne, blt, bge, bltu, bgeu
  -- PCSrc = '01': bne, blt, bltu
  -- PCSrc = '10': beq, bge, bgeu
  -- PCSrc = '11': jal, jalr
  --PCSrc <= (BranchEq and Branch) & (not(BranchEq) and Branch);
  PCSrc <= (Jump or (BranchEq and Branch)) & (Jump or (not(BranchEq) and Branch));
  
  -- RegWrite = '0': sb, sh, sw, beq, bne, blt, bge, bltu, bgeu
  -- RegWrite = '1': lb, lh, lw, lbu, lhu, add, sub, xor, or, and, sll, srl, sra, slt, sltu, addi, 
  --                 xori, ori, andi, slli, srli, srai, slti, sltiu, jal, jalr, lui, auipc
  RegWrite    <= controls(16);
  
  -- MemWrite = '0': lb, lh, lw, lbu, lhu, add, sub, xor, or, and, sll, srl, sra, slt, sltu, beq, bne, blt, bge,
  --                 bltu, bgeu, addi, xori, ori, andi, slli, srli, srai, slti, sltiu, jal, jalr, lui, auipc
  -- MemWrite = '1': sb, sh, sw
  MemWrite    <= controls(15);
  
  -- SignExtEn = '0': lw, lbu, lhu, sb, sh, sw, add, sub, xor, or, and, sll, srl, sra, slt, sltu, beq, bne, blt, bge,
  --                  bltu, bgeu, addi, xori, ori, andi, slli, srli, srai, slti, sltiu, jal, jalr, lui, auipc
  -- SignExtEn = '1': lb, lh 
  SignExtEn   <= controls(14);
  
  -- MemSel = "00": lb, lbu, sb  
  -- MemSel = "01": lh, lhu, sh  
  -- MemSel = "10": lw, sw, add, sub, xor, or, and, sll, srl, sra, slt, sltu, beq, bne, blt, bge, bltu, bgeu,
  --                addi, xori, ori, andi, slli, srli, srai, slti, sltiu, jal, jalr, lui, auipc  
  MemSel      <= controls(13 downto 12);
  
  -- PCTargetSel = "00": lb, lh, lw, lbu, lhu, sb, sh, sw, add, sub, xor, or, and, sll, srl, sra, slt, sltu, beq, bne,
  --                     blt, bge, bltu, bgeu, addi, xori, ori, andi, slli, srli, srai, slti, sltiu, jal, auipc
  -- PCTargetSel = "01": jalr
  -- PCTargetSel = "10": lui
  PCTargetSel <= controls(11 downto 10);
  
  -- ImmSrc = "000": lb, lh, lw, lbu, lhu, add, sub, xor, or, and, sll, srl, sra, slt, sltu,
  --                 addi, xori, ori, andi, slti, sltiu, jalr
  -- ImmSrc = "001": sb, sh, sw
  -- ImmSrc = "010": beq, bne, blt, bge, bltu, bgeu
  -- ImmSrc = "011": jal
  -- ImmSrc = "100": lui, auipc
  -- ImmSrc = "101": slli, srli, srai
  ImmSrc      <= controls(9 downto 7);

  -- ResultSrc = "00": sb, sh, sw, add, sub, xor, or, and, sll, srl, sra, slt, sltu, beq, bne, blt, bge, bltu, bgeu,
  --                   addi, xori, ori, andi, slli, srli, srai, slti, sltiu
  -- ResultSrc = "01": lb, lh, lw, lbu, lhu
  -- ResultSrc = "10": jal, jalr
  -- ResultSrc = "11": lui, auipc
  ResultSrc   <= controls(6 downto 5);
  
  -- ALUSrc = '0': add, sub, xor, or, and, sll, srl, sra, slt, sltu, beq, bne, blt, bge, bltu, bgeu, jal, jalr, lui, auipc
  -- ALUSrc = '1': lb, lh, lw, lbu, lhu, sb, sh, sw, addi, xori, ori, andi, slli, srli, srai, slti, sltiu, 
  ALUSrc      <= controls(4);
  
  -- ALUOp = "00": lb, lh, lw, lbu, lhu, sb, sh, sw, jal, jalr, lui, auipc          
  -- ALUOp = "01": beq, bne, blt, bge, bltu, bgeu
  -- ALUOp = "10": add, sub, xor, or, and, sll, srl, sra, slt, sltu, addi, xori, ori, andi, slli, srli, srai, slti, sltiu
  ALUOp       <= controls(3 downto 2);
  
 
  -- Branch = '0': lb, lh, lw, lbu, lhu, sb, sh, sw, add, sub, xor, or, and, sll, srl, sra, slt, sltu,
  --               addi, xori, ori, andi, slli, srli, srai, slti, sltiu, lui, auipc, jal, jalr
  -- Branch = '1': beq, bne, blt, bge, bltu, bgeu
  Branch      <= controls(1);
  
  -- Jump = '0': lb, lh, lw, lbu, lhu, sb, sh, sw, add, sub, xor, or, and, sll, srl, sra, slt, sltu,
  --             beq, bne, blt, bge, bltu, bgeu, addi, xori, ori, andi, slli, srli, srai, slti, sltiu, lui, auipc  
  -- Jump = '1': jal, jalr  
  Jump        <= controls(0);
  
end;
