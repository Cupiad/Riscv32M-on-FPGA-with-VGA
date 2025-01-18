library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity aludec is -- ALU control decoder
  port(opb5:       in  STD_ULOGIC;
       funct3:     in  STD_ULOGIC_VECTOR(2 downto 0);
       funct7b5:   in  STD_ULOGIC;
       funct7b0:   in  STD_ULOGIC;
       ALUOp:      in  STD_ULOGIC_VECTOR(1 downto 0);
       ALUControl: out STD_ULOGIC_VECTOR(4 downto 0));
end;

architecture behave of aludec is

attribute dont_touch : string;
attribute dont_touch of funct7b5 : signal is "true";
attribute dont_touch of funct7b0 : signal is "true";

begin
  process(funct3, funct7b5, funct7b0, opb5, ALUOp) begin
    case ALUOp is
      when "00" =>                    ALUControl <= "00000"; -- addition for data mem addr
      when "01" =>   case funct3 is           -- B-type
                       when "000" =>  ALUControl <= "00001"; -- beq
                       when "001" =>  ALUControl <= "00001"; -- bne             
                       when "100" =>  ALUControl <= "00101"; -- blt
                       when "101" =>  ALUControl <= "00101"; -- bge
                       when "110" =>  ALUControl <= "00111"; -- bltu
                       when "111" =>  ALUControl <= "00111"; -- bgeu
                       when others => ALUControl <= "XXXXX"; -- unknown
                     end case;                  
       when "10" =>   
        -- M extension instructions (require funct7b5='0' and funct7b0='1')
        if (funct7b5 = '0' and funct7b0 = '1' and opb5 = '1') then
          case funct3 is
            when "000"  => ALUControl <= "10000"; -- mul
            when "001"  => ALUControl <= "10001"; -- mulh
            when "010"  => ALUControl <= "10010"; -- mulhsu
            when "011"  => ALUControl <= "10011"; -- mulhu
            when "100"  => ALUControl <= "10100"; -- div
            when "101"  => ALUControl <= "10101"; -- divu
            when "110"  => ALUControl <= "10110"; -- rem
            when "111"  => ALUControl <= "10111"; -- remu
            when others => ALUControl <= "XXXXX"; -- unknown
          end case;
        -- Standard R-type instructions
        else
          case funct3 is
            when "000" => if (funct7b5 = '1' and opb5 = '1') then 
                           ALUControl <= "00001"; -- sub
                         else
                           ALUControl <= "00000"; -- add, addi
                         end if;
            when "001" =>  ALUControl <= "00010"; -- sll, slli              
            when "010" =>  ALUControl <= "00101"; -- slt, slti
            when "011" =>  ALUControl <= "00111"; -- sltu, sltiu
            when "100" =>  ALUControl <= "01000"; -- xor, xori
            when "101" =>  if (funct7b5 = '0') then
                            ALUControl <= "01010"; -- srl, srli
                          else
                            ALUControl <= "01011"; -- sra, srai
                          end if;
            when "110" =>  ALUControl <= "01100"; -- or, ori
            when "111" =>  ALUControl <= "01110"; -- and, andi
            when others => ALUControl <= "XXXXX"; -- unknown
          end case;
        end if;
      when others => ALUControl <= "XXXXX"; -- unknown
    end case;
  end process;
end;