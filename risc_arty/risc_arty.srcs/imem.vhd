library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.ALL;

--------------------------------------------------------------------------------
-- Entity Declaration
--------------------------------------------------------------------------------
entity imem is
  port(
    clk_proc :  in  STD_LOGIC;                         
    clk_imem:   in  STD_LOGIC;
    rst :       in  STD_LOGIC;                         -- reset
    a   :       in  STD_LOGIC_VECTOR(31 downto 0);     -- Address
    rd  :       out STD_LOGIC_VECTOR(31 downto 0)      -- Data out
  );
end entity imem;

architecture behave of imem is

  component imem_bram
    port(
      clka      : in  STD_LOGIC;
      rsta      : in  STD_LOGIC;
      addra     : in  STD_LOGIC_VECTOR(31 downto 0);
      douta     : out STD_LOGIC_VECTOR(31 downto 0);
      rsta_busy : out STD_LOGIC
    );
  end component;

  signal dout_s_fast   : STD_LOGIC_VECTOR(31 downto 0);
  signal rd_proc       : STD_LOGIC_VECTOR(31 downto 0);
  signal rsta_busy_s   : STD_LOGIC;

begin

  U_IMEM_BRAM : imem_bram
    port map(
      clka      => clk_imem,
      rsta      => rst,
      addra     => a,
      douta     => dout_s_fast,
      rsta_busy => rsta_busy_s
    );

  process(clk_proc)
  begin
    if rising_edge(clk_proc) then
      rd_proc <= dout_s_fast;
    end if;
  end process;
  rd <= rd_proc;

end architecture behave;

