----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/06/2013 01:46:59 PM
-- Design Name: 
-- Module Name: AdcDataReader - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AdcDataReader is
    Port ( PinDataP : in STD_LOGIC;
           PinDataN : in STD_LOGIC;
           BitClk : in STD_LOGIC;
           DivClk : in STD_LOGIC;
           DataOut : out STD_LOGIC_VECTOR (5 downto 0);
           --SyncDone : out STD_LOGIC;
           --state : out STD_LOGIC_VECTOR (1 downto 0);
           Rst  : in std_logic; 
           BitClkDone   : in std_logic;
           BitSlipP : in std_logic;
           BitSlipN : in std_logic
           );
end AdcDataReader;

architecture Behavioral of AdcDataReader is

signal IntDataIn_N      : std_logic;
signal IntDataIn_P      : std_logic; 
signal BitClk_N         : std_logic;
signal IntBitSlip_P     : std_logic;
signal IntBitSlip_N     : std_logic;
signal IntDataP         : std_logic_vector (2 downto 0);
signal IntDataN         : std_logic_vector (2 downto 0);
--signal IntDoneP         : std_logic;
--signal IntDoneN         : std_logic;
signal IntDataTotal     : std_logic_vector(5 downto 0);

--component BitSlipCtrlFSM is
--    Port ( DataIn : in STD_LOGIC_VECTOR (2 downto 0);
--           PatternIn : in std_logic_vector(2 downto 0);
--           Clk : in STD_LOGIC;
--           Rst : in STD_LOGIC;
--           BitSlip : out STD_LOGIC;
--           State : out STD_LOGIC_VECTOR (1 downto 0);
--           Done : out STD_LOGIC
--          );
--end component;


begin

InPinsDiff : IBUFDS_DIFF_OUT
generic map (
    DIFF_TERM => FALSE, -- Differential Termination
    IBUF_LOW_PWR => FALSE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
    IOSTANDARD => "TMDS_33" -- Specify the input I/O standard
    --USE_IBUFDISABLE => "TRUE"
    )
port map (
    O => IntDataIn_P, -- Buffer diff_p output
    OB => IntDataIn_N, -- Buffer diff_n output
    I => PinDataP, -- Diff_p buffer input (connect directly to top-level port)
    IB => PinDataN -- Diff_n buffer input (connect directly to top-level port)
);

BitClk_N <= not(BitClk);

AdcDataISerdes_P : ISERDESE2
	generic map (
		DATA_RATE		=> "SDR",
		DATA_WIDTH		=> 3,	-- 12-bit = 3 and 14/16 b its = 4
		INTERFACE_TYPE	=> "NETWORKING",
		IOBDELAY		=> "NONE",				-- <-- NO IDELAY, same as data input
		NUM_CE			=> 1,
		SERDES_MODE		=> "MASTER",
		OFB_USED => "FALSE", -- Select OFB path (FALSE, TRUE)
        DYN_CLKDIV_INV_EN => "FALSE", -- Enable DYNCLKDIVINVSEL inversion (FALSE, TRUE)
        DYN_CLK_INV_EN => "FALSE" -- Enable DYNCLKINVSEL inversion (FALSE, TRUE)
	)
	port map (
	    D			  => IntDataIn_P,
	    DDLY          => '0',
		--RST =>IntBitClkRst, -- 1-bit input: Active high asynchronous reset
	    RST           =>Rst,
	    CLK			  =>  BitClk,		-- Adjusted Bit Clock
	    CLKB           => '0', --BitClk_N,
        CLKDIV 	      => DivClk,		-- Adjusted word clock
        CLKDIVP        => '0',
        OCLK		      => '0',
        OCLKB          => '0',
        DYNCLKDIVSEL   => '0',
        DYNCLKSEL     => '0',
        OFB               => '0',
	    BITSLIP 	      => IntBitSlip_P,
		CE1			      => BitClkDone,
		CE2			      => '0', --BitClkDone,

		SHIFTIN1 	=> '0',
		SHIFTIN2 	=> '0',
		SHIFTOUT1 	=> open,
		SHIFTOUT2 	=> open,
		O 			=> open,	-- Frame clock output for DCM
		Q1 			=> IntDataP(0), --(0),	-- 0
		Q2 			=> IntDataP(1), --(2),	-- 2
		Q3 			=> IntDataP(2), --(4),	-- 4
		Q4 			=> open, --(6),	-- 6
		Q5 			=> open,
		Q6 			=> open,
		Q7          => open,
		Q8          => open
	);

--BitSlipCtrlP : BitSlipCtrlFSM
--  Port map (
--        DataIn      =>IntDataP,
--        PatternIn   =>b"110",
--        Clk         =>DivClk,
--        Rst         =>BitClkDone,
--        BitSlip     =>IntBitSlip_P,
--        State      => open,
--        Done       => IntDoneP
--        );


AdcDataISerdes_N : ISERDESE2
    generic map (
        DATA_RATE		=> "SDR",
        DATA_WIDTH		=> 3,	-- 12-bit = 3 and 14/16 b its = 4
        INTERFACE_TYPE	=> "NETWORKING",
        IOBDELAY		=> "NONE",				-- <-- NO IDELAY, same as data input
        NUM_CE			=> 1,
        SERDES_MODE		=> "MASTER",
        OFB_USED => "FALSE", -- Select OFB path (FALSE, TRUE)
        DYN_CLKDIV_INV_EN => "FALSE", -- Enable DYNCLKDIVINVSEL inversion (FALSE, TRUE)
        DYN_CLK_INV_EN => "FALSE" -- Enable DYNCLKINVSEL inversion (FALSE, TRUE)
    )
    port map (
        D			  => IntDataIn_N,
        DDLY          => '0',
        --RST =>IntBitClkRst, -- 1-bit input: Active high asynchronous reset
        RST           =>Rst,
        CLK			  =>  BitClk_N,		-- Adjusted Bit Clock
        CLKB           => '0', --BitClk,
        CLKDIV 	      => DivClk,		-- Adjusted word clock
        CLKDIVP        => '0',
        OCLK		      => '0',
        OCLKB          => '0',
        DYNCLKDIVSEL   => '0',
        DYNCLKSEL     => '0',
        OFB               => '0',
        BITSLIP 	      => IntBitSlip_N,
        CE1			      => BitClkDone,
        CE2			      => '0', --BitClkDone,

        SHIFTIN1 	=> '0',
        SHIFTIN2 	=> '0',
        SHIFTOUT1 	=> open,
        SHIFTOUT2 	=> open,
        O 			=> open,	-- Frame clock output for DCM
        Q1 			=> IntDataN(0), --(0),	-- 0
        Q2 			=> IntDataN(1), --(2),	-- 2
        Q3 			=> IntDataN(2), --(4),	-- 4
        Q4 			=> open, --(6),	-- 6
        Q5 			=> open,
        Q6 			=> open,
        Q7          => open,
        Q8          => open
    );	

--BitSlipCtrlN : BitSlipCtrlFSM
--  Port map (
--        DataIn      =>IntDataN,
--        PatternIn   =>b"100",
--        Clk         =>DivClk,
--        Rst         =>BitClkDone,
--        BitSlip     =>IntBitSlip_N,
--        State      => open,
--        Done       => IntDoneN
--        );

IntBitSlip_P <= BitSlipP;
IntBitSlip_N <= BitSlipN;
        
--SyncDone <= IntDoneP and IntDoneN; 

   process (DivClk)
   
   begin
        if (rising_edge(DivClk)) then
           
          -- for index in 2 downto 0 loop
            --DataOut(index*2+1)<= IntDataP(index);
            --DataOut(index*2)<= IntDataN(index);
            --DataOut(5 downto 3) <= IntDataP;
            --DataOut(2 downto 0) <= IntDataN;
            IntDataTotal(5 downto 3) <= IntDataP;
            IntDataTotal(2 downto 0) <= IntDataN;
                        
          -- end loop;

        end if;
   end process;
   
   --redireccciono las sennales
    DataOut(5)<=IntDataTotal(5);
    DataOut(4)<=not(IntDataTotal(2));
    DataOut(3)<=IntDataTotal(4);
    DataOut(2)<=not(IntDataTotal(1));
    DataOut(1)<=IntDataTotal(3);
    DataOut(0)<=not(IntDataTotal(0));
          
end Behavioral;
