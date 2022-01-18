--Simple CPU template, This is the top level entity in your project
library ieee;
use ieee.std_logic_1164.all;

entity SimpleCPU_Template is
--These are the Outputs that can be displayed on the FPGA, More port statements may be necessary, 
--Depending on how you want to display each signal to the FPGA
port (
	clk : in std_logic;
	pcOut : out std_logic_vector(7 downto 0);
	marOut : out std_logic_vector (7 downto 0);
	irOutput : out std_logic_vector (7 downto 0);
	mdriOutput : out std_logic_vector (7 downto 0);
	mdroOutput : out std_logic_vector (7 downto 0);
	aOut : out std_logic_vector (7 downto 0);
	incrementOut : out std_logic
);

end;

architecture behavior of SimpleCPU_Template is
--Initialize our memory component
component memory_8_by_32
port(	clk:		in std_logic;	
	Write_Enable: in std_logic;
	Read_Addr:	in std_logic_vector	(4 downto 0);
	Data_in: 	in std_logic_vector	(7 downto 0);
	Data_out: 	out std_logic_vector(7 downto 0)
);
end component;
--initialize the alu
component alu
port (
	A : in std_logic_vector			(7 downto 0);
	B : in std_logic_vector			(7 downto 0);
	AluOp : in std_logic_vector		(2 downto 0);
	output : out std_logic_vector	(7 downto 0)
);
end component;
--inialize the registers
component reg
port (
	input : in std_logic_vector		(7 downto 0);
	output : out std_logic_vector	(7 downto 0);
	clk : in std_logic;
	load : in std_logic
);
end component;
--initialize the program counter
component ProgramCounter
port (
	increment : in std_logic;
	clk : in std_logic;
	output : out std_logic_vector	(7 downto 0)
);
end component;
--initialize the mux
component TwoToOneMux
port (
	A : in std_logic_vector			(7 downto 0);
	B : in std_logic_vector			(7 downto 0);
	address : in std_logic;
	output : out std_logic_vector	(7 downto 0)
);
end component;
--initialize the seven segment decoder
component sevenseg
port(
	i : in std_logic_vector(3 downto 0);
	o : out std_logic_vector(0 to 7)
);
end component;

-- initialize control unit
component ControlUnit
port (
	OpCode : in std_logic_vector(2 downto 0);
	clk : in std_logic;
	ToALoad : out std_logic;
	ToMarLoad : out std_logic;
	ToIrLoad : out std_logic;
	ToMdriLoad : out std_logic;
	ToMdroLoad : out std_logic;
	ToPcIncrement : out std_logic;
	ToMarMux : out std_logic;
	ToRamWriteEnable : out std_logic;
	ToAluOp : out std_logic_vector (2 downto 0)
);
end component;

--The following signals will be used in your port map statements, don't use the port variables in your port maps

-- Connections : Need to be sorted
signal ramDataOutToMdri : std_logic_vector (7 downto 0);

-- MAR Multiplexer connections
signal pcToMarMux : std_logic_vector(7 downto 0);
signal muxToMar : std_logic_vector	(7 downto 0);

-- RAM connections
signal marToRamReadAddr : std_logic_vector	(4 downto 0);
signal mdroToRamDataIn : std_logic_vector (7 downto 0);

-- MDRI connections
signal mdriOut : std_logic_vector 	(7 downto 0);

-- IR connection
signal irOut : std_logic_vector		(7 downto 0);

-- ALU / Accumulator connections
signal aluOut: std_logic_vector	(7 downto 0);
signal aToAluB : std_logic_vector	(7 downto 0);

-- Control Unit connections
signal cuToALoad : std_logic;
signal cuToMarLoad : std_logic;
signal cuToIrLoad : std_logic;
signal cuToMdriLoad : std_logic;
signal cuToMdroLoad : std_logic;
signal cuToPcIncrement : std_logic;
signal cuToMarMux : std_logic;
signal cuToRamWriteEnable : std_logic;
signal cuToAluOp : std_logic_vector (2 downto 0);
begin

--PORT MAP STATEMENTS GO HERE
-- Create port map statements for each component in the CPU and map them to the appropriate signal defined above
-- RAM
--INSERT CODE HERE
Label_RAM: memory_8_by_32 port map (
	Write_Enable => cuToRamWriteEnable, 
	clk => clk, 
	Read_Addr => marToRamReadAddr, 
	Data_in => mdroToRamDataIn, 
	Data_out=> ramDataOutToMdri
);
-- Accumulator
--INSERT CODE HER
Label_Accumulator: reg port map (
	load => cuToALoad, 
	clk => clk, 
	input=> aluOut, 
	output=> aToAluB
);
-- ALU
--INSERT CODE HERE
Label_ALU: alu port map (
	B=> aToAluB, 
	A => mdriOut, 
	AluOp => cuToAluOp, 
	output=> aluOut
);
-- Program Counter
--INSERT CODE HERE
Label_ProgramCounter: ProgramCounter port map (
	increment => cuToPcIncrement, 
	clk => clk, 
	output => pcToMarMux
);
-- Instruction Register
--INSERT CODE HERE
Label_IR: reg port map (
Load => cuToIrLoad,
Clk => clk,
Input => mdriOut,
Output => irOut
);
-- MAR mux
--INSERT CODE HERE
Label_MARMUX: TwoToOneMux port map (
	B => irOut, 
	A => pcToMarMux, 
	address => cuToMarMux, 
	output=> muxToMar
);
-- Memory Access Register
--INSERT CODE HERE
Label_MAR: reg port map (
Load => cuToMarLoad,
Clk => clk,
input => muxToMar,
output(4 DOWNTO 0) => marToRamReadAddr
);

-- Memory Data Register Input
--INSERT CODE HERE
Label_MDRI: reg port map (
	load => cuToMdriLoad, 
	clk => clk, 
	input => ramDataOutToMdri, 
	output=> mdriOut
);
-- Memory Data Register Output
--INSERT CODE HERE
Label_MDRO: reg port map (
Load => cuToMdroLoad,
Clk => clk,
Input => mdriOut,
Output => mdroToRamDataIn
);
-- Control Unit
--INSERT CODE HERE
Label_CU: ControlUnit port map(
OpCode=>irOut(2 downto 0), 
clk=>clk, 
ToALoad=>cuToALoad, 
ToMarLoad=>cuToMarLoad, 
ToIrLoad=>cuToIrLoad, 
ToMdriLoad=>cuToMdriLoad, 
ToMdroLoad=>cuToMdroLoad, 
ToPcIncrement=>cuToPcIncrement, 
ToMarMux=>cuToMarMux,
ToRamWriteEnable=>cuToRamWriteEnable, 
ToAluOp=>cuToAluOp(2 downto 0)
);
--REMAINING CODE GOES HERE
--Here is where you connect the port statement to the matching signal to display it on the FPGA
--If you want to display the signal on LED's, just set it to the port statement port<=signal;
--If you want to send the signal to the seven segment display, initialize an instance of the sevenseg
--Then map i=>signal, o=>port , keep in mind i needs to be 4 bits and o 8 bits
--pcOut <= pcToMarMux;
pcOut <= pcToMarMux;
marOut <= "000"&marToRamReadAddr;
irOutput <=  irOut;
mdriOutput <= mdriOut;
mdroOutput <= mdroToRamDataIn;
aOut <= aToAluB;
incrementOut <= cuToPcIncrement;


end behavior;

--Mux used to create a shared connection between PC and IR to the MAR
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity TwoToOneMux is
port (
	A : in std_logic_vector			(7 downto 0);
	B : in std_logic_vector			(7 downto 0);
	address : in std_logic;
	output : out std_logic_vector	(7 downto 0)
);
end;

architecture behavior of TwoToOneMux is
begin

process(A,B,address)
begin
	if (address='0') then
	output <= A;
	elsif(address='1') then
	output <= B;
	end if;
end process;
end behavior;
