library ieee;
use ieee.std_logic_1164.all;

entity LAB4 is 
port (
sw: in std_logic_vector(3 downto 0);
key: in std_logic_vector(2 downto 0);
ledr: out std_logic_vector(7 downto 0);
ledg: out std_logic_vector(7 downto 0)
);
end LAB4;

architecture ckt of LAB4 is
signal A,B,C,D,X,Y,Z : std_logic;
signal ledg2: std_logic_vector (6 downto 0);
signal ledg3: std_logic_vector (6 downto 0);
signal ledg4: std_logic_vector (6 downto 0);
signal ledg5: std_logic_vector (6 downto 0);
signal ledg6: std_logic_vector (6 downto 0);

begin
D <= sw(0);
C <= sw(1);
B <= sw(2);
A <= sw(3);

X <= key(2);
Y <= key(1);
Z <= key(0);

ledg2(0) <= ((NOT A AND B AND C) OR (A AND NOT B AND C AND D)) AND ((NOT X) AND Y AND (NOT Z));
ledg2(1) <= ((NOT A AND NOT B AND NOT D) OR (NOT B AND C AND D) OR (NOT A AND B AND NOT C AND D) OR (A AND NOT B AND NOT C)) AND (NOT X AND Y AND NOT Z);
ledg2(2) <= ((NOT B AND NOT C AND NOT D) OR (NOT A AND B AND NOT C AND D) OR (NOT A AND B AND C AND NOT D) OR (A AND NOT B AND D)) AND (NOT X AND Y AND NOT Z);
ledg2(3) <= ((NOT A AND NOT C AND NOT D) OR (B AND NOT D) OR (A AND NOT B AND C AND D) OR (A AND B AND NOT C)) AND (NOT X AND Y AND NOT Z);
ledg2(4) <= ((NOT C AND NOT D) OR (B AND NOT D) OR (A AND NOT B AND C AND D) OR (A AND B AND NOT C)) AND (NOT X AND Y AND NOT Z);
ledg2(5) <= ((NOT B AND NOT D) OR (NOT B AND C) OR (C AND NOT D) OR (B AND NOT C AND D) OR (A AND NOT D)) AND (NOT X AND Y AND NOT Z);
ledg2(6) <= ((NOT A AND NOT B AND C AND NOT D) OR (A AND NOT B AND C AND D)) AND (NOT X AND Y AND NOT Z);

ledg3(0) <= ((NOT A AND NOT B AND NOT D) OR (NOT A AND NOT B AND C) OR (NOT A AND B AND D) OR (A AND NOT B AND NOT C)) AND (NOT X AND Y AND Z);
ledg3(1) <= ((NOT A AND NOT B AND NOT C AND D) OR (NOT A AND B AND C AND NOT D)) AND (NOT X AND Y AND Z);
ledg3(2) <= ((B AND NOT C) OR (A AND C AND NOT D)) AND (NOT X AND Y AND Z);
ledg3(3) <= ((NOT B AND C AND D) OR (NOT A AND B AND C AND NOT D) OR (A AND NOT B AND NOT C) OR (A AND C AND D)) AND (NOT X AND Y AND Z);
ledg3(4) <= ((NOT A AND NOT C AND NOT D) OR (NOT B AND C AND NOT D) OR (NOT A AND B AND C AND D)) AND (NOT X AND Y AND Z);
ledg3(5) <= (NOT A AND B AND C AND D) AND (NOT X AND Y AND Z);
ledg3(6) <= ((NOT B) OR (NOT A AND D) OR (NOT A AND C) OR (A AND NOT C) OR (A AND NOT D)) AND (NOT X AND Y AND Z);

ledg4(0) <= ((NOT B AND NOT C) OR (NOT A AND D) OR (NOT A AND C)) AND (X AND NOT Y AND NOT Z);
ledg4(1) <= ((NOT A AND NOT B AND NOT C AND D) OR (NOT A AND B AND NOT C AND NOT D) OR (A AND B AND C AND D)) AND (X AND NOT Y AND NOT Z);
ledg4(2) <= ((NOT A AND NOT C AND D) OR (A AND C) OR (A AND B)) AND (X AND NOT Y AND NOT Z);
ledg4(3) <= ((NOT B AND NOT C) OR (NOT A AND C) OR (B AND C AND D)) AND (X AND NOT Y AND NOT Z);
ledg4(4) <= ((NOT A AND NOT B AND NOT C AND D) OR (NOT A AND B AND NOT C AND NOT D) OR (A AND NOT B AND C AND NOT D) OR (A AND B AND C AND D)) AND (X AND NOT Y AND NOT Z);
ledg4(5) <= ((NOT A AND NOT B AND NOT C AND D) OR (A AND B AND C AND D)) AND (X AND NOT Y AND NOT Z);
ledg4(6) <= ((NOT B) OR (NOT C AND D) OR (C AND NOT D) OR (A)) AND (X AND NOT Y AND NOT Z);

ledg5(0) <= ((NOT A AND NOT D) OR (NOT A AND C) OR (NOT A AND B) OR (B AND C AND D) OR (A AND NOT B AND NOT C)) AND (X AND (NOT Y) AND Z);
ledg5(1) <= (NOT A AND B AND NOT C AND NOT D) AND (X AND (NOT Y) AND Z);
ledg5(2) <= ((NOT A AND NOT C AND NOT D) OR (NOT A AND B AND D) OR (A AND NOT B AND C AND D) OR (A AND B AND NOT D)) AND (X AND (NOT Y) AND Z);
ledg5(3) <= ((NOT A AND NOT B AND C) OR (NOT A AND B AND NOT D) OR (A AND NOT B AND NOT C) OR (A AND NOT B AND NOT D) OR (A AND B AND D)) AND (X AND (NOT Y) AND Z);
ledg5(4) <= ((NOT A AND B AND C AND NOT D) OR (A AND NOT B AND C AND NOT D)) AND (X AND (NOT Y) AND Z);
ledg5(5) <= ((NOT A AND B AND NOT C AND NOT D) OR (A AND NOT B AND NOT C AND D) OR (A AND NOT B AND C AND NOT D)) AND (X AND (NOT Y) AND Z);
ledg5(6) <= ((NOT A AND NOT B) OR (NOT D) OR (NOT B AND C) OR (B AND NOT C)) AND (X AND (NOT Y) AND Z);

ledg6(0) <= ((NOT A AND B AND D) OR (B AND NOT C AND D)) AND (X AND Y AND NOT Z);
ledg6(1) <= ((NOT A AND NOT B AND NOT D) OR (NOT A AND C AND D) OR (A AND NOT B AND NOT C) OR (A AND B AND D)) AND (X AND Y AND NOT Z);
ledg6(2) <= ((NOT B AND NOT C AND NOT D) OR (NOT A AND NOT B AND C) OR (A AND NOT C AND D)) AND (X AND Y AND NOT Z);
ledg6(3) <= ((NOT A AND NOT B AND NOT C AND NOT D) OR (B AND NOT C AND D) OR (A AND NOT B AND D) OR (A AND B AND C AND NOT D)) AND (X AND Y AND NOT Z);
ledg6(4) <= ((NOT B AND NOT C AND NOT D) OR (NOT B AND C AND D) OR (NOT A AND B AND NOT C) OR (NOT A AND B AND NOT D) OR (A AND NOT C AND D)) AND (X AND Y AND NOT Z);
ledg6(5) <= ((NOT B AND NOT C AND NOT D) OR (NOT B AND C AND D) OR (B AND NOT C AND D) OR (NOT A AND B AND C AND NOT D) OR (A AND NOT C AND NOT D)) AND (X AND Y AND NOT Z);
ledg6(6) <= ((NOT B AND NOT C AND NOT D) OR (A AND B AND NOT C AND D)) AND (X AND Y AND NOT Z);

ledr(0) <= ledg2(0) OR ledg3(0) OR ledg4(0) OR ledg5(0) OR ledg6(0);
ledr(1) <= ledg2(1) OR ledg3(1) OR ledg4(1) OR ledg5(1) OR ledg6(1);
ledr(2) <= ledg2(2) OR ledg3(2) OR ledg4(2) OR ledg5(2) OR ledg6(2);
ledr(3) <= ledg2(3) OR ledg3(3) OR ledg4(3) OR ledg5(3) OR ledg6(3);
ledr(4) <= ledg2(4) OR ledg3(4) OR ledg4(4) OR ledg5(4) OR ledg6(4);
ledr(5) <= ledg2(5) OR ledg3(5) OR ledg4(5) OR ledg5(5) OR ledg6(5);
ledr(6) <= ledg2(6) OR ledg3(6) OR ledg4(6) OR ledg5(6) OR ledg6(6);
ledr(7) <= '0';

ledg(0) <= ((NOT X) AND NOT Y AND (NOT Z));
ledg(1) <= ((NOT X) AND NOT Y AND Z);
ledg(2) <= ((NOT X) AND Y AND (NOT Z));
ledg(3) <= ((NOT X) AND Y AND Z);
ledg(4) <= (X AND (NOT Y) AND (NOT Z));
ledg(5) <= (X AND (NOT Y) AND Z);
ledg(6) <= (X AND Y AND NOT Z);
ledg(7) <= (X AND Y AND  Z);

end ckt;
