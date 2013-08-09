-- ICON Wrapper HDL file generated by icon's TCL generator

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity chipscope_icon is
  generic (
    C_FAMILY : string := "virtex5" ;
    C_NUM_CONTROL_PORTS : integer := 1;
    C_SYSTEM_CONTAINS_MDM : integer := 0;
    C_FORCE_BSCAN_USER_PORT : integer := 1
  );
  port (
    control0   : out STD_LOGIC_VECTOR ( 35 downto 0 ); 
    control1   : out STD_LOGIC_VECTOR ( 35 downto 0 ); 
    control2   : out STD_LOGIC_VECTOR ( 35 downto 0 ); 
    control3   : out STD_LOGIC_VECTOR ( 35 downto 0 ); 
    control4   : out STD_LOGIC_VECTOR ( 35 downto 0 ); 
    control5   : out STD_LOGIC_VECTOR ( 35 downto 0 ); 
    control6   : out STD_LOGIC_VECTOR ( 35 downto 0 ); 
    control7   : out STD_LOGIC_VECTOR ( 35 downto 0 ); 
    control8   : out STD_LOGIC_VECTOR ( 35 downto 0 ); 
    control9   : out STD_LOGIC_VECTOR ( 35 downto 0 ); 
    control10  : out STD_LOGIC_VECTOR ( 35 downto 0 ); 
    control11  : out STD_LOGIC_VECTOR ( 35 downto 0 ); 
    control12  : out STD_LOGIC_VECTOR ( 35 downto 0 ); 
    control13  : out STD_LOGIC_VECTOR ( 35 downto 0 ); 
    control14  : out STD_LOGIC_VECTOR ( 35 downto 0 ); 
    control15  : out STD_LOGIC_VECTOR ( 35 downto 0 );
    tdi_in     : in  STD_LOGIC;
    reset_in   : in  STD_LOGIC;
    shift_in   : in  STD_LOGIC;
    update_in  : in  STD_LOGIC;
    sel_in     : in  STD_LOGIC;
    drck_in    : in  STD_LOGIC;
    capture_in : in std_logic;
    tdo_out    : out STD_LOGIC
  );
end chipscope_icon;

architecture STRUCTURE of chipscope_icon is

  attribute box_type : STRING;

  component chipscope_icon_1 is
    port (
      control0  : out std_logic_vector ( 35 downto 0)
    );
 end component;
 attribute box_type of chipscope_icon_1 : component is "black_box";

begin

  i_chipscope_icon_1 : chipscope_icon_1
    port map (
      control0 => control0
    );

  control1 <= (others => '0');
  control2 <= (others => '0');
  control3 <= (others => '0');
  control4 <= (others => '0');
  control5 <= (others => '0');
  control6 <= (others => '0');
  control7 <= (others => '0');
  control8 <= (others => '0');
  control9 <= (others => '0');
  control10 <= (others => '0');
  control11 <= (others => '0');
  control12 <= (others => '0');
  control13 <= (others => '0');
  control14 <= (others => '0');
  control15 <= (others => '0');


end architecture STRUCTURE;

