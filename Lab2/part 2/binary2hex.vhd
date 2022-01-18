library ieee;
use ieee.std_logic_1164.all;

entity binary2hex is
port (
W: in std_logic; --input
X: in std_logic; --input
Y: in std_logic; --input
Z: in std_logic; --input
a: out std_logic; --output
b: out std_logic; --output
c: out std_logic; --output
d: out std_logic; --output
e: out std_logic; --output
f: out std_logic; --output
g: out std_logic --output
);
end binary2hex;

architecture behavior of binary2hex is
begin

a <= (not W and not X and not Y and Z) or (not W and X and not Y and not Z) or 
(W and not X and Y and Z) or (W and X and not Y and not Z) 
or (W and X and not Y and Z);
b <= (not W and X and not Y and Z) or (not W and X and Y and not Z) or 
(W and not X and Y and Z) or (W and X and not Y and not Z) or 
(W and X and Y and not Z) or (W and X and Y and Z);
c <= (not W and not X and Y and not Z) or (W and X and not Y and not Z) or 
(W and X and Y and not Z) or (W and X and Y and Z);
d <= (not W and not X and not Y and Z) or (not W and X and not Y and not Z) or 
(not W and X and Y and Z) or (W and not X and not Y and Z) or 
(W and not X and Y and not Z) or (W and X and Y and Z);
e <= (not W and not X and not Y and Z) or (not W and not X and Y and Z) or 
(not W and X and not Y and not Z) or (not W and X and not Y and Z) or 
(not W and X and Y and Z) or (W and not X and not Y and Z);
f <= (not W and not X and not Y and Z) or (not W and not X and Y and not Z) or 
(not W and not X and Y and Z) or (not W and X and Y and Z) or (W and X and not Y and not Z) or 
(W and X and not Y and Z);
g <= (not W and not X and not Y and not Z) or (not W and not X and not Y and Z) or 
(not W and X and Y and Z);

end behavior;
