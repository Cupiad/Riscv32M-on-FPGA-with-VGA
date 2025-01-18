library IEEE;
use IEEE.STD_LOGIC_1164.all;
use STD.TEXTIO.all;
use IEEE.NUMERIC_STD_UNSIGNED.all;

entity dmem is -- data memory
  generic(addr_width: integer := 8);
  port(
       clk_proc:    in  STD_ULOGIC;
       clk_dmem:    in  STD_ULOGIC;
       rsta:        in  STD_ULOGIC;
       we:          in  STD_ULOGIC;
       sel:         in  STD_ULOGIC_VECTOR(1 downto 0);
       a:           in  STD_ULOGIC_VECTOR(31 downto 0);
       wd:          in  STD_ULOGIC_VECTOR(31 downto 0);
       rd:          out STD_ULOGIC_VECTOR(31 downto 0));
end;

architecture behave of dmem is
  component dmem_bram
    port(
      clka  :       in  STD_LOGIC;
      rsta  :       in  STD_LOGIC;
      wea   :       in  STD_LOGIC_VECTOR(3 downto 0);
      addra :       in  STD_LOGIC_VECTOR(31 downto 0); 
      dina  :       in  STD_LOGIC_VECTOR(31 downto 0);
      douta :       out STD_LOGIC_VECTOR(31 downto 0);
      rsta_busy:    out STD_LOGIC
    );
  end component;

  signal write_enable : STD_LOGIC_VECTOR(3 downto 0);
  signal read_data   : STD_LOGIC_VECTOR(31 downto 0);
  signal byte_sel    : STD_LOGIC_VECTOR(3 downto 0);
  signal addr_reg    : STD_LOGIC_VECTOR(31 downto 0);  -- address
  signal wd_reg      : STD_LOGIC_VECTOR(31 downto 0); -- write data
  signal sel_reg     : STD_LOGIC_VECTOR(1 downto 0);  -- select
  signal we_reg      : STD_LOGIC;                     -- write enable
  signal a_lsb_reg   : STD_LOGIC_VECTOR(1 downto 0);  -- LSBs of address
  signal rsta_busy_s : STD_LOGIC;

begin
  process(clk_proc)
  begin
    if rising_edge(clk_proc) then
      addr_reg <= a;
      wd_reg <= wd;
      sel_reg <= sel;
      we_reg <= we;
      a_lsb_reg <= a(1 downto 0);
    end if;
  end process;

  process(sel_reg, a_lsb_reg, we_reg)
  begin
    byte_sel <= "0000";
    case sel_reg is
      when "00" =>  -- byte access
        case a_lsb_reg is
          when "00" => byte_sel <= "0001";
          when "01" => byte_sel <= "0010";
          when "10" => byte_sel <= "0100";
          when "11" => byte_sel <= "1000";
          when others => byte_sel <= "0000";
        end case;
      when "01" =>  -- halfword access
        if a_lsb_reg(1) = '0' then
          byte_sel <= "0011";
        else
          byte_sel <= "1100";
        end if;
      when others => -- word access
        byte_sel <= "1111";
    end case;

    if we_reg = '1' then
      write_enable <= byte_sel;
    else
      write_enable <= "0000";
    end if;
  end process;

  bram_inst: dmem_bram
    port map(
      clka  => clk_dmem,     -- Use fast clock
      rsta => rsta,
      wea   => write_enable,
      addra => addr_reg,
      dina  => wd_reg,
      douta => read_data,
      rsta_busy => rsta_busy_s
    );

  process(read_data, sel_reg, a_lsb_reg)
  begin
    case sel_reg is
      when "00" =>  -- byte access
        case a_lsb_reg is
          when "00" => rd <= X"000000" & read_data(7 downto 0);
          when "01" => rd <= X"000000" & read_data(15 downto 8);
          when "10" => rd <= X"000000" & read_data(23 downto 16);
          when "11" => rd <= X"000000" & read_data(31 downto 24);
          when others => rd <= (others => '0');
        end case;
      when "01" =>  -- halfword access
        if a_lsb_reg(1) = '0' then
          rd <= X"0000" & read_data(15 downto 0);
        else
          rd <= X"0000" & read_data(31 downto 16);
        end if;
      when others => -- word access
        rd <= read_data;
    end case;
  end process;

end;
