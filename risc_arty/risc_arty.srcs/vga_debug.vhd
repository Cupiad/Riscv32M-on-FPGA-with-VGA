library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.commonPak.all;  -- (Assuming you have a package "commonPak" for point_2d, etc.)

entity vga_debug is
    Port ( clk :        in  STD_LOGIC;
           reset :      in  STD_LOGIC;
           
           vga_red :    out STD_LOGIC_VECTOR (3 downto 0);
           vga_green :  out STD_LOGIC_VECTOR (3 downto 0);
           vga_blue :   out STD_LOGIC_VECTOR (3 downto 0);
           vga_hsync :  out STD_LOGIC;
           vga_vsync :  out STD_LOGIC;
           
           PC :         in  STD_ULOGIC_VECTOR(31 downto 0);
           Instr :      in  STD_ULOGIC_VECTOR(31 downto 0);
           dreg0, dreg1, dreg2, dreg3, dreg4, dreg5, dreg6, dreg7, dreg8, dreg9:  in STD_ULOGIC_VECTOR(31 downto 0)
         );
  end;       
         
   architecture Behavioral of vga_debug is
   
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
   
   
    ------------------------------------------------------------------------------
    -- VGA TIMING CONSTANTS FOR 640x480 @ 60Hz
    ------------------------------------------------------------------------------
    constant H_PIXELS : integer := 640;
    constant V_PIXELS : integer := 480;
    constant H_FPORCH : integer := 16;
    constant H_SYNC   : integer := 96;
    constant H_BPORCH : integer := 48;
    constant V_FPORCH : integer := 10;
    constant V_SYNC   : integer := 2;
    constant V_BPORCH : integer := 33;
    
    constant H_TOTAL  : integer := H_PIXELS + H_FPORCH + H_SYNC + H_BPORCH;
    constant V_TOTAL  : integer := V_PIXELS + V_FPORCH + V_SYNC + V_BPORCH;
    
    ------------------------------------------------------------------------------
    -- Counters for VGA timing
    ------------------------------------------------------------------------------
    signal h_count    : integer range 0 to H_TOTAL-1 := 0;
    signal v_count    : integer range 0 to V_TOTAL-1 := 0;
    
    ------------------------------------------------------------------------------
    -- Active display area signals
    ------------------------------------------------------------------------------
    signal video_on : std_logic := '0';
    signal pixel1: std_logic;
    signal pixel2: std_logic;
    signal pixel3: std_logic;  
    signal pixel4: std_logic;
    
   
    
    signal pixel_reg0: std_logic;
    signal pixel_reg1: std_logic;
    signal pixel_reg2: std_logic;
    signal pixel_reg3: std_logic;
    signal pixel_reg4: std_logic;
    signal pixel_reg5: std_logic;
    signal pixel_reg6: std_logic;
    signal pixel_reg7: std_logic;
    signal pixel_reg8: std_logic;
    signal pixel_reg9: std_logic;
    
    signal pc_str: string(1 to 20);
    signal instr_str: string(1 to 20);
    signal reg0_str: string(1 to 20);
    signal reg1_str: string(1 to 20);
    signal reg2_str: string(1 to 20);
    signal reg3_str: string(1 to 20);
    signal reg4_str: string(1 to 20);
    signal reg5_str: string(1 to 20);
    signal reg6_str: string(1 to 20);
    signal reg7_str: string(1 to 20);
    signal reg8_str: string(1 to 20);
    signal reg9_str: string(1 to 20);
    signal reset_str: string(1 to 20);
    -- Debug toggle signal (does nothing but forces recompile)
    signal debug_toggle : std_logic := '1';  -- Changed from '0' to '1'
    
function to_hex_string(vec : std_ulogic_vector(31 downto 0)) return string is
        variable result : string(1 to 8);
        variable nibble : std_ulogic_vector(3 downto 0);
    begin
        for i in 0 to 7 loop
            nibble := vec(31-i*4 downto 28-i*4);
            case to_integer(unsigned(nibble)) is
                when  0 => result(i+1) := '0';
                when  1 => result(i+1) := '1';
                when  2 => result(i+1) := '2';
                when  3 => result(i+1) := '3';
                when  4 => result(i+1) := '4';
                when  5 => result(i+1) := '5';
                when  6 => result(i+1) := '6';
                when  7 => result(i+1) := '7';
                when  8 => result(i+1) := '8';
                when  9 => result(i+1) := '9';
                when 10 => result(i+1) := 'A';
                when 11 => result(i+1) := 'B';
                when 12 => result(i+1) := 'C';
                when 13 => result(i+1) := 'D';
                when 14 => result(i+1) := 'E';
                when 15 => result(i+1) := 'F';
                when others => result(i+1) := 'X';
            end case;
        end loop;
        return result;
    end function;
    ------------------------------------------------------------------------------
begin
  
    ------------------------------------------------------------------------------
    -- VGA TIMING GENERATION
    ------------------------------------------------------------------------------
    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                h_count <= 0;
                v_count <= 0;
            else
                -- Toggle debug signal (does nothing)
                debug_toggle <= not debug_toggle;
                
                if h_count = H_TOTAL-1 then
                    h_count <= 0;
                    if v_count = V_TOTAL-1 then
                        v_count <= 0;
                    else
                        v_count <= v_count + 1;
                    end if;
                else
                    h_count <= h_count + 1;
                end if;
            end if;
        end if;
    end process;
    
    process(reset)
    begin
        if reset = '1' then
            reset_str <= "Reset: 1            ";
        else
            reset_str <= "Reset: 0            ";
        end if;
    end process;

    ------------------------------------------------------------------------------
    -- GENERATE SYNC SIGNALS
    ------------------------------------------------------------------------------
    vga_hsync <= '0' when h_count >= (H_PIXELS + H_FPORCH) and 
                          h_count <  (H_PIXELS + H_FPORCH + H_SYNC)
                 else '1';
                 
    vga_vsync <= '0' when v_count >= (V_PIXELS + V_FPORCH) and 
                          v_count <  (V_PIXELS + V_FPORCH + V_SYNC)
                 else '1';

    ------------------------------------------------------------------------------
    -- GENERATE DISPLAY ACTIVE SIGNAL
    ------------------------------------------------------------------------------
    video_on <= '1' when (h_count < H_PIXELS) and (v_count < V_PIXELS) else '0';

    ------------------------------------------------------------------------------
    -- INSTANTIATE 34 PIXEL_ON_TEXT modules (line 0..33), each at y = i*16
    ------------------------------------------------------------------------------
    

   
    
    -- Format display strings
    pc_str <= "PC: 0x" & to_hex_string(PC) & "      ";
    instr_str <= "IR: 0x" & to_hex_string(Instr) & "      ";
    reg0_str <= "x0: 0x" & to_hex_string(dreg0) & "      ";
    reg1_str <= "x1: 0x" & to_hex_string(dreg1) & "      ";
    reg2_str <= "x2: 0x" & to_hex_string(dreg2) & "      ";
    reg3_str <= "x3: 0x" & to_hex_string(dreg3) & "      ";
    reg4_str <= "x4: 0x" & to_hex_string(dreg4) & "      ";
    reg5_str <= "x5: 0x" & to_hex_string(dreg5) & "      ";
    reg6_str <= "x6: 0x" & to_hex_string(dreg6) & "      ";
    reg7_str <= "x7: 0x" & to_hex_string(dreg7) & "      ";
    reg8_str <= "x8: 0x" & to_hex_string(dreg8) & "      ";
    reg9_str <= "x9: 0x" & to_hex_string(dreg9) & "      ";
    
    -- Original text displays
    -- New displays for PC and Instruction
    text_display_3: entity work.Pixel_On_Text
        generic map(textLength => 20)
        port map(
            clk => clk,
            displayText => pc_str,
            position => (20, 48),  
            horzCoord => h_count,
            vertCoord => v_count,
            pixel => pixel3
        );
        
    text_display_4: entity work.Pixel_On_Text
        generic map(textLength => 20)
        port map(
            clk => clk,
            displayText => instr_str,
            position => (20, 64),  -- Below PC
            horzCoord => h_count,
            vertCoord => v_count,
            pixel => pixel4
        );
        
      reg_display_0: entity work.Pixel_On_Text
        generic map(textLength => 20)
        port map(
            clk => clk,
            displayText => reg0_str,
            position => (20, 80),
            horzCoord => h_count,
            vertCoord => v_count,
            pixel => pixel_reg0
        );

    reg_display_1: entity work.Pixel_On_Text
        generic map(textLength => 20)
        port map(
            clk => clk,
            displayText => reg1_str,
            position => (20, 96),
            horzCoord => h_count,
            vertCoord => v_count,
            pixel => pixel_reg1
        );

    reg_display_2: entity work.Pixel_On_Text
        generic map(textLength => 20)
        port map(
            clk => clk,
            displayText => reg2_str,
            position => (20, 112),
            horzCoord => h_count,
            vertCoord => v_count,
            pixel => pixel_reg2
        );

    reg_display_3: entity work.Pixel_On_Text
        generic map(textLength => 20)
        port map(
            clk => clk,
            displayText => reg3_str,
            position => (20, 128),
            horzCoord => h_count,
            vertCoord => v_count,
            pixel => pixel_reg3
        );

    reg_display_4: entity work.Pixel_On_Text
        generic map(textLength => 20)
        port map(
            clk => clk,
            displayText => reg4_str,
            position => (20, 144),
            horzCoord => h_count,
            vertCoord => v_count,
            pixel => pixel_reg4
        );

    reg_display_5: entity work.Pixel_On_Text
        generic map(textLength => 20)
        port map(
            clk => clk,
            displayText => reg5_str,
            position => (20, 160),
            horzCoord => h_count,
            vertCoord => v_count,
            pixel => pixel_reg5
        );

    reg_display_6: entity work.Pixel_On_Text
        generic map(textLength => 20)
        port map(
            clk => clk,
            displayText => reg6_str,
            position => (20, 176),
            horzCoord => h_count,
            vertCoord => v_count,
            pixel => pixel_reg6
        );

    reg_display_7: entity work.Pixel_On_Text
        generic map(textLength => 20)
        port map(
            clk => clk,
            displayText => reg7_str,
            position => (20, 192),
            horzCoord => h_count,
            vertCoord => v_count,
            pixel => pixel_reg7
        );

    reg_display_8: entity work.Pixel_On_Text
        generic map(textLength => 20)
        port map(
            clk => clk,
            displayText => reg8_str,
            position => (20, 208),
            horzCoord => h_count,
            vertCoord => v_count,
            pixel => pixel_reg8
        );

    reg_display_9: entity work.Pixel_On_Text
        generic map(textLength => 20)
        port map(
            clk => clk,
            displayText => reg9_str,
            position => (20, 224),
            horzCoord => h_count,
            vertCoord => v_count,
            pixel => pixel_reg9
        );
        
      
           
    -- Color output process
    process(video_on, debug_toggle)
    begin
        if (video_on = '1') then
            if pixel1 = '1' then         -- "reset"
                vga_red   <= "1111";
                vga_green <= "1111";
                vga_blue  <= "1111";
            elsif pixel2 = '1' then      -- "try2 try2"
                vga_red   <= "1111";
                vga_green <= "0000";
                vga_blue  <= "0000";
            elsif pixel3 = '1' then      -- PC value
                vga_red   <= "0000";
                vga_green <= "1111";
                vga_blue  <= "0000";
            elsif pixel4 = '1' then      -- Instruction value
                vga_red   <= "0000";
                vga_green <= "1000";
                vga_blue  <= "1111";
            elsif pixel_reg0 = '1' then  -- Register 0
                vga_red   <= "1111";
                vga_green <= "1111";
                vga_blue  <= "0000";
            elsif pixel_reg1 = '1' then  -- Register 1
                vga_red   <= "1111";
                vga_green <= "1111";
                vga_blue  <= "0000";
            elsif pixel_reg2 = '1' then  -- Register 2
                vga_red   <= "1111";
                vga_green <= "1111";
                vga_blue  <= "0000";
            elsif pixel_reg3 = '1' then  -- Register 3
                vga_red   <= "1111";
                vga_green <= "1111";
                vga_blue  <= "0000";
            elsif pixel_reg4 = '1' then  -- Register 4
                vga_red   <= "1111";
                vga_green <= "1111";
                vga_blue  <= "0000";
            elsif pixel_reg5 = '1' then  -- Register 5
                vga_red   <= "1111";
                vga_green <= "1111";
                vga_blue  <= "0000";
            elsif pixel_reg6 = '1' then  -- Register 6
                vga_red   <= "1111";
                vga_green <= "1111";
                vga_blue  <= "0000";
            elsif pixel_reg7 = '1' then  -- Register 7
                vga_red   <= "1111";
                vga_green <= "1111";
                vga_blue  <= "0000";
            elsif pixel_reg8 = '1' then  -- Register 8
                vga_red   <= "1111";
                vga_green <= "1111";
                vga_blue  <= "0000";
            elsif pixel_reg9 = '1' then  -- Register 9
                vga_red   <= "1111";
                vga_green <= "1111";
                vga_blue  <= "0000";                                   
            else
                vga_red   <= "0000";
                vga_green <= "0000";
                vga_blue  <= "0000";
            end if;
        else
            vga_red   <= "0000";
            vga_green <= "0000";
            vga_blue  <= "0000";
        end if;
    end process;

    -- Rest of the architecture remains the same...
end Behavioral;

