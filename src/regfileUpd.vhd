-- Register File Updated

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

ENTITY regfileUpd IS
  GENERIC ( dw    : natural := 4;
            size  : natural := 4;
            adrw  : natural := 2);
  
     PORT ( A     : IN std_logic_vector(dw-1 DOWNTO 0);
            rAddr1: IN std_logic_vector(adrw-1 DOWNTO 0);
            rAddr2: IN std_logic_vector(adrw-1 DOWNTO 0);
            wAddr : IN std_logic_vector(adrw-1 DOWNTO 0);
            we    : IN std_logic;
            clk   : IN std_logic;
            reset : IN std_logic;
            B     : OUT std_logic_vector(dw-1 DOWNTO 0);
            C     : OUT std_logic_vector(dw-1 DOWNTO 0));
END regfileUpd;

ARCHITECTURE behavioral OF regfileUpd IS
  TYPE regArray IS ARRAY(0 TO size-1) OF std_logic_vector(dw-1 DOWNTO 0);
  SIGNAL regfileUpd : regArray;
BEGIN
  PROCESS(clk, reset)
  BEGIN
    IF (clk'event AND clk = '0') THEN
      IF we = '1' THEN
        regfileUpd(to_integer(unsigned(wAddr))) <= A;
      END IF;
    END IF;
      C <= regfileUpd(to_integer(unsigned(rAddr1)));
      B <= regfileUpd(to_integer(unsigned(rAddr2)));
    IF reset = '0' THEN
      C <= "0000";
      B <= "0000";
    END IF;
 	END PROCESS;
END behavioral;  