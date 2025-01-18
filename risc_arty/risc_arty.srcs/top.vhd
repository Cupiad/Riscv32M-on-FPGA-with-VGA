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


-- reworked for Seminar project by Samuel Grünbacher

Library IEEE;
Library work;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity top is 
  port(CLK100MHZ: in     STD_ULOGIC;
       reset:     in     STD_ULOGIC;
       led:       out    STD_ULOGIC_VECTOR(3 downto 0);
       
       vga_red:   out STD_LOGIC_VECTOR(3 downto 0);
       vga_green: out STD_LOGIC_VECTOR(3 downto 0);
       vga_blue:  out STD_LOGIC_VECTOR(3 downto 0);
       vga_hsync: out STD_LOGIC;
       vga_vsync: out STD_LOGIC);
       
end;

architecture rtl of top is

  signal clk_div:      unsigned(27 downto 0) := (others => '0');  
  signal clk_proc:     STD_ULOGIC := '0';
  signal clk_vga:      STD_ULOGIC := '0';
  signal clk_imem:     STD_ULOGIC := '0';
  signal clk_dmem:     STD_ULOGIC := '0';
  
  
  signal pc_changed:   STD_ULOGIC := '0';
  signal instr_read:   STD_ULOGIC := '0';
  signal last_PC:      STD_ULOGIC_VECTOR(31 downto 0);
  signal last_Instr:   STD_ULOGIC_VECTOR(31 downto 0);
  
  signal debug_changed:     STD_ULOGIC := '0';
  signal last_debug_reg:    STD_ULOGIC_VECTOR(31 downto 0) := (others => '0');
  
  --vga reg singals
  signal dreg0:  STD_ULOGIC_VECTOR(31 downto 0);
  signal dreg1:  STD_ULOGIC_VECTOR(31 downto 0);
  signal dreg2:  STD_ULOGIC_VECTOR(31 downto 0);
  signal dreg3:  STD_ULOGIC_VECTOR(31 downto 0);
  signal dreg4:  STD_ULOGIC_VECTOR(31 downto 0);
  signal dreg5:  STD_ULOGIC_VECTOR(31 downto 0);
  signal dreg6:  STD_ULOGIC_VECTOR(31 downto 0);
  signal dreg7:  STD_ULOGIC_VECTOR(31 downto 0);
  signal dreg8:  STD_ULOGIC_VECTOR(31 downto 0);
  signal dreg9:  STD_ULOGIC_VECTOR(31 downto 0);
  
  --vivado removes the signals otherwise
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
 
  
  
  component riscvpipeline
    port(clk:       in  STD_ULOGIC;
         reset:     in  STD_ULOGIC;
         PC:        out STD_ULOGIC_VECTOR(31 downto 0);
         Instr:     in  STD_ULOGIC_VECTOR(31 downto 0);
         MemWrite:  out STD_ULOGIC;
         ALUResult: out STD_ULOGIC_VECTOR(31 downto 0);
         MemSel:    out STD_ULOGIC_VECTOR(1  downto 0);
         WriteData: out STD_ULOGIC_VECTOR(31 downto 0);
         ReadData:  in  STD_ULOGIC_VECTOR(31 downto 0);
         dreg0, dreg1, dreg2, dreg3, dreg4, dreg5, dreg6, dreg7, dreg8, dreg9:  out STD_ULOGIC_VECTOR(31 downto 0)
         );
  end component;
  
  component imem
    port(
        clk_proc:       in STD_ULOGIC;
        clk_imem:       in STD_ULOGIC;   
        rst:            in STD_ULOGIC;
        a:              in  STD_ULOGIC_VECTOR(31 downto 0);
        rd:             out STD_ULOGIC_VECTOR(31 downto 0)
        );
  end component;
  
  component dmem
    port(
         clk_proc:  in  STD_ULOGIC;
         clk_dmem:  in STD_ULOGIC;
         rsta:      in STD_ULOGIC;
         we:        in  STD_ULOGIC;
         sel:       in  STD_ULOGIC_VECTOR(1 downto 0);
         a:         in  STD_ULOGIC_VECTOR(31 downto 0);
         wd:        in  STD_ULOGIC_VECTOR(31 downto 0);
         rd:        out STD_ULOGIC_VECTOR(31 downto 0)
         );
  end component;
    
  component vga_debug
    port ( clk :        in  STD_ULOGIC;
           reset :      in  STD_ULOGIC;
           
           vga_red :    out STD_LOGIC_VECTOR (3 downto 0);
           vga_green :  out STD_LOGIC_VECTOR (3 downto 0);
           vga_blue :   out STD_LOGIC_VECTOR (3 downto 0);
           vga_hsync :  out STD_LOGIC;
           vga_vsync :  out STD_LOGIC;
           
           PC :         in  STD_ULOGIC_VECTOR(31 downto 0);
           Instr :      in  STD_ULOGIC_VECTOR(31 downto 0);
           dreg0, dreg1, dreg2, dreg3, dreg4, dreg5, dreg6, dreg7, dreg8, dreg9:  in STD_ULOGIC_VECTOR(31 downto 0)
         );
  end component;
    
  signal PC:            STD_ULOGIC_VECTOR(31 downto 0);
  signal Instr:         STD_ULOGIC_VECTOR(31 downto 0);
  signal ReadData:      STD_ULOGIC_VECTOR(31 downto 0);
  signal MemSel:        STD_ULOGIC_VECTOR(1  downto 0);
  signal WriteData_i:   STD_ULOGIC_VECTOR(31 downto 0);
  signal DataAdr_i:     STD_ULOGIC_VECTOR(31 downto 0);
  signal MemWrite_i:    STD_ULOGIC;
  
begin
 --clock divider
process(CLK100MHZ)
  begin
    if rising_edge(CLK100MHZ) then
      clk_div <= clk_div + 1;
    end if;
  end process;
  
  -- for debug leds
   process(clk_proc)
  begin
    if rising_edge(clk_proc) then
      -- Detect PC changes
      if last_PC /= PC then
        pc_changed <= '1';
      else
        pc_changed <= '0';
      end if;
      last_PC <= PC;
      
      -- Detect instruction fetches
      if last_Instr /= Instr then
        instr_read <= '1';
      else
        instr_read <= '0';
      end if;
      last_Instr <= Instr;
    end if;
  end process;
  
  -- 26 -> 1,5hz
  clk_proc <= clk_div(26);
  clk_imem <= clk_div(25);
  clk_vga <= clk_div(1);
  clk_dmem <= clk_div(24);

  led(0) <= clk_div(26);      -- Clock 
  led(1) <= pc_changed;       -- PC activity
  led(2) <= instr_read;       -- Instruction fetch
  led(3) <= MemWrite_i;       -- Memory write activity
  
  rvsingle: entity work.riscvpipeline(struct_neg) 
    port map(
      clk       => clk_proc,
      reset     => reset,
      PC        => PC,
      Instr     => Instr,
      MemWrite  => MemWrite_i,
      ALUResult => DataAdr_i,
      MemSel    => MemSel,
      WriteData => WriteData_i,
      ReadData  => ReadData,
      dreg0 => dreg0,
      dreg1 => dreg1,
      dreg2 => dreg2,
      dreg3 => dreg3,
      dreg4 => dreg4,
      dreg5 => dreg5,
      dreg6 => dreg6,
      dreg7 => dreg7,
      dreg8 => dreg8,
      dreg9 => dreg9
      
    );
    
 vga_debug_inst: entity work.vga_debug
        port map(
            clk => clk_vga,
            reset => reset,
            vga_red => vga_red,
            vga_green => vga_green,
            vga_blue => vga_blue,
            vga_hsync => vga_hsync,
            vga_vsync => vga_vsync,
            PC => PC,
            Instr => Instr,
            dreg0 => dreg0,
            dreg1 => dreg1,
            dreg2 => dreg2,
            dreg3 => dreg3,
            dreg4 => dreg4,
            dreg5 => dreg5,
            dreg6 => dreg6,
            dreg7 => dreg7,
            dreg8 => dreg8,
            dreg9 => dreg9
        );   
    
    
  -- Instruction memory
  imem1: imem 
    port map(
    clk_proc => clk_proc,
    clk_imem => clk_imem,
    rst => reset,
    a  => PC,
    rd => Instr
    );
    
  -- Data memory
  dmem1: dmem 
    port map(
      clk_proc => clk_proc,
      clk_dmem => clk_dmem,
      rsta => reset,
      we  => MemWrite_i,
      sel => MemSel,
      a   => DataAdr_i,
      wd  => WriteData_i,
      rd  => ReadData
    );
end;
