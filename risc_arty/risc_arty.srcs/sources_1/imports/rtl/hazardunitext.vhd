library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity hazardunitext is -- extended hazard unit
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
end;

architecture behave of hazardunitext is
    signal stall:       STD_ULOGIC;
begin
    process (Rs1E, Rs2E, RdM, RegWriteM, RdW, RegWriteW, ResultSrcE0, Rs1D, Rs2D, RdE, PCSrc)
    begin
        -- Forward to solve data hazards when possible
        -- Forward A

        if ((Rs1E = RdM) and (RegWriteM = '1'))  then
            ForwardAD <=  '1' when (Rs1D = RdW) else  '0';
            ForwardAE <= "10";
        elsif (RegWriteW = '1') then
            ForwardAD <=  '1' when (Rs1D = RdW) else  '0';
            ForwardAE <= "01" when (Rs1E = RdW) else "00";
        else
            ForwardAD <= '0';
            ForwardAE <= "00";
        end if;

        -- Forward B
        if ((Rs2E = RdM) and (RegWriteM = '1'))  then
            ForwardBD <=  '1' when (Rs2D = RdW) else  '0';
            ForwardBE <= "10";
        elsif (RegWriteW = '1') then
            ForwardBD <=  '1' when (Rs2D = RdW) else  '0';
            ForwardBE <= "01" when (Rs2E = RdW) else "00";
        else
            ForwardBD <= '0';
            ForwardBE <= "00";
        end if;

        -- Stall when a load hazard occurs
        StallF <= '1' when ((ResultSrcE0 = '1') and ((Rs1D = RdE) or (Rs2D = RdE)))
             else '0';
        StallD <= '1' when ((ResultSrcE0 = '1') and ((Rs1D = RdE) or (Rs2D = RdE)))
             else '0';

        -- Flush when a branch is taken or a load introduces a bubble
        FlushD <= PcSrc;
        FlushE <=  '1' when ((ResultSrcE0 = '1') and ((Rs1D = RdE) or (Rs2D = RdE)))
                        or (PCSrc = '1')
             else '0';
    end process;
end;
