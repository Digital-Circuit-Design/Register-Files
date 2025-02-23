LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

ENTITY regfile IS
  GENERIC ( dw    : natural := 4;
            size  : natural := 4;
            adrw  : natural := 2);
    PORT  ( A     : IN std_logic_vector(dw-1 DOWNTO 0);
            Addr  : IN std_logic_vector(adrw-1 DOWNTO 0);
            we    : IN std_logic;
            clk   : IN std_logic;
            C     : OUT std_logic_vector(dw-1 DOWNTO 0));
END regfile;

ARCHITECTURE behavioral OF regfile IS
  TYPE regArray IS ARRAY(0 TO size-1) OF std_logic_vector(dw-1 DOWNTO 0);
  SIGNAL regfile : regArray;
BEGIN
  PROCESS(clk)
  BEGIN
    IF (clk'event AND clk = '0') THEN
      IF we = '1' THEN
        regfile(to_integer(unsigned(Addr))) <= A;
      END IF;
    END IF;
    C <= regfile(to_integer(unsigned(Addr)));
 	END PROCESS;
END behavioral;
        