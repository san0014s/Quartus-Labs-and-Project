-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/04/2020 16:40:44"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SimpleCPU_Template
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SimpleCPU_Template_vhd_vec_tst IS
END SimpleCPU_Template_vhd_vec_tst;
ARCHITECTURE SimpleCPU_Template_arch OF SimpleCPU_Template_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL aOut : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL incrementOut : STD_LOGIC;
SIGNAL irOutput : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL marOut : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL mdriOutput : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL mdroOutput : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pcOut : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT SimpleCPU_Template
	PORT (
	aOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk : IN STD_LOGIC;
	incrementOut : OUT STD_LOGIC;
	irOutput : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	marOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	mdriOutput : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	mdroOutput : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	pcOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : SimpleCPU_Template
	PORT MAP (
-- list connections between master ports and signals
	aOut => aOut,
	clk => clk,
	incrementOut => incrementOut,
	irOutput => irOutput,
	marOut => marOut,
	mdriOutput => mdriOutput,
	mdroOutput => mdroOutput,
	pcOut => pcOut
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
END SimpleCPU_Template_arch;
