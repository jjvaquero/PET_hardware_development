library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity PWM_Controller is
   port (
    Clk : in std_logic;
    DutyCycle : in std_logic_vector(31 downto 0);
	LED : out std_logic
    );
end PWM_Controller;

architecture behaviour of PWM_Controller is
  
    -- type myNat is range 0 to 1_048_576;
     shared variable count: integer :=0; 
     
 begin
 --   // Sets PWM Period.  Must be calculated vs. input clk period.
 --   // For example, setting this to 20 will divide the input clock by 2^20, or 1 Million.
 --    // So a 50 MHz input clock will be divided by 1e6, thus this will have a period of 1/50
--     variable period : natural := 20; 
		
	process(Clk)
	 begin
		if Clk'event and Clk = '1' then
			count:=count +1;
			if ( count > 1048575) then
			    count:=0;
			end if;
		end if;
		if ( count < to_integer(unsigned(DutyCycle))) then
           --PWM_out<= b"1111111"; -- X"FF";
           LED<='1';
        else
           LED<='0';
           --PWM_out<= b"0000000"; -- X"00"; 
	    end if;
	    
	   
		
	end process;
end behaviour;


	


