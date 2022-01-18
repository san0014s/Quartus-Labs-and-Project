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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "12/04/2020 16:40:45"

-- 
-- Device: Altera 10M50DCF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SimpleCPU_Template IS
    PORT (
	clk : IN std_logic;
	pcOut : OUT std_logic_vector(7 DOWNTO 0);
	marOut : OUT std_logic_vector(7 DOWNTO 0);
	irOutput : OUT std_logic_vector(7 DOWNTO 0);
	mdriOutput : OUT std_logic_vector(7 DOWNTO 0);
	mdroOutput : OUT std_logic_vector(7 DOWNTO 0);
	aOut : OUT std_logic_vector(7 DOWNTO 0);
	incrementOut : OUT std_logic
	);
END SimpleCPU_Template;

-- Design Ports Information
-- pcOut[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[1]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[3]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[4]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[5]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[6]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[7]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[0]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[1]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[2]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[3]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[4]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[5]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[6]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[7]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[1]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[3]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[4]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[5]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[6]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[7]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[0]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[1]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[2]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[3]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[4]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[5]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[6]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[7]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[0]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[2]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[4]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[5]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[6]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[7]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[0]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[1]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[2]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[3]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[4]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[5]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[6]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[7]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- incrementOut	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SimpleCPU_Template IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_pcOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_marOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_irOutput : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_mdriOutput : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_mdroOutput : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_aOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_incrementOut : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \pcOut[0]~output_o\ : std_logic;
SIGNAL \pcOut[1]~output_o\ : std_logic;
SIGNAL \pcOut[2]~output_o\ : std_logic;
SIGNAL \pcOut[3]~output_o\ : std_logic;
SIGNAL \pcOut[4]~output_o\ : std_logic;
SIGNAL \pcOut[5]~output_o\ : std_logic;
SIGNAL \pcOut[6]~output_o\ : std_logic;
SIGNAL \pcOut[7]~output_o\ : std_logic;
SIGNAL \marOut[0]~output_o\ : std_logic;
SIGNAL \marOut[1]~output_o\ : std_logic;
SIGNAL \marOut[2]~output_o\ : std_logic;
SIGNAL \marOut[3]~output_o\ : std_logic;
SIGNAL \marOut[4]~output_o\ : std_logic;
SIGNAL \marOut[5]~output_o\ : std_logic;
SIGNAL \marOut[6]~output_o\ : std_logic;
SIGNAL \marOut[7]~output_o\ : std_logic;
SIGNAL \irOutput[0]~output_o\ : std_logic;
SIGNAL \irOutput[1]~output_o\ : std_logic;
SIGNAL \irOutput[2]~output_o\ : std_logic;
SIGNAL \irOutput[3]~output_o\ : std_logic;
SIGNAL \irOutput[4]~output_o\ : std_logic;
SIGNAL \irOutput[5]~output_o\ : std_logic;
SIGNAL \irOutput[6]~output_o\ : std_logic;
SIGNAL \irOutput[7]~output_o\ : std_logic;
SIGNAL \mdriOutput[0]~output_o\ : std_logic;
SIGNAL \mdriOutput[1]~output_o\ : std_logic;
SIGNAL \mdriOutput[2]~output_o\ : std_logic;
SIGNAL \mdriOutput[3]~output_o\ : std_logic;
SIGNAL \mdriOutput[4]~output_o\ : std_logic;
SIGNAL \mdriOutput[5]~output_o\ : std_logic;
SIGNAL \mdriOutput[6]~output_o\ : std_logic;
SIGNAL \mdriOutput[7]~output_o\ : std_logic;
SIGNAL \mdroOutput[0]~output_o\ : std_logic;
SIGNAL \mdroOutput[1]~output_o\ : std_logic;
SIGNAL \mdroOutput[2]~output_o\ : std_logic;
SIGNAL \mdroOutput[3]~output_o\ : std_logic;
SIGNAL \mdroOutput[4]~output_o\ : std_logic;
SIGNAL \mdroOutput[5]~output_o\ : std_logic;
SIGNAL \mdroOutput[6]~output_o\ : std_logic;
SIGNAL \mdroOutput[7]~output_o\ : std_logic;
SIGNAL \aOut[0]~output_o\ : std_logic;
SIGNAL \aOut[1]~output_o\ : std_logic;
SIGNAL \aOut[2]~output_o\ : std_logic;
SIGNAL \aOut[3]~output_o\ : std_logic;
SIGNAL \aOut[4]~output_o\ : std_logic;
SIGNAL \aOut[5]~output_o\ : std_logic;
SIGNAL \aOut[6]~output_o\ : std_logic;
SIGNAL \aOut[7]~output_o\ : std_logic;
SIGNAL \incrementOut~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Label_ProgramCounter|output[0]~0_combout\ : std_logic;
SIGNAL \Label_ProgramCounter|Add0~0_combout\ : std_logic;
SIGNAL \Label_ProgramCounter|Add0~1\ : std_logic;
SIGNAL \Label_ProgramCounter|Add0~2_combout\ : std_logic;
SIGNAL \Label_ProgramCounter|Add0~3\ : std_logic;
SIGNAL \Label_ProgramCounter|Add0~4_combout\ : std_logic;
SIGNAL \Label_ProgramCounter|Add0~5\ : std_logic;
SIGNAL \Label_ProgramCounter|Add0~6_combout\ : std_logic;
SIGNAL \Label_CU|current_state.load_mar~0_combout\ : std_logic;
SIGNAL \Label_CU|current_state.load_mar~q\ : std_logic;
SIGNAL \Label_CU|current_state.read_mem~0_combout\ : std_logic;
SIGNAL \Label_CU|current_state.read_mem~q\ : std_logic;
SIGNAL \Label_CU|current_state.load_mdri~feeder_combout\ : std_logic;
SIGNAL \Label_CU|current_state.load_mdri~q\ : std_logic;
SIGNAL \Label_CU|current_state.load_ir~feeder_combout\ : std_logic;
SIGNAL \Label_CU|current_state.load_ir~q\ : std_logic;
SIGNAL \Label_CU|current_state.decode~feeder_combout\ : std_logic;
SIGNAL \Label_CU|current_state.decode~q\ : std_logic;
SIGNAL \Label_MARMUX|output[0]~0_combout\ : std_logic;
SIGNAL \Label_MARMUX|output[2]~2_combout\ : std_logic;
SIGNAL \Label_MDRO|output[1]~feeder_combout\ : std_logic;
SIGNAL \Label_CU|current_state.staa_write_mem~feeder_combout\ : std_logic;
SIGNAL \Label_CU|current_state.staa_write_mem~q\ : std_logic;
SIGNAL \Label_RAM|Z~464_combout\ : std_logic;
SIGNAL \Label_RAM|Z~477_combout\ : std_logic;
SIGNAL \Label_RAM|Z~71_q\ : std_logic;
SIGNAL \Label_RAM|Z~438_combout\ : std_logic;
SIGNAL \Label_RAM|Z~475_combout\ : std_logic;
SIGNAL \Label_RAM|Z~63_q\ : std_logic;
SIGNAL \Label_RAM|Z~506_combout\ : std_logic;
SIGNAL \Label_RAM|Z~448_combout\ : std_logic;
SIGNAL \Label_RAM|Z~474_combout\ : std_logic;
SIGNAL \Label_RAM|Z~55_q\ : std_logic;
SIGNAL \Label_RAM|Z~454_combout\ : std_logic;
SIGNAL \Label_RAM|Z~476_combout\ : std_logic;
SIGNAL \Label_RAM|Z~47_q\ : std_logic;
SIGNAL \Label_RAM|Z~301_combout\ : std_logic;
SIGNAL \Label_RAM|Z~302_combout\ : std_logic;
SIGNAL \Label_RAM|Z~508_combout\ : std_logic;
SIGNAL \Label_RAM|Z~462_combout\ : std_logic;
SIGNAL \Label_RAM|Z~473_combout\ : std_logic;
SIGNAL \Label_RAM|Z~103_q\ : std_logic;
SIGNAL \Label_RAM|Z~507_combout\ : std_logic;
SIGNAL \Label_RAM|Z~440_combout\ : std_logic;
SIGNAL \Label_RAM|Z~470_combout\ : std_logic;
SIGNAL \Label_RAM|Z~95_q\ : std_logic;
SIGNAL \Label_RAM|Z~456_combout\ : std_logic;
SIGNAL \Label_RAM|Z~472_combout\ : std_logic;
SIGNAL \Label_RAM|Z~79_q\ : std_logic;
SIGNAL \Label_RAM|Z~303_combout\ : std_logic;
SIGNAL \Label_RAM|Z~87feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~446_combout\ : std_logic;
SIGNAL \Label_RAM|Z~471_combout\ : std_logic;
SIGNAL \Label_RAM|Z~87_q\ : std_logic;
SIGNAL \Label_RAM|Z~304_combout\ : std_logic;
SIGNAL \Label_RAM|Z~511_combout\ : std_logic;
SIGNAL \Label_RAM|Z~466_combout\ : std_logic;
SIGNAL \Label_RAM|Z~481_combout\ : std_logic;
SIGNAL \Label_RAM|Z~39_q\ : std_logic;
SIGNAL \Label_RAM|Z~509_combout\ : std_logic;
SIGNAL \Label_RAM|Z~450_combout\ : std_logic;
SIGNAL \Label_RAM|Z~479_combout\ : std_logic;
SIGNAL \Label_RAM|Z~23_q\ : std_logic;
SIGNAL \Label_RAM|Z~458_combout\ : std_logic;
SIGNAL \Label_RAM|Z~480_combout\ : std_logic;
SIGNAL \Label_RAM|Z~15_q\ : std_logic;
SIGNAL \Label_RAM|Z~510_combout\ : std_logic;
SIGNAL \Label_RAM|Z~442_combout\ : std_logic;
SIGNAL \Label_RAM|Z~478_combout\ : std_logic;
SIGNAL \Label_RAM|Z~31_q\ : std_logic;
SIGNAL \Label_RAM|Z~305_combout\ : std_logic;
SIGNAL \Label_RAM|Z~306_combout\ : std_logic;
SIGNAL \Label_RAM|Z~307_combout\ : std_logic;
SIGNAL \Label_RAM|Z~127feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~444_combout\ : std_logic;
SIGNAL \Label_RAM|Z~483_combout\ : std_logic;
SIGNAL \Label_RAM|Z~127_q\ : std_logic;
SIGNAL \Label_RAM|Z~468_combout\ : std_logic;
SIGNAL \Label_RAM|Z~485_combout\ : std_logic;
SIGNAL \Label_RAM|Z~135_q\ : std_logic;
SIGNAL \Label_RAM|Z~452_combout\ : std_logic;
SIGNAL \Label_RAM|Z~482_combout\ : std_logic;
SIGNAL \Label_RAM|Z~119_q\ : std_logic;
SIGNAL \Label_RAM|Z~460_combout\ : std_logic;
SIGNAL \Label_RAM|Z~484_combout\ : std_logic;
SIGNAL \Label_RAM|Z~111_q\ : std_logic;
SIGNAL \Label_RAM|Z~308_combout\ : std_logic;
SIGNAL \Label_RAM|Z~309_combout\ : std_logic;
SIGNAL \Label_RAM|Z~310_combout\ : std_logic;
SIGNAL \Label_RAM|Z~469_combout\ : std_logic;
SIGNAL \Label_RAM|Z~263_q\ : std_logic;
SIGNAL \Label_RAM|Z~199feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~465_combout\ : std_logic;
SIGNAL \Label_RAM|Z~199_q\ : std_logic;
SIGNAL \Label_RAM|Z~505_combout\ : std_logic;
SIGNAL \Label_RAM|Z~467_combout\ : std_logic;
SIGNAL \Label_RAM|Z~167_q\ : std_logic;
SIGNAL \Label_RAM|Z~504_combout\ : std_logic;
SIGNAL \Label_RAM|Z~231feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~463_combout\ : std_logic;
SIGNAL \Label_RAM|Z~231_q\ : std_logic;
SIGNAL \Label_RAM|Z~298_combout\ : std_logic;
SIGNAL \Label_RAM|Z~299_combout\ : std_logic;
SIGNAL \Label_RAM|Z~453_combout\ : std_logic;
SIGNAL \Label_RAM|Z~247_q\ : std_logic;
SIGNAL \Label_RAM|Z~449_combout\ : std_logic;
SIGNAL \Label_RAM|Z~183_q\ : std_logic;
SIGNAL \Label_RAM|Z~215feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~447_combout\ : std_logic;
SIGNAL \Label_RAM|Z~215_q\ : std_logic;
SIGNAL \Label_RAM|Z~451_combout\ : std_logic;
SIGNAL \Label_RAM|Z~151_q\ : std_logic;
SIGNAL \Label_RAM|Z~291_combout\ : std_logic;
SIGNAL \Label_RAM|Z~292_combout\ : std_logic;
SIGNAL \Label_RAM|Z~500_combout\ : std_logic;
SIGNAL \Label_RAM|Z~441_combout\ : std_logic;
SIGNAL \Label_RAM|Z~223_q\ : std_logic;
SIGNAL \Label_RAM|Z~445_combout\ : std_logic;
SIGNAL \Label_RAM|Z~255_q\ : std_logic;
SIGNAL \Label_RAM|Z~501_combout\ : std_logic;
SIGNAL \Label_RAM|Z~443_combout\ : std_logic;
SIGNAL \Label_RAM|Z~159_q\ : std_logic;
SIGNAL \Label_RAM|Z~439_combout\ : std_logic;
SIGNAL \Label_RAM|Z~191_q\ : std_logic;
SIGNAL \Label_RAM|Z~293_combout\ : std_logic;
SIGNAL \Label_RAM|Z~294_combout\ : std_logic;
SIGNAL \Label_RAM|Z~502_combout\ : std_logic;
SIGNAL \Label_RAM|Z~457_combout\ : std_logic;
SIGNAL \Label_RAM|Z~207_q\ : std_logic;
SIGNAL \Label_RAM|Z~461_combout\ : std_logic;
SIGNAL \Label_RAM|Z~239_q\ : std_logic;
SIGNAL \Label_RAM|Z~503_combout\ : std_logic;
SIGNAL \Label_RAM|Z~459_combout\ : std_logic;
SIGNAL \Label_RAM|Z~143_q\ : std_logic;
SIGNAL \Label_RAM|Z~455_combout\ : std_logic;
SIGNAL \Label_RAM|Z~175_q\ : std_logic;
SIGNAL \Label_RAM|Z~295_combout\ : std_logic;
SIGNAL \Label_RAM|Z~296_combout\ : std_logic;
SIGNAL \Label_RAM|Z~297_combout\ : std_logic;
SIGNAL \Label_RAM|Z~300_combout\ : std_logic;
SIGNAL \Label_RAM|Z~311_combout\ : std_logic;
SIGNAL \Label_MDRI|output[1]~feeder_combout\ : std_logic;
SIGNAL \Label_CU|current_state.ldaa_read_mem~feeder_combout\ : std_logic;
SIGNAL \Label_CU|current_state.ldaa_read_mem~q\ : std_logic;
SIGNAL \Label_CU|current_state.ldaa_load_mdri~feeder_combout\ : std_logic;
SIGNAL \Label_CU|current_state.ldaa_load_mdri~q\ : std_logic;
SIGNAL \Label_CU|WideOr4~0_combout\ : std_logic;
SIGNAL \Label_IR|output[1]~feeder_combout\ : std_logic;
SIGNAL \Label_CU|current_state~20_combout\ : std_logic;
SIGNAL \Label_CU|current_state.staa_load_mdro~q\ : std_logic;
SIGNAL \Label_CU|WideOr3~combout\ : std_logic;
SIGNAL \Label_MDRO|output[3]~feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~249_q\ : std_logic;
SIGNAL \Label_RAM|Z~185_q\ : std_logic;
SIGNAL \Label_RAM|Z~217feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~217_q\ : std_logic;
SIGNAL \Label_RAM|Z~153_q\ : std_logic;
SIGNAL \Label_RAM|Z~333_combout\ : std_logic;
SIGNAL \Label_RAM|Z~334_combout\ : std_logic;
SIGNAL \Label_RAM|Z~201feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~201_q\ : std_logic;
SIGNAL \Label_RAM|Z~265_q\ : std_logic;
SIGNAL \Label_RAM|Z~536_combout\ : std_logic;
SIGNAL \Label_RAM|Z~169_q\ : std_logic;
SIGNAL \Label_RAM|Z~535_combout\ : std_logic;
SIGNAL \Label_RAM|Z~233_q\ : std_logic;
SIGNAL \Label_RAM|Z~340_combout\ : std_logic;
SIGNAL \Label_RAM|Z~341_combout\ : std_logic;
SIGNAL \Label_RAM|Z~529_combout\ : std_logic;
SIGNAL \Label_RAM|Z~225_q\ : std_logic;
SIGNAL \Label_RAM|Z~257_q\ : std_logic;
SIGNAL \Label_RAM|Z~530_combout\ : std_logic;
SIGNAL \Label_RAM|Z~161_q\ : std_logic;
SIGNAL \Label_RAM|Z~193_q\ : std_logic;
SIGNAL \Label_RAM|Z~335_combout\ : std_logic;
SIGNAL \Label_RAM|Z~336_combout\ : std_logic;
SIGNAL \Label_RAM|Z~534_combout\ : std_logic;
SIGNAL \Label_RAM|Z~241_q\ : std_logic;
SIGNAL \Label_RAM|Z~531_combout\ : std_logic;
SIGNAL \Label_RAM|Z~209_q\ : std_logic;
SIGNAL \Label_RAM|Z~532_combout\ : std_logic;
SIGNAL \Label_RAM|Z~177_q\ : std_logic;
SIGNAL \Label_RAM|Z~533_combout\ : std_logic;
SIGNAL \Label_RAM|Z~145_q\ : std_logic;
SIGNAL \Label_RAM|Z~337_combout\ : std_logic;
SIGNAL \Label_RAM|Z~338_combout\ : std_logic;
SIGNAL \Label_RAM|Z~339_combout\ : std_logic;
SIGNAL \Label_RAM|Z~342_combout\ : std_logic;
SIGNAL \Label_RAM|Z~129_q\ : std_logic;
SIGNAL \Label_RAM|Z~137_q\ : std_logic;
SIGNAL \Label_RAM|Z~541_combout\ : std_logic;
SIGNAL \Label_RAM|Z~113_q\ : std_logic;
SIGNAL \Label_RAM|Z~121_q\ : std_logic;
SIGNAL \Label_RAM|Z~350_combout\ : std_logic;
SIGNAL \Label_RAM|Z~351_combout\ : std_logic;
SIGNAL \Label_RAM|Z~73feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~73_q\ : std_logic;
SIGNAL \Label_RAM|Z~65_q\ : std_logic;
SIGNAL \Label_RAM|Z~537_combout\ : std_logic;
SIGNAL \Label_RAM|Z~57_q\ : std_logic;
SIGNAL \Label_RAM|Z~538_combout\ : std_logic;
SIGNAL \Label_RAM|Z~49_q\ : std_logic;
SIGNAL \Label_RAM|Z~343_combout\ : std_logic;
SIGNAL \Label_RAM|Z~344_combout\ : std_logic;
SIGNAL \Label_RAM|Z~25feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~25_q\ : std_logic;
SIGNAL \Label_RAM|Z~41_q\ : std_logic;
SIGNAL \Label_RAM|Z~33feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~33_q\ : std_logic;
SIGNAL \Label_RAM|Z~17_q\ : std_logic;
SIGNAL \Label_RAM|Z~347_combout\ : std_logic;
SIGNAL \Label_RAM|Z~348_combout\ : std_logic;
SIGNAL \Label_RAM|Z~540_combout\ : std_logic;
SIGNAL \Label_RAM|Z~105_q\ : std_logic;
SIGNAL \Label_RAM|Z~89_q\ : std_logic;
SIGNAL \Label_RAM|Z~539_combout\ : std_logic;
SIGNAL \Label_RAM|Z~97_q\ : std_logic;
SIGNAL \Label_RAM|Z~81_q\ : std_logic;
SIGNAL \Label_RAM|Z~345_combout\ : std_logic;
SIGNAL \Label_RAM|Z~346_combout\ : std_logic;
SIGNAL \Label_RAM|Z~349_combout\ : std_logic;
SIGNAL \Label_RAM|Z~352_combout\ : std_logic;
SIGNAL \Label_RAM|Z~353_combout\ : std_logic;
SIGNAL \Label_MDRI|output[3]~feeder_combout\ : std_logic;
SIGNAL \Label_MARMUX|output[3]~3_combout\ : std_logic;
SIGNAL \Label_MDRO|output[0]~feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~118_q\ : std_logic;
SIGNAL \Label_RAM|Z~499_combout\ : std_logic;
SIGNAL \Label_RAM|Z~134_q\ : std_logic;
SIGNAL \Label_RAM|Z~497_combout\ : std_logic;
SIGNAL \Label_RAM|Z~126_q\ : std_logic;
SIGNAL \Label_RAM|Z~498_combout\ : std_logic;
SIGNAL \Label_RAM|Z~110_q\ : std_logic;
SIGNAL \Label_RAM|Z~287_combout\ : std_logic;
SIGNAL \Label_RAM|Z~288_combout\ : std_logic;
SIGNAL \Label_RAM|Z~102_q\ : std_logic;
SIGNAL \Label_RAM|Z~94_q\ : std_logic;
SIGNAL \Label_RAM|Z~492_combout\ : std_logic;
SIGNAL \Label_RAM|Z~78_q\ : std_logic;
SIGNAL \Label_RAM|Z~86_q\ : std_logic;
SIGNAL \Label_RAM|Z~280_combout\ : std_logic;
SIGNAL \Label_RAM|Z~281_combout\ : std_logic;
SIGNAL \Label_RAM|Z~494_combout\ : std_logic;
SIGNAL \Label_RAM|Z~30_q\ : std_logic;
SIGNAL \Label_RAM|Z~495_combout\ : std_logic;
SIGNAL \Label_RAM|Z~14_q\ : std_logic;
SIGNAL \Label_RAM|Z~22_q\ : std_logic;
SIGNAL \Label_RAM|Z~284_combout\ : std_logic;
SIGNAL \Label_RAM|Z~496_combout\ : std_logic;
SIGNAL \Label_RAM|Z~38_q\ : std_logic;
SIGNAL \Label_RAM|Z~285_combout\ : std_logic;
SIGNAL \Label_RAM|Z~493_combout\ : std_logic;
SIGNAL \Label_RAM|Z~70_q\ : std_logic;
SIGNAL \Label_RAM|Z~54_q\ : std_logic;
SIGNAL \Label_RAM|Z~62feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~62_q\ : std_logic;
SIGNAL \Label_RAM|Z~46_q\ : std_logic;
SIGNAL \Label_RAM|Z~282_combout\ : std_logic;
SIGNAL \Label_RAM|Z~283_combout\ : std_logic;
SIGNAL \Label_RAM|Z~286_combout\ : std_logic;
SIGNAL \Label_RAM|Z~289_combout\ : std_logic;
SIGNAL \Label_RAM|Z~487_combout\ : std_logic;
SIGNAL \Label_RAM|Z~254_q\ : std_logic;
SIGNAL \Label_RAM|Z~486_combout\ : std_logic;
SIGNAL \Label_RAM|Z~190_q\ : std_logic;
SIGNAL \Label_RAM|Z~222feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~222_q\ : std_logic;
SIGNAL \Label_RAM|Z~158_q\ : std_logic;
SIGNAL \Label_RAM|Z~270_combout\ : std_logic;
SIGNAL \Label_RAM|Z~271_combout\ : std_logic;
SIGNAL \Label_RAM|Z~491_combout\ : std_logic;
SIGNAL \Label_RAM|Z~262_q\ : std_logic;
SIGNAL \Label_RAM|Z~230_q\ : std_logic;
SIGNAL \Label_RAM|Z~490_combout\ : std_logic;
SIGNAL \Label_RAM|Z~198_q\ : std_logic;
SIGNAL \Label_RAM|Z~166_q\ : std_logic;
SIGNAL \Label_RAM|Z~277_combout\ : std_logic;
SIGNAL \Label_RAM|Z~278_combout\ : std_logic;
SIGNAL \Label_RAM|Z~214feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~214_q\ : std_logic;
SIGNAL \Label_RAM|Z~246_q\ : std_logic;
SIGNAL \Label_RAM|Z~182feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~182_q\ : std_logic;
SIGNAL \Label_RAM|Z~150_q\ : std_logic;
SIGNAL \Label_RAM|Z~272_combout\ : std_logic;
SIGNAL \Label_RAM|Z~273_combout\ : std_logic;
SIGNAL \Label_RAM|Z~489_combout\ : std_logic;
SIGNAL \Label_RAM|Z~238_q\ : std_logic;
SIGNAL \Label_RAM|Z~488_combout\ : std_logic;
SIGNAL \Label_RAM|Z~174feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~174_q\ : std_logic;
SIGNAL \Label_RAM|Z~142_q\ : std_logic;
SIGNAL \Label_RAM|Z~206feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~206_q\ : std_logic;
SIGNAL \Label_RAM|Z~274_combout\ : std_logic;
SIGNAL \Label_RAM|Z~275_combout\ : std_logic;
SIGNAL \Label_RAM|Z~276_combout\ : std_logic;
SIGNAL \Label_RAM|Z~279_combout\ : std_logic;
SIGNAL \Label_RAM|Z~290_combout\ : std_logic;
SIGNAL \Label_MDRI|output[0]~feeder_combout\ : std_logic;
SIGNAL \Label_CU|current_state~19_combout\ : std_logic;
SIGNAL \Label_CU|current_state.ldaa_load_mar~q\ : std_logic;
SIGNAL \Label_ALU|output[7]~0_combout\ : std_logic;
SIGNAL \Label_MARMUX|output[1]~1_combout\ : std_logic;
SIGNAL \Label_MDRO|output[4]~feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~106feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~106_q\ : std_logic;
SIGNAL \Label_RAM|Z~98_q\ : std_logic;
SIGNAL \Label_RAM|Z~82_q\ : std_logic;
SIGNAL \Label_RAM|Z~546_combout\ : std_logic;
SIGNAL \Label_RAM|Z~90_q\ : std_logic;
SIGNAL \Label_RAM|Z~364_combout\ : std_logic;
SIGNAL \Label_RAM|Z~365_combout\ : std_logic;
SIGNAL \Label_RAM|Z~549_combout\ : std_logic;
SIGNAL \Label_RAM|Z~138_q\ : std_logic;
SIGNAL \Label_RAM|Z~122_q\ : std_logic;
SIGNAL \Label_RAM|Z~130feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~130_q\ : std_logic;
SIGNAL \Label_RAM|Z~114_q\ : std_logic;
SIGNAL \Label_RAM|Z~371_combout\ : std_logic;
SIGNAL \Label_RAM|Z~372_combout\ : std_logic;
SIGNAL \Label_RAM|Z~548_combout\ : std_logic;
SIGNAL \Label_RAM|Z~74_q\ : std_logic;
SIGNAL \Label_RAM|Z~58_q\ : std_logic;
SIGNAL \Label_RAM|Z~547_combout\ : std_logic;
SIGNAL \Label_RAM|Z~66_q\ : std_logic;
SIGNAL \Label_RAM|Z~50_q\ : std_logic;
SIGNAL \Label_RAM|Z~366_combout\ : std_logic;
SIGNAL \Label_RAM|Z~367_combout\ : std_logic;
SIGNAL \Label_RAM|Z~34feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~34_q\ : std_logic;
SIGNAL \Label_RAM|Z~42_q\ : std_logic;
SIGNAL \Label_RAM|Z~26feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~26_q\ : std_logic;
SIGNAL \Label_RAM|Z~18_q\ : std_logic;
SIGNAL \Label_RAM|Z~368_combout\ : std_logic;
SIGNAL \Label_RAM|Z~369_combout\ : std_logic;
SIGNAL \Label_RAM|Z~370_combout\ : std_logic;
SIGNAL \Label_RAM|Z~373_combout\ : std_logic;
SIGNAL \Label_RAM|Z~258_q\ : std_logic;
SIGNAL \Label_RAM|Z~194feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~194_q\ : std_logic;
SIGNAL \Label_RAM|Z~226feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~226_q\ : std_logic;
SIGNAL \Label_RAM|Z~162_q\ : std_logic;
SIGNAL \Label_RAM|Z~354_combout\ : std_logic;
SIGNAL \Label_RAM|Z~355_combout\ : std_logic;
SIGNAL \Label_RAM|Z~545_combout\ : std_logic;
SIGNAL \Label_RAM|Z~266_q\ : std_logic;
SIGNAL \Label_RAM|Z~234_q\ : std_logic;
SIGNAL \Label_RAM|Z~544_combout\ : std_logic;
SIGNAL \Label_RAM|Z~202_q\ : std_logic;
SIGNAL \Label_RAM|Z~170_q\ : std_logic;
SIGNAL \Label_RAM|Z~361_combout\ : std_logic;
SIGNAL \Label_RAM|Z~362_combout\ : std_logic;
SIGNAL \Label_RAM|Z~542_combout\ : std_logic;
SIGNAL \Label_RAM|Z~218_q\ : std_logic;
SIGNAL \Label_RAM|Z~250_q\ : std_logic;
SIGNAL \Label_RAM|Z~543_combout\ : std_logic;
SIGNAL \Label_RAM|Z~154_q\ : std_logic;
SIGNAL \Label_RAM|Z~186_q\ : std_logic;
SIGNAL \Label_RAM|Z~356_combout\ : std_logic;
SIGNAL \Label_RAM|Z~357_combout\ : std_logic;
SIGNAL \Label_RAM|Z~178feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~178_q\ : std_logic;
SIGNAL \Label_RAM|Z~242_q\ : std_logic;
SIGNAL \Label_RAM|Z~210feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~210_q\ : std_logic;
SIGNAL \Label_RAM|Z~146_q\ : std_logic;
SIGNAL \Label_RAM|Z~358_combout\ : std_logic;
SIGNAL \Label_RAM|Z~359_combout\ : std_logic;
SIGNAL \Label_RAM|Z~360_combout\ : std_logic;
SIGNAL \Label_RAM|Z~363_combout\ : std_logic;
SIGNAL \Label_RAM|Z~374_combout\ : std_logic;
SIGNAL \Label_MDRI|output[4]~feeder_combout\ : std_logic;
SIGNAL \Label_MARMUX|output[4]~4_combout\ : std_logic;
SIGNAL \Label_MAR|output[4]~feeder_combout\ : std_logic;
SIGNAL \Label_MDRO|output[2]~feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~104feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~104_q\ : std_logic;
SIGNAL \Label_RAM|Z~96_q\ : std_logic;
SIGNAL \Label_RAM|Z~80_q\ : std_logic;
SIGNAL \Label_RAM|Z~520_combout\ : std_logic;
SIGNAL \Label_RAM|Z~88_q\ : std_logic;
SIGNAL \Label_RAM|Z~322_combout\ : std_logic;
SIGNAL \Label_RAM|Z~323_combout\ : std_logic;
SIGNAL \Label_RAM|Z~528_combout\ : std_logic;
SIGNAL \Label_RAM|Z~136_q\ : std_logic;
SIGNAL \Label_RAM|Z~120_q\ : std_logic;
SIGNAL \Label_RAM|Z~527_combout\ : std_logic;
SIGNAL \Label_RAM|Z~128_q\ : std_logic;
SIGNAL \Label_RAM|Z~112_q\ : std_logic;
SIGNAL \Label_RAM|Z~329_combout\ : std_logic;
SIGNAL \Label_RAM|Z~330_combout\ : std_logic;
SIGNAL \Label_RAM|Z~526_combout\ : std_logic;
SIGNAL \Label_RAM|Z~40feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~40_q\ : std_logic;
SIGNAL \Label_RAM|Z~523_combout\ : std_logic;
SIGNAL \Label_RAM|Z~32_q\ : std_logic;
SIGNAL \Label_RAM|Z~525_combout\ : std_logic;
SIGNAL \Label_RAM|Z~16_q\ : std_logic;
SIGNAL \Label_RAM|Z~524_combout\ : std_logic;
SIGNAL \Label_RAM|Z~24_q\ : std_logic;
SIGNAL \Label_RAM|Z~326_combout\ : std_logic;
SIGNAL \Label_RAM|Z~327_combout\ : std_logic;
SIGNAL \Label_RAM|Z~522_combout\ : std_logic;
SIGNAL \Label_RAM|Z~72_q\ : std_logic;
SIGNAL \Label_RAM|Z~56_q\ : std_logic;
SIGNAL \Label_RAM|Z~521_combout\ : std_logic;
SIGNAL \Label_RAM|Z~64_q\ : std_logic;
SIGNAL \Label_RAM|Z~48_q\ : std_logic;
SIGNAL \Label_RAM|Z~324_combout\ : std_logic;
SIGNAL \Label_RAM|Z~325_combout\ : std_logic;
SIGNAL \Label_RAM|Z~328_combout\ : std_logic;
SIGNAL \Label_RAM|Z~331_combout\ : std_logic;
SIGNAL \Label_RAM|Z~513_combout\ : std_logic;
SIGNAL \Label_RAM|Z~256_q\ : std_logic;
SIGNAL \Label_RAM|Z~224feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~224_q\ : std_logic;
SIGNAL \Label_RAM|Z~160_q\ : std_logic;
SIGNAL \Label_RAM|Z~312_combout\ : std_logic;
SIGNAL \Label_RAM|Z~512_combout\ : std_logic;
SIGNAL \Label_RAM|Z~192_q\ : std_logic;
SIGNAL \Label_RAM|Z~313_combout\ : std_logic;
SIGNAL \Label_RAM|Z~519_combout\ : std_logic;
SIGNAL \Label_RAM|Z~264_q\ : std_logic;
SIGNAL \Label_RAM|Z~232_q\ : std_logic;
SIGNAL \Label_RAM|Z~518_combout\ : std_logic;
SIGNAL \Label_RAM|Z~200_q\ : std_logic;
SIGNAL \Label_RAM|Z~168_q\ : std_logic;
SIGNAL \Label_RAM|Z~319_combout\ : std_logic;
SIGNAL \Label_RAM|Z~320_combout\ : std_logic;
SIGNAL \Label_RAM|Z~176feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~176_q\ : std_logic;
SIGNAL \Label_RAM|Z~240_q\ : std_logic;
SIGNAL \Label_RAM|Z~516_combout\ : std_logic;
SIGNAL \Label_RAM|Z~208_q\ : std_logic;
SIGNAL \Label_RAM|Z~517_combout\ : std_logic;
SIGNAL \Label_RAM|Z~144_q\ : std_logic;
SIGNAL \Label_RAM|Z~316_combout\ : std_logic;
SIGNAL \Label_RAM|Z~317_combout\ : std_logic;
SIGNAL \Label_RAM|Z~514_combout\ : std_logic;
SIGNAL \Label_RAM|Z~216_q\ : std_logic;
SIGNAL \Label_RAM|Z~248_q\ : std_logic;
SIGNAL \Label_RAM|Z~515_combout\ : std_logic;
SIGNAL \Label_RAM|Z~152_q\ : std_logic;
SIGNAL \Label_RAM|Z~184_q\ : std_logic;
SIGNAL \Label_RAM|Z~314_combout\ : std_logic;
SIGNAL \Label_RAM|Z~315_combout\ : std_logic;
SIGNAL \Label_RAM|Z~318_combout\ : std_logic;
SIGNAL \Label_RAM|Z~321_combout\ : std_logic;
SIGNAL \Label_RAM|Z~332_combout\ : std_logic;
SIGNAL \Label_MDRI|output[2]~feeder_combout\ : std_logic;
SIGNAL \Label_IR|output[2]~feeder_combout\ : std_logic;
SIGNAL \Label_CU|current_state~21_combout\ : std_logic;
SIGNAL \Label_CU|current_state.adaa_load_mar~q\ : std_logic;
SIGNAL \Label_CU|current_state.adaa_read_mem~feeder_combout\ : std_logic;
SIGNAL \Label_CU|current_state.adaa_read_mem~q\ : std_logic;
SIGNAL \Label_CU|current_state.adaa_load_mdri~q\ : std_logic;
SIGNAL \Label_CU|current_state.adaa_store_load_a~q\ : std_logic;
SIGNAL \Label_CU|current_state.ldaa_load_a~feeder_combout\ : std_logic;
SIGNAL \Label_CU|current_state.ldaa_load_a~q\ : std_logic;
SIGNAL \Label_CU|Selector0~0_combout\ : std_logic;
SIGNAL \Label_CU|Selector0~1_combout\ : std_logic;
SIGNAL \Label_CU|current_state.increment_pc~q\ : std_logic;
SIGNAL \Label_ProgramCounter|Add0~7\ : std_logic;
SIGNAL \Label_ProgramCounter|Add0~8_combout\ : std_logic;
SIGNAL \Label_ProgramCounter|Add0~9\ : std_logic;
SIGNAL \Label_ProgramCounter|Add0~10_combout\ : std_logic;
SIGNAL \Label_ProgramCounter|output[6]~feeder_combout\ : std_logic;
SIGNAL \Label_ProgramCounter|Add0~11\ : std_logic;
SIGNAL \Label_ProgramCounter|Add0~12_combout\ : std_logic;
SIGNAL \Label_MDRO|output[5]~feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~187feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~187_q\ : std_logic;
SIGNAL \Label_RAM|Z~251feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~251_q\ : std_logic;
SIGNAL \Label_RAM|Z~551_combout\ : std_logic;
SIGNAL \Label_RAM|Z~155_q\ : std_logic;
SIGNAL \Label_RAM|Z~550_combout\ : std_logic;
SIGNAL \Label_RAM|Z~219_q\ : std_logic;
SIGNAL \Label_RAM|Z~375_combout\ : std_logic;
SIGNAL \Label_RAM|Z~376_combout\ : std_logic;
SIGNAL \Label_RAM|Z~203feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~203_q\ : std_logic;
SIGNAL \Label_RAM|Z~267_q\ : std_logic;
SIGNAL \Label_RAM|Z~559_combout\ : std_logic;
SIGNAL \Label_RAM|Z~171_q\ : std_logic;
SIGNAL \Label_RAM|Z~558_combout\ : std_logic;
SIGNAL \Label_RAM|Z~235_q\ : std_logic;
SIGNAL \Label_RAM|Z~382_combout\ : std_logic;
SIGNAL \Label_RAM|Z~383_combout\ : std_logic;
SIGNAL \Label_RAM|Z~554_combout\ : std_logic;
SIGNAL \Label_RAM|Z~211_q\ : std_logic;
SIGNAL \Label_RAM|Z~555_combout\ : std_logic;
SIGNAL \Label_RAM|Z~179_q\ : std_logic;
SIGNAL \Label_RAM|Z~556_combout\ : std_logic;
SIGNAL \Label_RAM|Z~147_q\ : std_logic;
SIGNAL \Label_RAM|Z~379_combout\ : std_logic;
SIGNAL \Label_RAM|Z~557_combout\ : std_logic;
SIGNAL \Label_RAM|Z~243_q\ : std_logic;
SIGNAL \Label_RAM|Z~380_combout\ : std_logic;
SIGNAL \Label_RAM|Z~227feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~227_q\ : std_logic;
SIGNAL \Label_RAM|Z~553_combout\ : std_logic;
SIGNAL \Label_RAM|Z~259_q\ : std_logic;
SIGNAL \Label_RAM|Z~552_combout\ : std_logic;
SIGNAL \Label_RAM|Z~195feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~195_q\ : std_logic;
SIGNAL \Label_RAM|Z~163_q\ : std_logic;
SIGNAL \Label_RAM|Z~377_combout\ : std_logic;
SIGNAL \Label_RAM|Z~378_combout\ : std_logic;
SIGNAL \Label_RAM|Z~381_combout\ : std_logic;
SIGNAL \Label_RAM|Z~384_combout\ : std_logic;
SIGNAL \Label_RAM|Z~564_combout\ : std_logic;
SIGNAL \Label_RAM|Z~131_q\ : std_logic;
SIGNAL \Label_RAM|Z~565_combout\ : std_logic;
SIGNAL \Label_RAM|Z~115_q\ : std_logic;
SIGNAL \Label_RAM|Z~123_q\ : std_logic;
SIGNAL \Label_RAM|Z~392_combout\ : std_logic;
SIGNAL \Label_RAM|Z~139_q\ : std_logic;
SIGNAL \Label_RAM|Z~393_combout\ : std_logic;
SIGNAL \Label_RAM|Z~563_combout\ : std_logic;
SIGNAL \Label_RAM|Z~27_q\ : std_logic;
SIGNAL \Label_RAM|Z~43_q\ : std_logic;
SIGNAL \Label_RAM|Z~35feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~35_q\ : std_logic;
SIGNAL \Label_RAM|Z~19_q\ : std_logic;
SIGNAL \Label_RAM|Z~389_combout\ : std_logic;
SIGNAL \Label_RAM|Z~390_combout\ : std_logic;
SIGNAL \Label_RAM|Z~562_combout\ : std_logic;
SIGNAL \Label_RAM|Z~107_q\ : std_logic;
SIGNAL \Label_RAM|Z~561_combout\ : std_logic;
SIGNAL \Label_RAM|Z~91_q\ : std_logic;
SIGNAL \Label_RAM|Z~99_q\ : std_logic;
SIGNAL \Label_RAM|Z~83_q\ : std_logic;
SIGNAL \Label_RAM|Z~387_combout\ : std_logic;
SIGNAL \Label_RAM|Z~388_combout\ : std_logic;
SIGNAL \Label_RAM|Z~391_combout\ : std_logic;
SIGNAL \Label_RAM|Z~75feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~75_q\ : std_logic;
SIGNAL \Label_RAM|Z~67_q\ : std_logic;
SIGNAL \Label_RAM|Z~560_combout\ : std_logic;
SIGNAL \Label_RAM|Z~51_q\ : std_logic;
SIGNAL \Label_RAM|Z~59_q\ : std_logic;
SIGNAL \Label_RAM|Z~385_combout\ : std_logic;
SIGNAL \Label_RAM|Z~386_combout\ : std_logic;
SIGNAL \Label_RAM|Z~394_combout\ : std_logic;
SIGNAL \Label_RAM|Z~395_combout\ : std_logic;
SIGNAL \Label_MDRI|output[5]~feeder_combout\ : std_logic;
SIGNAL \Label_IR|output[5]~feeder_combout\ : std_logic;
SIGNAL \Label_MDRO|output[6]~feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~567_combout\ : std_logic;
SIGNAL \Label_RAM|Z~268_q\ : std_logic;
SIGNAL \Label_RAM|Z~236_q\ : std_logic;
SIGNAL \Label_RAM|Z~566_combout\ : std_logic;
SIGNAL \Label_RAM|Z~204_q\ : std_logic;
SIGNAL \Label_RAM|Z~172_q\ : std_logic;
SIGNAL \Label_RAM|Z~403_combout\ : std_logic;
SIGNAL \Label_RAM|Z~404_combout\ : std_logic;
SIGNAL \Label_RAM|Z~260_q\ : std_logic;
SIGNAL \Label_RAM|Z~196_q\ : std_logic;
SIGNAL \Label_RAM|Z~228feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~228_q\ : std_logic;
SIGNAL \Label_RAM|Z~164_q\ : std_logic;
SIGNAL \Label_RAM|Z~396_combout\ : std_logic;
SIGNAL \Label_RAM|Z~397_combout\ : std_logic;
SIGNAL \Label_RAM|Z~220feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~220_q\ : std_logic;
SIGNAL \Label_RAM|Z~252_q\ : std_logic;
SIGNAL \Label_RAM|Z~188feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~188_q\ : std_logic;
SIGNAL \Label_RAM|Z~156_q\ : std_logic;
SIGNAL \Label_RAM|Z~398_combout\ : std_logic;
SIGNAL \Label_RAM|Z~399_combout\ : std_logic;
SIGNAL \Label_RAM|Z~180feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~180_q\ : std_logic;
SIGNAL \Label_RAM|Z~244_q\ : std_logic;
SIGNAL \Label_RAM|Z~212feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~212_q\ : std_logic;
SIGNAL \Label_RAM|Z~148_q\ : std_logic;
SIGNAL \Label_RAM|Z~400_combout\ : std_logic;
SIGNAL \Label_RAM|Z~401_combout\ : std_logic;
SIGNAL \Label_RAM|Z~402_combout\ : std_logic;
SIGNAL \Label_RAM|Z~405_combout\ : std_logic;
SIGNAL \Label_RAM|Z~108feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~108_q\ : std_logic;
SIGNAL \Label_RAM|Z~100_q\ : std_logic;
SIGNAL \Label_RAM|Z~84_q\ : std_logic;
SIGNAL \Label_RAM|Z~92feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~92_q\ : std_logic;
SIGNAL \Label_RAM|Z~406_combout\ : std_logic;
SIGNAL \Label_RAM|Z~407_combout\ : std_logic;
SIGNAL \Label_RAM|Z~570_combout\ : std_logic;
SIGNAL \Label_RAM|Z~140_q\ : std_logic;
SIGNAL \Label_RAM|Z~124_q\ : std_logic;
SIGNAL \Label_RAM|Z~132feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~132_q\ : std_logic;
SIGNAL \Label_RAM|Z~116_q\ : std_logic;
SIGNAL \Label_RAM|Z~413_combout\ : std_logic;
SIGNAL \Label_RAM|Z~414_combout\ : std_logic;
SIGNAL \Label_RAM|Z~568_combout\ : std_logic;
SIGNAL \Label_RAM|Z~76_q\ : std_logic;
SIGNAL \Label_RAM|Z~60_q\ : std_logic;
SIGNAL \Label_RAM|Z~68feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~68_q\ : std_logic;
SIGNAL \Label_RAM|Z~52_q\ : std_logic;
SIGNAL \Label_RAM|Z~408_combout\ : std_logic;
SIGNAL \Label_RAM|Z~409_combout\ : std_logic;
SIGNAL \Label_RAM|Z~569_combout\ : std_logic;
SIGNAL \Label_RAM|Z~36_q\ : std_logic;
SIGNAL \Label_RAM|Z~44_q\ : std_logic;
SIGNAL \Label_RAM|Z~28feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~28_q\ : std_logic;
SIGNAL \Label_RAM|Z~20_q\ : std_logic;
SIGNAL \Label_RAM|Z~410_combout\ : std_logic;
SIGNAL \Label_RAM|Z~411_combout\ : std_logic;
SIGNAL \Label_RAM|Z~412_combout\ : std_logic;
SIGNAL \Label_RAM|Z~415_combout\ : std_logic;
SIGNAL \Label_RAM|Z~416_combout\ : std_logic;
SIGNAL \Label_MDRI|output[6]~feeder_combout\ : std_logic;
SIGNAL \Label_IR|output[6]~feeder_combout\ : std_logic;
SIGNAL \Label_MDRO|output[7]~feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~586_combout\ : std_logic;
SIGNAL \Label_RAM|Z~133_q\ : std_logic;
SIGNAL \Label_RAM|Z~141_q\ : std_logic;
SIGNAL \Label_RAM|Z~587_combout\ : std_logic;
SIGNAL \Label_RAM|Z~117_q\ : std_logic;
SIGNAL \Label_RAM|Z~125_q\ : std_logic;
SIGNAL \Label_RAM|Z~434_combout\ : std_logic;
SIGNAL \Label_RAM|Z~435_combout\ : std_logic;
SIGNAL \Label_RAM|Z~77feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~77_q\ : std_logic;
SIGNAL \Label_RAM|Z~69_q\ : std_logic;
SIGNAL \Label_RAM|Z~61feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~61_q\ : std_logic;
SIGNAL \Label_RAM|Z~53_q\ : std_logic;
SIGNAL \Label_RAM|Z~427_combout\ : std_logic;
SIGNAL \Label_RAM|Z~428_combout\ : std_logic;
SIGNAL \Label_RAM|Z~583_combout\ : std_logic;
SIGNAL \Label_RAM|Z~93_q\ : std_logic;
SIGNAL \Label_RAM|Z~584_combout\ : std_logic;
SIGNAL \Label_RAM|Z~101_q\ : std_logic;
SIGNAL \Label_RAM|Z~85_q\ : std_logic;
SIGNAL \Label_RAM|Z~429_combout\ : std_logic;
SIGNAL \Label_RAM|Z~585_combout\ : std_logic;
SIGNAL \Label_RAM|Z~109_q\ : std_logic;
SIGNAL \Label_RAM|Z~430_combout\ : std_logic;
SIGNAL \Label_RAM|Z~29feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~29_q\ : std_logic;
SIGNAL \Label_RAM|Z~45_q\ : std_logic;
SIGNAL \Label_RAM|Z~37feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~37_q\ : std_logic;
SIGNAL \Label_RAM|Z~21_q\ : std_logic;
SIGNAL \Label_RAM|Z~431_combout\ : std_logic;
SIGNAL \Label_RAM|Z~432_combout\ : std_logic;
SIGNAL \Label_RAM|Z~433_combout\ : std_logic;
SIGNAL \Label_RAM|Z~436_combout\ : std_logic;
SIGNAL \Label_RAM|Z~205feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~205_q\ : std_logic;
SIGNAL \Label_RAM|Z~581_combout\ : std_logic;
SIGNAL \Label_RAM|Z~237_q\ : std_logic;
SIGNAL \Label_RAM|Z~582_combout\ : std_logic;
SIGNAL \Label_RAM|Z~173feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~173_q\ : std_logic;
SIGNAL \Label_RAM|Z~424_combout\ : std_logic;
SIGNAL \Label_RAM|Z~269_q\ : std_logic;
SIGNAL \Label_RAM|Z~425_combout\ : std_logic;
SIGNAL \Label_RAM|Z~253_q\ : std_logic;
SIGNAL \Label_RAM|Z~189_q\ : std_logic;
SIGNAL \Label_RAM|Z~572_combout\ : std_logic;
SIGNAL \Label_RAM|Z~157_q\ : std_logic;
SIGNAL \Label_RAM|Z~571_combout\ : std_logic;
SIGNAL \Label_RAM|Z~221_q\ : std_logic;
SIGNAL \Label_RAM|Z~417_combout\ : std_logic;
SIGNAL \Label_RAM|Z~418_combout\ : std_logic;
SIGNAL \Label_RAM|Z~580_combout\ : std_logic;
SIGNAL \Label_RAM|Z~245feeder_combout\ : std_logic;
SIGNAL \Label_RAM|Z~245_q\ : std_logic;
SIGNAL \Label_RAM|Z~577_combout\ : std_logic;
SIGNAL \Label_RAM|Z~213_q\ : std_logic;
SIGNAL \Label_RAM|Z~579_combout\ : std_logic;
SIGNAL \Label_RAM|Z~149_q\ : std_logic;
SIGNAL \Label_RAM|Z~578_combout\ : std_logic;
SIGNAL \Label_RAM|Z~181_q\ : std_logic;
SIGNAL \Label_RAM|Z~421_combout\ : std_logic;
SIGNAL \Label_RAM|Z~422_combout\ : std_logic;
SIGNAL \Label_RAM|Z~576_combout\ : std_logic;
SIGNAL \Label_RAM|Z~261_q\ : std_logic;
SIGNAL \Label_RAM|Z~573_combout\ : std_logic;
SIGNAL \Label_RAM|Z~229_q\ : std_logic;
SIGNAL \Label_RAM|Z~575_combout\ : std_logic;
SIGNAL \Label_RAM|Z~165_q\ : std_logic;
SIGNAL \Label_RAM|Z~574_combout\ : std_logic;
SIGNAL \Label_RAM|Z~197_q\ : std_logic;
SIGNAL \Label_RAM|Z~419_combout\ : std_logic;
SIGNAL \Label_RAM|Z~420_combout\ : std_logic;
SIGNAL \Label_RAM|Z~423_combout\ : std_logic;
SIGNAL \Label_RAM|Z~426_combout\ : std_logic;
SIGNAL \Label_RAM|Z~437_combout\ : std_logic;
SIGNAL \Label_MDRI|output[7]~feeder_combout\ : std_logic;
SIGNAL \Label_IR|output[7]~feeder_combout\ : std_logic;
SIGNAL \Label_ALU|output[7]~1_combout\ : std_logic;
SIGNAL \Label_ALU|Add0~0_combout\ : std_logic;
SIGNAL \Label_ALU|output[7]~2_combout\ : std_logic;
SIGNAL \Label_Accumulator|output[0]~9_cout\ : std_logic;
SIGNAL \Label_Accumulator|output[0]~10_combout\ : std_logic;
SIGNAL \Label_Accumulator|output[0]~12_combout\ : std_logic;
SIGNAL \Label_ALU|Add0~1_combout\ : std_logic;
SIGNAL \Label_Accumulator|output[0]~11\ : std_logic;
SIGNAL \Label_Accumulator|output[1]~13_combout\ : std_logic;
SIGNAL \Label_ALU|Add0~2_combout\ : std_logic;
SIGNAL \Label_Accumulator|output[1]~14\ : std_logic;
SIGNAL \Label_Accumulator|output[2]~15_combout\ : std_logic;
SIGNAL \Label_ALU|Add0~3_combout\ : std_logic;
SIGNAL \Label_Accumulator|output[2]~16\ : std_logic;
SIGNAL \Label_Accumulator|output[3]~17_combout\ : std_logic;
SIGNAL \Label_ALU|Add0~4_combout\ : std_logic;
SIGNAL \Label_Accumulator|output[3]~18\ : std_logic;
SIGNAL \Label_Accumulator|output[4]~19_combout\ : std_logic;
SIGNAL \Label_ALU|Add0~5_combout\ : std_logic;
SIGNAL \Label_Accumulator|output[4]~20\ : std_logic;
SIGNAL \Label_Accumulator|output[5]~21_combout\ : std_logic;
SIGNAL \Label_ALU|Add0~6_combout\ : std_logic;
SIGNAL \Label_Accumulator|output[5]~22\ : std_logic;
SIGNAL \Label_Accumulator|output[6]~23_combout\ : std_logic;
SIGNAL \Label_ALU|Add0~7_combout\ : std_logic;
SIGNAL \Label_Accumulator|output[6]~24\ : std_logic;
SIGNAL \Label_Accumulator|output[7]~25_combout\ : std_logic;
SIGNAL \Label_ProgramCounter|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Label_Accumulator|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Label_MAR|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Label_MDRO|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Label_IR|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Label_MDRI|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Label_ProgramCounter|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Label_RAM|Data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Label_CU|ALT_INV_current_state.staa_write_mem~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
pcOut <= ww_pcOut;
marOut <= ww_marOut;
irOutput <= ww_irOutput;
mdriOutput <= ww_mdriOutput;
mdroOutput <= ww_mdroOutput;
aOut <= ww_aOut;
incrementOut <= ww_incrementOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\Label_CU|ALT_INV_current_state.staa_write_mem~q\ <= NOT \Label_CU|current_state.staa_write_mem~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X46_Y54_N30
\pcOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_ProgramCounter|output\(0),
	devoe => ww_devoe,
	o => \pcOut[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N23
\pcOut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_ProgramCounter|output\(1),
	devoe => ww_devoe,
	o => \pcOut[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\pcOut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_ProgramCounter|output\(2),
	devoe => ww_devoe,
	o => \pcOut[2]~output_o\);

-- Location: IOOBUF_X0_Y36_N16
\pcOut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_ProgramCounter|output\(3),
	devoe => ww_devoe,
	o => \pcOut[3]~output_o\);

-- Location: IOOBUF_X0_Y36_N9
\pcOut[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_ProgramCounter|output\(4),
	devoe => ww_devoe,
	o => \pcOut[4]~output_o\);

-- Location: IOOBUF_X0_Y36_N23
\pcOut[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_ProgramCounter|output\(5),
	devoe => ww_devoe,
	o => \pcOut[5]~output_o\);

-- Location: IOOBUF_X29_Y39_N9
\pcOut[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_ProgramCounter|output\(6),
	devoe => ww_devoe,
	o => \pcOut[6]~output_o\);

-- Location: IOOBUF_X29_Y39_N16
\pcOut[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_ProgramCounter|output\(7),
	devoe => ww_devoe,
	o => \pcOut[7]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\marOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_MAR|output\(0),
	devoe => ww_devoe,
	o => \marOut[0]~output_o\);

-- Location: IOOBUF_X29_Y39_N2
\marOut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_MAR|output\(1),
	devoe => ww_devoe,
	o => \marOut[1]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\marOut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_MAR|output\(2),
	devoe => ww_devoe,
	o => \marOut[2]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\marOut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_MAR|output\(3),
	devoe => ww_devoe,
	o => \marOut[3]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\marOut[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_MAR|output\(4),
	devoe => ww_devoe,
	o => \marOut[4]~output_o\);

-- Location: IOOBUF_X78_Y23_N9
\marOut[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \marOut[5]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\marOut[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \marOut[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\marOut[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \marOut[7]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\irOutput[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_IR|output\(0),
	devoe => ww_devoe,
	o => \irOutput[0]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\irOutput[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_IR|output\(1),
	devoe => ww_devoe,
	o => \irOutput[1]~output_o\);

-- Location: IOOBUF_X31_Y39_N30
\irOutput[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_IR|output\(2),
	devoe => ww_devoe,
	o => \irOutput[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\irOutput[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_IR|output\(3),
	devoe => ww_devoe,
	o => \irOutput[3]~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\irOutput[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_IR|output\(4),
	devoe => ww_devoe,
	o => \irOutput[4]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\irOutput[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_IR|output\(5),
	devoe => ww_devoe,
	o => \irOutput[5]~output_o\);

-- Location: IOOBUF_X22_Y39_N16
\irOutput[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_IR|output\(6),
	devoe => ww_devoe,
	o => \irOutput[6]~output_o\);

-- Location: IOOBUF_X22_Y39_N30
\irOutput[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_IR|output\(7),
	devoe => ww_devoe,
	o => \irOutput[7]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\mdriOutput[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_MDRI|output\(0),
	devoe => ww_devoe,
	o => \mdriOutput[0]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\mdriOutput[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_MDRI|output\(1),
	devoe => ww_devoe,
	o => \mdriOutput[1]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\mdriOutput[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_MDRI|output\(2),
	devoe => ww_devoe,
	o => \mdriOutput[2]~output_o\);

-- Location: IOOBUF_X20_Y39_N9
\mdriOutput[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_MDRI|output\(3),
	devoe => ww_devoe,
	o => \mdriOutput[3]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\mdriOutput[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_MDRI|output\(4),
	devoe => ww_devoe,
	o => \mdriOutput[4]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\mdriOutput[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_MDRI|output\(5),
	devoe => ww_devoe,
	o => \mdriOutput[5]~output_o\);

-- Location: IOOBUF_X26_Y39_N9
\mdriOutput[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_MDRI|output\(6),
	devoe => ww_devoe,
	o => \mdriOutput[6]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\mdriOutput[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_MDRI|output\(7),
	devoe => ww_devoe,
	o => \mdriOutput[7]~output_o\);

-- Location: IOOBUF_X31_Y39_N23
\mdroOutput[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_MDRO|output\(0),
	devoe => ww_devoe,
	o => \mdroOutput[0]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\mdroOutput[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_MDRO|output\(1),
	devoe => ww_devoe,
	o => \mdroOutput[1]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\mdroOutput[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_MDRO|output\(2),
	devoe => ww_devoe,
	o => \mdroOutput[2]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\mdroOutput[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_MDRO|output\(3),
	devoe => ww_devoe,
	o => \mdroOutput[3]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\mdroOutput[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_MDRO|output\(4),
	devoe => ww_devoe,
	o => \mdroOutput[4]~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\mdroOutput[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_MDRO|output\(5),
	devoe => ww_devoe,
	o => \mdroOutput[5]~output_o\);

-- Location: IOOBUF_X31_Y39_N2
\mdroOutput[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_MDRO|output\(6),
	devoe => ww_devoe,
	o => \mdroOutput[6]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\mdroOutput[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_MDRO|output\(7),
	devoe => ww_devoe,
	o => \mdroOutput[7]~output_o\);

-- Location: IOOBUF_X20_Y39_N16
\aOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_Accumulator|output\(0),
	devoe => ww_devoe,
	o => \aOut[0]~output_o\);

-- Location: IOOBUF_X26_Y39_N16
\aOut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_Accumulator|output\(1),
	devoe => ww_devoe,
	o => \aOut[1]~output_o\);

-- Location: IOOBUF_X26_Y39_N30
\aOut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_Accumulator|output\(2),
	devoe => ww_devoe,
	o => \aOut[2]~output_o\);

-- Location: IOOBUF_X24_Y39_N30
\aOut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_Accumulator|output\(3),
	devoe => ww_devoe,
	o => \aOut[3]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\aOut[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_Accumulator|output\(4),
	devoe => ww_devoe,
	o => \aOut[4]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\aOut[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_Accumulator|output\(5),
	devoe => ww_devoe,
	o => \aOut[5]~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\aOut[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_Accumulator|output\(6),
	devoe => ww_devoe,
	o => \aOut[6]~output_o\);

-- Location: IOOBUF_X22_Y39_N23
\aOut[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_Accumulator|output\(7),
	devoe => ww_devoe,
	o => \aOut[7]~output_o\);

-- Location: IOOBUF_X0_Y35_N23
\incrementOut~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Label_CU|current_state.increment_pc~q\,
	devoe => ww_devoe,
	o => \incrementOut~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X38_Y36_N28
\Label_ProgramCounter|output[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_ProgramCounter|output[0]~0_combout\ = !\Label_ProgramCounter|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_ProgramCounter|output\(0),
	combout => \Label_ProgramCounter|output[0]~0_combout\);

-- Location: LCCOMB_X38_Y36_N8
\Label_ProgramCounter|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_ProgramCounter|Add0~0_combout\ = (\Label_ProgramCounter|output\(1) & (\Label_ProgramCounter|output\(0) $ (VCC))) # (!\Label_ProgramCounter|output\(1) & (\Label_ProgramCounter|output\(0) & VCC))
-- \Label_ProgramCounter|Add0~1\ = CARRY((\Label_ProgramCounter|output\(1) & \Label_ProgramCounter|output\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_ProgramCounter|output\(1),
	datab => \Label_ProgramCounter|output\(0),
	datad => VCC,
	combout => \Label_ProgramCounter|Add0~0_combout\,
	cout => \Label_ProgramCounter|Add0~1\);

-- Location: FF_X38_Y36_N9
\Label_ProgramCounter|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_ProgramCounter|Add0~0_combout\,
	ena => \Label_CU|current_state.increment_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_ProgramCounter|output\(1));

-- Location: LCCOMB_X38_Y36_N10
\Label_ProgramCounter|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_ProgramCounter|Add0~2_combout\ = (\Label_ProgramCounter|output\(2) & (!\Label_ProgramCounter|Add0~1\)) # (!\Label_ProgramCounter|output\(2) & ((\Label_ProgramCounter|Add0~1\) # (GND)))
-- \Label_ProgramCounter|Add0~3\ = CARRY((!\Label_ProgramCounter|Add0~1\) # (!\Label_ProgramCounter|output\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Label_ProgramCounter|output\(2),
	datad => VCC,
	cin => \Label_ProgramCounter|Add0~1\,
	combout => \Label_ProgramCounter|Add0~2_combout\,
	cout => \Label_ProgramCounter|Add0~3\);

-- Location: FF_X38_Y36_N11
\Label_ProgramCounter|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_ProgramCounter|Add0~2_combout\,
	ena => \Label_CU|current_state.increment_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_ProgramCounter|output\(2));

-- Location: LCCOMB_X38_Y36_N12
\Label_ProgramCounter|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_ProgramCounter|Add0~4_combout\ = (\Label_ProgramCounter|output\(3) & (\Label_ProgramCounter|Add0~3\ $ (GND))) # (!\Label_ProgramCounter|output\(3) & (!\Label_ProgramCounter|Add0~3\ & VCC))
-- \Label_ProgramCounter|Add0~5\ = CARRY((\Label_ProgramCounter|output\(3) & !\Label_ProgramCounter|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Label_ProgramCounter|output\(3),
	datad => VCC,
	cin => \Label_ProgramCounter|Add0~3\,
	combout => \Label_ProgramCounter|Add0~4_combout\,
	cout => \Label_ProgramCounter|Add0~5\);

-- Location: FF_X38_Y36_N13
\Label_ProgramCounter|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_ProgramCounter|Add0~4_combout\,
	ena => \Label_CU|current_state.increment_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_ProgramCounter|output\(3));

-- Location: LCCOMB_X38_Y36_N14
\Label_ProgramCounter|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_ProgramCounter|Add0~6_combout\ = (\Label_ProgramCounter|output\(4) & (!\Label_ProgramCounter|Add0~5\)) # (!\Label_ProgramCounter|output\(4) & ((\Label_ProgramCounter|Add0~5\) # (GND)))
-- \Label_ProgramCounter|Add0~7\ = CARRY((!\Label_ProgramCounter|Add0~5\) # (!\Label_ProgramCounter|output\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Label_ProgramCounter|output\(4),
	datad => VCC,
	cin => \Label_ProgramCounter|Add0~5\,
	combout => \Label_ProgramCounter|Add0~6_combout\,
	cout => \Label_ProgramCounter|Add0~7\);

-- Location: FF_X38_Y36_N15
\Label_ProgramCounter|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_ProgramCounter|Add0~6_combout\,
	ena => \Label_CU|current_state.increment_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_ProgramCounter|output\(4));

-- Location: LCCOMB_X34_Y35_N16
\Label_CU|current_state.load_mar~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_CU|current_state.load_mar~0_combout\ = !\Label_CU|current_state.increment_pc~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_CU|current_state.increment_pc~q\,
	combout => \Label_CU|current_state.load_mar~0_combout\);

-- Location: FF_X34_Y35_N17
\Label_CU|current_state.load_mar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_CU|current_state.load_mar~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_CU|current_state.load_mar~q\);

-- Location: LCCOMB_X34_Y35_N6
\Label_CU|current_state.read_mem~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_CU|current_state.read_mem~0_combout\ = !\Label_CU|current_state.load_mar~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_CU|current_state.load_mar~q\,
	combout => \Label_CU|current_state.read_mem~0_combout\);

-- Location: FF_X34_Y35_N7
\Label_CU|current_state.read_mem\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_CU|current_state.read_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_CU|current_state.read_mem~q\);

-- Location: LCCOMB_X34_Y35_N18
\Label_CU|current_state.load_mdri~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_CU|current_state.load_mdri~feeder_combout\ = \Label_CU|current_state.read_mem~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_CU|current_state.read_mem~q\,
	combout => \Label_CU|current_state.load_mdri~feeder_combout\);

-- Location: FF_X34_Y35_N19
\Label_CU|current_state.load_mdri\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_CU|current_state.load_mdri~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_CU|current_state.load_mdri~q\);

-- Location: LCCOMB_X34_Y35_N0
\Label_CU|current_state.load_ir~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_CU|current_state.load_ir~feeder_combout\ = \Label_CU|current_state.load_mdri~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_CU|current_state.load_mdri~q\,
	combout => \Label_CU|current_state.load_ir~feeder_combout\);

-- Location: FF_X34_Y35_N1
\Label_CU|current_state.load_ir\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_CU|current_state.load_ir~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_CU|current_state.load_ir~q\);

-- Location: LCCOMB_X32_Y35_N22
\Label_CU|current_state.decode~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_CU|current_state.decode~feeder_combout\ = \Label_CU|current_state.load_ir~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_CU|current_state.load_ir~q\,
	combout => \Label_CU|current_state.decode~feeder_combout\);

-- Location: FF_X32_Y35_N23
\Label_CU|current_state.decode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_CU|current_state.decode~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_CU|current_state.decode~q\);

-- Location: LCCOMB_X38_Y36_N30
\Label_MARMUX|output[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_MARMUX|output[0]~0_combout\ = (\Label_CU|current_state.adaa_load_mar~q\ & (((\Label_IR|output\(0))))) # (!\Label_CU|current_state.adaa_load_mar~q\ & ((\Label_ALU|output[7]~0_combout\ & (\Label_ProgramCounter|output\(0))) # 
-- (!\Label_ALU|output[7]~0_combout\ & ((\Label_IR|output\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_CU|current_state.adaa_load_mar~q\,
	datab => \Label_ProgramCounter|output\(0),
	datac => \Label_ALU|output[7]~0_combout\,
	datad => \Label_IR|output\(0),
	combout => \Label_MARMUX|output[0]~0_combout\);

-- Location: LCCOMB_X38_Y36_N26
\Label_MARMUX|output[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_MARMUX|output[2]~2_combout\ = (\Label_CU|current_state.adaa_load_mar~q\ & (\Label_IR|output\(2))) # (!\Label_CU|current_state.adaa_load_mar~q\ & ((\Label_ALU|output[7]~0_combout\ & ((\Label_ProgramCounter|output\(2)))) # 
-- (!\Label_ALU|output[7]~0_combout\ & (\Label_IR|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_CU|current_state.adaa_load_mar~q\,
	datab => \Label_IR|output\(2),
	datac => \Label_ALU|output[7]~0_combout\,
	datad => \Label_ProgramCounter|output\(2),
	combout => \Label_MARMUX|output[2]~2_combout\);

-- Location: FF_X38_Y36_N27
\Label_MAR|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_MARMUX|output[2]~2_combout\,
	ena => \Label_CU|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_MAR|output\(2));

-- Location: LCCOMB_X36_Y34_N6
\Label_MDRO|output[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_MDRO|output[1]~feeder_combout\ = \Label_MDRI|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRI|output\(1),
	combout => \Label_MDRO|output[1]~feeder_combout\);

-- Location: FF_X36_Y34_N7
\Label_MDRO|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_MDRO|output[1]~feeder_combout\,
	ena => \Label_CU|current_state.staa_load_mdro~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_MDRO|output\(1));

-- Location: LCCOMB_X34_Y35_N24
\Label_CU|current_state.staa_write_mem~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_CU|current_state.staa_write_mem~feeder_combout\ = \Label_CU|current_state.staa_load_mdro~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_CU|current_state.staa_load_mdro~q\,
	combout => \Label_CU|current_state.staa_write_mem~feeder_combout\);

-- Location: FF_X34_Y35_N25
\Label_CU|current_state.staa_write_mem\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_CU|current_state.staa_write_mem~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_CU|current_state.staa_write_mem~q\);

-- Location: LCCOMB_X40_Y35_N10
\Label_RAM|Z~464\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~464_combout\ = (\Label_MAR|output\(0) & (\Label_MAR|output\(2) & (!\Label_MAR|output\(3) & \Label_MAR|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(0),
	datab => \Label_MAR|output\(2),
	datac => \Label_MAR|output\(3),
	datad => \Label_MAR|output\(1),
	combout => \Label_RAM|Z~464_combout\);

-- Location: LCCOMB_X40_Y35_N8
\Label_RAM|Z~477\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~477_combout\ = (\Label_CU|current_state.staa_write_mem~q\ & (!\Label_MAR|output\(4) & \Label_RAM|Z~464_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_CU|current_state.staa_write_mem~q\,
	datac => \Label_MAR|output\(4),
	datad => \Label_RAM|Z~464_combout\,
	combout => \Label_RAM|Z~477_combout\);

-- Location: FF_X40_Y33_N23
\Label_RAM|Z~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(1),
	sload => VCC,
	ena => \Label_RAM|Z~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~71_q\);

-- Location: LCCOMB_X38_Y33_N16
\Label_RAM|Z~438\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~438_combout\ = (\Label_MAR|output\(1) & (\Label_MAR|output\(2) & (!\Label_MAR|output\(3) & !\Label_MAR|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(1),
	datab => \Label_MAR|output\(2),
	datac => \Label_MAR|output\(3),
	datad => \Label_MAR|output\(0),
	combout => \Label_RAM|Z~438_combout\);

-- Location: LCCOMB_X40_Y33_N22
\Label_RAM|Z~475\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~475_combout\ = (\Label_RAM|Z~438_combout\ & (\Label_CU|current_state.staa_write_mem~q\ & !\Label_MAR|output\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~438_combout\,
	datab => \Label_CU|current_state.staa_write_mem~q\,
	datad => \Label_MAR|output\(4),
	combout => \Label_RAM|Z~475_combout\);

-- Location: FF_X40_Y33_N13
\Label_RAM|Z~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(1),
	sload => VCC,
	ena => \Label_RAM|Z~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~63_q\);

-- Location: LCCOMB_X39_Y33_N24
\Label_RAM|Z~506\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~506_combout\ = !\Label_MDRO|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(1),
	combout => \Label_RAM|Z~506_combout\);

-- Location: LCCOMB_X39_Y36_N18
\Label_RAM|Z~448\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~448_combout\ = (!\Label_MAR|output\(3) & (!\Label_MAR|output\(1) & (\Label_MAR|output\(2) & \Label_MAR|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(3),
	datab => \Label_MAR|output\(1),
	datac => \Label_MAR|output\(2),
	datad => \Label_MAR|output\(0),
	combout => \Label_RAM|Z~448_combout\);

-- Location: LCCOMB_X38_Y33_N6
\Label_RAM|Z~474\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~474_combout\ = (\Label_CU|current_state.staa_write_mem~q\ & (!\Label_MAR|output\(4) & \Label_RAM|Z~448_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_CU|current_state.staa_write_mem~q\,
	datab => \Label_MAR|output\(4),
	datad => \Label_RAM|Z~448_combout\,
	combout => \Label_RAM|Z~474_combout\);

-- Location: FF_X39_Y33_N25
\Label_RAM|Z~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~506_combout\,
	ena => \Label_RAM|Z~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~55_q\);

-- Location: LCCOMB_X40_Y35_N6
\Label_RAM|Z~454\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~454_combout\ = (!\Label_MAR|output\(0) & (\Label_MAR|output\(2) & (!\Label_MAR|output\(3) & !\Label_MAR|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(0),
	datab => \Label_MAR|output\(2),
	datac => \Label_MAR|output\(3),
	datad => \Label_MAR|output\(1),
	combout => \Label_RAM|Z~454_combout\);

-- Location: LCCOMB_X39_Y33_N2
\Label_RAM|Z~476\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~476_combout\ = (\Label_CU|current_state.staa_write_mem~q\ & (!\Label_MAR|output\(4) & \Label_RAM|Z~454_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_CU|current_state.staa_write_mem~q\,
	datab => \Label_MAR|output\(4),
	datad => \Label_RAM|Z~454_combout\,
	combout => \Label_RAM|Z~476_combout\);

-- Location: FF_X39_Y33_N31
\Label_RAM|Z~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(1),
	sload => VCC,
	ena => \Label_RAM|Z~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~47_q\);

-- Location: LCCOMB_X39_Y33_N30
\Label_RAM|Z~301\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~301_combout\ = (\Label_MAR|output\(1) & (((\Label_MAR|output\(0))))) # (!\Label_MAR|output\(1) & ((\Label_MAR|output\(0) & (!\Label_RAM|Z~55_q\)) # (!\Label_MAR|output\(0) & ((\Label_RAM|Z~47_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~55_q\,
	datab => \Label_MAR|output\(1),
	datac => \Label_RAM|Z~47_q\,
	datad => \Label_MAR|output\(0),
	combout => \Label_RAM|Z~301_combout\);

-- Location: LCCOMB_X40_Y33_N12
\Label_RAM|Z~302\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~302_combout\ = (\Label_MAR|output\(1) & ((\Label_RAM|Z~301_combout\ & (\Label_RAM|Z~71_q\)) # (!\Label_RAM|Z~301_combout\ & ((\Label_RAM|Z~63_q\))))) # (!\Label_MAR|output\(1) & (((\Label_RAM|Z~301_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~71_q\,
	datab => \Label_MAR|output\(1),
	datac => \Label_RAM|Z~63_q\,
	datad => \Label_RAM|Z~301_combout\,
	combout => \Label_RAM|Z~302_combout\);

-- Location: LCCOMB_X36_Y36_N16
\Label_RAM|Z~508\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~508_combout\ = !\Label_MDRO|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(1),
	combout => \Label_RAM|Z~508_combout\);

-- Location: LCCOMB_X39_Y36_N0
\Label_RAM|Z~462\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~462_combout\ = (\Label_MAR|output\(3) & (\Label_MAR|output\(1) & (!\Label_MAR|output\(2) & \Label_MAR|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(3),
	datab => \Label_MAR|output\(1),
	datac => \Label_MAR|output\(2),
	datad => \Label_MAR|output\(0),
	combout => \Label_RAM|Z~462_combout\);

-- Location: LCCOMB_X36_Y36_N28
\Label_RAM|Z~473\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~473_combout\ = (!\Label_MAR|output\(4) & (\Label_CU|current_state.staa_write_mem~q\ & \Label_RAM|Z~462_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(4),
	datab => \Label_CU|current_state.staa_write_mem~q\,
	datad => \Label_RAM|Z~462_combout\,
	combout => \Label_RAM|Z~473_combout\);

-- Location: FF_X36_Y36_N17
\Label_RAM|Z~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~508_combout\,
	ena => \Label_RAM|Z~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~103_q\);

-- Location: LCCOMB_X37_Y36_N4
\Label_RAM|Z~507\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~507_combout\ = !\Label_MDRO|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(1),
	combout => \Label_RAM|Z~507_combout\);

-- Location: LCCOMB_X38_Y33_N0
\Label_RAM|Z~440\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~440_combout\ = (\Label_MAR|output\(1) & (!\Label_MAR|output\(0) & (\Label_MAR|output\(3) & !\Label_MAR|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(1),
	datab => \Label_MAR|output\(0),
	datac => \Label_MAR|output\(3),
	datad => \Label_MAR|output\(2),
	combout => \Label_RAM|Z~440_combout\);

-- Location: LCCOMB_X37_Y36_N20
\Label_RAM|Z~470\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~470_combout\ = (!\Label_MAR|output\(4) & (\Label_CU|current_state.staa_write_mem~q\ & \Label_RAM|Z~440_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(4),
	datab => \Label_CU|current_state.staa_write_mem~q\,
	datad => \Label_RAM|Z~440_combout\,
	combout => \Label_RAM|Z~470_combout\);

-- Location: FF_X37_Y36_N5
\Label_RAM|Z~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~507_combout\,
	ena => \Label_RAM|Z~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~95_q\);

-- Location: LCCOMB_X39_Y36_N28
\Label_RAM|Z~456\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~456_combout\ = (\Label_MAR|output\(3) & (!\Label_MAR|output\(1) & (!\Label_MAR|output\(2) & !\Label_MAR|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(3),
	datab => \Label_MAR|output\(1),
	datac => \Label_MAR|output\(2),
	datad => \Label_MAR|output\(0),
	combout => \Label_RAM|Z~456_combout\);

-- Location: LCCOMB_X37_Y36_N28
\Label_RAM|Z~472\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~472_combout\ = (!\Label_MAR|output\(4) & (\Label_CU|current_state.staa_write_mem~q\ & \Label_RAM|Z~456_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(4),
	datab => \Label_CU|current_state.staa_write_mem~q\,
	datad => \Label_RAM|Z~456_combout\,
	combout => \Label_RAM|Z~472_combout\);

-- Location: FF_X37_Y36_N27
\Label_RAM|Z~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(1),
	sload => VCC,
	ena => \Label_RAM|Z~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~79_q\);

-- Location: LCCOMB_X37_Y36_N26
\Label_RAM|Z~303\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~303_combout\ = (\Label_MAR|output\(0) & (((\Label_MAR|output\(1))))) # (!\Label_MAR|output\(0) & ((\Label_MAR|output\(1) & (!\Label_RAM|Z~95_q\)) # (!\Label_MAR|output\(1) & ((\Label_RAM|Z~79_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(0),
	datab => \Label_RAM|Z~95_q\,
	datac => \Label_RAM|Z~79_q\,
	datad => \Label_MAR|output\(1),
	combout => \Label_RAM|Z~303_combout\);

-- Location: LCCOMB_X40_Y36_N28
\Label_RAM|Z~87feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~87feeder_combout\ = \Label_MDRO|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(1),
	combout => \Label_RAM|Z~87feeder_combout\);

-- Location: LCCOMB_X41_Y36_N10
\Label_RAM|Z~446\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~446_combout\ = (\Label_MAR|output\(0) & (!\Label_MAR|output\(1) & (!\Label_MAR|output\(2) & \Label_MAR|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(0),
	datab => \Label_MAR|output\(1),
	datac => \Label_MAR|output\(2),
	datad => \Label_MAR|output\(3),
	combout => \Label_RAM|Z~446_combout\);

-- Location: LCCOMB_X41_Y36_N8
\Label_RAM|Z~471\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~471_combout\ = (\Label_CU|current_state.staa_write_mem~q\ & (!\Label_MAR|output\(4) & \Label_RAM|Z~446_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Label_CU|current_state.staa_write_mem~q\,
	datac => \Label_MAR|output\(4),
	datad => \Label_RAM|Z~446_combout\,
	combout => \Label_RAM|Z~471_combout\);

-- Location: FF_X40_Y36_N29
\Label_RAM|Z~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~87feeder_combout\,
	ena => \Label_RAM|Z~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~87_q\);

-- Location: LCCOMB_X39_Y36_N8
\Label_RAM|Z~304\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~304_combout\ = (\Label_MAR|output\(0) & ((\Label_RAM|Z~303_combout\ & (!\Label_RAM|Z~103_q\)) # (!\Label_RAM|Z~303_combout\ & ((\Label_RAM|Z~87_q\))))) # (!\Label_MAR|output\(0) & (((\Label_RAM|Z~303_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~103_q\,
	datab => \Label_MAR|output\(0),
	datac => \Label_RAM|Z~303_combout\,
	datad => \Label_RAM|Z~87_q\,
	combout => \Label_RAM|Z~304_combout\);

-- Location: LCCOMB_X39_Y35_N26
\Label_RAM|Z~511\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~511_combout\ = !\Label_MDRO|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(1),
	combout => \Label_RAM|Z~511_combout\);

-- Location: LCCOMB_X37_Y35_N20
\Label_RAM|Z~466\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~466_combout\ = (!\Label_MAR|output\(2) & (!\Label_MAR|output\(3) & (\Label_MAR|output\(0) & \Label_MAR|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(2),
	datab => \Label_MAR|output\(3),
	datac => \Label_MAR|output\(0),
	datad => \Label_MAR|output\(1),
	combout => \Label_RAM|Z~466_combout\);

-- Location: LCCOMB_X37_Y35_N14
\Label_RAM|Z~481\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~481_combout\ = (\Label_CU|current_state.staa_write_mem~q\ & (!\Label_MAR|output\(4) & \Label_RAM|Z~466_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Label_CU|current_state.staa_write_mem~q\,
	datac => \Label_MAR|output\(4),
	datad => \Label_RAM|Z~466_combout\,
	combout => \Label_RAM|Z~481_combout\);

-- Location: FF_X37_Y35_N1
\Label_RAM|Z~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_RAM|Z~511_combout\,
	sload => VCC,
	ena => \Label_RAM|Z~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~39_q\);

-- Location: LCCOMB_X40_Y36_N30
\Label_RAM|Z~509\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~509_combout\ = !\Label_MDRO|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(1),
	combout => \Label_RAM|Z~509_combout\);

-- Location: LCCOMB_X37_Y33_N18
\Label_RAM|Z~450\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~450_combout\ = (!\Label_MAR|output\(1) & (!\Label_MAR|output\(2) & (!\Label_MAR|output\(3) & \Label_MAR|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(1),
	datab => \Label_MAR|output\(2),
	datac => \Label_MAR|output\(3),
	datad => \Label_MAR|output\(0),
	combout => \Label_RAM|Z~450_combout\);

-- Location: LCCOMB_X37_Y33_N12
\Label_RAM|Z~479\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~479_combout\ = (\Label_CU|current_state.staa_write_mem~q\ & (!\Label_MAR|output\(4) & \Label_RAM|Z~450_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_CU|current_state.staa_write_mem~q\,
	datac => \Label_MAR|output\(4),
	datad => \Label_RAM|Z~450_combout\,
	combout => \Label_RAM|Z~479_combout\);

-- Location: FF_X40_Y36_N31
\Label_RAM|Z~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~509_combout\,
	ena => \Label_RAM|Z~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~23_q\);

-- Location: LCCOMB_X39_Y36_N26
\Label_RAM|Z~458\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~458_combout\ = (!\Label_MAR|output\(3) & (!\Label_MAR|output\(0) & (!\Label_MAR|output\(1) & !\Label_MAR|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(3),
	datab => \Label_MAR|output\(0),
	datac => \Label_MAR|output\(1),
	datad => \Label_MAR|output\(2),
	combout => \Label_RAM|Z~458_combout\);

-- Location: LCCOMB_X38_Y36_N6
\Label_RAM|Z~480\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~480_combout\ = (\Label_CU|current_state.staa_write_mem~q\ & (!\Label_MAR|output\(4) & \Label_RAM|Z~458_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_CU|current_state.staa_write_mem~q\,
	datab => \Label_MAR|output\(4),
	datad => \Label_RAM|Z~458_combout\,
	combout => \Label_RAM|Z~480_combout\);

-- Location: FF_X39_Y36_N11
\Label_RAM|Z~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(1),
	sload => VCC,
	ena => \Label_RAM|Z~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~15_q\);

-- Location: LCCOMB_X42_Y35_N14
\Label_RAM|Z~510\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~510_combout\ = !\Label_MDRO|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(1),
	combout => \Label_RAM|Z~510_combout\);

-- Location: LCCOMB_X39_Y36_N16
\Label_RAM|Z~442\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~442_combout\ = (!\Label_MAR|output\(2) & (\Label_MAR|output\(1) & (!\Label_MAR|output\(3) & !\Label_MAR|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(2),
	datab => \Label_MAR|output\(1),
	datac => \Label_MAR|output\(3),
	datad => \Label_MAR|output\(0),
	combout => \Label_RAM|Z~442_combout\);

-- Location: LCCOMB_X42_Y35_N22
\Label_RAM|Z~478\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~478_combout\ = (\Label_CU|current_state.staa_write_mem~q\ & (\Label_RAM|Z~442_combout\ & !\Label_MAR|output\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_CU|current_state.staa_write_mem~q\,
	datac => \Label_RAM|Z~442_combout\,
	datad => \Label_MAR|output\(4),
	combout => \Label_RAM|Z~478_combout\);

-- Location: FF_X42_Y35_N15
\Label_RAM|Z~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~510_combout\,
	ena => \Label_RAM|Z~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~31_q\);

-- Location: LCCOMB_X39_Y36_N10
\Label_RAM|Z~305\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~305_combout\ = (\Label_MAR|output\(0) & (\Label_MAR|output\(1))) # (!\Label_MAR|output\(0) & ((\Label_MAR|output\(1) & ((!\Label_RAM|Z~31_q\))) # (!\Label_MAR|output\(1) & (\Label_RAM|Z~15_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(0),
	datab => \Label_MAR|output\(1),
	datac => \Label_RAM|Z~15_q\,
	datad => \Label_RAM|Z~31_q\,
	combout => \Label_RAM|Z~305_combout\);

-- Location: LCCOMB_X39_Y36_N12
\Label_RAM|Z~306\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~306_combout\ = (\Label_MAR|output\(0) & ((\Label_RAM|Z~305_combout\ & (!\Label_RAM|Z~39_q\)) # (!\Label_RAM|Z~305_combout\ & ((!\Label_RAM|Z~23_q\))))) # (!\Label_MAR|output\(0) & (((\Label_RAM|Z~305_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~39_q\,
	datab => \Label_MAR|output\(0),
	datac => \Label_RAM|Z~23_q\,
	datad => \Label_RAM|Z~305_combout\,
	combout => \Label_RAM|Z~306_combout\);

-- Location: LCCOMB_X39_Y36_N22
\Label_RAM|Z~307\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~307_combout\ = (\Label_MAR|output\(2) & (\Label_MAR|output\(3))) # (!\Label_MAR|output\(2) & ((\Label_MAR|output\(3) & (\Label_RAM|Z~304_combout\)) # (!\Label_MAR|output\(3) & ((\Label_RAM|Z~306_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(2),
	datab => \Label_MAR|output\(3),
	datac => \Label_RAM|Z~304_combout\,
	datad => \Label_RAM|Z~306_combout\,
	combout => \Label_RAM|Z~307_combout\);

-- Location: LCCOMB_X35_Y35_N24
\Label_RAM|Z~127feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~127feeder_combout\ = \Label_MDRO|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(1),
	combout => \Label_RAM|Z~127feeder_combout\);

-- Location: LCCOMB_X38_Y36_N0
\Label_RAM|Z~444\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~444_combout\ = (\Label_MAR|output\(2) & (\Label_MAR|output\(1) & (\Label_MAR|output\(3) & !\Label_MAR|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(2),
	datab => \Label_MAR|output\(1),
	datac => \Label_MAR|output\(3),
	datad => \Label_MAR|output\(0),
	combout => \Label_RAM|Z~444_combout\);

-- Location: LCCOMB_X35_Y35_N20
\Label_RAM|Z~483\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~483_combout\ = (!\Label_MAR|output\(4) & (\Label_CU|current_state.staa_write_mem~q\ & \Label_RAM|Z~444_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(4),
	datab => \Label_CU|current_state.staa_write_mem~q\,
	datad => \Label_RAM|Z~444_combout\,
	combout => \Label_RAM|Z~483_combout\);

-- Location: FF_X35_Y35_N25
\Label_RAM|Z~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~127feeder_combout\,
	ena => \Label_RAM|Z~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~127_q\);

-- Location: LCCOMB_X38_Y35_N20
\Label_RAM|Z~468\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~468_combout\ = (\Label_MAR|output\(1) & (\Label_MAR|output\(3) & (\Label_MAR|output\(2) & \Label_MAR|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(1),
	datab => \Label_MAR|output\(3),
	datac => \Label_MAR|output\(2),
	datad => \Label_MAR|output\(0),
	combout => \Label_RAM|Z~468_combout\);

-- Location: LCCOMB_X36_Y35_N8
\Label_RAM|Z~485\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~485_combout\ = (\Label_CU|current_state.staa_write_mem~q\ & (!\Label_MAR|output\(4) & \Label_RAM|Z~468_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_CU|current_state.staa_write_mem~q\,
	datab => \Label_MAR|output\(4),
	datad => \Label_RAM|Z~468_combout\,
	combout => \Label_RAM|Z~485_combout\);

-- Location: FF_X36_Y35_N15
\Label_RAM|Z~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(1),
	sload => VCC,
	ena => \Label_RAM|Z~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~135_q\);

-- Location: LCCOMB_X37_Y35_N22
\Label_RAM|Z~452\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~452_combout\ = (\Label_MAR|output\(2) & (\Label_MAR|output\(3) & (\Label_MAR|output\(0) & !\Label_MAR|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(2),
	datab => \Label_MAR|output\(3),
	datac => \Label_MAR|output\(0),
	datad => \Label_MAR|output\(1),
	combout => \Label_RAM|Z~452_combout\);

-- Location: LCCOMB_X36_Y35_N20
\Label_RAM|Z~482\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~482_combout\ = (\Label_CU|current_state.staa_write_mem~q\ & (!\Label_MAR|output\(4) & \Label_RAM|Z~452_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_CU|current_state.staa_write_mem~q\,
	datab => \Label_MAR|output\(4),
	datad => \Label_RAM|Z~452_combout\,
	combout => \Label_RAM|Z~482_combout\);

-- Location: FF_X36_Y35_N21
\Label_RAM|Z~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(1),
	sload => VCC,
	ena => \Label_RAM|Z~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~119_q\);

-- Location: LCCOMB_X39_Y35_N16
\Label_RAM|Z~460\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~460_combout\ = (\Label_MAR|output\(2) & (!\Label_MAR|output\(0) & (!\Label_MAR|output\(1) & \Label_MAR|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(2),
	datab => \Label_MAR|output\(0),
	datac => \Label_MAR|output\(1),
	datad => \Label_MAR|output\(3),
	combout => \Label_RAM|Z~460_combout\);

-- Location: LCCOMB_X39_Y35_N20
\Label_RAM|Z~484\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~484_combout\ = (!\Label_MAR|output\(4) & (\Label_CU|current_state.staa_write_mem~q\ & \Label_RAM|Z~460_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(4),
	datab => \Label_CU|current_state.staa_write_mem~q\,
	datad => \Label_RAM|Z~460_combout\,
	combout => \Label_RAM|Z~484_combout\);

-- Location: FF_X35_Y35_N15
\Label_RAM|Z~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(1),
	sload => VCC,
	ena => \Label_RAM|Z~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~111_q\);

-- Location: LCCOMB_X35_Y35_N14
\Label_RAM|Z~308\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~308_combout\ = (\Label_MAR|output\(0) & ((\Label_RAM|Z~119_q\) # ((\Label_MAR|output\(1))))) # (!\Label_MAR|output\(0) & (((\Label_RAM|Z~111_q\ & !\Label_MAR|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~119_q\,
	datab => \Label_MAR|output\(0),
	datac => \Label_RAM|Z~111_q\,
	datad => \Label_MAR|output\(1),
	combout => \Label_RAM|Z~308_combout\);

-- Location: LCCOMB_X36_Y35_N14
\Label_RAM|Z~309\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~309_combout\ = (\Label_MAR|output\(1) & ((\Label_RAM|Z~308_combout\ & ((\Label_RAM|Z~135_q\))) # (!\Label_RAM|Z~308_combout\ & (\Label_RAM|Z~127_q\)))) # (!\Label_MAR|output\(1) & (((\Label_RAM|Z~308_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~127_q\,
	datab => \Label_MAR|output\(1),
	datac => \Label_RAM|Z~135_q\,
	datad => \Label_RAM|Z~308_combout\,
	combout => \Label_RAM|Z~309_combout\);

-- Location: LCCOMB_X39_Y36_N4
\Label_RAM|Z~310\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~310_combout\ = (\Label_MAR|output\(2) & ((\Label_RAM|Z~307_combout\ & ((\Label_RAM|Z~309_combout\))) # (!\Label_RAM|Z~307_combout\ & (\Label_RAM|Z~302_combout\)))) # (!\Label_MAR|output\(2) & (((\Label_RAM|Z~307_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(2),
	datab => \Label_RAM|Z~302_combout\,
	datac => \Label_RAM|Z~307_combout\,
	datad => \Label_RAM|Z~309_combout\,
	combout => \Label_RAM|Z~310_combout\);

-- Location: LCCOMB_X39_Y35_N10
\Label_RAM|Z~469\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~469_combout\ = (\Label_MAR|output\(4) & (\Label_CU|current_state.staa_write_mem~q\ & \Label_RAM|Z~468_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(4),
	datab => \Label_CU|current_state.staa_write_mem~q\,
	datad => \Label_RAM|Z~468_combout\,
	combout => \Label_RAM|Z~469_combout\);

-- Location: FF_X39_Y35_N21
\Label_RAM|Z~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(1),
	sload => VCC,
	ena => \Label_RAM|Z~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~263_q\);

-- Location: LCCOMB_X39_Y38_N0
\Label_RAM|Z~199feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~199feeder_combout\ = \Label_MDRO|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(1),
	combout => \Label_RAM|Z~199feeder_combout\);

-- Location: LCCOMB_X39_Y38_N4
\Label_RAM|Z~465\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~465_combout\ = (\Label_CU|current_state.staa_write_mem~q\ & (\Label_RAM|Z~464_combout\ & \Label_MAR|output\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Label_CU|current_state.staa_write_mem~q\,
	datac => \Label_RAM|Z~464_combout\,
	datad => \Label_MAR|output\(4),
	combout => \Label_RAM|Z~465_combout\);

-- Location: FF_X39_Y38_N1
\Label_RAM|Z~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~199feeder_combout\,
	ena => \Label_RAM|Z~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~199_q\);

-- Location: LCCOMB_X40_Y38_N12
\Label_RAM|Z~505\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~505_combout\ = !\Label_MDRO|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(1),
	combout => \Label_RAM|Z~505_combout\);

-- Location: LCCOMB_X37_Y35_N0
\Label_RAM|Z~467\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~467_combout\ = (\Label_MAR|output\(4) & (\Label_CU|current_state.staa_write_mem~q\ & \Label_RAM|Z~466_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(4),
	datab => \Label_CU|current_state.staa_write_mem~q\,
	datad => \Label_RAM|Z~466_combout\,
	combout => \Label_RAM|Z~467_combout\);

-- Location: FF_X40_Y38_N13
\Label_RAM|Z~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~505_combout\,
	ena => \Label_RAM|Z~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~167_q\);

-- Location: LCCOMB_X39_Y38_N30
\Label_RAM|Z~504\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~504_combout\ = !\Label_MDRO|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(1),
	combout => \Label_RAM|Z~504_combout\);

-- Location: LCCOMB_X40_Y37_N0
\Label_RAM|Z~231feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~231feeder_combout\ = \Label_RAM|Z~504_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_RAM|Z~504_combout\,
	combout => \Label_RAM|Z~231feeder_combout\);

-- Location: LCCOMB_X39_Y37_N0
\Label_RAM|Z~463\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~463_combout\ = (\Label_MAR|output\(4) & (\Label_CU|current_state.staa_write_mem~q\ & \Label_RAM|Z~462_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(4),
	datac => \Label_CU|current_state.staa_write_mem~q\,
	datad => \Label_RAM|Z~462_combout\,
	combout => \Label_RAM|Z~463_combout\);

-- Location: FF_X40_Y37_N1
\Label_RAM|Z~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~231feeder_combout\,
	ena => \Label_RAM|Z~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~231_q\);

-- Location: LCCOMB_X40_Y38_N18
\Label_RAM|Z~298\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~298_combout\ = (\Label_MAR|output\(2) & (((\Label_MAR|output\(3))))) # (!\Label_MAR|output\(2) & ((\Label_MAR|output\(3) & ((!\Label_RAM|Z~231_q\))) # (!\Label_MAR|output\(3) & (!\Label_RAM|Z~167_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~167_q\,
	datab => \Label_RAM|Z~231_q\,
	datac => \Label_MAR|output\(2),
	datad => \Label_MAR|output\(3),
	combout => \Label_RAM|Z~298_combout\);

-- Location: LCCOMB_X40_Y38_N8
\Label_RAM|Z~299\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~299_combout\ = (\Label_MAR|output\(2) & ((\Label_RAM|Z~298_combout\ & (\Label_RAM|Z~263_q\)) # (!\Label_RAM|Z~298_combout\ & ((\Label_RAM|Z~199_q\))))) # (!\Label_MAR|output\(2) & (((\Label_RAM|Z~298_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~263_q\,
	datab => \Label_RAM|Z~199_q\,
	datac => \Label_MAR|output\(2),
	datad => \Label_RAM|Z~298_combout\,
	combout => \Label_RAM|Z~299_combout\);

-- Location: LCCOMB_X38_Y37_N18
\Label_RAM|Z~453\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~453_combout\ = (\Label_MAR|output\(4) & (\Label_CU|current_state.staa_write_mem~q\ & \Label_RAM|Z~452_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(4),
	datab => \Label_CU|current_state.staa_write_mem~q\,
	datad => \Label_RAM|Z~452_combout\,
	combout => \Label_RAM|Z~453_combout\);

-- Location: FF_X38_Y37_N27
\Label_RAM|Z~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(1),
	sload => VCC,
	ena => \Label_RAM|Z~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~247_q\);

-- Location: LCCOMB_X38_Y37_N26
\Label_RAM|Z~449\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~449_combout\ = (\Label_MAR|output\(4) & (\Label_CU|current_state.staa_write_mem~q\ & \Label_RAM|Z~448_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(4),
	datab => \Label_CU|current_state.staa_write_mem~q\,
	datad => \Label_RAM|Z~448_combout\,
	combout => \Label_RAM|Z~449_combout\);

-- Location: FF_X38_Y37_N21
\Label_RAM|Z~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(1),
	sload => VCC,
	ena => \Label_RAM|Z~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~183_q\);

-- Location: LCCOMB_X37_Y37_N2
\Label_RAM|Z~215feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~215feeder_combout\ = \Label_MDRO|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(1),
	combout => \Label_RAM|Z~215feeder_combout\);

-- Location: LCCOMB_X41_Y37_N0
\Label_RAM|Z~447\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~447_combout\ = (\Label_MAR|output\(4) & (\Label_CU|current_state.staa_write_mem~q\ & \Label_RAM|Z~446_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Label_MAR|output\(4),
	datac => \Label_CU|current_state.staa_write_mem~q\,
	datad => \Label_RAM|Z~446_combout\,
	combout => \Label_RAM|Z~447_combout\);

-- Location: FF_X37_Y37_N3
\Label_RAM|Z~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~215feeder_combout\,
	ena => \Label_RAM|Z~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~215_q\);

-- Location: LCCOMB_X38_Y37_N2
\Label_RAM|Z~451\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~451_combout\ = (\Label_MAR|output\(4) & (\Label_CU|current_state.staa_write_mem~q\ & \Label_RAM|Z~450_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(4),
	datab => \Label_CU|current_state.staa_write_mem~q\,
	datad => \Label_RAM|Z~450_combout\,
	combout => \Label_RAM|Z~451_combout\);

-- Location: FF_X37_Y37_N13
\Label_RAM|Z~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(1),
	sload => VCC,
	ena => \Label_RAM|Z~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~151_q\);

-- Location: LCCOMB_X37_Y37_N12
\Label_RAM|Z~291\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~291_combout\ = (\Label_MAR|output\(2) & (((\Label_MAR|output\(3))))) # (!\Label_MAR|output\(2) & ((\Label_MAR|output\(3) & (\Label_RAM|Z~215_q\)) # (!\Label_MAR|output\(3) & ((\Label_RAM|Z~151_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(2),
	datab => \Label_RAM|Z~215_q\,
	datac => \Label_RAM|Z~151_q\,
	datad => \Label_MAR|output\(3),
	combout => \Label_RAM|Z~291_combout\);

-- Location: LCCOMB_X38_Y37_N20
\Label_RAM|Z~292\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~292_combout\ = (\Label_MAR|output\(2) & ((\Label_RAM|Z~291_combout\ & (\Label_RAM|Z~247_q\)) # (!\Label_RAM|Z~291_combout\ & ((\Label_RAM|Z~183_q\))))) # (!\Label_MAR|output\(2) & (((\Label_RAM|Z~291_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(2),
	datab => \Label_RAM|Z~247_q\,
	datac => \Label_RAM|Z~183_q\,
	datad => \Label_RAM|Z~291_combout\,
	combout => \Label_RAM|Z~292_combout\);

-- Location: LCCOMB_X36_Y34_N24
\Label_RAM|Z~500\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~500_combout\ = !\Label_MDRO|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(1),
	combout => \Label_RAM|Z~500_combout\);

-- Location: LCCOMB_X36_Y34_N14
\Label_RAM|Z~441\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~441_combout\ = (\Label_CU|current_state.staa_write_mem~q\ & (\Label_RAM|Z~440_combout\ & \Label_MAR|output\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_CU|current_state.staa_write_mem~q\,
	datac => \Label_RAM|Z~440_combout\,
	datad => \Label_MAR|output\(4),
	combout => \Label_RAM|Z~441_combout\);

-- Location: FF_X36_Y34_N25
\Label_RAM|Z~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~500_combout\,
	ena => \Label_RAM|Z~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~223_q\);

-- Location: LCCOMB_X38_Y34_N10
\Label_RAM|Z~445\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~445_combout\ = (\Label_CU|current_state.staa_write_mem~q\ & (\Label_MAR|output\(4) & \Label_RAM|Z~444_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_CU|current_state.staa_write_mem~q\,
	datab => \Label_MAR|output\(4),
	datad => \Label_RAM|Z~444_combout\,
	combout => \Label_RAM|Z~445_combout\);

-- Location: FF_X38_Y34_N7
\Label_RAM|Z~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(1),
	sload => VCC,
	ena => \Label_RAM|Z~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~255_q\);

-- Location: LCCOMB_X37_Y34_N6
\Label_RAM|Z~501\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~501_combout\ = !\Label_MDRO|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(1),
	combout => \Label_RAM|Z~501_combout\);

-- Location: LCCOMB_X38_Y36_N2
\Label_RAM|Z~443\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~443_combout\ = (\Label_CU|current_state.staa_write_mem~q\ & (\Label_MAR|output\(4) & \Label_RAM|Z~442_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_CU|current_state.staa_write_mem~q\,
	datab => \Label_MAR|output\(4),
	datad => \Label_RAM|Z~442_combout\,
	combout => \Label_RAM|Z~443_combout\);

-- Location: FF_X37_Y34_N7
\Label_RAM|Z~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~501_combout\,
	ena => \Label_RAM|Z~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~159_q\);

-- Location: LCCOMB_X38_Y33_N26
\Label_RAM|Z~439\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~439_combout\ = (\Label_CU|current_state.staa_write_mem~q\ & (\Label_MAR|output\(4) & \Label_RAM|Z~438_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_CU|current_state.staa_write_mem~q\,
	datab => \Label_MAR|output\(4),
	datad => \Label_RAM|Z~438_combout\,
	combout => \Label_RAM|Z~439_combout\);

-- Location: FF_X38_Y34_N13
\Label_RAM|Z~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(1),
	sload => VCC,
	ena => \Label_RAM|Z~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~191_q\);

-- Location: LCCOMB_X38_Y34_N12
\Label_RAM|Z~293\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~293_combout\ = (\Label_MAR|output\(2) & (((\Label_RAM|Z~191_q\) # (\Label_MAR|output\(3))))) # (!\Label_MAR|output\(2) & (!\Label_RAM|Z~159_q\ & ((!\Label_MAR|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(2),
	datab => \Label_RAM|Z~159_q\,
	datac => \Label_RAM|Z~191_q\,
	datad => \Label_MAR|output\(3),
	combout => \Label_RAM|Z~293_combout\);

-- Location: LCCOMB_X38_Y34_N6
\Label_RAM|Z~294\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~294_combout\ = (\Label_MAR|output\(3) & ((\Label_RAM|Z~293_combout\ & ((\Label_RAM|Z~255_q\))) # (!\Label_RAM|Z~293_combout\ & (!\Label_RAM|Z~223_q\)))) # (!\Label_MAR|output\(3) & (((\Label_RAM|Z~293_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~223_q\,
	datab => \Label_MAR|output\(3),
	datac => \Label_RAM|Z~255_q\,
	datad => \Label_RAM|Z~293_combout\,
	combout => \Label_RAM|Z~294_combout\);

-- Location: LCCOMB_X40_Y34_N30
\Label_RAM|Z~502\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~502_combout\ = !\Label_MDRO|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(1),
	combout => \Label_RAM|Z~502_combout\);

-- Location: LCCOMB_X40_Y34_N22
\Label_RAM|Z~457\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~457_combout\ = (\Label_CU|current_state.staa_write_mem~q\ & (\Label_MAR|output\(4) & \Label_RAM|Z~456_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_CU|current_state.staa_write_mem~q\,
	datac => \Label_MAR|output\(4),
	datad => \Label_RAM|Z~456_combout\,
	combout => \Label_RAM|Z~457_combout\);

-- Location: FF_X40_Y34_N31
\Label_RAM|Z~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~502_combout\,
	ena => \Label_RAM|Z~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~207_q\);

-- Location: LCCOMB_X39_Y35_N6
\Label_RAM|Z~461\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~461_combout\ = (\Label_CU|current_state.staa_write_mem~q\ & (\Label_MAR|output\(4) & \Label_RAM|Z~460_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Label_CU|current_state.staa_write_mem~q\,
	datac => \Label_MAR|output\(4),
	datad => \Label_RAM|Z~460_combout\,
	combout => \Label_RAM|Z~461_combout\);

-- Location: FF_X39_Y34_N7
\Label_RAM|Z~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(1),
	sload => VCC,
	ena => \Label_RAM|Z~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~239_q\);

-- Location: LCCOMB_X39_Y34_N20
\Label_RAM|Z~503\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~503_combout\ = !\Label_MDRO|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(1),
	combout => \Label_RAM|Z~503_combout\);

-- Location: LCCOMB_X39_Y34_N14
\Label_RAM|Z~459\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~459_combout\ = (\Label_CU|current_state.staa_write_mem~q\ & (\Label_MAR|output\(4) & \Label_RAM|Z~458_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Label_CU|current_state.staa_write_mem~q\,
	datac => \Label_MAR|output\(4),
	datad => \Label_RAM|Z~458_combout\,
	combout => \Label_RAM|Z~459_combout\);

-- Location: FF_X39_Y34_N21
\Label_RAM|Z~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~503_combout\,
	ena => \Label_RAM|Z~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~143_q\);

-- Location: LCCOMB_X40_Y35_N16
\Label_RAM|Z~455\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~455_combout\ = (\Label_CU|current_state.staa_write_mem~q\ & (\Label_MAR|output\(4) & \Label_RAM|Z~454_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_CU|current_state.staa_write_mem~q\,
	datac => \Label_MAR|output\(4),
	datad => \Label_RAM|Z~454_combout\,
	combout => \Label_RAM|Z~455_combout\);

-- Location: FF_X37_Y34_N1
\Label_RAM|Z~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(1),
	sload => VCC,
	ena => \Label_RAM|Z~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~175_q\);

-- Location: LCCOMB_X37_Y34_N0
\Label_RAM|Z~295\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~295_combout\ = (\Label_MAR|output\(3) & (((\Label_MAR|output\(2))))) # (!\Label_MAR|output\(3) & ((\Label_MAR|output\(2) & ((\Label_RAM|Z~175_q\))) # (!\Label_MAR|output\(2) & (!\Label_RAM|Z~143_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~143_q\,
	datab => \Label_MAR|output\(3),
	datac => \Label_RAM|Z~175_q\,
	datad => \Label_MAR|output\(2),
	combout => \Label_RAM|Z~295_combout\);

-- Location: LCCOMB_X39_Y34_N6
\Label_RAM|Z~296\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~296_combout\ = (\Label_MAR|output\(3) & ((\Label_RAM|Z~295_combout\ & ((\Label_RAM|Z~239_q\))) # (!\Label_RAM|Z~295_combout\ & (!\Label_RAM|Z~207_q\)))) # (!\Label_MAR|output\(3) & (((\Label_RAM|Z~295_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(3),
	datab => \Label_RAM|Z~207_q\,
	datac => \Label_RAM|Z~239_q\,
	datad => \Label_RAM|Z~295_combout\,
	combout => \Label_RAM|Z~296_combout\);

-- Location: LCCOMB_X39_Y36_N24
\Label_RAM|Z~297\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~297_combout\ = (\Label_MAR|output\(0) & (\Label_MAR|output\(1))) # (!\Label_MAR|output\(0) & ((\Label_MAR|output\(1) & (\Label_RAM|Z~294_combout\)) # (!\Label_MAR|output\(1) & ((\Label_RAM|Z~296_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(0),
	datab => \Label_MAR|output\(1),
	datac => \Label_RAM|Z~294_combout\,
	datad => \Label_RAM|Z~296_combout\,
	combout => \Label_RAM|Z~297_combout\);

-- Location: LCCOMB_X39_Y36_N6
\Label_RAM|Z~300\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~300_combout\ = (\Label_MAR|output\(0) & ((\Label_RAM|Z~297_combout\ & (\Label_RAM|Z~299_combout\)) # (!\Label_RAM|Z~297_combout\ & ((\Label_RAM|Z~292_combout\))))) # (!\Label_MAR|output\(0) & (((\Label_RAM|Z~297_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(0),
	datab => \Label_RAM|Z~299_combout\,
	datac => \Label_RAM|Z~292_combout\,
	datad => \Label_RAM|Z~297_combout\,
	combout => \Label_RAM|Z~300_combout\);

-- Location: LCCOMB_X39_Y36_N20
\Label_RAM|Z~311\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~311_combout\ = (\Label_MAR|output\(4) & ((\Label_RAM|Z~300_combout\))) # (!\Label_MAR|output\(4) & (\Label_RAM|Z~310_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Label_MAR|output\(4),
	datac => \Label_RAM|Z~310_combout\,
	datad => \Label_RAM|Z~300_combout\,
	combout => \Label_RAM|Z~311_combout\);

-- Location: FF_X39_Y36_N21
\Label_RAM|Data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~311_combout\,
	ena => \Label_CU|ALT_INV_current_state.staa_write_mem~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Data_out\(1));

-- Location: LCCOMB_X34_Y35_N30
\Label_MDRI|output[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_MDRI|output[1]~feeder_combout\ = \Label_RAM|Data_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_RAM|Data_out\(1),
	combout => \Label_MDRI|output[1]~feeder_combout\);

-- Location: LCCOMB_X32_Y35_N12
\Label_CU|current_state.ldaa_read_mem~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_CU|current_state.ldaa_read_mem~feeder_combout\ = \Label_CU|current_state.ldaa_load_mar~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_CU|current_state.ldaa_load_mar~q\,
	combout => \Label_CU|current_state.ldaa_read_mem~feeder_combout\);

-- Location: FF_X32_Y35_N13
\Label_CU|current_state.ldaa_read_mem\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_CU|current_state.ldaa_read_mem~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_CU|current_state.ldaa_read_mem~q\);

-- Location: LCCOMB_X32_Y35_N4
\Label_CU|current_state.ldaa_load_mdri~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_CU|current_state.ldaa_load_mdri~feeder_combout\ = \Label_CU|current_state.ldaa_read_mem~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_CU|current_state.ldaa_read_mem~q\,
	combout => \Label_CU|current_state.ldaa_load_mdri~feeder_combout\);

-- Location: FF_X32_Y35_N5
\Label_CU|current_state.ldaa_load_mdri\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_CU|current_state.ldaa_load_mdri~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_CU|current_state.ldaa_load_mdri~q\);

-- Location: LCCOMB_X32_Y35_N8
\Label_CU|WideOr4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_CU|WideOr4~0_combout\ = (\Label_CU|current_state.ldaa_load_mdri~q\) # ((\Label_CU|current_state.adaa_load_mdri~q\) # (\Label_CU|current_state.load_mdri~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_CU|current_state.ldaa_load_mdri~q\,
	datac => \Label_CU|current_state.adaa_load_mdri~q\,
	datad => \Label_CU|current_state.load_mdri~q\,
	combout => \Label_CU|WideOr4~0_combout\);

-- Location: FF_X34_Y35_N31
\Label_MDRI|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_MDRI|output[1]~feeder_combout\,
	ena => \Label_CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_MDRI|output\(1));

-- Location: LCCOMB_X32_Y35_N18
\Label_IR|output[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_IR|output[1]~feeder_combout\ = \Label_MDRI|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRI|output\(1),
	combout => \Label_IR|output[1]~feeder_combout\);

-- Location: FF_X32_Y35_N19
\Label_IR|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_IR|output[1]~feeder_combout\,
	ena => \Label_CU|current_state.load_ir~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_IR|output\(1));

-- Location: LCCOMB_X32_Y35_N24
\Label_CU|current_state~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_CU|current_state~20_combout\ = (!\Label_IR|output\(2) & (\Label_CU|current_state.decode~q\ & (!\Label_IR|output\(0) & \Label_IR|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_IR|output\(2),
	datab => \Label_CU|current_state.decode~q\,
	datac => \Label_IR|output\(0),
	datad => \Label_IR|output\(1),
	combout => \Label_CU|current_state~20_combout\);

-- Location: FF_X32_Y35_N25
\Label_CU|current_state.staa_load_mdro\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_CU|current_state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_CU|current_state.staa_load_mdro~q\);

-- Location: LCCOMB_X34_Y35_N10
\Label_CU|WideOr3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_CU|WideOr3~combout\ = (\Label_CU|current_state.adaa_load_mar~q\) # ((\Label_CU|current_state.ldaa_load_mar~q\) # ((\Label_CU|current_state.staa_load_mdro~q\) # (!\Label_CU|current_state.load_mar~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_CU|current_state.adaa_load_mar~q\,
	datab => \Label_CU|current_state.ldaa_load_mar~q\,
	datac => \Label_CU|current_state.staa_load_mdro~q\,
	datad => \Label_CU|current_state.load_mar~q\,
	combout => \Label_CU|WideOr3~combout\);

-- Location: FF_X38_Y36_N31
\Label_MAR|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_MARMUX|output[0]~0_combout\,
	ena => \Label_CU|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_MAR|output\(0));

-- Location: LCCOMB_X36_Y34_N4
\Label_MDRO|output[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_MDRO|output[3]~feeder_combout\ = \Label_MDRI|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRI|output\(3),
	combout => \Label_MDRO|output[3]~feeder_combout\);

-- Location: FF_X36_Y34_N5
\Label_MDRO|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_MDRO|output[3]~feeder_combout\,
	ena => \Label_CU|current_state.staa_load_mdro~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_MDRO|output\(3));

-- Location: FF_X38_Y37_N19
\Label_RAM|Z~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(3),
	sload => VCC,
	ena => \Label_RAM|Z~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~249_q\);

-- Location: FF_X38_Y37_N13
\Label_RAM|Z~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(3),
	sload => VCC,
	ena => \Label_RAM|Z~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~185_q\);

-- Location: LCCOMB_X37_Y37_N8
\Label_RAM|Z~217feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~217feeder_combout\ = \Label_MDRO|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(3),
	combout => \Label_RAM|Z~217feeder_combout\);

-- Location: FF_X37_Y37_N9
\Label_RAM|Z~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~217feeder_combout\,
	ena => \Label_RAM|Z~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~217_q\);

-- Location: FF_X37_Y37_N23
\Label_RAM|Z~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(3),
	sload => VCC,
	ena => \Label_RAM|Z~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~153_q\);

-- Location: LCCOMB_X37_Y37_N22
\Label_RAM|Z~333\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~333_combout\ = (\Label_MAR|output\(2) & (((\Label_MAR|output\(3))))) # (!\Label_MAR|output\(2) & ((\Label_MAR|output\(3) & (\Label_RAM|Z~217_q\)) # (!\Label_MAR|output\(3) & ((\Label_RAM|Z~153_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(2),
	datab => \Label_RAM|Z~217_q\,
	datac => \Label_RAM|Z~153_q\,
	datad => \Label_MAR|output\(3),
	combout => \Label_RAM|Z~333_combout\);

-- Location: LCCOMB_X38_Y37_N12
\Label_RAM|Z~334\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~334_combout\ = (\Label_MAR|output\(2) & ((\Label_RAM|Z~333_combout\ & (\Label_RAM|Z~249_q\)) # (!\Label_RAM|Z~333_combout\ & ((\Label_RAM|Z~185_q\))))) # (!\Label_MAR|output\(2) & (((\Label_RAM|Z~333_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~249_q\,
	datab => \Label_MAR|output\(2),
	datac => \Label_RAM|Z~185_q\,
	datad => \Label_RAM|Z~333_combout\,
	combout => \Label_RAM|Z~334_combout\);

-- Location: LCCOMB_X39_Y38_N12
\Label_RAM|Z~201feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~201feeder_combout\ = \Label_MDRO|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(3),
	combout => \Label_RAM|Z~201feeder_combout\);

-- Location: FF_X39_Y38_N13
\Label_RAM|Z~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~201feeder_combout\,
	ena => \Label_RAM|Z~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~201_q\);

-- Location: FF_X39_Y35_N27
\Label_RAM|Z~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(3),
	sload => VCC,
	ena => \Label_RAM|Z~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~265_q\);

-- Location: LCCOMB_X40_Y37_N8
\Label_RAM|Z~536\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~536_combout\ = !\Label_MDRO|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(3),
	combout => \Label_RAM|Z~536_combout\);

-- Location: FF_X40_Y37_N9
\Label_RAM|Z~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~536_combout\,
	ena => \Label_RAM|Z~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~169_q\);

-- Location: LCCOMB_X40_Y37_N26
\Label_RAM|Z~535\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~535_combout\ = !\Label_MDRO|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(3),
	combout => \Label_RAM|Z~535_combout\);

-- Location: FF_X40_Y37_N27
\Label_RAM|Z~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~535_combout\,
	ena => \Label_RAM|Z~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~233_q\);

-- Location: LCCOMB_X39_Y37_N14
\Label_RAM|Z~340\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~340_combout\ = (\Label_MAR|output\(2) & (((\Label_MAR|output\(3))))) # (!\Label_MAR|output\(2) & ((\Label_MAR|output\(3) & ((!\Label_RAM|Z~233_q\))) # (!\Label_MAR|output\(3) & (!\Label_RAM|Z~169_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~169_q\,
	datab => \Label_RAM|Z~233_q\,
	datac => \Label_MAR|output\(2),
	datad => \Label_MAR|output\(3),
	combout => \Label_RAM|Z~340_combout\);

-- Location: LCCOMB_X40_Y35_N0
\Label_RAM|Z~341\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~341_combout\ = (\Label_MAR|output\(2) & ((\Label_RAM|Z~340_combout\ & ((\Label_RAM|Z~265_q\))) # (!\Label_RAM|Z~340_combout\ & (\Label_RAM|Z~201_q\)))) # (!\Label_MAR|output\(2) & (((\Label_RAM|Z~340_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~201_q\,
	datab => \Label_MAR|output\(2),
	datac => \Label_RAM|Z~265_q\,
	datad => \Label_RAM|Z~340_combout\,
	combout => \Label_RAM|Z~341_combout\);

-- Location: LCCOMB_X36_Y34_N16
\Label_RAM|Z~529\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~529_combout\ = !\Label_MDRO|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(3),
	combout => \Label_RAM|Z~529_combout\);

-- Location: FF_X36_Y34_N17
\Label_RAM|Z~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~529_combout\,
	ena => \Label_RAM|Z~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~225_q\);

-- Location: FF_X38_Y34_N23
\Label_RAM|Z~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(3),
	sload => VCC,
	ena => \Label_RAM|Z~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~257_q\);

-- Location: LCCOMB_X37_Y34_N4
\Label_RAM|Z~530\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~530_combout\ = !\Label_MDRO|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(3),
	combout => \Label_RAM|Z~530_combout\);

-- Location: FF_X37_Y34_N5
\Label_RAM|Z~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~530_combout\,
	ena => \Label_RAM|Z~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~161_q\);

-- Location: FF_X38_Y34_N1
\Label_RAM|Z~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(3),
	sload => VCC,
	ena => \Label_RAM|Z~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~193_q\);

-- Location: LCCOMB_X38_Y34_N0
\Label_RAM|Z~335\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~335_combout\ = (\Label_MAR|output\(2) & (((\Label_RAM|Z~193_q\) # (\Label_MAR|output\(3))))) # (!\Label_MAR|output\(2) & (!\Label_RAM|Z~161_q\ & ((!\Label_MAR|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(2),
	datab => \Label_RAM|Z~161_q\,
	datac => \Label_RAM|Z~193_q\,
	datad => \Label_MAR|output\(3),
	combout => \Label_RAM|Z~335_combout\);

-- Location: LCCOMB_X38_Y34_N22
\Label_RAM|Z~336\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~336_combout\ = (\Label_MAR|output\(3) & ((\Label_RAM|Z~335_combout\ & ((\Label_RAM|Z~257_q\))) # (!\Label_RAM|Z~335_combout\ & (!\Label_RAM|Z~225_q\)))) # (!\Label_MAR|output\(3) & (((\Label_RAM|Z~335_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~225_q\,
	datab => \Label_MAR|output\(3),
	datac => \Label_RAM|Z~257_q\,
	datad => \Label_RAM|Z~335_combout\,
	combout => \Label_RAM|Z~336_combout\);

-- Location: LCCOMB_X39_Y34_N26
\Label_RAM|Z~534\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~534_combout\ = !\Label_MDRO|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(3),
	combout => \Label_RAM|Z~534_combout\);

-- Location: FF_X39_Y34_N27
\Label_RAM|Z~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~534_combout\,
	ena => \Label_RAM|Z~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~241_q\);

-- Location: LCCOMB_X40_Y34_N10
\Label_RAM|Z~531\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~531_combout\ = !\Label_MDRO|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(3),
	combout => \Label_RAM|Z~531_combout\);

-- Location: FF_X40_Y34_N11
\Label_RAM|Z~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~531_combout\,
	ena => \Label_RAM|Z~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~209_q\);

-- Location: LCCOMB_X40_Y34_N20
\Label_RAM|Z~532\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~532_combout\ = !\Label_MDRO|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(3),
	combout => \Label_RAM|Z~532_combout\);

-- Location: FF_X40_Y34_N21
\Label_RAM|Z~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~532_combout\,
	ena => \Label_RAM|Z~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~177_q\);

-- Location: LCCOMB_X39_Y34_N18
\Label_RAM|Z~533\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~533_combout\ = !\Label_MDRO|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(3),
	combout => \Label_RAM|Z~533_combout\);

-- Location: FF_X39_Y34_N19
\Label_RAM|Z~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~533_combout\,
	ena => \Label_RAM|Z~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~145_q\);

-- Location: LCCOMB_X39_Y34_N24
\Label_RAM|Z~337\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~337_combout\ = (\Label_MAR|output\(3) & (((\Label_MAR|output\(2))))) # (!\Label_MAR|output\(3) & ((\Label_MAR|output\(2) & (!\Label_RAM|Z~177_q\)) # (!\Label_MAR|output\(2) & ((!\Label_RAM|Z~145_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~177_q\,
	datab => \Label_RAM|Z~145_q\,
	datac => \Label_MAR|output\(3),
	datad => \Label_MAR|output\(2),
	combout => \Label_RAM|Z~337_combout\);

-- Location: LCCOMB_X39_Y34_N0
\Label_RAM|Z~338\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~338_combout\ = (\Label_MAR|output\(3) & ((\Label_RAM|Z~337_combout\ & (!\Label_RAM|Z~241_q\)) # (!\Label_RAM|Z~337_combout\ & ((!\Label_RAM|Z~209_q\))))) # (!\Label_MAR|output\(3) & (((\Label_RAM|Z~337_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(3),
	datab => \Label_RAM|Z~241_q\,
	datac => \Label_RAM|Z~209_q\,
	datad => \Label_RAM|Z~337_combout\,
	combout => \Label_RAM|Z~338_combout\);

-- Location: LCCOMB_X39_Y35_N24
\Label_RAM|Z~339\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~339_combout\ = (\Label_MAR|output\(1) & ((\Label_MAR|output\(0)) # ((\Label_RAM|Z~336_combout\)))) # (!\Label_MAR|output\(1) & (!\Label_MAR|output\(0) & ((\Label_RAM|Z~338_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(1),
	datab => \Label_MAR|output\(0),
	datac => \Label_RAM|Z~336_combout\,
	datad => \Label_RAM|Z~338_combout\,
	combout => \Label_RAM|Z~339_combout\);

-- Location: LCCOMB_X39_Y35_N8
\Label_RAM|Z~342\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~342_combout\ = (\Label_MAR|output\(0) & ((\Label_RAM|Z~339_combout\ & ((\Label_RAM|Z~341_combout\))) # (!\Label_RAM|Z~339_combout\ & (\Label_RAM|Z~334_combout\)))) # (!\Label_MAR|output\(0) & (((\Label_RAM|Z~339_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(0),
	datab => \Label_RAM|Z~334_combout\,
	datac => \Label_RAM|Z~341_combout\,
	datad => \Label_RAM|Z~339_combout\,
	combout => \Label_RAM|Z~342_combout\);

-- Location: FF_X35_Y35_N21
\Label_RAM|Z~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(3),
	sload => VCC,
	ena => \Label_RAM|Z~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~129_q\);

-- Location: FF_X36_Y35_N3
\Label_RAM|Z~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(3),
	sload => VCC,
	ena => \Label_RAM|Z~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~137_q\);

-- Location: LCCOMB_X35_Y35_N26
\Label_RAM|Z~541\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~541_combout\ = !\Label_MDRO|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(3),
	combout => \Label_RAM|Z~541_combout\);

-- Location: FF_X35_Y35_N27
\Label_RAM|Z~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~541_combout\,
	ena => \Label_RAM|Z~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~113_q\);

-- Location: FF_X36_Y35_N13
\Label_RAM|Z~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(3),
	sload => VCC,
	ena => \Label_RAM|Z~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~121_q\);

-- Location: LCCOMB_X36_Y35_N12
\Label_RAM|Z~350\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~350_combout\ = (\Label_MAR|output\(0) & (((\Label_RAM|Z~121_q\) # (\Label_MAR|output\(1))))) # (!\Label_MAR|output\(0) & (!\Label_RAM|Z~113_q\ & ((!\Label_MAR|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~113_q\,
	datab => \Label_MAR|output\(0),
	datac => \Label_RAM|Z~121_q\,
	datad => \Label_MAR|output\(1),
	combout => \Label_RAM|Z~350_combout\);

-- Location: LCCOMB_X36_Y35_N2
\Label_RAM|Z~351\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~351_combout\ = (\Label_MAR|output\(1) & ((\Label_RAM|Z~350_combout\ & ((\Label_RAM|Z~137_q\))) # (!\Label_RAM|Z~350_combout\ & (\Label_RAM|Z~129_q\)))) # (!\Label_MAR|output\(1) & (((\Label_RAM|Z~350_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~129_q\,
	datab => \Label_MAR|output\(1),
	datac => \Label_RAM|Z~137_q\,
	datad => \Label_RAM|Z~350_combout\,
	combout => \Label_RAM|Z~351_combout\);

-- Location: LCCOMB_X40_Y33_N18
\Label_RAM|Z~73feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~73feeder_combout\ = \Label_MDRO|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(3),
	combout => \Label_RAM|Z~73feeder_combout\);

-- Location: FF_X40_Y33_N19
\Label_RAM|Z~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~73feeder_combout\,
	ena => \Label_RAM|Z~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~73_q\);

-- Location: FF_X40_Y33_N9
\Label_RAM|Z~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(3),
	sload => VCC,
	ena => \Label_RAM|Z~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~65_q\);

-- Location: LCCOMB_X37_Y33_N22
\Label_RAM|Z~537\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~537_combout\ = !\Label_MDRO|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(3),
	combout => \Label_RAM|Z~537_combout\);

-- Location: FF_X37_Y33_N23
\Label_RAM|Z~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~537_combout\,
	ena => \Label_RAM|Z~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~57_q\);

-- Location: LCCOMB_X39_Y33_N8
\Label_RAM|Z~538\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~538_combout\ = !\Label_MDRO|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(3),
	combout => \Label_RAM|Z~538_combout\);

-- Location: FF_X39_Y33_N9
\Label_RAM|Z~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~538_combout\,
	ena => \Label_RAM|Z~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~49_q\);

-- Location: LCCOMB_X37_Y33_N28
\Label_RAM|Z~343\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~343_combout\ = (\Label_MAR|output\(0) & (((\Label_MAR|output\(1))) # (!\Label_RAM|Z~57_q\))) # (!\Label_MAR|output\(0) & (((!\Label_RAM|Z~49_q\ & !\Label_MAR|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~57_q\,
	datab => \Label_RAM|Z~49_q\,
	datac => \Label_MAR|output\(0),
	datad => \Label_MAR|output\(1),
	combout => \Label_RAM|Z~343_combout\);

-- Location: LCCOMB_X40_Y33_N8
\Label_RAM|Z~344\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~344_combout\ = (\Label_MAR|output\(1) & ((\Label_RAM|Z~343_combout\ & (\Label_RAM|Z~73_q\)) # (!\Label_RAM|Z~343_combout\ & ((\Label_RAM|Z~65_q\))))) # (!\Label_MAR|output\(1) & (((\Label_RAM|Z~343_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~73_q\,
	datab => \Label_MAR|output\(1),
	datac => \Label_RAM|Z~65_q\,
	datad => \Label_RAM|Z~343_combout\,
	combout => \Label_RAM|Z~344_combout\);

-- Location: LCCOMB_X41_Y35_N6
\Label_RAM|Z~25feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~25feeder_combout\ = \Label_MDRO|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(3),
	combout => \Label_RAM|Z~25feeder_combout\);

-- Location: FF_X41_Y35_N7
\Label_RAM|Z~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~25feeder_combout\,
	ena => \Label_RAM|Z~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~25_q\);

-- Location: FF_X37_Y35_N17
\Label_RAM|Z~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(3),
	sload => VCC,
	ena => \Label_RAM|Z~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~41_q\);

-- Location: LCCOMB_X42_Y35_N6
\Label_RAM|Z~33feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~33feeder_combout\ = \Label_MDRO|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(3),
	combout => \Label_RAM|Z~33feeder_combout\);

-- Location: FF_X42_Y35_N7
\Label_RAM|Z~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~33feeder_combout\,
	ena => \Label_RAM|Z~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~33_q\);

-- Location: FF_X37_Y35_N7
\Label_RAM|Z~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(3),
	sload => VCC,
	ena => \Label_RAM|Z~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~17_q\);

-- Location: LCCOMB_X37_Y35_N6
\Label_RAM|Z~347\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~347_combout\ = (\Label_MAR|output\(0) & (((\Label_MAR|output\(1))))) # (!\Label_MAR|output\(0) & ((\Label_MAR|output\(1) & (\Label_RAM|Z~33_q\)) # (!\Label_MAR|output\(1) & ((\Label_RAM|Z~17_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(0),
	datab => \Label_RAM|Z~33_q\,
	datac => \Label_RAM|Z~17_q\,
	datad => \Label_MAR|output\(1),
	combout => \Label_RAM|Z~347_combout\);

-- Location: LCCOMB_X37_Y35_N16
\Label_RAM|Z~348\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~348_combout\ = (\Label_MAR|output\(0) & ((\Label_RAM|Z~347_combout\ & ((\Label_RAM|Z~41_q\))) # (!\Label_RAM|Z~347_combout\ & (\Label_RAM|Z~25_q\)))) # (!\Label_MAR|output\(0) & (((\Label_RAM|Z~347_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(0),
	datab => \Label_RAM|Z~25_q\,
	datac => \Label_RAM|Z~41_q\,
	datad => \Label_RAM|Z~347_combout\,
	combout => \Label_RAM|Z~348_combout\);

-- Location: LCCOMB_X36_Y36_N14
\Label_RAM|Z~540\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~540_combout\ = !\Label_MDRO|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(3),
	combout => \Label_RAM|Z~540_combout\);

-- Location: FF_X36_Y36_N15
\Label_RAM|Z~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~540_combout\,
	ena => \Label_RAM|Z~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~105_q\);

-- Location: FF_X36_Y36_N1
\Label_RAM|Z~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(3),
	sload => VCC,
	ena => \Label_RAM|Z~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~89_q\);

-- Location: LCCOMB_X37_Y36_N24
\Label_RAM|Z~539\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~539_combout\ = !\Label_MDRO|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(3),
	combout => \Label_RAM|Z~539_combout\);

-- Location: FF_X37_Y36_N25
\Label_RAM|Z~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~539_combout\,
	ena => \Label_RAM|Z~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~97_q\);

-- Location: FF_X37_Y36_N23
\Label_RAM|Z~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(3),
	sload => VCC,
	ena => \Label_RAM|Z~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~81_q\);

-- Location: LCCOMB_X37_Y36_N22
\Label_RAM|Z~345\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~345_combout\ = (\Label_MAR|output\(0) & (((\Label_MAR|output\(1))))) # (!\Label_MAR|output\(0) & ((\Label_MAR|output\(1) & (!\Label_RAM|Z~97_q\)) # (!\Label_MAR|output\(1) & ((\Label_RAM|Z~81_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(0),
	datab => \Label_RAM|Z~97_q\,
	datac => \Label_RAM|Z~81_q\,
	datad => \Label_MAR|output\(1),
	combout => \Label_RAM|Z~345_combout\);

-- Location: LCCOMB_X36_Y36_N0
\Label_RAM|Z~346\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~346_combout\ = (\Label_MAR|output\(0) & ((\Label_RAM|Z~345_combout\ & (!\Label_RAM|Z~105_q\)) # (!\Label_RAM|Z~345_combout\ & ((\Label_RAM|Z~89_q\))))) # (!\Label_MAR|output\(0) & (((\Label_RAM|Z~345_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(0),
	datab => \Label_RAM|Z~105_q\,
	datac => \Label_RAM|Z~89_q\,
	datad => \Label_RAM|Z~345_combout\,
	combout => \Label_RAM|Z~346_combout\);

-- Location: LCCOMB_X39_Y35_N18
\Label_RAM|Z~349\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~349_combout\ = (\Label_MAR|output\(2) & (\Label_MAR|output\(3))) # (!\Label_MAR|output\(2) & ((\Label_MAR|output\(3) & ((\Label_RAM|Z~346_combout\))) # (!\Label_MAR|output\(3) & (\Label_RAM|Z~348_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(2),
	datab => \Label_MAR|output\(3),
	datac => \Label_RAM|Z~348_combout\,
	datad => \Label_RAM|Z~346_combout\,
	combout => \Label_RAM|Z~349_combout\);

-- Location: LCCOMB_X39_Y35_N12
\Label_RAM|Z~352\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~352_combout\ = (\Label_MAR|output\(2) & ((\Label_RAM|Z~349_combout\ & (\Label_RAM|Z~351_combout\)) # (!\Label_RAM|Z~349_combout\ & ((\Label_RAM|Z~344_combout\))))) # (!\Label_MAR|output\(2) & (((\Label_RAM|Z~349_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(2),
	datab => \Label_RAM|Z~351_combout\,
	datac => \Label_RAM|Z~344_combout\,
	datad => \Label_RAM|Z~349_combout\,
	combout => \Label_RAM|Z~352_combout\);

-- Location: LCCOMB_X39_Y35_N4
\Label_RAM|Z~353\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~353_combout\ = (\Label_MAR|output\(4) & (\Label_RAM|Z~342_combout\)) # (!\Label_MAR|output\(4) & ((\Label_RAM|Z~352_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(4),
	datac => \Label_RAM|Z~342_combout\,
	datad => \Label_RAM|Z~352_combout\,
	combout => \Label_RAM|Z~353_combout\);

-- Location: FF_X39_Y35_N5
\Label_RAM|Data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~353_combout\,
	ena => \Label_CU|ALT_INV_current_state.staa_write_mem~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Data_out\(3));

-- Location: LCCOMB_X31_Y35_N18
\Label_MDRI|output[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_MDRI|output[3]~feeder_combout\ = \Label_RAM|Data_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_RAM|Data_out\(3),
	combout => \Label_MDRI|output[3]~feeder_combout\);

-- Location: FF_X31_Y35_N19
\Label_MDRI|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_MDRI|output[3]~feeder_combout\,
	ena => \Label_CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_MDRI|output\(3));

-- Location: FF_X35_Y36_N29
\Label_IR|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRI|output\(3),
	sload => VCC,
	ena => \Label_CU|current_state.load_ir~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_IR|output\(3));

-- Location: LCCOMB_X35_Y36_N28
\Label_MARMUX|output[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_MARMUX|output[3]~3_combout\ = (\Label_CU|current_state.adaa_load_mar~q\ & (((\Label_IR|output\(3))))) # (!\Label_CU|current_state.adaa_load_mar~q\ & ((\Label_ALU|output[7]~0_combout\ & (\Label_ProgramCounter|output\(3))) # 
-- (!\Label_ALU|output[7]~0_combout\ & ((\Label_IR|output\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_CU|current_state.adaa_load_mar~q\,
	datab => \Label_ProgramCounter|output\(3),
	datac => \Label_IR|output\(3),
	datad => \Label_ALU|output[7]~0_combout\,
	combout => \Label_MARMUX|output[3]~3_combout\);

-- Location: FF_X38_Y36_N1
\Label_MAR|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MARMUX|output[3]~3_combout\,
	sload => VCC,
	ena => \Label_CU|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_MAR|output\(3));

-- Location: LCCOMB_X36_Y34_N0
\Label_MDRO|output[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_MDRO|output[0]~feeder_combout\ = \Label_MDRI|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRI|output\(0),
	combout => \Label_MDRO|output[0]~feeder_combout\);

-- Location: FF_X36_Y34_N1
\Label_MDRO|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_MDRO|output[0]~feeder_combout\,
	ena => \Label_CU|current_state.staa_load_mdro~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_MDRO|output\(0));

-- Location: FF_X36_Y35_N9
\Label_RAM|Z~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(0),
	sload => VCC,
	ena => \Label_RAM|Z~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~118_q\);

-- Location: LCCOMB_X36_Y35_N30
\Label_RAM|Z~499\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~499_combout\ = !\Label_MDRO|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(0),
	combout => \Label_RAM|Z~499_combout\);

-- Location: FF_X36_Y35_N31
\Label_RAM|Z~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~499_combout\,
	ena => \Label_RAM|Z~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~134_q\);

-- Location: LCCOMB_X35_Y35_N28
\Label_RAM|Z~497\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~497_combout\ = !\Label_MDRO|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(0),
	combout => \Label_RAM|Z~497_combout\);

-- Location: FF_X35_Y35_N29
\Label_RAM|Z~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~497_combout\,
	ena => \Label_RAM|Z~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~126_q\);

-- Location: LCCOMB_X35_Y35_N22
\Label_RAM|Z~498\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~498_combout\ = !\Label_MDRO|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(0),
	combout => \Label_RAM|Z~498_combout\);

-- Location: FF_X35_Y35_N23
\Label_RAM|Z~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~498_combout\,
	ena => \Label_RAM|Z~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~110_q\);

-- Location: LCCOMB_X37_Y35_N28
\Label_RAM|Z~287\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~287_combout\ = (\Label_MAR|output\(0) & (((\Label_MAR|output\(1))))) # (!\Label_MAR|output\(0) & ((\Label_MAR|output\(1) & (!\Label_RAM|Z~126_q\)) # (!\Label_MAR|output\(1) & ((!\Label_RAM|Z~110_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~126_q\,
	datab => \Label_MAR|output\(0),
	datac => \Label_RAM|Z~110_q\,
	datad => \Label_MAR|output\(1),
	combout => \Label_RAM|Z~287_combout\);

-- Location: LCCOMB_X37_Y35_N2
\Label_RAM|Z~288\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~288_combout\ = (\Label_MAR|output\(0) & ((\Label_RAM|Z~287_combout\ & ((!\Label_RAM|Z~134_q\))) # (!\Label_RAM|Z~287_combout\ & (\Label_RAM|Z~118_q\)))) # (!\Label_MAR|output\(0) & (((\Label_RAM|Z~287_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~118_q\,
	datab => \Label_RAM|Z~134_q\,
	datac => \Label_MAR|output\(0),
	datad => \Label_RAM|Z~287_combout\,
	combout => \Label_RAM|Z~288_combout\);

-- Location: FF_X36_Y36_N27
\Label_RAM|Z~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(0),
	sload => VCC,
	ena => \Label_RAM|Z~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~102_q\);

-- Location: FF_X37_Y36_N13
\Label_RAM|Z~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(0),
	sload => VCC,
	ena => \Label_RAM|Z~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~94_q\);

-- Location: LCCOMB_X37_Y36_N14
\Label_RAM|Z~492\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~492_combout\ = !\Label_MDRO|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(0),
	combout => \Label_RAM|Z~492_combout\);

-- Location: FF_X37_Y36_N15
\Label_RAM|Z~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~492_combout\,
	ena => \Label_RAM|Z~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~78_q\);

-- Location: FF_X36_Y36_N13
\Label_RAM|Z~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(0),
	sload => VCC,
	ena => \Label_RAM|Z~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~86_q\);

-- Location: LCCOMB_X36_Y36_N12
\Label_RAM|Z~280\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~280_combout\ = (\Label_MAR|output\(0) & (((\Label_RAM|Z~86_q\) # (\Label_MAR|output\(1))))) # (!\Label_MAR|output\(0) & (!\Label_RAM|Z~78_q\ & ((!\Label_MAR|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(0),
	datab => \Label_RAM|Z~78_q\,
	datac => \Label_RAM|Z~86_q\,
	datad => \Label_MAR|output\(1),
	combout => \Label_RAM|Z~280_combout\);

-- Location: LCCOMB_X37_Y36_N12
\Label_RAM|Z~281\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~281_combout\ = (\Label_MAR|output\(1) & ((\Label_RAM|Z~280_combout\ & (\Label_RAM|Z~102_q\)) # (!\Label_RAM|Z~280_combout\ & ((\Label_RAM|Z~94_q\))))) # (!\Label_MAR|output\(1) & (((\Label_RAM|Z~280_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(1),
	datab => \Label_RAM|Z~102_q\,
	datac => \Label_RAM|Z~94_q\,
	datad => \Label_RAM|Z~280_combout\,
	combout => \Label_RAM|Z~281_combout\);

-- Location: LCCOMB_X42_Y35_N16
\Label_RAM|Z~494\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~494_combout\ = !\Label_MDRO|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(0),
	combout => \Label_RAM|Z~494_combout\);

-- Location: FF_X42_Y35_N17
\Label_RAM|Z~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~494_combout\,
	ena => \Label_RAM|Z~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~30_q\);

-- Location: LCCOMB_X39_Y36_N14
\Label_RAM|Z~495\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~495_combout\ = !\Label_MDRO|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(0),
	combout => \Label_RAM|Z~495_combout\);

-- Location: FF_X39_Y36_N15
\Label_RAM|Z~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~495_combout\,
	ena => \Label_RAM|Z~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~14_q\);

-- Location: FF_X38_Y33_N15
\Label_RAM|Z~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(0),
	sload => VCC,
	ena => \Label_RAM|Z~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~22_q\);

-- Location: LCCOMB_X38_Y33_N14
\Label_RAM|Z~284\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~284_combout\ = (\Label_MAR|output\(1) & (((\Label_MAR|output\(0))))) # (!\Label_MAR|output\(1) & ((\Label_MAR|output\(0) & ((\Label_RAM|Z~22_q\))) # (!\Label_MAR|output\(0) & (!\Label_RAM|Z~14_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(1),
	datab => \Label_RAM|Z~14_q\,
	datac => \Label_RAM|Z~22_q\,
	datad => \Label_MAR|output\(0),
	combout => \Label_RAM|Z~284_combout\);

-- Location: LCCOMB_X40_Y35_N12
\Label_RAM|Z~496\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~496_combout\ = !\Label_MDRO|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(0),
	combout => \Label_RAM|Z~496_combout\);

-- Location: FF_X40_Y35_N13
\Label_RAM|Z~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~496_combout\,
	ena => \Label_RAM|Z~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~38_q\);

-- Location: LCCOMB_X38_Y33_N4
\Label_RAM|Z~285\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~285_combout\ = (\Label_MAR|output\(1) & ((\Label_RAM|Z~284_combout\ & ((!\Label_RAM|Z~38_q\))) # (!\Label_RAM|Z~284_combout\ & (!\Label_RAM|Z~30_q\)))) # (!\Label_MAR|output\(1) & (((\Label_RAM|Z~284_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~30_q\,
	datab => \Label_MAR|output\(1),
	datac => \Label_RAM|Z~284_combout\,
	datad => \Label_RAM|Z~38_q\,
	combout => \Label_RAM|Z~285_combout\);

-- Location: LCCOMB_X40_Y33_N14
\Label_RAM|Z~493\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~493_combout\ = !\Label_MDRO|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(0),
	combout => \Label_RAM|Z~493_combout\);

-- Location: FF_X40_Y33_N15
\Label_RAM|Z~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~493_combout\,
	ena => \Label_RAM|Z~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~70_q\);

-- Location: FF_X39_Y33_N17
\Label_RAM|Z~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(0),
	sload => VCC,
	ena => \Label_RAM|Z~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~54_q\);

-- Location: LCCOMB_X40_Y33_N4
\Label_RAM|Z~62feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~62feeder_combout\ = \Label_MDRO|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(0),
	combout => \Label_RAM|Z~62feeder_combout\);

-- Location: FF_X40_Y33_N5
\Label_RAM|Z~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~62feeder_combout\,
	ena => \Label_RAM|Z~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~62_q\);

-- Location: FF_X39_Y33_N7
\Label_RAM|Z~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(0),
	sload => VCC,
	ena => \Label_RAM|Z~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~46_q\);

-- Location: LCCOMB_X39_Y33_N6
\Label_RAM|Z~282\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~282_combout\ = (\Label_MAR|output\(1) & ((\Label_RAM|Z~62_q\) # ((\Label_MAR|output\(0))))) # (!\Label_MAR|output\(1) & (((\Label_RAM|Z~46_q\ & !\Label_MAR|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~62_q\,
	datab => \Label_MAR|output\(1),
	datac => \Label_RAM|Z~46_q\,
	datad => \Label_MAR|output\(0),
	combout => \Label_RAM|Z~282_combout\);

-- Location: LCCOMB_X39_Y33_N16
\Label_RAM|Z~283\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~283_combout\ = (\Label_MAR|output\(0) & ((\Label_RAM|Z~282_combout\ & (!\Label_RAM|Z~70_q\)) # (!\Label_RAM|Z~282_combout\ & ((\Label_RAM|Z~54_q\))))) # (!\Label_MAR|output\(0) & (((\Label_RAM|Z~282_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~70_q\,
	datab => \Label_MAR|output\(0),
	datac => \Label_RAM|Z~54_q\,
	datad => \Label_RAM|Z~282_combout\,
	combout => \Label_RAM|Z~283_combout\);

-- Location: LCCOMB_X38_Y33_N18
\Label_RAM|Z~286\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~286_combout\ = (\Label_MAR|output\(3) & (\Label_MAR|output\(2))) # (!\Label_MAR|output\(3) & ((\Label_MAR|output\(2) & ((\Label_RAM|Z~283_combout\))) # (!\Label_MAR|output\(2) & (\Label_RAM|Z~285_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(3),
	datab => \Label_MAR|output\(2),
	datac => \Label_RAM|Z~285_combout\,
	datad => \Label_RAM|Z~283_combout\,
	combout => \Label_RAM|Z~286_combout\);

-- Location: LCCOMB_X38_Y33_N8
\Label_RAM|Z~289\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~289_combout\ = (\Label_MAR|output\(3) & ((\Label_RAM|Z~286_combout\ & (\Label_RAM|Z~288_combout\)) # (!\Label_RAM|Z~286_combout\ & ((\Label_RAM|Z~281_combout\))))) # (!\Label_MAR|output\(3) & (((\Label_RAM|Z~286_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(3),
	datab => \Label_RAM|Z~288_combout\,
	datac => \Label_RAM|Z~281_combout\,
	datad => \Label_RAM|Z~286_combout\,
	combout => \Label_RAM|Z~289_combout\);

-- Location: LCCOMB_X38_Y34_N30
\Label_RAM|Z~487\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~487_combout\ = !\Label_MDRO|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(0),
	combout => \Label_RAM|Z~487_combout\);

-- Location: FF_X38_Y34_N31
\Label_RAM|Z~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~487_combout\,
	ena => \Label_RAM|Z~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~254_q\);

-- Location: LCCOMB_X38_Y34_N16
\Label_RAM|Z~486\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~486_combout\ = !\Label_MDRO|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(0),
	combout => \Label_RAM|Z~486_combout\);

-- Location: FF_X38_Y34_N17
\Label_RAM|Z~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~486_combout\,
	ena => \Label_RAM|Z~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~190_q\);

-- Location: LCCOMB_X36_Y34_N22
\Label_RAM|Z~222feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~222feeder_combout\ = \Label_MDRO|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(0),
	combout => \Label_RAM|Z~222feeder_combout\);

-- Location: FF_X36_Y34_N23
\Label_RAM|Z~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~222feeder_combout\,
	ena => \Label_RAM|Z~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~222_q\);

-- Location: FF_X37_Y34_N29
\Label_RAM|Z~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(0),
	sload => VCC,
	ena => \Label_RAM|Z~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~158_q\);

-- Location: LCCOMB_X37_Y34_N28
\Label_RAM|Z~270\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~270_combout\ = (\Label_MAR|output\(2) & (((\Label_MAR|output\(3))))) # (!\Label_MAR|output\(2) & ((\Label_MAR|output\(3) & (\Label_RAM|Z~222_q\)) # (!\Label_MAR|output\(3) & ((\Label_RAM|Z~158_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(2),
	datab => \Label_RAM|Z~222_q\,
	datac => \Label_RAM|Z~158_q\,
	datad => \Label_MAR|output\(3),
	combout => \Label_RAM|Z~270_combout\);

-- Location: LCCOMB_X38_Y33_N30
\Label_RAM|Z~271\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~271_combout\ = (\Label_MAR|output\(2) & ((\Label_RAM|Z~270_combout\ & (!\Label_RAM|Z~254_q\)) # (!\Label_RAM|Z~270_combout\ & ((!\Label_RAM|Z~190_q\))))) # (!\Label_MAR|output\(2) & (((\Label_RAM|Z~270_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~254_q\,
	datab => \Label_MAR|output\(2),
	datac => \Label_RAM|Z~190_q\,
	datad => \Label_RAM|Z~270_combout\,
	combout => \Label_RAM|Z~271_combout\);

-- Location: LCCOMB_X39_Y38_N18
\Label_RAM|Z~491\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~491_combout\ = !\Label_MDRO|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(0),
	combout => \Label_RAM|Z~491_combout\);

-- Location: FF_X39_Y38_N19
\Label_RAM|Z~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~491_combout\,
	ena => \Label_RAM|Z~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~262_q\);

-- Location: FF_X38_Y38_N29
\Label_RAM|Z~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(0),
	sload => VCC,
	ena => \Label_RAM|Z~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~230_q\);

-- Location: LCCOMB_X39_Y38_N28
\Label_RAM|Z~490\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~490_combout\ = !\Label_MDRO|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(0),
	combout => \Label_RAM|Z~490_combout\);

-- Location: FF_X39_Y38_N29
\Label_RAM|Z~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~490_combout\,
	ena => \Label_RAM|Z~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~198_q\);

-- Location: FF_X38_Y38_N7
\Label_RAM|Z~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(0),
	sload => VCC,
	ena => \Label_RAM|Z~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~166_q\);

-- Location: LCCOMB_X38_Y38_N6
\Label_RAM|Z~277\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~277_combout\ = (\Label_MAR|output\(3) & (((\Label_MAR|output\(2))))) # (!\Label_MAR|output\(3) & ((\Label_MAR|output\(2) & (!\Label_RAM|Z~198_q\)) # (!\Label_MAR|output\(2) & ((\Label_RAM|Z~166_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(3),
	datab => \Label_RAM|Z~198_q\,
	datac => \Label_RAM|Z~166_q\,
	datad => \Label_MAR|output\(2),
	combout => \Label_RAM|Z~277_combout\);

-- Location: LCCOMB_X38_Y38_N28
\Label_RAM|Z~278\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~278_combout\ = (\Label_MAR|output\(3) & ((\Label_RAM|Z~277_combout\ & (!\Label_RAM|Z~262_q\)) # (!\Label_RAM|Z~277_combout\ & ((\Label_RAM|Z~230_q\))))) # (!\Label_MAR|output\(3) & (((\Label_RAM|Z~277_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(3),
	datab => \Label_RAM|Z~262_q\,
	datac => \Label_RAM|Z~230_q\,
	datad => \Label_RAM|Z~277_combout\,
	combout => \Label_RAM|Z~278_combout\);

-- Location: LCCOMB_X41_Y37_N28
\Label_RAM|Z~214feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~214feeder_combout\ = \Label_MDRO|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(0),
	combout => \Label_RAM|Z~214feeder_combout\);

-- Location: FF_X41_Y37_N29
\Label_RAM|Z~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~214feeder_combout\,
	ena => \Label_RAM|Z~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~214_q\);

-- Location: FF_X38_Y37_N11
\Label_RAM|Z~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(0),
	sload => VCC,
	ena => \Label_RAM|Z~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~246_q\);

-- Location: LCCOMB_X38_Y37_N4
\Label_RAM|Z~182feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~182feeder_combout\ = \Label_MDRO|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(0),
	combout => \Label_RAM|Z~182feeder_combout\);

-- Location: FF_X38_Y37_N5
\Label_RAM|Z~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~182feeder_combout\,
	ena => \Label_RAM|Z~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~182_q\);

-- Location: FF_X37_Y37_N21
\Label_RAM|Z~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(0),
	sload => VCC,
	ena => \Label_RAM|Z~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~150_q\);

-- Location: LCCOMB_X37_Y37_N20
\Label_RAM|Z~272\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~272_combout\ = (\Label_MAR|output\(3) & (((\Label_MAR|output\(2))))) # (!\Label_MAR|output\(3) & ((\Label_MAR|output\(2) & (\Label_RAM|Z~182_q\)) # (!\Label_MAR|output\(2) & ((\Label_RAM|Z~150_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~182_q\,
	datab => \Label_MAR|output\(3),
	datac => \Label_RAM|Z~150_q\,
	datad => \Label_MAR|output\(2),
	combout => \Label_RAM|Z~272_combout\);

-- Location: LCCOMB_X38_Y37_N10
\Label_RAM|Z~273\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~273_combout\ = (\Label_MAR|output\(3) & ((\Label_RAM|Z~272_combout\ & ((\Label_RAM|Z~246_q\))) # (!\Label_RAM|Z~272_combout\ & (\Label_RAM|Z~214_q\)))) # (!\Label_MAR|output\(3) & (((\Label_RAM|Z~272_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~214_q\,
	datab => \Label_MAR|output\(3),
	datac => \Label_RAM|Z~246_q\,
	datad => \Label_RAM|Z~272_combout\,
	combout => \Label_RAM|Z~273_combout\);

-- Location: LCCOMB_X39_Y34_N30
\Label_RAM|Z~489\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~489_combout\ = !\Label_MDRO|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(0),
	combout => \Label_RAM|Z~489_combout\);

-- Location: FF_X39_Y34_N31
\Label_RAM|Z~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~489_combout\,
	ena => \Label_RAM|Z~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~238_q\);

-- Location: LCCOMB_X40_Y35_N14
\Label_RAM|Z~488\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~488_combout\ = !\Label_MDRO|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(0),
	combout => \Label_RAM|Z~488_combout\);

-- Location: LCCOMB_X41_Y35_N12
\Label_RAM|Z~174feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~174feeder_combout\ = \Label_RAM|Z~488_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_RAM|Z~488_combout\,
	combout => \Label_RAM|Z~174feeder_combout\);

-- Location: FF_X41_Y35_N13
\Label_RAM|Z~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~174feeder_combout\,
	ena => \Label_RAM|Z~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~174_q\);

-- Location: FF_X39_Y34_N9
\Label_RAM|Z~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(0),
	sload => VCC,
	ena => \Label_RAM|Z~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~142_q\);

-- Location: LCCOMB_X40_Y34_N4
\Label_RAM|Z~206feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~206feeder_combout\ = \Label_MDRO|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(0),
	combout => \Label_RAM|Z~206feeder_combout\);

-- Location: FF_X40_Y34_N5
\Label_RAM|Z~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~206feeder_combout\,
	ena => \Label_RAM|Z~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~206_q\);

-- Location: LCCOMB_X39_Y34_N8
\Label_RAM|Z~274\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~274_combout\ = (\Label_MAR|output\(3) & ((\Label_MAR|output\(2)) # ((\Label_RAM|Z~206_q\)))) # (!\Label_MAR|output\(3) & (!\Label_MAR|output\(2) & (\Label_RAM|Z~142_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(3),
	datab => \Label_MAR|output\(2),
	datac => \Label_RAM|Z~142_q\,
	datad => \Label_RAM|Z~206_q\,
	combout => \Label_RAM|Z~274_combout\);

-- Location: LCCOMB_X38_Y33_N12
\Label_RAM|Z~275\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~275_combout\ = (\Label_MAR|output\(2) & ((\Label_RAM|Z~274_combout\ & (!\Label_RAM|Z~238_q\)) # (!\Label_RAM|Z~274_combout\ & ((!\Label_RAM|Z~174_q\))))) # (!\Label_MAR|output\(2) & (((\Label_RAM|Z~274_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(2),
	datab => \Label_RAM|Z~238_q\,
	datac => \Label_RAM|Z~174_q\,
	datad => \Label_RAM|Z~274_combout\,
	combout => \Label_RAM|Z~275_combout\);

-- Location: LCCOMB_X38_Y33_N10
\Label_RAM|Z~276\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~276_combout\ = (\Label_MAR|output\(1) & (\Label_MAR|output\(0))) # (!\Label_MAR|output\(1) & ((\Label_MAR|output\(0) & (\Label_RAM|Z~273_combout\)) # (!\Label_MAR|output\(0) & ((\Label_RAM|Z~275_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(1),
	datab => \Label_MAR|output\(0),
	datac => \Label_RAM|Z~273_combout\,
	datad => \Label_RAM|Z~275_combout\,
	combout => \Label_RAM|Z~276_combout\);

-- Location: LCCOMB_X38_Y33_N20
\Label_RAM|Z~279\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~279_combout\ = (\Label_MAR|output\(1) & ((\Label_RAM|Z~276_combout\ & ((\Label_RAM|Z~278_combout\))) # (!\Label_RAM|Z~276_combout\ & (\Label_RAM|Z~271_combout\)))) # (!\Label_MAR|output\(1) & (((\Label_RAM|Z~276_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~271_combout\,
	datab => \Label_MAR|output\(1),
	datac => \Label_RAM|Z~278_combout\,
	datad => \Label_RAM|Z~276_combout\,
	combout => \Label_RAM|Z~279_combout\);

-- Location: LCCOMB_X38_Y33_N24
\Label_RAM|Z~290\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~290_combout\ = (\Label_MAR|output\(4) & ((\Label_RAM|Z~279_combout\))) # (!\Label_MAR|output\(4) & (\Label_RAM|Z~289_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Label_MAR|output\(4),
	datac => \Label_RAM|Z~289_combout\,
	datad => \Label_RAM|Z~279_combout\,
	combout => \Label_RAM|Z~290_combout\);

-- Location: FF_X38_Y33_N25
\Label_RAM|Data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~290_combout\,
	ena => \Label_CU|ALT_INV_current_state.staa_write_mem~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Data_out\(0));

-- Location: LCCOMB_X34_Y35_N12
\Label_MDRI|output[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_MDRI|output[0]~feeder_combout\ = \Label_RAM|Data_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_RAM|Data_out\(0),
	combout => \Label_MDRI|output[0]~feeder_combout\);

-- Location: FF_X34_Y35_N13
\Label_MDRI|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_MDRI|output[0]~feeder_combout\,
	ena => \Label_CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_MDRI|output\(0));

-- Location: FF_X32_Y35_N31
\Label_IR|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRI|output\(0),
	sload => VCC,
	ena => \Label_CU|current_state.load_ir~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_IR|output\(0));

-- Location: LCCOMB_X32_Y35_N16
\Label_CU|current_state~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_CU|current_state~19_combout\ = (!\Label_IR|output\(2) & (\Label_CU|current_state.decode~q\ & (!\Label_IR|output\(0) & !\Label_IR|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_IR|output\(2),
	datab => \Label_CU|current_state.decode~q\,
	datac => \Label_IR|output\(0),
	datad => \Label_IR|output\(1),
	combout => \Label_CU|current_state~19_combout\);

-- Location: FF_X32_Y35_N17
\Label_CU|current_state.ldaa_load_mar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_CU|current_state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_CU|current_state.ldaa_load_mar~q\);

-- Location: LCCOMB_X32_Y35_N0
\Label_ALU|output[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_ALU|output[7]~0_combout\ = (!\Label_CU|current_state.ldaa_load_mar~q\ & !\Label_CU|current_state.staa_load_mdro~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Label_CU|current_state.ldaa_load_mar~q\,
	datad => \Label_CU|current_state.staa_load_mdro~q\,
	combout => \Label_ALU|output[7]~0_combout\);

-- Location: LCCOMB_X38_Y36_N4
\Label_MARMUX|output[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_MARMUX|output[1]~1_combout\ = (\Label_CU|current_state.adaa_load_mar~q\ & (((\Label_IR|output\(1))))) # (!\Label_CU|current_state.adaa_load_mar~q\ & ((\Label_ALU|output[7]~0_combout\ & (\Label_ProgramCounter|output\(1))) # 
-- (!\Label_ALU|output[7]~0_combout\ & ((\Label_IR|output\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_CU|current_state.adaa_load_mar~q\,
	datab => \Label_ProgramCounter|output\(1),
	datac => \Label_ALU|output[7]~0_combout\,
	datad => \Label_IR|output\(1),
	combout => \Label_MARMUX|output[1]~1_combout\);

-- Location: FF_X38_Y36_N5
\Label_MAR|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_MARMUX|output[1]~1_combout\,
	ena => \Label_CU|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_MAR|output\(1));

-- Location: LCCOMB_X36_Y34_N26
\Label_MDRO|output[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_MDRO|output[4]~feeder_combout\ = \Label_MDRI|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRI|output\(4),
	combout => \Label_MDRO|output[4]~feeder_combout\);

-- Location: FF_X36_Y34_N27
\Label_MDRO|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_MDRO|output[4]~feeder_combout\,
	ena => \Label_CU|current_state.staa_load_mdro~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_MDRO|output\(4));

-- Location: LCCOMB_X36_Y36_N24
\Label_RAM|Z~106feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~106feeder_combout\ = \Label_MDRO|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(4),
	combout => \Label_RAM|Z~106feeder_combout\);

-- Location: FF_X36_Y36_N25
\Label_RAM|Z~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~106feeder_combout\,
	ena => \Label_RAM|Z~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~106_q\);

-- Location: FF_X37_Y36_N17
\Label_RAM|Z~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(4),
	sload => VCC,
	ena => \Label_RAM|Z~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~98_q\);

-- Location: FF_X37_Y36_N3
\Label_RAM|Z~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(4),
	sload => VCC,
	ena => \Label_RAM|Z~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~82_q\);

-- Location: LCCOMB_X41_Y36_N30
\Label_RAM|Z~546\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~546_combout\ = !\Label_MDRO|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(4),
	combout => \Label_RAM|Z~546_combout\);

-- Location: FF_X41_Y36_N31
\Label_RAM|Z~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~546_combout\,
	ena => \Label_RAM|Z~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~90_q\);

-- Location: LCCOMB_X37_Y36_N2
\Label_RAM|Z~364\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~364_combout\ = (\Label_MAR|output\(1) & (\Label_MAR|output\(0))) # (!\Label_MAR|output\(1) & ((\Label_MAR|output\(0) & ((!\Label_RAM|Z~90_q\))) # (!\Label_MAR|output\(0) & (\Label_RAM|Z~82_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(1),
	datab => \Label_MAR|output\(0),
	datac => \Label_RAM|Z~82_q\,
	datad => \Label_RAM|Z~90_q\,
	combout => \Label_RAM|Z~364_combout\);

-- Location: LCCOMB_X37_Y36_N16
\Label_RAM|Z~365\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~365_combout\ = (\Label_MAR|output\(1) & ((\Label_RAM|Z~364_combout\ & (\Label_RAM|Z~106_q\)) # (!\Label_RAM|Z~364_combout\ & ((\Label_RAM|Z~98_q\))))) # (!\Label_MAR|output\(1) & (((\Label_RAM|Z~364_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(1),
	datab => \Label_RAM|Z~106_q\,
	datac => \Label_RAM|Z~98_q\,
	datad => \Label_RAM|Z~364_combout\,
	combout => \Label_RAM|Z~365_combout\);

-- Location: LCCOMB_X36_Y35_N22
\Label_RAM|Z~549\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~549_combout\ = !\Label_MDRO|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(4),
	combout => \Label_RAM|Z~549_combout\);

-- Location: FF_X36_Y35_N23
\Label_RAM|Z~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~549_combout\,
	ena => \Label_RAM|Z~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~138_q\);

-- Location: FF_X36_Y35_N25
\Label_RAM|Z~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(4),
	sload => VCC,
	ena => \Label_RAM|Z~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~122_q\);

-- Location: LCCOMB_X35_Y35_N0
\Label_RAM|Z~130feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~130feeder_combout\ = \Label_MDRO|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(4),
	combout => \Label_RAM|Z~130feeder_combout\);

-- Location: FF_X35_Y35_N1
\Label_RAM|Z~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~130feeder_combout\,
	ena => \Label_RAM|Z~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~130_q\);

-- Location: FF_X35_Y35_N19
\Label_RAM|Z~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(4),
	sload => VCC,
	ena => \Label_RAM|Z~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~114_q\);

-- Location: LCCOMB_X35_Y35_N18
\Label_RAM|Z~371\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~371_combout\ = (\Label_MAR|output\(0) & (((\Label_MAR|output\(1))))) # (!\Label_MAR|output\(0) & ((\Label_MAR|output\(1) & (\Label_RAM|Z~130_q\)) # (!\Label_MAR|output\(1) & ((\Label_RAM|Z~114_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~130_q\,
	datab => \Label_MAR|output\(0),
	datac => \Label_RAM|Z~114_q\,
	datad => \Label_MAR|output\(1),
	combout => \Label_RAM|Z~371_combout\);

-- Location: LCCOMB_X36_Y35_N24
\Label_RAM|Z~372\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~372_combout\ = (\Label_MAR|output\(0) & ((\Label_RAM|Z~371_combout\ & (!\Label_RAM|Z~138_q\)) # (!\Label_RAM|Z~371_combout\ & ((\Label_RAM|Z~122_q\))))) # (!\Label_MAR|output\(0) & (((\Label_RAM|Z~371_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~138_q\,
	datab => \Label_MAR|output\(0),
	datac => \Label_RAM|Z~122_q\,
	datad => \Label_RAM|Z~371_combout\,
	combout => \Label_RAM|Z~372_combout\);

-- Location: LCCOMB_X40_Y33_N6
\Label_RAM|Z~548\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~548_combout\ = !\Label_MDRO|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(4),
	combout => \Label_RAM|Z~548_combout\);

-- Location: FF_X40_Y33_N7
\Label_RAM|Z~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~548_combout\,
	ena => \Label_RAM|Z~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~74_q\);

-- Location: FF_X39_Y33_N23
\Label_RAM|Z~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(4),
	sload => VCC,
	ena => \Label_RAM|Z~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~58_q\);

-- Location: LCCOMB_X40_Y33_N0
\Label_RAM|Z~547\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~547_combout\ = !\Label_MDRO|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(4),
	combout => \Label_RAM|Z~547_combout\);

-- Location: FF_X40_Y33_N1
\Label_RAM|Z~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~547_combout\,
	ena => \Label_RAM|Z~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~66_q\);

-- Location: FF_X39_Y33_N1
\Label_RAM|Z~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(4),
	sload => VCC,
	ena => \Label_RAM|Z~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~50_q\);

-- Location: LCCOMB_X39_Y33_N0
\Label_RAM|Z~366\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~366_combout\ = (\Label_MAR|output\(1) & (((\Label_MAR|output\(0))) # (!\Label_RAM|Z~66_q\))) # (!\Label_MAR|output\(1) & (((\Label_RAM|Z~50_q\ & !\Label_MAR|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~66_q\,
	datab => \Label_MAR|output\(1),
	datac => \Label_RAM|Z~50_q\,
	datad => \Label_MAR|output\(0),
	combout => \Label_RAM|Z~366_combout\);

-- Location: LCCOMB_X39_Y33_N22
\Label_RAM|Z~367\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~367_combout\ = (\Label_MAR|output\(0) & ((\Label_RAM|Z~366_combout\ & (!\Label_RAM|Z~74_q\)) # (!\Label_RAM|Z~366_combout\ & ((\Label_RAM|Z~58_q\))))) # (!\Label_MAR|output\(0) & (((\Label_RAM|Z~366_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~74_q\,
	datab => \Label_MAR|output\(0),
	datac => \Label_RAM|Z~58_q\,
	datad => \Label_RAM|Z~366_combout\,
	combout => \Label_RAM|Z~367_combout\);

-- Location: LCCOMB_X42_Y35_N12
\Label_RAM|Z~34feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~34feeder_combout\ = \Label_MDRO|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(4),
	combout => \Label_RAM|Z~34feeder_combout\);

-- Location: FF_X42_Y35_N13
\Label_RAM|Z~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~34feeder_combout\,
	ena => \Label_RAM|Z~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~34_q\);

-- Location: FF_X37_Y35_N25
\Label_RAM|Z~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(4),
	sload => VCC,
	ena => \Label_RAM|Z~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~42_q\);

-- Location: LCCOMB_X38_Y33_N2
\Label_RAM|Z~26feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~26feeder_combout\ = \Label_MDRO|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(4),
	combout => \Label_RAM|Z~26feeder_combout\);

-- Location: FF_X38_Y33_N3
\Label_RAM|Z~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~26feeder_combout\,
	ena => \Label_RAM|Z~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~26_q\);

-- Location: FF_X37_Y35_N11
\Label_RAM|Z~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(4),
	sload => VCC,
	ena => \Label_RAM|Z~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~18_q\);

-- Location: LCCOMB_X37_Y35_N10
\Label_RAM|Z~368\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~368_combout\ = (\Label_MAR|output\(0) & ((\Label_RAM|Z~26_q\) # ((\Label_MAR|output\(1))))) # (!\Label_MAR|output\(0) & (((\Label_RAM|Z~18_q\ & !\Label_MAR|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~26_q\,
	datab => \Label_MAR|output\(0),
	datac => \Label_RAM|Z~18_q\,
	datad => \Label_MAR|output\(1),
	combout => \Label_RAM|Z~368_combout\);

-- Location: LCCOMB_X37_Y35_N24
\Label_RAM|Z~369\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~369_combout\ = (\Label_MAR|output\(1) & ((\Label_RAM|Z~368_combout\ & ((\Label_RAM|Z~42_q\))) # (!\Label_RAM|Z~368_combout\ & (\Label_RAM|Z~34_q\)))) # (!\Label_MAR|output\(1) & (((\Label_RAM|Z~368_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~34_q\,
	datab => \Label_MAR|output\(1),
	datac => \Label_RAM|Z~42_q\,
	datad => \Label_RAM|Z~368_combout\,
	combout => \Label_RAM|Z~369_combout\);

-- Location: LCCOMB_X37_Y33_N10
\Label_RAM|Z~370\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~370_combout\ = (\Label_MAR|output\(3) & (\Label_MAR|output\(2))) # (!\Label_MAR|output\(3) & ((\Label_MAR|output\(2) & (\Label_RAM|Z~367_combout\)) # (!\Label_MAR|output\(2) & ((\Label_RAM|Z~369_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(3),
	datab => \Label_MAR|output\(2),
	datac => \Label_RAM|Z~367_combout\,
	datad => \Label_RAM|Z~369_combout\,
	combout => \Label_RAM|Z~370_combout\);

-- Location: LCCOMB_X37_Y33_N8
\Label_RAM|Z~373\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~373_combout\ = (\Label_MAR|output\(3) & ((\Label_RAM|Z~370_combout\ & ((\Label_RAM|Z~372_combout\))) # (!\Label_RAM|Z~370_combout\ & (\Label_RAM|Z~365_combout\)))) # (!\Label_MAR|output\(3) & (((\Label_RAM|Z~370_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~365_combout\,
	datab => \Label_MAR|output\(3),
	datac => \Label_RAM|Z~372_combout\,
	datad => \Label_RAM|Z~370_combout\,
	combout => \Label_RAM|Z~373_combout\);

-- Location: FF_X38_Y34_N11
\Label_RAM|Z~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(4),
	sload => VCC,
	ena => \Label_RAM|Z~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~258_q\);

-- Location: LCCOMB_X38_Y34_N8
\Label_RAM|Z~194feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~194feeder_combout\ = \Label_MDRO|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(4),
	combout => \Label_RAM|Z~194feeder_combout\);

-- Location: FF_X38_Y34_N9
\Label_RAM|Z~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~194feeder_combout\,
	ena => \Label_RAM|Z~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~194_q\);

-- Location: LCCOMB_X36_Y34_N10
\Label_RAM|Z~226feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~226feeder_combout\ = \Label_MDRO|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(4),
	combout => \Label_RAM|Z~226feeder_combout\);

-- Location: FF_X36_Y34_N11
\Label_RAM|Z~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~226feeder_combout\,
	ena => \Label_RAM|Z~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~226_q\);

-- Location: FF_X37_Y34_N19
\Label_RAM|Z~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(4),
	sload => VCC,
	ena => \Label_RAM|Z~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~162_q\);

-- Location: LCCOMB_X37_Y34_N18
\Label_RAM|Z~354\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~354_combout\ = (\Label_MAR|output\(2) & (((\Label_MAR|output\(3))))) # (!\Label_MAR|output\(2) & ((\Label_MAR|output\(3) & (\Label_RAM|Z~226_q\)) # (!\Label_MAR|output\(3) & ((\Label_RAM|Z~162_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(2),
	datab => \Label_RAM|Z~226_q\,
	datac => \Label_RAM|Z~162_q\,
	datad => \Label_MAR|output\(3),
	combout => \Label_RAM|Z~354_combout\);

-- Location: LCCOMB_X37_Y34_N12
\Label_RAM|Z~355\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~355_combout\ = (\Label_MAR|output\(2) & ((\Label_RAM|Z~354_combout\ & (\Label_RAM|Z~258_q\)) # (!\Label_RAM|Z~354_combout\ & ((\Label_RAM|Z~194_q\))))) # (!\Label_MAR|output\(2) & (((\Label_RAM|Z~354_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(2),
	datab => \Label_RAM|Z~258_q\,
	datac => \Label_RAM|Z~194_q\,
	datad => \Label_RAM|Z~354_combout\,
	combout => \Label_RAM|Z~355_combout\);

-- Location: LCCOMB_X39_Y38_N8
\Label_RAM|Z~545\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~545_combout\ = !\Label_MDRO|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(4),
	combout => \Label_RAM|Z~545_combout\);

-- Location: FF_X39_Y38_N9
\Label_RAM|Z~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~545_combout\,
	ena => \Label_RAM|Z~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~266_q\);

-- Location: FF_X38_Y38_N21
\Label_RAM|Z~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(4),
	sload => VCC,
	ena => \Label_RAM|Z~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~234_q\);

-- Location: LCCOMB_X39_Y38_N14
\Label_RAM|Z~544\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~544_combout\ = !\Label_MDRO|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(4),
	combout => \Label_RAM|Z~544_combout\);

-- Location: FF_X39_Y38_N15
\Label_RAM|Z~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~544_combout\,
	ena => \Label_RAM|Z~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~202_q\);

-- Location: FF_X38_Y38_N11
\Label_RAM|Z~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(4),
	sload => VCC,
	ena => \Label_RAM|Z~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~170_q\);

-- Location: LCCOMB_X38_Y38_N10
\Label_RAM|Z~361\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~361_combout\ = (\Label_MAR|output\(3) & (((\Label_MAR|output\(2))))) # (!\Label_MAR|output\(3) & ((\Label_MAR|output\(2) & (!\Label_RAM|Z~202_q\)) # (!\Label_MAR|output\(2) & ((\Label_RAM|Z~170_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(3),
	datab => \Label_RAM|Z~202_q\,
	datac => \Label_RAM|Z~170_q\,
	datad => \Label_MAR|output\(2),
	combout => \Label_RAM|Z~361_combout\);

-- Location: LCCOMB_X38_Y38_N20
\Label_RAM|Z~362\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~362_combout\ = (\Label_MAR|output\(3) & ((\Label_RAM|Z~361_combout\ & (!\Label_RAM|Z~266_q\)) # (!\Label_RAM|Z~361_combout\ & ((\Label_RAM|Z~234_q\))))) # (!\Label_MAR|output\(3) & (((\Label_RAM|Z~361_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(3),
	datab => \Label_RAM|Z~266_q\,
	datac => \Label_RAM|Z~234_q\,
	datad => \Label_RAM|Z~361_combout\,
	combout => \Label_RAM|Z~362_combout\);

-- Location: LCCOMB_X41_Y37_N8
\Label_RAM|Z~542\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~542_combout\ = !\Label_MDRO|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(4),
	combout => \Label_RAM|Z~542_combout\);

-- Location: FF_X41_Y37_N9
\Label_RAM|Z~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~542_combout\,
	ena => \Label_RAM|Z~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~218_q\);

-- Location: FF_X38_Y37_N15
\Label_RAM|Z~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(4),
	sload => VCC,
	ena => \Label_RAM|Z~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~250_q\);

-- Location: LCCOMB_X37_Y37_N16
\Label_RAM|Z~543\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~543_combout\ = !\Label_MDRO|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(4),
	combout => \Label_RAM|Z~543_combout\);

-- Location: FF_X37_Y37_N17
\Label_RAM|Z~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~543_combout\,
	ena => \Label_RAM|Z~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~154_q\);

-- Location: FF_X38_Y37_N1
\Label_RAM|Z~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(4),
	sload => VCC,
	ena => \Label_RAM|Z~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~186_q\);

-- Location: LCCOMB_X38_Y37_N0
\Label_RAM|Z~356\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~356_combout\ = (\Label_MAR|output\(3) & (((\Label_MAR|output\(2))))) # (!\Label_MAR|output\(3) & ((\Label_MAR|output\(2) & ((\Label_RAM|Z~186_q\))) # (!\Label_MAR|output\(2) & (!\Label_RAM|Z~154_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~154_q\,
	datab => \Label_MAR|output\(3),
	datac => \Label_RAM|Z~186_q\,
	datad => \Label_MAR|output\(2),
	combout => \Label_RAM|Z~356_combout\);

-- Location: LCCOMB_X38_Y37_N14
\Label_RAM|Z~357\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~357_combout\ = (\Label_MAR|output\(3) & ((\Label_RAM|Z~356_combout\ & ((\Label_RAM|Z~250_q\))) # (!\Label_RAM|Z~356_combout\ & (!\Label_RAM|Z~218_q\)))) # (!\Label_MAR|output\(3) & (((\Label_RAM|Z~356_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~218_q\,
	datab => \Label_MAR|output\(3),
	datac => \Label_RAM|Z~250_q\,
	datad => \Label_RAM|Z~356_combout\,
	combout => \Label_RAM|Z~357_combout\);

-- Location: LCCOMB_X40_Y34_N2
\Label_RAM|Z~178feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~178feeder_combout\ = \Label_MDRO|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(4),
	combout => \Label_RAM|Z~178feeder_combout\);

-- Location: FF_X40_Y34_N3
\Label_RAM|Z~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~178feeder_combout\,
	ena => \Label_RAM|Z~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~178_q\);

-- Location: FF_X39_Y34_N5
\Label_RAM|Z~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(4),
	sload => VCC,
	ena => \Label_RAM|Z~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~242_q\);

-- Location: LCCOMB_X40_Y34_N24
\Label_RAM|Z~210feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~210feeder_combout\ = \Label_MDRO|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(4),
	combout => \Label_RAM|Z~210feeder_combout\);

-- Location: FF_X40_Y34_N25
\Label_RAM|Z~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~210feeder_combout\,
	ena => \Label_RAM|Z~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~210_q\);

-- Location: FF_X39_Y34_N3
\Label_RAM|Z~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(4),
	sload => VCC,
	ena => \Label_RAM|Z~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~146_q\);

-- Location: LCCOMB_X39_Y34_N2
\Label_RAM|Z~358\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~358_combout\ = (\Label_MAR|output\(3) & ((\Label_RAM|Z~210_q\) # ((\Label_MAR|output\(2))))) # (!\Label_MAR|output\(3) & (((\Label_RAM|Z~146_q\ & !\Label_MAR|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(3),
	datab => \Label_RAM|Z~210_q\,
	datac => \Label_RAM|Z~146_q\,
	datad => \Label_MAR|output\(2),
	combout => \Label_RAM|Z~358_combout\);

-- Location: LCCOMB_X39_Y34_N4
\Label_RAM|Z~359\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~359_combout\ = (\Label_MAR|output\(2) & ((\Label_RAM|Z~358_combout\ & ((\Label_RAM|Z~242_q\))) # (!\Label_RAM|Z~358_combout\ & (\Label_RAM|Z~178_q\)))) # (!\Label_MAR|output\(2) & (((\Label_RAM|Z~358_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~178_q\,
	datab => \Label_MAR|output\(2),
	datac => \Label_RAM|Z~242_q\,
	datad => \Label_RAM|Z~358_combout\,
	combout => \Label_RAM|Z~359_combout\);

-- Location: LCCOMB_X37_Y33_N6
\Label_RAM|Z~360\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~360_combout\ = (\Label_MAR|output\(0) & ((\Label_MAR|output\(1)) # ((\Label_RAM|Z~357_combout\)))) # (!\Label_MAR|output\(0) & (!\Label_MAR|output\(1) & ((\Label_RAM|Z~359_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(0),
	datab => \Label_MAR|output\(1),
	datac => \Label_RAM|Z~357_combout\,
	datad => \Label_RAM|Z~359_combout\,
	combout => \Label_RAM|Z~360_combout\);

-- Location: LCCOMB_X37_Y33_N20
\Label_RAM|Z~363\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~363_combout\ = (\Label_MAR|output\(1) & ((\Label_RAM|Z~360_combout\ & ((\Label_RAM|Z~362_combout\))) # (!\Label_RAM|Z~360_combout\ & (\Label_RAM|Z~355_combout\)))) # (!\Label_MAR|output\(1) & (((\Label_RAM|Z~360_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(1),
	datab => \Label_RAM|Z~355_combout\,
	datac => \Label_RAM|Z~362_combout\,
	datad => \Label_RAM|Z~360_combout\,
	combout => \Label_RAM|Z~363_combout\);

-- Location: LCCOMB_X37_Y33_N24
\Label_RAM|Z~374\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~374_combout\ = (\Label_MAR|output\(4) & ((\Label_RAM|Z~363_combout\))) # (!\Label_MAR|output\(4) & (\Label_RAM|Z~373_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(4),
	datac => \Label_RAM|Z~373_combout\,
	datad => \Label_RAM|Z~363_combout\,
	combout => \Label_RAM|Z~374_combout\);

-- Location: FF_X37_Y33_N25
\Label_RAM|Data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~374_combout\,
	ena => \Label_CU|ALT_INV_current_state.staa_write_mem~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Data_out\(4));

-- Location: LCCOMB_X34_Y35_N14
\Label_MDRI|output[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_MDRI|output[4]~feeder_combout\ = \Label_RAM|Data_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_RAM|Data_out\(4),
	combout => \Label_MDRI|output[4]~feeder_combout\);

-- Location: FF_X34_Y35_N15
\Label_MDRI|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_MDRI|output[4]~feeder_combout\,
	ena => \Label_CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_MDRI|output\(4));

-- Location: FF_X35_Y36_N27
\Label_IR|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRI|output\(4),
	sload => VCC,
	ena => \Label_CU|current_state.load_ir~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_IR|output\(4));

-- Location: LCCOMB_X35_Y36_N26
\Label_MARMUX|output[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_MARMUX|output[4]~4_combout\ = (\Label_CU|current_state.adaa_load_mar~q\ & (((\Label_IR|output\(4))))) # (!\Label_CU|current_state.adaa_load_mar~q\ & ((\Label_ALU|output[7]~0_combout\ & (\Label_ProgramCounter|output\(4))) # 
-- (!\Label_ALU|output[7]~0_combout\ & ((\Label_IR|output\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_CU|current_state.adaa_load_mar~q\,
	datab => \Label_ProgramCounter|output\(4),
	datac => \Label_IR|output\(4),
	datad => \Label_ALU|output[7]~0_combout\,
	combout => \Label_MARMUX|output[4]~4_combout\);

-- Location: LCCOMB_X38_Y36_N22
\Label_MAR|output[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_MAR|output[4]~feeder_combout\ = \Label_MARMUX|output[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MARMUX|output[4]~4_combout\,
	combout => \Label_MAR|output[4]~feeder_combout\);

-- Location: FF_X38_Y36_N23
\Label_MAR|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_MAR|output[4]~feeder_combout\,
	ena => \Label_CU|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_MAR|output\(4));

-- Location: LCCOMB_X34_Y34_N0
\Label_MDRO|output[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_MDRO|output[2]~feeder_combout\ = \Label_MDRI|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRI|output\(2),
	combout => \Label_MDRO|output[2]~feeder_combout\);

-- Location: FF_X34_Y34_N1
\Label_MDRO|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_MDRO|output[2]~feeder_combout\,
	ena => \Label_CU|current_state.staa_load_mdro~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_MDRO|output\(2));

-- Location: LCCOMB_X36_Y36_N10
\Label_RAM|Z~104feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~104feeder_combout\ = \Label_MDRO|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(2),
	combout => \Label_RAM|Z~104feeder_combout\);

-- Location: FF_X36_Y36_N11
\Label_RAM|Z~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~104feeder_combout\,
	ena => \Label_RAM|Z~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~104_q\);

-- Location: FF_X37_Y36_N9
\Label_RAM|Z~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(2),
	sload => VCC,
	ena => \Label_RAM|Z~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~96_q\);

-- Location: FF_X37_Y36_N19
\Label_RAM|Z~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(2),
	sload => VCC,
	ena => \Label_RAM|Z~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~80_q\);

-- Location: LCCOMB_X41_Y36_N28
\Label_RAM|Z~520\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~520_combout\ = !\Label_MDRO|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(2),
	combout => \Label_RAM|Z~520_combout\);

-- Location: FF_X41_Y36_N29
\Label_RAM|Z~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~520_combout\,
	ena => \Label_RAM|Z~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~88_q\);

-- Location: LCCOMB_X37_Y36_N18
\Label_RAM|Z~322\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~322_combout\ = (\Label_MAR|output\(1) & (\Label_MAR|output\(0))) # (!\Label_MAR|output\(1) & ((\Label_MAR|output\(0) & ((!\Label_RAM|Z~88_q\))) # (!\Label_MAR|output\(0) & (\Label_RAM|Z~80_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(1),
	datab => \Label_MAR|output\(0),
	datac => \Label_RAM|Z~80_q\,
	datad => \Label_RAM|Z~88_q\,
	combout => \Label_RAM|Z~322_combout\);

-- Location: LCCOMB_X37_Y36_N8
\Label_RAM|Z~323\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~323_combout\ = (\Label_MAR|output\(1) & ((\Label_RAM|Z~322_combout\ & (\Label_RAM|Z~104_q\)) # (!\Label_RAM|Z~322_combout\ & ((\Label_RAM|Z~96_q\))))) # (!\Label_MAR|output\(1) & (((\Label_RAM|Z~322_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(1),
	datab => \Label_RAM|Z~104_q\,
	datac => \Label_RAM|Z~96_q\,
	datad => \Label_RAM|Z~322_combout\,
	combout => \Label_RAM|Z~323_combout\);

-- Location: LCCOMB_X36_Y35_N10
\Label_RAM|Z~528\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~528_combout\ = !\Label_MDRO|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(2),
	combout => \Label_RAM|Z~528_combout\);

-- Location: FF_X36_Y35_N11
\Label_RAM|Z~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~528_combout\,
	ena => \Label_RAM|Z~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~136_q\);

-- Location: FF_X36_Y35_N17
\Label_RAM|Z~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(2),
	sload => VCC,
	ena => \Label_RAM|Z~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~120_q\);

-- Location: LCCOMB_X35_Y35_N16
\Label_RAM|Z~527\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~527_combout\ = !\Label_MDRO|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(2),
	combout => \Label_RAM|Z~527_combout\);

-- Location: FF_X35_Y35_N17
\Label_RAM|Z~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~527_combout\,
	ena => \Label_RAM|Z~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~128_q\);

-- Location: FF_X35_Y35_N31
\Label_RAM|Z~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(2),
	sload => VCC,
	ena => \Label_RAM|Z~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~112_q\);

-- Location: LCCOMB_X35_Y35_N30
\Label_RAM|Z~329\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~329_combout\ = (\Label_MAR|output\(0) & (((\Label_MAR|output\(1))))) # (!\Label_MAR|output\(0) & ((\Label_MAR|output\(1) & (!\Label_RAM|Z~128_q\)) # (!\Label_MAR|output\(1) & ((\Label_RAM|Z~112_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(0),
	datab => \Label_RAM|Z~128_q\,
	datac => \Label_RAM|Z~112_q\,
	datad => \Label_MAR|output\(1),
	combout => \Label_RAM|Z~329_combout\);

-- Location: LCCOMB_X36_Y35_N16
\Label_RAM|Z~330\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~330_combout\ = (\Label_MAR|output\(0) & ((\Label_RAM|Z~329_combout\ & (!\Label_RAM|Z~136_q\)) # (!\Label_RAM|Z~329_combout\ & ((\Label_RAM|Z~120_q\))))) # (!\Label_MAR|output\(0) & (((\Label_RAM|Z~329_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~136_q\,
	datab => \Label_MAR|output\(0),
	datac => \Label_RAM|Z~120_q\,
	datad => \Label_RAM|Z~329_combout\,
	combout => \Label_RAM|Z~330_combout\);

-- Location: LCCOMB_X41_Y35_N2
\Label_RAM|Z~526\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~526_combout\ = !\Label_MDRO|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(2),
	combout => \Label_RAM|Z~526_combout\);

-- Location: LCCOMB_X40_Y35_N18
\Label_RAM|Z~40feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~40feeder_combout\ = \Label_RAM|Z~526_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_RAM|Z~526_combout\,
	combout => \Label_RAM|Z~40feeder_combout\);

-- Location: FF_X40_Y35_N19
\Label_RAM|Z~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~40feeder_combout\,
	ena => \Label_RAM|Z~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~40_q\);

-- Location: LCCOMB_X42_Y35_N0
\Label_RAM|Z~523\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~523_combout\ = !\Label_MDRO|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(2),
	combout => \Label_RAM|Z~523_combout\);

-- Location: FF_X42_Y35_N1
\Label_RAM|Z~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~523_combout\,
	ena => \Label_RAM|Z~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~32_q\);

-- Location: LCCOMB_X37_Y35_N26
\Label_RAM|Z~525\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~525_combout\ = !\Label_MDRO|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(2),
	combout => \Label_RAM|Z~525_combout\);

-- Location: FF_X37_Y35_N27
\Label_RAM|Z~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~525_combout\,
	ena => \Label_RAM|Z~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~16_q\);

-- Location: LCCOMB_X41_Y35_N8
\Label_RAM|Z~524\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~524_combout\ = !\Label_MDRO|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(2),
	combout => \Label_RAM|Z~524_combout\);

-- Location: FF_X41_Y35_N9
\Label_RAM|Z~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~524_combout\,
	ena => \Label_RAM|Z~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~24_q\);

-- Location: LCCOMB_X37_Y35_N8
\Label_RAM|Z~326\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~326_combout\ = (\Label_MAR|output\(0) & (((\Label_MAR|output\(1)) # (!\Label_RAM|Z~24_q\)))) # (!\Label_MAR|output\(0) & (!\Label_RAM|Z~16_q\ & ((!\Label_MAR|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~16_q\,
	datab => \Label_MAR|output\(0),
	datac => \Label_RAM|Z~24_q\,
	datad => \Label_MAR|output\(1),
	combout => \Label_RAM|Z~326_combout\);

-- Location: LCCOMB_X38_Y35_N30
\Label_RAM|Z~327\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~327_combout\ = (\Label_MAR|output\(1) & ((\Label_RAM|Z~326_combout\ & (!\Label_RAM|Z~40_q\)) # (!\Label_RAM|Z~326_combout\ & ((!\Label_RAM|Z~32_q\))))) # (!\Label_MAR|output\(1) & (((\Label_RAM|Z~326_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~40_q\,
	datab => \Label_RAM|Z~32_q\,
	datac => \Label_MAR|output\(1),
	datad => \Label_RAM|Z~326_combout\,
	combout => \Label_RAM|Z~327_combout\);

-- Location: LCCOMB_X40_Y33_N30
\Label_RAM|Z~522\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~522_combout\ = !\Label_MDRO|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(2),
	combout => \Label_RAM|Z~522_combout\);

-- Location: FF_X40_Y33_N31
\Label_RAM|Z~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~522_combout\,
	ena => \Label_RAM|Z~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~72_q\);

-- Location: FF_X39_Y33_N21
\Label_RAM|Z~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(2),
	sload => VCC,
	ena => \Label_RAM|Z~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~56_q\);

-- Location: LCCOMB_X40_Y33_N16
\Label_RAM|Z~521\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~521_combout\ = !\Label_MDRO|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(2),
	combout => \Label_RAM|Z~521_combout\);

-- Location: FF_X40_Y33_N17
\Label_RAM|Z~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~521_combout\,
	ena => \Label_RAM|Z~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~64_q\);

-- Location: FF_X39_Y33_N11
\Label_RAM|Z~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(2),
	sload => VCC,
	ena => \Label_RAM|Z~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~48_q\);

-- Location: LCCOMB_X39_Y33_N10
\Label_RAM|Z~324\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~324_combout\ = (\Label_MAR|output\(1) & (((\Label_MAR|output\(0))) # (!\Label_RAM|Z~64_q\))) # (!\Label_MAR|output\(1) & (((\Label_RAM|Z~48_q\ & !\Label_MAR|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~64_q\,
	datab => \Label_MAR|output\(1),
	datac => \Label_RAM|Z~48_q\,
	datad => \Label_MAR|output\(0),
	combout => \Label_RAM|Z~324_combout\);

-- Location: LCCOMB_X39_Y33_N20
\Label_RAM|Z~325\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~325_combout\ = (\Label_MAR|output\(0) & ((\Label_RAM|Z~324_combout\ & (!\Label_RAM|Z~72_q\)) # (!\Label_RAM|Z~324_combout\ & ((\Label_RAM|Z~56_q\))))) # (!\Label_MAR|output\(0) & (((\Label_RAM|Z~324_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~72_q\,
	datab => \Label_MAR|output\(0),
	datac => \Label_RAM|Z~56_q\,
	datad => \Label_RAM|Z~324_combout\,
	combout => \Label_RAM|Z~325_combout\);

-- Location: LCCOMB_X38_Y35_N16
\Label_RAM|Z~328\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~328_combout\ = (\Label_MAR|output\(3) & (((\Label_MAR|output\(2))))) # (!\Label_MAR|output\(3) & ((\Label_MAR|output\(2) & ((\Label_RAM|Z~325_combout\))) # (!\Label_MAR|output\(2) & (\Label_RAM|Z~327_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~327_combout\,
	datab => \Label_MAR|output\(3),
	datac => \Label_MAR|output\(2),
	datad => \Label_RAM|Z~325_combout\,
	combout => \Label_RAM|Z~328_combout\);

-- Location: LCCOMB_X38_Y35_N22
\Label_RAM|Z~331\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~331_combout\ = (\Label_MAR|output\(3) & ((\Label_RAM|Z~328_combout\ & ((\Label_RAM|Z~330_combout\))) # (!\Label_RAM|Z~328_combout\ & (\Label_RAM|Z~323_combout\)))) # (!\Label_MAR|output\(3) & (((\Label_RAM|Z~328_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~323_combout\,
	datab => \Label_MAR|output\(3),
	datac => \Label_RAM|Z~330_combout\,
	datad => \Label_RAM|Z~328_combout\,
	combout => \Label_RAM|Z~331_combout\);

-- Location: LCCOMB_X38_Y34_N14
\Label_RAM|Z~513\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~513_combout\ = !\Label_MDRO|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(2),
	combout => \Label_RAM|Z~513_combout\);

-- Location: FF_X38_Y34_N15
\Label_RAM|Z~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~513_combout\,
	ena => \Label_RAM|Z~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~256_q\);

-- Location: LCCOMB_X36_Y34_N30
\Label_RAM|Z~224feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~224feeder_combout\ = \Label_MDRO|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(2),
	combout => \Label_RAM|Z~224feeder_combout\);

-- Location: FF_X36_Y34_N31
\Label_RAM|Z~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~224feeder_combout\,
	ena => \Label_RAM|Z~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~224_q\);

-- Location: FF_X37_Y34_N11
\Label_RAM|Z~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(2),
	sload => VCC,
	ena => \Label_RAM|Z~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~160_q\);

-- Location: LCCOMB_X37_Y34_N10
\Label_RAM|Z~312\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~312_combout\ = (\Label_MAR|output\(2) & (((\Label_MAR|output\(3))))) # (!\Label_MAR|output\(2) & ((\Label_MAR|output\(3) & (\Label_RAM|Z~224_q\)) # (!\Label_MAR|output\(3) & ((\Label_RAM|Z~160_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(2),
	datab => \Label_RAM|Z~224_q\,
	datac => \Label_RAM|Z~160_q\,
	datad => \Label_MAR|output\(3),
	combout => \Label_RAM|Z~312_combout\);

-- Location: LCCOMB_X38_Y34_N4
\Label_RAM|Z~512\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~512_combout\ = !\Label_MDRO|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(2),
	combout => \Label_RAM|Z~512_combout\);

-- Location: FF_X38_Y34_N5
\Label_RAM|Z~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~512_combout\,
	ena => \Label_RAM|Z~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~192_q\);

-- Location: LCCOMB_X38_Y35_N28
\Label_RAM|Z~313\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~313_combout\ = (\Label_MAR|output\(2) & ((\Label_RAM|Z~312_combout\ & (!\Label_RAM|Z~256_q\)) # (!\Label_RAM|Z~312_combout\ & ((!\Label_RAM|Z~192_q\))))) # (!\Label_MAR|output\(2) & (((\Label_RAM|Z~312_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~256_q\,
	datab => \Label_MAR|output\(2),
	datac => \Label_RAM|Z~312_combout\,
	datad => \Label_RAM|Z~192_q\,
	combout => \Label_RAM|Z~313_combout\);

-- Location: LCCOMB_X38_Y35_N26
\Label_RAM|Z~519\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~519_combout\ = !\Label_MDRO|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(2),
	combout => \Label_RAM|Z~519_combout\);

-- Location: FF_X39_Y35_N11
\Label_RAM|Z~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_RAM|Z~519_combout\,
	sload => VCC,
	ena => \Label_RAM|Z~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~264_q\);

-- Location: FF_X38_Y38_N9
\Label_RAM|Z~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(2),
	sload => VCC,
	ena => \Label_RAM|Z~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~232_q\);

-- Location: LCCOMB_X39_Y38_N22
\Label_RAM|Z~518\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~518_combout\ = !\Label_MDRO|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(2),
	combout => \Label_RAM|Z~518_combout\);

-- Location: FF_X39_Y38_N23
\Label_RAM|Z~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~518_combout\,
	ena => \Label_RAM|Z~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~200_q\);

-- Location: FF_X38_Y38_N19
\Label_RAM|Z~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(2),
	sload => VCC,
	ena => \Label_RAM|Z~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~168_q\);

-- Location: LCCOMB_X38_Y38_N18
\Label_RAM|Z~319\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~319_combout\ = (\Label_MAR|output\(3) & (((\Label_MAR|output\(2))))) # (!\Label_MAR|output\(3) & ((\Label_MAR|output\(2) & (!\Label_RAM|Z~200_q\)) # (!\Label_MAR|output\(2) & ((\Label_RAM|Z~168_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(3),
	datab => \Label_RAM|Z~200_q\,
	datac => \Label_RAM|Z~168_q\,
	datad => \Label_MAR|output\(2),
	combout => \Label_RAM|Z~319_combout\);

-- Location: LCCOMB_X38_Y38_N8
\Label_RAM|Z~320\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~320_combout\ = (\Label_MAR|output\(3) & ((\Label_RAM|Z~319_combout\ & (!\Label_RAM|Z~264_q\)) # (!\Label_RAM|Z~319_combout\ & ((\Label_RAM|Z~232_q\))))) # (!\Label_MAR|output\(3) & (((\Label_RAM|Z~319_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(3),
	datab => \Label_RAM|Z~264_q\,
	datac => \Label_RAM|Z~232_q\,
	datad => \Label_RAM|Z~319_combout\,
	combout => \Label_RAM|Z~320_combout\);

-- Location: LCCOMB_X41_Y35_N10
\Label_RAM|Z~176feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~176feeder_combout\ = \Label_MDRO|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(2),
	combout => \Label_RAM|Z~176feeder_combout\);

-- Location: FF_X41_Y35_N11
\Label_RAM|Z~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~176feeder_combout\,
	ena => \Label_RAM|Z~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~176_q\);

-- Location: FF_X38_Y35_N1
\Label_RAM|Z~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(2),
	sload => VCC,
	ena => \Label_RAM|Z~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~240_q\);

-- Location: LCCOMB_X40_Y34_N0
\Label_RAM|Z~516\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~516_combout\ = !\Label_MDRO|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(2),
	combout => \Label_RAM|Z~516_combout\);

-- Location: FF_X40_Y34_N1
\Label_RAM|Z~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~516_combout\,
	ena => \Label_RAM|Z~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~208_q\);

-- Location: LCCOMB_X39_Y34_N28
\Label_RAM|Z~517\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~517_combout\ = !\Label_MDRO|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(2),
	combout => \Label_RAM|Z~517_combout\);

-- Location: FF_X39_Y34_N29
\Label_RAM|Z~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~517_combout\,
	ena => \Label_RAM|Z~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~144_q\);

-- Location: LCCOMB_X38_Y35_N18
\Label_RAM|Z~316\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~316_combout\ = (\Label_MAR|output\(3) & (((\Label_MAR|output\(2))) # (!\Label_RAM|Z~208_q\))) # (!\Label_MAR|output\(3) & (((!\Label_MAR|output\(2) & !\Label_RAM|Z~144_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(3),
	datab => \Label_RAM|Z~208_q\,
	datac => \Label_MAR|output\(2),
	datad => \Label_RAM|Z~144_q\,
	combout => \Label_RAM|Z~316_combout\);

-- Location: LCCOMB_X38_Y35_N0
\Label_RAM|Z~317\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~317_combout\ = (\Label_MAR|output\(2) & ((\Label_RAM|Z~316_combout\ & ((\Label_RAM|Z~240_q\))) # (!\Label_RAM|Z~316_combout\ & (\Label_RAM|Z~176_q\)))) # (!\Label_MAR|output\(2) & (((\Label_RAM|Z~316_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~176_q\,
	datab => \Label_MAR|output\(2),
	datac => \Label_RAM|Z~240_q\,
	datad => \Label_RAM|Z~316_combout\,
	combout => \Label_RAM|Z~317_combout\);

-- Location: LCCOMB_X41_Y37_N22
\Label_RAM|Z~514\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~514_combout\ = !\Label_MDRO|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(2),
	combout => \Label_RAM|Z~514_combout\);

-- Location: FF_X41_Y37_N23
\Label_RAM|Z~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~514_combout\,
	ena => \Label_RAM|Z~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~216_q\);

-- Location: FF_X38_Y37_N31
\Label_RAM|Z~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(2),
	sload => VCC,
	ena => \Label_RAM|Z~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~248_q\);

-- Location: LCCOMB_X37_Y37_N26
\Label_RAM|Z~515\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~515_combout\ = !\Label_MDRO|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(2),
	combout => \Label_RAM|Z~515_combout\);

-- Location: FF_X37_Y37_N27
\Label_RAM|Z~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~515_combout\,
	ena => \Label_RAM|Z~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~152_q\);

-- Location: FF_X38_Y37_N29
\Label_RAM|Z~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(2),
	sload => VCC,
	ena => \Label_RAM|Z~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~184_q\);

-- Location: LCCOMB_X38_Y37_N28
\Label_RAM|Z~314\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~314_combout\ = (\Label_MAR|output\(3) & (((\Label_MAR|output\(2))))) # (!\Label_MAR|output\(3) & ((\Label_MAR|output\(2) & ((\Label_RAM|Z~184_q\))) # (!\Label_MAR|output\(2) & (!\Label_RAM|Z~152_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~152_q\,
	datab => \Label_MAR|output\(3),
	datac => \Label_RAM|Z~184_q\,
	datad => \Label_MAR|output\(2),
	combout => \Label_RAM|Z~314_combout\);

-- Location: LCCOMB_X38_Y37_N30
\Label_RAM|Z~315\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~315_combout\ = (\Label_MAR|output\(3) & ((\Label_RAM|Z~314_combout\ & ((\Label_RAM|Z~248_q\))) # (!\Label_RAM|Z~314_combout\ & (!\Label_RAM|Z~216_q\)))) # (!\Label_MAR|output\(3) & (((\Label_RAM|Z~314_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~216_q\,
	datab => \Label_MAR|output\(3),
	datac => \Label_RAM|Z~248_q\,
	datad => \Label_RAM|Z~314_combout\,
	combout => \Label_RAM|Z~315_combout\);

-- Location: LCCOMB_X38_Y35_N6
\Label_RAM|Z~318\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~318_combout\ = (\Label_MAR|output\(1) & (((\Label_MAR|output\(0))))) # (!\Label_MAR|output\(1) & ((\Label_MAR|output\(0) & ((\Label_RAM|Z~315_combout\))) # (!\Label_MAR|output\(0) & (\Label_RAM|Z~317_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(1),
	datab => \Label_RAM|Z~317_combout\,
	datac => \Label_MAR|output\(0),
	datad => \Label_RAM|Z~315_combout\,
	combout => \Label_RAM|Z~318_combout\);

-- Location: LCCOMB_X38_Y35_N24
\Label_RAM|Z~321\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~321_combout\ = (\Label_MAR|output\(1) & ((\Label_RAM|Z~318_combout\ & ((\Label_RAM|Z~320_combout\))) # (!\Label_RAM|Z~318_combout\ & (\Label_RAM|Z~313_combout\)))) # (!\Label_MAR|output\(1) & (((\Label_RAM|Z~318_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(1),
	datab => \Label_RAM|Z~313_combout\,
	datac => \Label_RAM|Z~320_combout\,
	datad => \Label_RAM|Z~318_combout\,
	combout => \Label_RAM|Z~321_combout\);

-- Location: LCCOMB_X38_Y35_N12
\Label_RAM|Z~332\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~332_combout\ = (\Label_MAR|output\(4) & ((\Label_RAM|Z~321_combout\))) # (!\Label_MAR|output\(4) & (\Label_RAM|Z~331_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Label_MAR|output\(4),
	datac => \Label_RAM|Z~331_combout\,
	datad => \Label_RAM|Z~321_combout\,
	combout => \Label_RAM|Z~332_combout\);

-- Location: FF_X38_Y35_N13
\Label_RAM|Data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~332_combout\,
	ena => \Label_CU|ALT_INV_current_state.staa_write_mem~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Data_out\(2));

-- Location: LCCOMB_X34_Y35_N28
\Label_MDRI|output[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_MDRI|output[2]~feeder_combout\ = \Label_RAM|Data_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_RAM|Data_out\(2),
	combout => \Label_MDRI|output[2]~feeder_combout\);

-- Location: FF_X34_Y35_N29
\Label_MDRI|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_MDRI|output[2]~feeder_combout\,
	ena => \Label_CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_MDRI|output\(2));

-- Location: LCCOMB_X32_Y35_N26
\Label_IR|output[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_IR|output[2]~feeder_combout\ = \Label_MDRI|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRI|output\(2),
	combout => \Label_IR|output[2]~feeder_combout\);

-- Location: FF_X32_Y35_N27
\Label_IR|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_IR|output[2]~feeder_combout\,
	ena => \Label_CU|current_state.load_ir~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_IR|output\(2));

-- Location: LCCOMB_X32_Y35_N20
\Label_CU|current_state~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_CU|current_state~21_combout\ = (!\Label_IR|output\(2) & (\Label_CU|current_state.decode~q\ & (\Label_IR|output\(0) & !\Label_IR|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_IR|output\(2),
	datab => \Label_CU|current_state.decode~q\,
	datac => \Label_IR|output\(0),
	datad => \Label_IR|output\(1),
	combout => \Label_CU|current_state~21_combout\);

-- Location: FF_X32_Y35_N21
\Label_CU|current_state.adaa_load_mar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_CU|current_state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_CU|current_state.adaa_load_mar~q\);

-- Location: LCCOMB_X32_Y35_N14
\Label_CU|current_state.adaa_read_mem~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_CU|current_state.adaa_read_mem~feeder_combout\ = \Label_CU|current_state.adaa_load_mar~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_CU|current_state.adaa_load_mar~q\,
	combout => \Label_CU|current_state.adaa_read_mem~feeder_combout\);

-- Location: FF_X32_Y35_N15
\Label_CU|current_state.adaa_read_mem\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_CU|current_state.adaa_read_mem~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_CU|current_state.adaa_read_mem~q\);

-- Location: FF_X32_Y35_N9
\Label_CU|current_state.adaa_load_mdri\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_CU|current_state.adaa_read_mem~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_CU|current_state.adaa_load_mdri~q\);

-- Location: FF_X32_Y35_N29
\Label_CU|current_state.adaa_store_load_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_CU|current_state.adaa_load_mdri~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_CU|current_state.adaa_store_load_a~q\);

-- Location: LCCOMB_X32_Y35_N10
\Label_CU|current_state.ldaa_load_a~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_CU|current_state.ldaa_load_a~feeder_combout\ = \Label_CU|current_state.ldaa_load_mdri~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_CU|current_state.ldaa_load_mdri~q\,
	combout => \Label_CU|current_state.ldaa_load_a~feeder_combout\);

-- Location: FF_X32_Y35_N11
\Label_CU|current_state.ldaa_load_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_CU|current_state.ldaa_load_a~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_CU|current_state.ldaa_load_a~q\);

-- Location: LCCOMB_X32_Y35_N2
\Label_CU|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_CU|Selector0~0_combout\ = (\Label_CU|current_state.decode~q\ & ((\Label_IR|output\(2)) # ((\Label_IR|output\(1) & \Label_IR|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_IR|output\(2),
	datab => \Label_IR|output\(1),
	datac => \Label_IR|output\(0),
	datad => \Label_CU|current_state.decode~q\,
	combout => \Label_CU|Selector0~0_combout\);

-- Location: LCCOMB_X34_Y35_N26
\Label_CU|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_CU|Selector0~1_combout\ = (\Label_CU|current_state.adaa_store_load_a~q\) # ((\Label_CU|current_state.staa_write_mem~q\) # ((\Label_CU|current_state.ldaa_load_a~q\) # (\Label_CU|Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_CU|current_state.adaa_store_load_a~q\,
	datab => \Label_CU|current_state.staa_write_mem~q\,
	datac => \Label_CU|current_state.ldaa_load_a~q\,
	datad => \Label_CU|Selector0~0_combout\,
	combout => \Label_CU|Selector0~1_combout\);

-- Location: FF_X34_Y35_N27
\Label_CU|current_state.increment_pc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_CU|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_CU|current_state.increment_pc~q\);

-- Location: FF_X38_Y36_N29
\Label_ProgramCounter|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_ProgramCounter|output[0]~0_combout\,
	ena => \Label_CU|current_state.increment_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_ProgramCounter|output\(0));

-- Location: FF_X38_Y36_N17
\Label_ProgramCounter|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_ProgramCounter|Add0~8_combout\,
	ena => \Label_CU|current_state.increment_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_ProgramCounter|counter\(5));

-- Location: LCCOMB_X38_Y36_N16
\Label_ProgramCounter|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_ProgramCounter|Add0~8_combout\ = (\Label_ProgramCounter|counter\(5) & (\Label_ProgramCounter|Add0~7\ $ (GND))) # (!\Label_ProgramCounter|counter\(5) & (!\Label_ProgramCounter|Add0~7\ & VCC))
-- \Label_ProgramCounter|Add0~9\ = CARRY((\Label_ProgramCounter|counter\(5) & !\Label_ProgramCounter|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Label_ProgramCounter|counter\(5),
	datad => VCC,
	cin => \Label_ProgramCounter|Add0~7\,
	combout => \Label_ProgramCounter|Add0~8_combout\,
	cout => \Label_ProgramCounter|Add0~9\);

-- Location: FF_X38_Y36_N3
\Label_ProgramCounter|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_ProgramCounter|Add0~8_combout\,
	sload => VCC,
	ena => \Label_CU|current_state.increment_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_ProgramCounter|output\(5));

-- Location: FF_X38_Y36_N19
\Label_ProgramCounter|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_ProgramCounter|Add0~10_combout\,
	ena => \Label_CU|current_state.increment_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_ProgramCounter|counter\(6));

-- Location: LCCOMB_X38_Y36_N18
\Label_ProgramCounter|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_ProgramCounter|Add0~10_combout\ = (\Label_ProgramCounter|counter\(6) & (!\Label_ProgramCounter|Add0~9\)) # (!\Label_ProgramCounter|counter\(6) & ((\Label_ProgramCounter|Add0~9\) # (GND)))
-- \Label_ProgramCounter|Add0~11\ = CARRY((!\Label_ProgramCounter|Add0~9\) # (!\Label_ProgramCounter|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Label_ProgramCounter|counter\(6),
	datad => VCC,
	cin => \Label_ProgramCounter|Add0~9\,
	combout => \Label_ProgramCounter|Add0~10_combout\,
	cout => \Label_ProgramCounter|Add0~11\);

-- Location: LCCOMB_X38_Y36_N24
\Label_ProgramCounter|output[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_ProgramCounter|output[6]~feeder_combout\ = \Label_ProgramCounter|Add0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_ProgramCounter|Add0~10_combout\,
	combout => \Label_ProgramCounter|output[6]~feeder_combout\);

-- Location: FF_X38_Y36_N25
\Label_ProgramCounter|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_ProgramCounter|output[6]~feeder_combout\,
	ena => \Label_CU|current_state.increment_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_ProgramCounter|output\(6));

-- Location: FF_X38_Y36_N21
\Label_ProgramCounter|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_ProgramCounter|Add0~12_combout\,
	ena => \Label_CU|current_state.increment_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_ProgramCounter|counter\(7));

-- Location: LCCOMB_X38_Y36_N20
\Label_ProgramCounter|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_ProgramCounter|Add0~12_combout\ = \Label_ProgramCounter|Add0~11\ $ (!\Label_ProgramCounter|counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Label_ProgramCounter|counter\(7),
	cin => \Label_ProgramCounter|Add0~11\,
	combout => \Label_ProgramCounter|Add0~12_combout\);

-- Location: FF_X38_Y36_N7
\Label_ProgramCounter|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_ProgramCounter|Add0~12_combout\,
	sload => VCC,
	ena => \Label_CU|current_state.increment_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_ProgramCounter|output\(7));

-- Location: LCCOMB_X32_Y36_N8
\Label_MDRO|output[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_MDRO|output[5]~feeder_combout\ = \Label_MDRI|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRI|output\(5),
	combout => \Label_MDRO|output[5]~feeder_combout\);

-- Location: FF_X32_Y36_N9
\Label_MDRO|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_MDRO|output[5]~feeder_combout\,
	ena => \Label_CU|current_state.staa_load_mdro~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_MDRO|output\(5));

-- Location: LCCOMB_X38_Y37_N8
\Label_RAM|Z~187feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~187feeder_combout\ = \Label_MDRO|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(5),
	combout => \Label_RAM|Z~187feeder_combout\);

-- Location: FF_X38_Y37_N9
\Label_RAM|Z~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~187feeder_combout\,
	ena => \Label_RAM|Z~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~187_q\);

-- Location: LCCOMB_X38_Y37_N22
\Label_RAM|Z~251feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~251feeder_combout\ = \Label_MDRO|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(5),
	combout => \Label_RAM|Z~251feeder_combout\);

-- Location: FF_X38_Y37_N23
\Label_RAM|Z~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~251feeder_combout\,
	ena => \Label_RAM|Z~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~251_q\);

-- Location: LCCOMB_X37_Y37_N6
\Label_RAM|Z~551\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~551_combout\ = !\Label_MDRO|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(5),
	combout => \Label_RAM|Z~551_combout\);

-- Location: FF_X37_Y37_N7
\Label_RAM|Z~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~551_combout\,
	ena => \Label_RAM|Z~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~155_q\);

-- Location: LCCOMB_X41_Y37_N26
\Label_RAM|Z~550\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~550_combout\ = !\Label_MDRO|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(5),
	combout => \Label_RAM|Z~550_combout\);

-- Location: FF_X41_Y37_N27
\Label_RAM|Z~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~550_combout\,
	ena => \Label_RAM|Z~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~219_q\);

-- Location: LCCOMB_X39_Y37_N28
\Label_RAM|Z~375\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~375_combout\ = (\Label_MAR|output\(2) & (((\Label_MAR|output\(3))))) # (!\Label_MAR|output\(2) & ((\Label_MAR|output\(3) & ((!\Label_RAM|Z~219_q\))) # (!\Label_MAR|output\(3) & (!\Label_RAM|Z~155_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~155_q\,
	datab => \Label_MAR|output\(2),
	datac => \Label_RAM|Z~219_q\,
	datad => \Label_MAR|output\(3),
	combout => \Label_RAM|Z~375_combout\);

-- Location: LCCOMB_X39_Y37_N18
\Label_RAM|Z~376\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~376_combout\ = (\Label_MAR|output\(2) & ((\Label_RAM|Z~375_combout\ & ((\Label_RAM|Z~251_q\))) # (!\Label_RAM|Z~375_combout\ & (\Label_RAM|Z~187_q\)))) # (!\Label_MAR|output\(2) & (((\Label_RAM|Z~375_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~187_q\,
	datab => \Label_RAM|Z~251_q\,
	datac => \Label_MAR|output\(2),
	datad => \Label_RAM|Z~375_combout\,
	combout => \Label_RAM|Z~376_combout\);

-- Location: LCCOMB_X39_Y38_N26
\Label_RAM|Z~203feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~203feeder_combout\ = \Label_MDRO|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(5),
	combout => \Label_RAM|Z~203feeder_combout\);

-- Location: FF_X39_Y38_N27
\Label_RAM|Z~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~203feeder_combout\,
	ena => \Label_RAM|Z~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~203_q\);

-- Location: FF_X39_Y38_N21
\Label_RAM|Z~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(5),
	sload => VCC,
	ena => \Label_RAM|Z~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~267_q\);

-- Location: LCCOMB_X38_Y38_N22
\Label_RAM|Z~559\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~559_combout\ = !\Label_MDRO|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(5),
	combout => \Label_RAM|Z~559_combout\);

-- Location: FF_X38_Y38_N23
\Label_RAM|Z~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~559_combout\,
	ena => \Label_RAM|Z~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~171_q\);

-- Location: LCCOMB_X38_Y38_N4
\Label_RAM|Z~558\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~558_combout\ = !\Label_MDRO|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(5),
	combout => \Label_RAM|Z~558_combout\);

-- Location: FF_X38_Y38_N5
\Label_RAM|Z~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~558_combout\,
	ena => \Label_RAM|Z~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~235_q\);

-- Location: LCCOMB_X38_Y38_N24
\Label_RAM|Z~382\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~382_combout\ = (\Label_MAR|output\(2) & (((\Label_MAR|output\(3))))) # (!\Label_MAR|output\(2) & ((\Label_MAR|output\(3) & ((!\Label_RAM|Z~235_q\))) # (!\Label_MAR|output\(3) & (!\Label_RAM|Z~171_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~171_q\,
	datab => \Label_RAM|Z~235_q\,
	datac => \Label_MAR|output\(2),
	datad => \Label_MAR|output\(3),
	combout => \Label_RAM|Z~382_combout\);

-- Location: LCCOMB_X39_Y38_N20
\Label_RAM|Z~383\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~383_combout\ = (\Label_MAR|output\(2) & ((\Label_RAM|Z~382_combout\ & ((\Label_RAM|Z~267_q\))) # (!\Label_RAM|Z~382_combout\ & (\Label_RAM|Z~203_q\)))) # (!\Label_MAR|output\(2) & (((\Label_RAM|Z~382_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~203_q\,
	datab => \Label_MAR|output\(2),
	datac => \Label_RAM|Z~267_q\,
	datad => \Label_RAM|Z~382_combout\,
	combout => \Label_RAM|Z~383_combout\);

-- Location: LCCOMB_X40_Y34_N14
\Label_RAM|Z~554\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~554_combout\ = !\Label_MDRO|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(5),
	combout => \Label_RAM|Z~554_combout\);

-- Location: FF_X40_Y34_N15
\Label_RAM|Z~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~554_combout\,
	ena => \Label_RAM|Z~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~211_q\);

-- Location: LCCOMB_X41_Y36_N20
\Label_RAM|Z~555\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~555_combout\ = !\Label_MDRO|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(5),
	combout => \Label_RAM|Z~555_combout\);

-- Location: FF_X41_Y36_N21
\Label_RAM|Z~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~555_combout\,
	ena => \Label_RAM|Z~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~179_q\);

-- Location: LCCOMB_X39_Y34_N22
\Label_RAM|Z~556\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~556_combout\ = !\Label_MDRO|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(5),
	combout => \Label_RAM|Z~556_combout\);

-- Location: FF_X39_Y34_N23
\Label_RAM|Z~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~556_combout\,
	ena => \Label_RAM|Z~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~147_q\);

-- Location: LCCOMB_X39_Y36_N30
\Label_RAM|Z~379\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~379_combout\ = (\Label_MAR|output\(3) & (\Label_MAR|output\(2))) # (!\Label_MAR|output\(3) & ((\Label_MAR|output\(2) & (!\Label_RAM|Z~179_q\)) # (!\Label_MAR|output\(2) & ((!\Label_RAM|Z~147_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(3),
	datab => \Label_MAR|output\(2),
	datac => \Label_RAM|Z~179_q\,
	datad => \Label_RAM|Z~147_q\,
	combout => \Label_RAM|Z~379_combout\);

-- Location: LCCOMB_X42_Y35_N26
\Label_RAM|Z~557\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~557_combout\ = !\Label_MDRO|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(5),
	combout => \Label_RAM|Z~557_combout\);

-- Location: FF_X42_Y35_N27
\Label_RAM|Z~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~557_combout\,
	ena => \Label_RAM|Z~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~243_q\);

-- Location: LCCOMB_X38_Y35_N4
\Label_RAM|Z~380\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~380_combout\ = (\Label_MAR|output\(3) & ((\Label_RAM|Z~379_combout\ & ((!\Label_RAM|Z~243_q\))) # (!\Label_RAM|Z~379_combout\ & (!\Label_RAM|Z~211_q\)))) # (!\Label_MAR|output\(3) & (((\Label_RAM|Z~379_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~211_q\,
	datab => \Label_MAR|output\(3),
	datac => \Label_RAM|Z~379_combout\,
	datad => \Label_RAM|Z~243_q\,
	combout => \Label_RAM|Z~380_combout\);

-- Location: LCCOMB_X36_Y34_N20
\Label_RAM|Z~227feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~227feeder_combout\ = \Label_MDRO|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(5),
	combout => \Label_RAM|Z~227feeder_combout\);

-- Location: FF_X36_Y34_N21
\Label_RAM|Z~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~227feeder_combout\,
	ena => \Label_RAM|Z~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~227_q\);

-- Location: LCCOMB_X38_Y34_N26
\Label_RAM|Z~553\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~553_combout\ = !\Label_MDRO|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(5),
	combout => \Label_RAM|Z~553_combout\);

-- Location: FF_X38_Y34_N19
\Label_RAM|Z~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_RAM|Z~553_combout\,
	sload => VCC,
	ena => \Label_RAM|Z~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~259_q\);

-- Location: LCCOMB_X36_Y34_N28
\Label_RAM|Z~552\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~552_combout\ = !\Label_MDRO|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(5),
	combout => \Label_RAM|Z~552_combout\);

-- Location: LCCOMB_X38_Y34_N28
\Label_RAM|Z~195feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~195feeder_combout\ = \Label_RAM|Z~552_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_RAM|Z~552_combout\,
	combout => \Label_RAM|Z~195feeder_combout\);

-- Location: FF_X38_Y34_N29
\Label_RAM|Z~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~195feeder_combout\,
	ena => \Label_RAM|Z~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~195_q\);

-- Location: FF_X37_Y34_N23
\Label_RAM|Z~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(5),
	sload => VCC,
	ena => \Label_RAM|Z~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~163_q\);

-- Location: LCCOMB_X37_Y34_N22
\Label_RAM|Z~377\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~377_combout\ = (\Label_MAR|output\(3) & (((\Label_MAR|output\(2))))) # (!\Label_MAR|output\(3) & ((\Label_MAR|output\(2) & (!\Label_RAM|Z~195_q\)) # (!\Label_MAR|output\(2) & ((\Label_RAM|Z~163_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~195_q\,
	datab => \Label_MAR|output\(3),
	datac => \Label_RAM|Z~163_q\,
	datad => \Label_MAR|output\(2),
	combout => \Label_RAM|Z~377_combout\);

-- Location: LCCOMB_X38_Y34_N18
\Label_RAM|Z~378\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~378_combout\ = (\Label_MAR|output\(3) & ((\Label_RAM|Z~377_combout\ & ((!\Label_RAM|Z~259_q\))) # (!\Label_RAM|Z~377_combout\ & (\Label_RAM|Z~227_q\)))) # (!\Label_MAR|output\(3) & (((\Label_RAM|Z~377_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~227_q\,
	datab => \Label_MAR|output\(3),
	datac => \Label_RAM|Z~259_q\,
	datad => \Label_RAM|Z~377_combout\,
	combout => \Label_RAM|Z~378_combout\);

-- Location: LCCOMB_X38_Y35_N2
\Label_RAM|Z~381\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~381_combout\ = (\Label_MAR|output\(0) & (\Label_MAR|output\(1))) # (!\Label_MAR|output\(0) & ((\Label_MAR|output\(1) & ((\Label_RAM|Z~378_combout\))) # (!\Label_MAR|output\(1) & (\Label_RAM|Z~380_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(0),
	datab => \Label_MAR|output\(1),
	datac => \Label_RAM|Z~380_combout\,
	datad => \Label_RAM|Z~378_combout\,
	combout => \Label_RAM|Z~381_combout\);

-- Location: LCCOMB_X38_Y35_N8
\Label_RAM|Z~384\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~384_combout\ = (\Label_MAR|output\(0) & ((\Label_RAM|Z~381_combout\ & ((\Label_RAM|Z~383_combout\))) # (!\Label_RAM|Z~381_combout\ & (\Label_RAM|Z~376_combout\)))) # (!\Label_MAR|output\(0) & (((\Label_RAM|Z~381_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(0),
	datab => \Label_RAM|Z~376_combout\,
	datac => \Label_RAM|Z~383_combout\,
	datad => \Label_RAM|Z~381_combout\,
	combout => \Label_RAM|Z~384_combout\);

-- Location: LCCOMB_X35_Y35_N8
\Label_RAM|Z~564\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~564_combout\ = !\Label_MDRO|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(5),
	combout => \Label_RAM|Z~564_combout\);

-- Location: FF_X35_Y35_N9
\Label_RAM|Z~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~564_combout\,
	ena => \Label_RAM|Z~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~131_q\);

-- Location: LCCOMB_X35_Y35_N2
\Label_RAM|Z~565\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~565_combout\ = !\Label_MDRO|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(5),
	combout => \Label_RAM|Z~565_combout\);

-- Location: FF_X35_Y35_N3
\Label_RAM|Z~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~565_combout\,
	ena => \Label_RAM|Z~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~115_q\);

-- Location: FF_X36_Y35_N29
\Label_RAM|Z~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(5),
	sload => VCC,
	ena => \Label_RAM|Z~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~123_q\);

-- Location: LCCOMB_X36_Y35_N28
\Label_RAM|Z~392\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~392_combout\ = (\Label_MAR|output\(0) & (((\Label_RAM|Z~123_q\) # (\Label_MAR|output\(1))))) # (!\Label_MAR|output\(0) & (!\Label_RAM|Z~115_q\ & ((!\Label_MAR|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~115_q\,
	datab => \Label_MAR|output\(0),
	datac => \Label_RAM|Z~123_q\,
	datad => \Label_MAR|output\(1),
	combout => \Label_RAM|Z~392_combout\);

-- Location: FF_X36_Y35_N7
\Label_RAM|Z~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(5),
	sload => VCC,
	ena => \Label_RAM|Z~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~139_q\);

-- Location: LCCOMB_X36_Y35_N6
\Label_RAM|Z~393\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~393_combout\ = (\Label_RAM|Z~392_combout\ & (((\Label_RAM|Z~139_q\) # (!\Label_MAR|output\(1))))) # (!\Label_RAM|Z~392_combout\ & (!\Label_RAM|Z~131_q\ & ((\Label_MAR|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~131_q\,
	datab => \Label_RAM|Z~392_combout\,
	datac => \Label_RAM|Z~139_q\,
	datad => \Label_MAR|output\(1),
	combout => \Label_RAM|Z~393_combout\);

-- Location: LCCOMB_X38_Y33_N28
\Label_RAM|Z~563\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~563_combout\ = !\Label_MDRO|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(5),
	combout => \Label_RAM|Z~563_combout\);

-- Location: FF_X38_Y33_N29
\Label_RAM|Z~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~563_combout\,
	ena => \Label_RAM|Z~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~27_q\);

-- Location: FF_X37_Y35_N5
\Label_RAM|Z~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(5),
	sload => VCC,
	ena => \Label_RAM|Z~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~43_q\);

-- Location: LCCOMB_X42_Y35_N28
\Label_RAM|Z~35feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~35feeder_combout\ = \Label_MDRO|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(5),
	combout => \Label_RAM|Z~35feeder_combout\);

-- Location: FF_X42_Y35_N29
\Label_RAM|Z~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~35feeder_combout\,
	ena => \Label_RAM|Z~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~35_q\);

-- Location: FF_X37_Y35_N19
\Label_RAM|Z~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(5),
	sload => VCC,
	ena => \Label_RAM|Z~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~19_q\);

-- Location: LCCOMB_X37_Y35_N18
\Label_RAM|Z~389\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~389_combout\ = (\Label_MAR|output\(0) & (((\Label_MAR|output\(1))))) # (!\Label_MAR|output\(0) & ((\Label_MAR|output\(1) & (\Label_RAM|Z~35_q\)) # (!\Label_MAR|output\(1) & ((\Label_RAM|Z~19_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(0),
	datab => \Label_RAM|Z~35_q\,
	datac => \Label_RAM|Z~19_q\,
	datad => \Label_MAR|output\(1),
	combout => \Label_RAM|Z~389_combout\);

-- Location: LCCOMB_X37_Y35_N4
\Label_RAM|Z~390\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~390_combout\ = (\Label_MAR|output\(0) & ((\Label_RAM|Z~389_combout\ & ((\Label_RAM|Z~43_q\))) # (!\Label_RAM|Z~389_combout\ & (!\Label_RAM|Z~27_q\)))) # (!\Label_MAR|output\(0) & (((\Label_RAM|Z~389_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~27_q\,
	datab => \Label_MAR|output\(0),
	datac => \Label_RAM|Z~43_q\,
	datad => \Label_RAM|Z~389_combout\,
	combout => \Label_RAM|Z~390_combout\);

-- Location: LCCOMB_X36_Y36_N8
\Label_RAM|Z~562\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~562_combout\ = !\Label_MDRO|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(5),
	combout => \Label_RAM|Z~562_combout\);

-- Location: FF_X36_Y36_N9
\Label_RAM|Z~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~562_combout\,
	ena => \Label_RAM|Z~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~107_q\);

-- Location: LCCOMB_X36_Y36_N30
\Label_RAM|Z~561\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~561_combout\ = !\Label_MDRO|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(5),
	combout => \Label_RAM|Z~561_combout\);

-- Location: FF_X36_Y36_N31
\Label_RAM|Z~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~561_combout\,
	ena => \Label_RAM|Z~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~91_q\);

-- Location: FF_X37_Y36_N29
\Label_RAM|Z~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(5),
	sload => VCC,
	ena => \Label_RAM|Z~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~99_q\);

-- Location: FF_X37_Y36_N7
\Label_RAM|Z~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(5),
	sload => VCC,
	ena => \Label_RAM|Z~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~83_q\);

-- Location: LCCOMB_X37_Y36_N6
\Label_RAM|Z~387\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~387_combout\ = (\Label_MAR|output\(0) & (((\Label_MAR|output\(1))))) # (!\Label_MAR|output\(0) & ((\Label_MAR|output\(1) & (\Label_RAM|Z~99_q\)) # (!\Label_MAR|output\(1) & ((\Label_RAM|Z~83_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(0),
	datab => \Label_RAM|Z~99_q\,
	datac => \Label_RAM|Z~83_q\,
	datad => \Label_MAR|output\(1),
	combout => \Label_RAM|Z~387_combout\);

-- Location: LCCOMB_X36_Y36_N18
\Label_RAM|Z~388\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~388_combout\ = (\Label_MAR|output\(0) & ((\Label_RAM|Z~387_combout\ & (!\Label_RAM|Z~107_q\)) # (!\Label_RAM|Z~387_combout\ & ((!\Label_RAM|Z~91_q\))))) # (!\Label_MAR|output\(0) & (((\Label_RAM|Z~387_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(0),
	datab => \Label_RAM|Z~107_q\,
	datac => \Label_RAM|Z~91_q\,
	datad => \Label_RAM|Z~387_combout\,
	combout => \Label_RAM|Z~388_combout\);

-- Location: LCCOMB_X37_Y35_N30
\Label_RAM|Z~391\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~391_combout\ = (\Label_MAR|output\(2) & (\Label_MAR|output\(3))) # (!\Label_MAR|output\(2) & ((\Label_MAR|output\(3) & ((\Label_RAM|Z~388_combout\))) # (!\Label_MAR|output\(3) & (\Label_RAM|Z~390_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(2),
	datab => \Label_MAR|output\(3),
	datac => \Label_RAM|Z~390_combout\,
	datad => \Label_RAM|Z~388_combout\,
	combout => \Label_RAM|Z~391_combout\);

-- Location: LCCOMB_X40_Y33_N2
\Label_RAM|Z~75feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~75feeder_combout\ = \Label_MDRO|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(5),
	combout => \Label_RAM|Z~75feeder_combout\);

-- Location: FF_X40_Y33_N3
\Label_RAM|Z~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~75feeder_combout\,
	ena => \Label_RAM|Z~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~75_q\);

-- Location: FF_X40_Y33_N21
\Label_RAM|Z~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(5),
	sload => VCC,
	ena => \Label_RAM|Z~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~67_q\);

-- Location: LCCOMB_X39_Y33_N4
\Label_RAM|Z~560\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~560_combout\ = !\Label_MDRO|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(5),
	combout => \Label_RAM|Z~560_combout\);

-- Location: FF_X39_Y33_N5
\Label_RAM|Z~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~560_combout\,
	ena => \Label_RAM|Z~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~51_q\);

-- Location: FF_X39_Y33_N15
\Label_RAM|Z~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(5),
	sload => VCC,
	ena => \Label_RAM|Z~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~59_q\);

-- Location: LCCOMB_X39_Y33_N14
\Label_RAM|Z~385\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~385_combout\ = (\Label_MAR|output\(1) & (((\Label_MAR|output\(0))))) # (!\Label_MAR|output\(1) & ((\Label_MAR|output\(0) & ((\Label_RAM|Z~59_q\))) # (!\Label_MAR|output\(0) & (!\Label_RAM|Z~51_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~51_q\,
	datab => \Label_MAR|output\(1),
	datac => \Label_RAM|Z~59_q\,
	datad => \Label_MAR|output\(0),
	combout => \Label_RAM|Z~385_combout\);

-- Location: LCCOMB_X40_Y33_N20
\Label_RAM|Z~386\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~386_combout\ = (\Label_MAR|output\(1) & ((\Label_RAM|Z~385_combout\ & (\Label_RAM|Z~75_q\)) # (!\Label_RAM|Z~385_combout\ & ((\Label_RAM|Z~67_q\))))) # (!\Label_MAR|output\(1) & (((\Label_RAM|Z~385_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~75_q\,
	datab => \Label_MAR|output\(1),
	datac => \Label_RAM|Z~67_q\,
	datad => \Label_RAM|Z~385_combout\,
	combout => \Label_RAM|Z~386_combout\);

-- Location: LCCOMB_X37_Y35_N12
\Label_RAM|Z~394\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~394_combout\ = (\Label_MAR|output\(2) & ((\Label_RAM|Z~391_combout\ & (\Label_RAM|Z~393_combout\)) # (!\Label_RAM|Z~391_combout\ & ((\Label_RAM|Z~386_combout\))))) # (!\Label_MAR|output\(2) & (((\Label_RAM|Z~391_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(2),
	datab => \Label_RAM|Z~393_combout\,
	datac => \Label_RAM|Z~391_combout\,
	datad => \Label_RAM|Z~386_combout\,
	combout => \Label_RAM|Z~394_combout\);

-- Location: LCCOMB_X38_Y35_N14
\Label_RAM|Z~395\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~395_combout\ = (\Label_MAR|output\(4) & (\Label_RAM|Z~384_combout\)) # (!\Label_MAR|output\(4) & ((\Label_RAM|Z~394_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Label_MAR|output\(4),
	datac => \Label_RAM|Z~384_combout\,
	datad => \Label_RAM|Z~394_combout\,
	combout => \Label_RAM|Z~395_combout\);

-- Location: FF_X38_Y35_N15
\Label_RAM|Data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~395_combout\,
	ena => \Label_CU|ALT_INV_current_state.staa_write_mem~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Data_out\(5));

-- Location: LCCOMB_X31_Y35_N0
\Label_MDRI|output[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_MDRI|output[5]~feeder_combout\ = \Label_RAM|Data_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_RAM|Data_out\(5),
	combout => \Label_MDRI|output[5]~feeder_combout\);

-- Location: FF_X31_Y35_N1
\Label_MDRI|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_MDRI|output[5]~feeder_combout\,
	ena => \Label_CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_MDRI|output\(5));

-- Location: LCCOMB_X31_Y35_N20
\Label_IR|output[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_IR|output[5]~feeder_combout\ = \Label_MDRI|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRI|output\(5),
	combout => \Label_IR|output[5]~feeder_combout\);

-- Location: FF_X31_Y35_N21
\Label_IR|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_IR|output[5]~feeder_combout\,
	ena => \Label_CU|current_state.load_ir~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_IR|output\(5));

-- Location: LCCOMB_X32_Y36_N10
\Label_MDRO|output[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_MDRO|output[6]~feeder_combout\ = \Label_MDRI|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRI|output\(6),
	combout => \Label_MDRO|output[6]~feeder_combout\);

-- Location: FF_X32_Y36_N11
\Label_MDRO|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_MDRO|output[6]~feeder_combout\,
	ena => \Label_CU|current_state.staa_load_mdro~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_MDRO|output\(6));

-- Location: LCCOMB_X39_Y38_N24
\Label_RAM|Z~567\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~567_combout\ = !\Label_MDRO|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(6),
	combout => \Label_RAM|Z~567_combout\);

-- Location: FF_X39_Y38_N25
\Label_RAM|Z~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~567_combout\,
	ena => \Label_RAM|Z~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~268_q\);

-- Location: FF_X38_Y38_N31
\Label_RAM|Z~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(6),
	sload => VCC,
	ena => \Label_RAM|Z~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~236_q\);

-- Location: LCCOMB_X39_Y38_N2
\Label_RAM|Z~566\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~566_combout\ = !\Label_MDRO|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(6),
	combout => \Label_RAM|Z~566_combout\);

-- Location: FF_X39_Y38_N3
\Label_RAM|Z~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~566_combout\,
	ena => \Label_RAM|Z~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~204_q\);

-- Location: FF_X38_Y38_N13
\Label_RAM|Z~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(6),
	sload => VCC,
	ena => \Label_RAM|Z~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~172_q\);

-- Location: LCCOMB_X38_Y38_N12
\Label_RAM|Z~403\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~403_combout\ = (\Label_MAR|output\(3) & (((\Label_MAR|output\(2))))) # (!\Label_MAR|output\(3) & ((\Label_MAR|output\(2) & (!\Label_RAM|Z~204_q\)) # (!\Label_MAR|output\(2) & ((\Label_RAM|Z~172_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(3),
	datab => \Label_RAM|Z~204_q\,
	datac => \Label_RAM|Z~172_q\,
	datad => \Label_MAR|output\(2),
	combout => \Label_RAM|Z~403_combout\);

-- Location: LCCOMB_X38_Y38_N30
\Label_RAM|Z~404\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~404_combout\ = (\Label_MAR|output\(3) & ((\Label_RAM|Z~403_combout\ & (!\Label_RAM|Z~268_q\)) # (!\Label_RAM|Z~403_combout\ & ((\Label_RAM|Z~236_q\))))) # (!\Label_MAR|output\(3) & (((\Label_RAM|Z~403_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(3),
	datab => \Label_RAM|Z~268_q\,
	datac => \Label_RAM|Z~236_q\,
	datad => \Label_RAM|Z~403_combout\,
	combout => \Label_RAM|Z~404_combout\);

-- Location: FF_X38_Y34_N27
\Label_RAM|Z~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(6),
	sload => VCC,
	ena => \Label_RAM|Z~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~260_q\);

-- Location: FF_X38_Y34_N21
\Label_RAM|Z~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(6),
	sload => VCC,
	ena => \Label_RAM|Z~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~196_q\);

-- Location: LCCOMB_X36_Y34_N18
\Label_RAM|Z~228feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~228feeder_combout\ = \Label_MDRO|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(6),
	combout => \Label_RAM|Z~228feeder_combout\);

-- Location: FF_X36_Y34_N19
\Label_RAM|Z~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~228feeder_combout\,
	ena => \Label_RAM|Z~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~228_q\);

-- Location: FF_X37_Y34_N9
\Label_RAM|Z~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(6),
	sload => VCC,
	ena => \Label_RAM|Z~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~164_q\);

-- Location: LCCOMB_X37_Y34_N8
\Label_RAM|Z~396\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~396_combout\ = (\Label_MAR|output\(2) & (((\Label_MAR|output\(3))))) # (!\Label_MAR|output\(2) & ((\Label_MAR|output\(3) & (\Label_RAM|Z~228_q\)) # (!\Label_MAR|output\(3) & ((\Label_RAM|Z~164_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(2),
	datab => \Label_RAM|Z~228_q\,
	datac => \Label_RAM|Z~164_q\,
	datad => \Label_MAR|output\(3),
	combout => \Label_RAM|Z~396_combout\);

-- Location: LCCOMB_X38_Y34_N20
\Label_RAM|Z~397\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~397_combout\ = (\Label_MAR|output\(2) & ((\Label_RAM|Z~396_combout\ & (\Label_RAM|Z~260_q\)) # (!\Label_RAM|Z~396_combout\ & ((\Label_RAM|Z~196_q\))))) # (!\Label_MAR|output\(2) & (((\Label_RAM|Z~396_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(2),
	datab => \Label_RAM|Z~260_q\,
	datac => \Label_RAM|Z~196_q\,
	datad => \Label_RAM|Z~396_combout\,
	combout => \Label_RAM|Z~397_combout\);

-- Location: LCCOMB_X41_Y37_N4
\Label_RAM|Z~220feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~220feeder_combout\ = \Label_MDRO|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(6),
	combout => \Label_RAM|Z~220feeder_combout\);

-- Location: FF_X41_Y37_N5
\Label_RAM|Z~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~220feeder_combout\,
	ena => \Label_RAM|Z~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~220_q\);

-- Location: FF_X38_Y37_N7
\Label_RAM|Z~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(6),
	sload => VCC,
	ena => \Label_RAM|Z~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~252_q\);

-- Location: LCCOMB_X38_Y37_N24
\Label_RAM|Z~188feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~188feeder_combout\ = \Label_MDRO|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(6),
	combout => \Label_RAM|Z~188feeder_combout\);

-- Location: FF_X38_Y37_N25
\Label_RAM|Z~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~188feeder_combout\,
	ena => \Label_RAM|Z~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~188_q\);

-- Location: FF_X37_Y37_N25
\Label_RAM|Z~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(6),
	sload => VCC,
	ena => \Label_RAM|Z~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~156_q\);

-- Location: LCCOMB_X37_Y37_N24
\Label_RAM|Z~398\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~398_combout\ = (\Label_MAR|output\(3) & (((\Label_MAR|output\(2))))) # (!\Label_MAR|output\(3) & ((\Label_MAR|output\(2) & (\Label_RAM|Z~188_q\)) # (!\Label_MAR|output\(2) & ((\Label_RAM|Z~156_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~188_q\,
	datab => \Label_MAR|output\(3),
	datac => \Label_RAM|Z~156_q\,
	datad => \Label_MAR|output\(2),
	combout => \Label_RAM|Z~398_combout\);

-- Location: LCCOMB_X38_Y37_N6
\Label_RAM|Z~399\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~399_combout\ = (\Label_MAR|output\(3) & ((\Label_RAM|Z~398_combout\ & ((\Label_RAM|Z~252_q\))) # (!\Label_RAM|Z~398_combout\ & (\Label_RAM|Z~220_q\)))) # (!\Label_MAR|output\(3) & (((\Label_RAM|Z~398_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~220_q\,
	datab => \Label_MAR|output\(3),
	datac => \Label_RAM|Z~252_q\,
	datad => \Label_RAM|Z~398_combout\,
	combout => \Label_RAM|Z~399_combout\);

-- Location: LCCOMB_X40_Y34_N16
\Label_RAM|Z~180feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~180feeder_combout\ = \Label_MDRO|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(6),
	combout => \Label_RAM|Z~180feeder_combout\);

-- Location: FF_X40_Y34_N17
\Label_RAM|Z~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~180feeder_combout\,
	ena => \Label_RAM|Z~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~180_q\);

-- Location: FF_X39_Y34_N11
\Label_RAM|Z~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(6),
	sload => VCC,
	ena => \Label_RAM|Z~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~244_q\);

-- Location: LCCOMB_X40_Y34_N18
\Label_RAM|Z~212feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~212feeder_combout\ = \Label_MDRO|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(6),
	combout => \Label_RAM|Z~212feeder_combout\);

-- Location: FF_X40_Y34_N19
\Label_RAM|Z~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~212feeder_combout\,
	ena => \Label_RAM|Z~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~212_q\);

-- Location: FF_X39_Y34_N17
\Label_RAM|Z~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(6),
	sload => VCC,
	ena => \Label_RAM|Z~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~148_q\);

-- Location: LCCOMB_X39_Y34_N16
\Label_RAM|Z~400\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~400_combout\ = (\Label_MAR|output\(3) & ((\Label_RAM|Z~212_q\) # ((\Label_MAR|output\(2))))) # (!\Label_MAR|output\(3) & (((\Label_RAM|Z~148_q\ & !\Label_MAR|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(3),
	datab => \Label_RAM|Z~212_q\,
	datac => \Label_RAM|Z~148_q\,
	datad => \Label_MAR|output\(2),
	combout => \Label_RAM|Z~400_combout\);

-- Location: LCCOMB_X39_Y34_N10
\Label_RAM|Z~401\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~401_combout\ = (\Label_MAR|output\(2) & ((\Label_RAM|Z~400_combout\ & ((\Label_RAM|Z~244_q\))) # (!\Label_RAM|Z~400_combout\ & (\Label_RAM|Z~180_q\)))) # (!\Label_MAR|output\(2) & (((\Label_RAM|Z~400_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~180_q\,
	datab => \Label_MAR|output\(2),
	datac => \Label_RAM|Z~244_q\,
	datad => \Label_RAM|Z~400_combout\,
	combout => \Label_RAM|Z~401_combout\);

-- Location: LCCOMB_X39_Y37_N12
\Label_RAM|Z~402\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~402_combout\ = (\Label_MAR|output\(0) & ((\Label_MAR|output\(1)) # ((\Label_RAM|Z~399_combout\)))) # (!\Label_MAR|output\(0) & (!\Label_MAR|output\(1) & ((\Label_RAM|Z~401_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(0),
	datab => \Label_MAR|output\(1),
	datac => \Label_RAM|Z~399_combout\,
	datad => \Label_RAM|Z~401_combout\,
	combout => \Label_RAM|Z~402_combout\);

-- Location: LCCOMB_X39_Y37_N22
\Label_RAM|Z~405\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~405_combout\ = (\Label_MAR|output\(1) & ((\Label_RAM|Z~402_combout\ & (\Label_RAM|Z~404_combout\)) # (!\Label_RAM|Z~402_combout\ & ((\Label_RAM|Z~397_combout\))))) # (!\Label_MAR|output\(1) & (((\Label_RAM|Z~402_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~404_combout\,
	datab => \Label_MAR|output\(1),
	datac => \Label_RAM|Z~397_combout\,
	datad => \Label_RAM|Z~402_combout\,
	combout => \Label_RAM|Z~405_combout\);

-- Location: LCCOMB_X36_Y36_N20
\Label_RAM|Z~108feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~108feeder_combout\ = \Label_MDRO|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(6),
	combout => \Label_RAM|Z~108feeder_combout\);

-- Location: FF_X36_Y36_N21
\Label_RAM|Z~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~108feeder_combout\,
	ena => \Label_RAM|Z~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~108_q\);

-- Location: FF_X37_Y36_N1
\Label_RAM|Z~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(6),
	sload => VCC,
	ena => \Label_RAM|Z~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~100_q\);

-- Location: FF_X37_Y36_N11
\Label_RAM|Z~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(6),
	sload => VCC,
	ena => \Label_RAM|Z~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~84_q\);

-- Location: LCCOMB_X41_Y36_N26
\Label_RAM|Z~92feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~92feeder_combout\ = \Label_MDRO|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(6),
	combout => \Label_RAM|Z~92feeder_combout\);

-- Location: FF_X41_Y36_N27
\Label_RAM|Z~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~92feeder_combout\,
	ena => \Label_RAM|Z~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~92_q\);

-- Location: LCCOMB_X37_Y36_N10
\Label_RAM|Z~406\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~406_combout\ = (\Label_MAR|output\(1) & (\Label_MAR|output\(0))) # (!\Label_MAR|output\(1) & ((\Label_MAR|output\(0) & ((\Label_RAM|Z~92_q\))) # (!\Label_MAR|output\(0) & (\Label_RAM|Z~84_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(1),
	datab => \Label_MAR|output\(0),
	datac => \Label_RAM|Z~84_q\,
	datad => \Label_RAM|Z~92_q\,
	combout => \Label_RAM|Z~406_combout\);

-- Location: LCCOMB_X37_Y36_N0
\Label_RAM|Z~407\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~407_combout\ = (\Label_MAR|output\(1) & ((\Label_RAM|Z~406_combout\ & (\Label_RAM|Z~108_q\)) # (!\Label_RAM|Z~406_combout\ & ((\Label_RAM|Z~100_q\))))) # (!\Label_MAR|output\(1) & (((\Label_RAM|Z~406_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(1),
	datab => \Label_RAM|Z~108_q\,
	datac => \Label_RAM|Z~100_q\,
	datad => \Label_RAM|Z~406_combout\,
	combout => \Label_RAM|Z~407_combout\);

-- Location: LCCOMB_X36_Y35_N26
\Label_RAM|Z~570\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~570_combout\ = !\Label_MDRO|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(6),
	combout => \Label_RAM|Z~570_combout\);

-- Location: FF_X36_Y35_N27
\Label_RAM|Z~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~570_combout\,
	ena => \Label_RAM|Z~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~140_q\);

-- Location: FF_X36_Y35_N5
\Label_RAM|Z~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(6),
	sload => VCC,
	ena => \Label_RAM|Z~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~124_q\);

-- Location: LCCOMB_X35_Y35_N12
\Label_RAM|Z~132feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~132feeder_combout\ = \Label_MDRO|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(6),
	combout => \Label_RAM|Z~132feeder_combout\);

-- Location: FF_X35_Y35_N13
\Label_RAM|Z~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~132feeder_combout\,
	ena => \Label_RAM|Z~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~132_q\);

-- Location: FF_X35_Y35_N11
\Label_RAM|Z~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(6),
	sload => VCC,
	ena => \Label_RAM|Z~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~116_q\);

-- Location: LCCOMB_X35_Y35_N10
\Label_RAM|Z~413\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~413_combout\ = (\Label_MAR|output\(0) & (((\Label_MAR|output\(1))))) # (!\Label_MAR|output\(0) & ((\Label_MAR|output\(1) & (\Label_RAM|Z~132_q\)) # (!\Label_MAR|output\(1) & ((\Label_RAM|Z~116_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~132_q\,
	datab => \Label_MAR|output\(0),
	datac => \Label_RAM|Z~116_q\,
	datad => \Label_MAR|output\(1),
	combout => \Label_RAM|Z~413_combout\);

-- Location: LCCOMB_X36_Y35_N4
\Label_RAM|Z~414\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~414_combout\ = (\Label_MAR|output\(0) & ((\Label_RAM|Z~413_combout\ & (!\Label_RAM|Z~140_q\)) # (!\Label_RAM|Z~413_combout\ & ((\Label_RAM|Z~124_q\))))) # (!\Label_MAR|output\(0) & (((\Label_RAM|Z~413_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~140_q\,
	datab => \Label_MAR|output\(0),
	datac => \Label_RAM|Z~124_q\,
	datad => \Label_RAM|Z~413_combout\,
	combout => \Label_RAM|Z~414_combout\);

-- Location: LCCOMB_X40_Y33_N26
\Label_RAM|Z~568\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~568_combout\ = !\Label_MDRO|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(6),
	combout => \Label_RAM|Z~568_combout\);

-- Location: FF_X40_Y33_N27
\Label_RAM|Z~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~568_combout\,
	ena => \Label_RAM|Z~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~76_q\);

-- Location: FF_X39_Y33_N19
\Label_RAM|Z~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(6),
	sload => VCC,
	ena => \Label_RAM|Z~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~60_q\);

-- Location: LCCOMB_X40_Y33_N28
\Label_RAM|Z~68feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~68feeder_combout\ = \Label_MDRO|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(6),
	combout => \Label_RAM|Z~68feeder_combout\);

-- Location: FF_X40_Y33_N29
\Label_RAM|Z~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~68feeder_combout\,
	ena => \Label_RAM|Z~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~68_q\);

-- Location: FF_X39_Y33_N13
\Label_RAM|Z~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(6),
	sload => VCC,
	ena => \Label_RAM|Z~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~52_q\);

-- Location: LCCOMB_X39_Y33_N12
\Label_RAM|Z~408\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~408_combout\ = (\Label_MAR|output\(1) & ((\Label_RAM|Z~68_q\) # ((\Label_MAR|output\(0))))) # (!\Label_MAR|output\(1) & (((\Label_RAM|Z~52_q\ & !\Label_MAR|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~68_q\,
	datab => \Label_MAR|output\(1),
	datac => \Label_RAM|Z~52_q\,
	datad => \Label_MAR|output\(0),
	combout => \Label_RAM|Z~408_combout\);

-- Location: LCCOMB_X39_Y33_N18
\Label_RAM|Z~409\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~409_combout\ = (\Label_MAR|output\(0) & ((\Label_RAM|Z~408_combout\ & (!\Label_RAM|Z~76_q\)) # (!\Label_RAM|Z~408_combout\ & ((\Label_RAM|Z~60_q\))))) # (!\Label_MAR|output\(0) & (((\Label_RAM|Z~408_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~76_q\,
	datab => \Label_MAR|output\(0),
	datac => \Label_RAM|Z~60_q\,
	datad => \Label_RAM|Z~408_combout\,
	combout => \Label_RAM|Z~409_combout\);

-- Location: LCCOMB_X42_Y35_N30
\Label_RAM|Z~569\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~569_combout\ = !\Label_MDRO|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(6),
	combout => \Label_RAM|Z~569_combout\);

-- Location: FF_X42_Y35_N31
\Label_RAM|Z~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~569_combout\,
	ena => \Label_RAM|Z~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~36_q\);

-- Location: FF_X39_Y37_N17
\Label_RAM|Z~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(6),
	sload => VCC,
	ena => \Label_RAM|Z~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~44_q\);

-- Location: LCCOMB_X36_Y37_N28
\Label_RAM|Z~28feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~28feeder_combout\ = \Label_MDRO|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(6),
	combout => \Label_RAM|Z~28feeder_combout\);

-- Location: FF_X36_Y37_N29
\Label_RAM|Z~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~28feeder_combout\,
	ena => \Label_RAM|Z~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~28_q\);

-- Location: FF_X36_Y37_N23
\Label_RAM|Z~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(6),
	sload => VCC,
	ena => \Label_RAM|Z~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~20_q\);

-- Location: LCCOMB_X36_Y37_N22
\Label_RAM|Z~410\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~410_combout\ = (\Label_MAR|output\(1) & (((\Label_MAR|output\(0))))) # (!\Label_MAR|output\(1) & ((\Label_MAR|output\(0) & (\Label_RAM|Z~28_q\)) # (!\Label_MAR|output\(0) & ((\Label_RAM|Z~20_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(1),
	datab => \Label_RAM|Z~28_q\,
	datac => \Label_RAM|Z~20_q\,
	datad => \Label_MAR|output\(0),
	combout => \Label_RAM|Z~410_combout\);

-- Location: LCCOMB_X39_Y37_N16
\Label_RAM|Z~411\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~411_combout\ = (\Label_MAR|output\(1) & ((\Label_RAM|Z~410_combout\ & ((\Label_RAM|Z~44_q\))) # (!\Label_RAM|Z~410_combout\ & (!\Label_RAM|Z~36_q\)))) # (!\Label_MAR|output\(1) & (((\Label_RAM|Z~410_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~36_q\,
	datab => \Label_MAR|output\(1),
	datac => \Label_RAM|Z~44_q\,
	datad => \Label_RAM|Z~410_combout\,
	combout => \Label_RAM|Z~411_combout\);

-- Location: LCCOMB_X39_Y37_N6
\Label_RAM|Z~412\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~412_combout\ = (\Label_MAR|output\(3) & (\Label_MAR|output\(2))) # (!\Label_MAR|output\(3) & ((\Label_MAR|output\(2) & (\Label_RAM|Z~409_combout\)) # (!\Label_MAR|output\(2) & ((\Label_RAM|Z~411_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(3),
	datab => \Label_MAR|output\(2),
	datac => \Label_RAM|Z~409_combout\,
	datad => \Label_RAM|Z~411_combout\,
	combout => \Label_RAM|Z~412_combout\);

-- Location: LCCOMB_X39_Y37_N24
\Label_RAM|Z~415\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~415_combout\ = (\Label_MAR|output\(3) & ((\Label_RAM|Z~412_combout\ & ((\Label_RAM|Z~414_combout\))) # (!\Label_RAM|Z~412_combout\ & (\Label_RAM|Z~407_combout\)))) # (!\Label_MAR|output\(3) & (((\Label_RAM|Z~412_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~407_combout\,
	datab => \Label_MAR|output\(3),
	datac => \Label_RAM|Z~414_combout\,
	datad => \Label_RAM|Z~412_combout\,
	combout => \Label_RAM|Z~415_combout\);

-- Location: LCCOMB_X39_Y37_N4
\Label_RAM|Z~416\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~416_combout\ = (\Label_MAR|output\(4) & (\Label_RAM|Z~405_combout\)) # (!\Label_MAR|output\(4) & ((\Label_RAM|Z~415_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(4),
	datac => \Label_RAM|Z~405_combout\,
	datad => \Label_RAM|Z~415_combout\,
	combout => \Label_RAM|Z~416_combout\);

-- Location: FF_X39_Y37_N5
\Label_RAM|Data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~416_combout\,
	ena => \Label_CU|ALT_INV_current_state.staa_write_mem~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Data_out\(6));

-- Location: LCCOMB_X31_Y35_N2
\Label_MDRI|output[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_MDRI|output[6]~feeder_combout\ = \Label_RAM|Data_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_RAM|Data_out\(6),
	combout => \Label_MDRI|output[6]~feeder_combout\);

-- Location: FF_X31_Y35_N3
\Label_MDRI|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_MDRI|output[6]~feeder_combout\,
	ena => \Label_CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_MDRI|output\(6));

-- Location: LCCOMB_X27_Y36_N0
\Label_IR|output[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_IR|output[6]~feeder_combout\ = \Label_MDRI|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRI|output\(6),
	combout => \Label_IR|output[6]~feeder_combout\);

-- Location: FF_X27_Y36_N1
\Label_IR|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_IR|output[6]~feeder_combout\,
	ena => \Label_CU|current_state.load_ir~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_IR|output\(6));

-- Location: LCCOMB_X36_Y34_N12
\Label_MDRO|output[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_MDRO|output[7]~feeder_combout\ = \Label_MDRI|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRI|output\(7),
	combout => \Label_MDRO|output[7]~feeder_combout\);

-- Location: FF_X36_Y34_N13
\Label_MDRO|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_MDRO|output[7]~feeder_combout\,
	ena => \Label_CU|current_state.staa_load_mdro~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_MDRO|output\(7));

-- Location: LCCOMB_X35_Y35_N4
\Label_RAM|Z~586\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~586_combout\ = !\Label_MDRO|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(7),
	combout => \Label_RAM|Z~586_combout\);

-- Location: FF_X35_Y35_N5
\Label_RAM|Z~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~586_combout\,
	ena => \Label_RAM|Z~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~133_q\);

-- Location: FF_X36_Y35_N19
\Label_RAM|Z~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(7),
	sload => VCC,
	ena => \Label_RAM|Z~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~141_q\);

-- Location: LCCOMB_X35_Y35_N6
\Label_RAM|Z~587\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~587_combout\ = !\Label_MDRO|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(7),
	combout => \Label_RAM|Z~587_combout\);

-- Location: FF_X35_Y35_N7
\Label_RAM|Z~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~587_combout\,
	ena => \Label_RAM|Z~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~117_q\);

-- Location: FF_X36_Y35_N1
\Label_RAM|Z~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(7),
	sload => VCC,
	ena => \Label_RAM|Z~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~125_q\);

-- Location: LCCOMB_X36_Y35_N0
\Label_RAM|Z~434\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~434_combout\ = (\Label_MAR|output\(0) & (((\Label_RAM|Z~125_q\) # (\Label_MAR|output\(1))))) # (!\Label_MAR|output\(0) & (!\Label_RAM|Z~117_q\ & ((!\Label_MAR|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~117_q\,
	datab => \Label_MAR|output\(0),
	datac => \Label_RAM|Z~125_q\,
	datad => \Label_MAR|output\(1),
	combout => \Label_RAM|Z~434_combout\);

-- Location: LCCOMB_X36_Y35_N18
\Label_RAM|Z~435\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~435_combout\ = (\Label_MAR|output\(1) & ((\Label_RAM|Z~434_combout\ & ((\Label_RAM|Z~141_q\))) # (!\Label_RAM|Z~434_combout\ & (!\Label_RAM|Z~133_q\)))) # (!\Label_MAR|output\(1) & (((\Label_RAM|Z~434_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~133_q\,
	datab => \Label_MAR|output\(1),
	datac => \Label_RAM|Z~141_q\,
	datad => \Label_RAM|Z~434_combout\,
	combout => \Label_RAM|Z~435_combout\);

-- Location: LCCOMB_X40_Y33_N10
\Label_RAM|Z~77feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~77feeder_combout\ = \Label_MDRO|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(7),
	combout => \Label_RAM|Z~77feeder_combout\);

-- Location: FF_X40_Y33_N11
\Label_RAM|Z~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~77feeder_combout\,
	ena => \Label_RAM|Z~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~77_q\);

-- Location: FF_X40_Y33_N25
\Label_RAM|Z~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(7),
	sload => VCC,
	ena => \Label_RAM|Z~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~69_q\);

-- Location: LCCOMB_X39_Y33_N26
\Label_RAM|Z~61feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~61feeder_combout\ = \Label_MDRO|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(7),
	combout => \Label_RAM|Z~61feeder_combout\);

-- Location: FF_X39_Y33_N27
\Label_RAM|Z~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~61feeder_combout\,
	ena => \Label_RAM|Z~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~61_q\);

-- Location: FF_X39_Y33_N29
\Label_RAM|Z~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(7),
	sload => VCC,
	ena => \Label_RAM|Z~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~53_q\);

-- Location: LCCOMB_X39_Y33_N28
\Label_RAM|Z~427\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~427_combout\ = (\Label_MAR|output\(1) & (((\Label_MAR|output\(0))))) # (!\Label_MAR|output\(1) & ((\Label_MAR|output\(0) & (\Label_RAM|Z~61_q\)) # (!\Label_MAR|output\(0) & ((\Label_RAM|Z~53_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~61_q\,
	datab => \Label_MAR|output\(1),
	datac => \Label_RAM|Z~53_q\,
	datad => \Label_MAR|output\(0),
	combout => \Label_RAM|Z~427_combout\);

-- Location: LCCOMB_X40_Y33_N24
\Label_RAM|Z~428\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~428_combout\ = (\Label_MAR|output\(1) & ((\Label_RAM|Z~427_combout\ & (\Label_RAM|Z~77_q\)) # (!\Label_RAM|Z~427_combout\ & ((\Label_RAM|Z~69_q\))))) # (!\Label_MAR|output\(1) & (((\Label_RAM|Z~427_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~77_q\,
	datab => \Label_MAR|output\(1),
	datac => \Label_RAM|Z~69_q\,
	datad => \Label_RAM|Z~427_combout\,
	combout => \Label_RAM|Z~428_combout\);

-- Location: LCCOMB_X41_Y36_N12
\Label_RAM|Z~583\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~583_combout\ = !\Label_MDRO|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(7),
	combout => \Label_RAM|Z~583_combout\);

-- Location: FF_X41_Y36_N13
\Label_RAM|Z~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~583_combout\,
	ena => \Label_RAM|Z~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~93_q\);

-- Location: LCCOMB_X36_Y36_N26
\Label_RAM|Z~584\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~584_combout\ = !\Label_MDRO|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(7),
	combout => \Label_RAM|Z~584_combout\);

-- Location: FF_X37_Y36_N21
\Label_RAM|Z~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_RAM|Z~584_combout\,
	sload => VCC,
	ena => \Label_RAM|Z~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~101_q\);

-- Location: FF_X37_Y36_N31
\Label_RAM|Z~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(7),
	sload => VCC,
	ena => \Label_RAM|Z~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~85_q\);

-- Location: LCCOMB_X37_Y36_N30
\Label_RAM|Z~429\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~429_combout\ = (\Label_MAR|output\(0) & (((\Label_MAR|output\(1))))) # (!\Label_MAR|output\(0) & ((\Label_MAR|output\(1) & (!\Label_RAM|Z~101_q\)) # (!\Label_MAR|output\(1) & ((\Label_RAM|Z~85_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(0),
	datab => \Label_RAM|Z~101_q\,
	datac => \Label_RAM|Z~85_q\,
	datad => \Label_MAR|output\(1),
	combout => \Label_RAM|Z~429_combout\);

-- Location: LCCOMB_X36_Y36_N22
\Label_RAM|Z~585\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~585_combout\ = !\Label_MDRO|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(7),
	combout => \Label_RAM|Z~585_combout\);

-- Location: FF_X36_Y36_N23
\Label_RAM|Z~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~585_combout\,
	ena => \Label_RAM|Z~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~109_q\);

-- Location: LCCOMB_X40_Y35_N22
\Label_RAM|Z~430\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~430_combout\ = (\Label_MAR|output\(0) & ((\Label_RAM|Z~429_combout\ & ((!\Label_RAM|Z~109_q\))) # (!\Label_RAM|Z~429_combout\ & (!\Label_RAM|Z~93_q\)))) # (!\Label_MAR|output\(0) & (((\Label_RAM|Z~429_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(0),
	datab => \Label_RAM|Z~93_q\,
	datac => \Label_RAM|Z~429_combout\,
	datad => \Label_RAM|Z~109_q\,
	combout => \Label_RAM|Z~430_combout\);

-- Location: LCCOMB_X38_Y33_N22
\Label_RAM|Z~29feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~29feeder_combout\ = \Label_MDRO|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(7),
	combout => \Label_RAM|Z~29feeder_combout\);

-- Location: FF_X38_Y33_N23
\Label_RAM|Z~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~29feeder_combout\,
	ena => \Label_RAM|Z~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~29_q\);

-- Location: FF_X40_Y35_N3
\Label_RAM|Z~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(7),
	sload => VCC,
	ena => \Label_RAM|Z~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~45_q\);

-- Location: LCCOMB_X42_Y35_N4
\Label_RAM|Z~37feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~37feeder_combout\ = \Label_MDRO|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(7),
	combout => \Label_RAM|Z~37feeder_combout\);

-- Location: FF_X42_Y35_N5
\Label_RAM|Z~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~37feeder_combout\,
	ena => \Label_RAM|Z~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~37_q\);

-- Location: FF_X40_Y35_N29
\Label_RAM|Z~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(7),
	sload => VCC,
	ena => \Label_RAM|Z~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~21_q\);

-- Location: LCCOMB_X40_Y35_N28
\Label_RAM|Z~431\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~431_combout\ = (\Label_MAR|output\(0) & (((\Label_MAR|output\(1))))) # (!\Label_MAR|output\(0) & ((\Label_MAR|output\(1) & (\Label_RAM|Z~37_q\)) # (!\Label_MAR|output\(1) & ((\Label_RAM|Z~21_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(0),
	datab => \Label_RAM|Z~37_q\,
	datac => \Label_RAM|Z~21_q\,
	datad => \Label_MAR|output\(1),
	combout => \Label_RAM|Z~431_combout\);

-- Location: LCCOMB_X40_Y35_N2
\Label_RAM|Z~432\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~432_combout\ = (\Label_MAR|output\(0) & ((\Label_RAM|Z~431_combout\ & ((\Label_RAM|Z~45_q\))) # (!\Label_RAM|Z~431_combout\ & (\Label_RAM|Z~29_q\)))) # (!\Label_MAR|output\(0) & (((\Label_RAM|Z~431_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(0),
	datab => \Label_RAM|Z~29_q\,
	datac => \Label_RAM|Z~45_q\,
	datad => \Label_RAM|Z~431_combout\,
	combout => \Label_RAM|Z~432_combout\);

-- Location: LCCOMB_X40_Y35_N24
\Label_RAM|Z~433\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~433_combout\ = (\Label_MAR|output\(3) & ((\Label_MAR|output\(2)) # ((\Label_RAM|Z~430_combout\)))) # (!\Label_MAR|output\(3) & (!\Label_MAR|output\(2) & ((\Label_RAM|Z~432_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(3),
	datab => \Label_MAR|output\(2),
	datac => \Label_RAM|Z~430_combout\,
	datad => \Label_RAM|Z~432_combout\,
	combout => \Label_RAM|Z~433_combout\);

-- Location: LCCOMB_X39_Y35_N30
\Label_RAM|Z~436\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~436_combout\ = (\Label_MAR|output\(2) & ((\Label_RAM|Z~433_combout\ & (\Label_RAM|Z~435_combout\)) # (!\Label_RAM|Z~433_combout\ & ((\Label_RAM|Z~428_combout\))))) # (!\Label_MAR|output\(2) & (((\Label_RAM|Z~433_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(2),
	datab => \Label_RAM|Z~435_combout\,
	datac => \Label_RAM|Z~428_combout\,
	datad => \Label_RAM|Z~433_combout\,
	combout => \Label_RAM|Z~436_combout\);

-- Location: LCCOMB_X39_Y38_N10
\Label_RAM|Z~205feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~205feeder_combout\ = \Label_MDRO|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(7),
	combout => \Label_RAM|Z~205feeder_combout\);

-- Location: FF_X39_Y38_N11
\Label_RAM|Z~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~205feeder_combout\,
	ena => \Label_RAM|Z~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~205_q\);

-- Location: LCCOMB_X40_Y37_N30
\Label_RAM|Z~581\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~581_combout\ = !\Label_MDRO|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(7),
	combout => \Label_RAM|Z~581_combout\);

-- Location: FF_X40_Y37_N31
\Label_RAM|Z~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~581_combout\,
	ena => \Label_RAM|Z~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~237_q\);

-- Location: LCCOMB_X39_Y37_N2
\Label_RAM|Z~582\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~582_combout\ = !\Label_MDRO|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(7),
	combout => \Label_RAM|Z~582_combout\);

-- Location: LCCOMB_X40_Y37_N12
\Label_RAM|Z~173feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~173feeder_combout\ = \Label_RAM|Z~582_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_RAM|Z~582_combout\,
	combout => \Label_RAM|Z~173feeder_combout\);

-- Location: FF_X40_Y37_N13
\Label_RAM|Z~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~173feeder_combout\,
	ena => \Label_RAM|Z~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~173_q\);

-- Location: LCCOMB_X39_Y37_N10
\Label_RAM|Z~424\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~424_combout\ = (\Label_MAR|output\(2) & (((\Label_MAR|output\(3))))) # (!\Label_MAR|output\(2) & ((\Label_MAR|output\(3) & (!\Label_RAM|Z~237_q\)) # (!\Label_MAR|output\(3) & ((!\Label_RAM|Z~173_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~237_q\,
	datab => \Label_MAR|output\(2),
	datac => \Label_RAM|Z~173_q\,
	datad => \Label_MAR|output\(3),
	combout => \Label_RAM|Z~424_combout\);

-- Location: FF_X39_Y35_N15
\Label_RAM|Z~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(7),
	sload => VCC,
	ena => \Label_RAM|Z~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~269_q\);

-- Location: LCCOMB_X39_Y35_N14
\Label_RAM|Z~425\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~425_combout\ = (\Label_RAM|Z~424_combout\ & (((\Label_RAM|Z~269_q\) # (!\Label_MAR|output\(2))))) # (!\Label_RAM|Z~424_combout\ & (\Label_RAM|Z~205_q\ & ((\Label_MAR|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~205_q\,
	datab => \Label_RAM|Z~424_combout\,
	datac => \Label_RAM|Z~269_q\,
	datad => \Label_MAR|output\(2),
	combout => \Label_RAM|Z~425_combout\);

-- Location: FF_X38_Y37_N3
\Label_RAM|Z~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(7),
	sload => VCC,
	ena => \Label_RAM|Z~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~253_q\);

-- Location: FF_X38_Y37_N17
\Label_RAM|Z~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Label_MDRO|output\(7),
	sload => VCC,
	ena => \Label_RAM|Z~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~189_q\);

-- Location: LCCOMB_X37_Y37_N14
\Label_RAM|Z~572\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~572_combout\ = !\Label_MDRO|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(7),
	combout => \Label_RAM|Z~572_combout\);

-- Location: FF_X37_Y37_N15
\Label_RAM|Z~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~572_combout\,
	ena => \Label_RAM|Z~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~157_q\);

-- Location: LCCOMB_X41_Y37_N30
\Label_RAM|Z~571\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~571_combout\ = !\Label_MDRO|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(7),
	combout => \Label_RAM|Z~571_combout\);

-- Location: FF_X41_Y37_N31
\Label_RAM|Z~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~571_combout\,
	ena => \Label_RAM|Z~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~221_q\);

-- Location: LCCOMB_X37_Y37_N28
\Label_RAM|Z~417\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~417_combout\ = (\Label_MAR|output\(3) & (((\Label_MAR|output\(2)) # (!\Label_RAM|Z~221_q\)))) # (!\Label_MAR|output\(3) & (!\Label_RAM|Z~157_q\ & ((!\Label_MAR|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~157_q\,
	datab => \Label_MAR|output\(3),
	datac => \Label_RAM|Z~221_q\,
	datad => \Label_MAR|output\(2),
	combout => \Label_RAM|Z~417_combout\);

-- Location: LCCOMB_X38_Y37_N16
\Label_RAM|Z~418\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~418_combout\ = (\Label_MAR|output\(2) & ((\Label_RAM|Z~417_combout\ & (\Label_RAM|Z~253_q\)) # (!\Label_RAM|Z~417_combout\ & ((\Label_RAM|Z~189_q\))))) # (!\Label_MAR|output\(2) & (((\Label_RAM|Z~417_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(2),
	datab => \Label_RAM|Z~253_q\,
	datac => \Label_RAM|Z~189_q\,
	datad => \Label_RAM|Z~417_combout\,
	combout => \Label_RAM|Z~418_combout\);

-- Location: LCCOMB_X42_Y35_N24
\Label_RAM|Z~580\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~580_combout\ = !\Label_MDRO|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(7),
	combout => \Label_RAM|Z~580_combout\);

-- Location: LCCOMB_X43_Y35_N12
\Label_RAM|Z~245feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~245feeder_combout\ = \Label_RAM|Z~580_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_RAM|Z~580_combout\,
	combout => \Label_RAM|Z~245feeder_combout\);

-- Location: FF_X43_Y35_N13
\Label_RAM|Z~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~245feeder_combout\,
	ena => \Label_RAM|Z~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~245_q\);

-- Location: LCCOMB_X40_Y34_N8
\Label_RAM|Z~577\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~577_combout\ = !\Label_MDRO|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(7),
	combout => \Label_RAM|Z~577_combout\);

-- Location: FF_X40_Y34_N9
\Label_RAM|Z~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~577_combout\,
	ena => \Label_RAM|Z~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~213_q\);

-- Location: LCCOMB_X39_Y34_N12
\Label_RAM|Z~579\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~579_combout\ = !\Label_MDRO|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(7),
	combout => \Label_RAM|Z~579_combout\);

-- Location: FF_X39_Y34_N13
\Label_RAM|Z~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~579_combout\,
	ena => \Label_RAM|Z~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~149_q\);

-- Location: LCCOMB_X41_Y35_N16
\Label_RAM|Z~578\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~578_combout\ = !\Label_MDRO|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRO|output\(7),
	combout => \Label_RAM|Z~578_combout\);

-- Location: FF_X41_Y35_N17
\Label_RAM|Z~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~578_combout\,
	ena => \Label_RAM|Z~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~181_q\);

-- Location: LCCOMB_X38_Y35_N10
\Label_RAM|Z~421\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~421_combout\ = (\Label_MAR|output\(3) & (\Label_MAR|output\(2))) # (!\Label_MAR|output\(3) & ((\Label_MAR|output\(2) & ((!\Label_RAM|Z~181_q\))) # (!\Label_MAR|output\(2) & (!\Label_RAM|Z~149_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(3),
	datab => \Label_MAR|output\(2),
	datac => \Label_RAM|Z~149_q\,
	datad => \Label_RAM|Z~181_q\,
	combout => \Label_RAM|Z~421_combout\);

-- Location: LCCOMB_X39_Y35_N22
\Label_RAM|Z~422\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~422_combout\ = (\Label_MAR|output\(3) & ((\Label_RAM|Z~421_combout\ & (!\Label_RAM|Z~245_q\)) # (!\Label_RAM|Z~421_combout\ & ((!\Label_RAM|Z~213_q\))))) # (!\Label_MAR|output\(3) & (((\Label_RAM|Z~421_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_RAM|Z~245_q\,
	datab => \Label_MAR|output\(3),
	datac => \Label_RAM|Z~213_q\,
	datad => \Label_RAM|Z~421_combout\,
	combout => \Label_RAM|Z~422_combout\);

-- Location: LCCOMB_X38_Y34_N2
\Label_RAM|Z~576\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~576_combout\ = !\Label_MDRO|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(7),
	combout => \Label_RAM|Z~576_combout\);

-- Location: FF_X38_Y34_N3
\Label_RAM|Z~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~576_combout\,
	ena => \Label_RAM|Z~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~261_q\);

-- Location: LCCOMB_X36_Y34_N8
\Label_RAM|Z~573\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~573_combout\ = !\Label_MDRO|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(7),
	combout => \Label_RAM|Z~573_combout\);

-- Location: FF_X36_Y34_N9
\Label_RAM|Z~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~573_combout\,
	ena => \Label_RAM|Z~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~229_q\);

-- Location: LCCOMB_X40_Y38_N6
\Label_RAM|Z~575\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~575_combout\ = !\Label_MDRO|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(7),
	combout => \Label_RAM|Z~575_combout\);

-- Location: FF_X40_Y38_N7
\Label_RAM|Z~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~575_combout\,
	ena => \Label_RAM|Z~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~165_q\);

-- Location: LCCOMB_X38_Y34_N24
\Label_RAM|Z~574\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~574_combout\ = !\Label_MDRO|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_MDRO|output\(7),
	combout => \Label_RAM|Z~574_combout\);

-- Location: FF_X38_Y34_N25
\Label_RAM|Z~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~574_combout\,
	ena => \Label_RAM|Z~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Z~197_q\);

-- Location: LCCOMB_X39_Y38_N6
\Label_RAM|Z~419\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~419_combout\ = (\Label_MAR|output\(3) & (((\Label_MAR|output\(2))))) # (!\Label_MAR|output\(3) & ((\Label_MAR|output\(2) & ((!\Label_RAM|Z~197_q\))) # (!\Label_MAR|output\(2) & (!\Label_RAM|Z~165_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(3),
	datab => \Label_RAM|Z~165_q\,
	datac => \Label_RAM|Z~197_q\,
	datad => \Label_MAR|output\(2),
	combout => \Label_RAM|Z~419_combout\);

-- Location: LCCOMB_X39_Y38_N16
\Label_RAM|Z~420\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~420_combout\ = (\Label_MAR|output\(3) & ((\Label_RAM|Z~419_combout\ & (!\Label_RAM|Z~261_q\)) # (!\Label_RAM|Z~419_combout\ & ((!\Label_RAM|Z~229_q\))))) # (!\Label_MAR|output\(3) & (((\Label_RAM|Z~419_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(3),
	datab => \Label_RAM|Z~261_q\,
	datac => \Label_RAM|Z~229_q\,
	datad => \Label_RAM|Z~419_combout\,
	combout => \Label_RAM|Z~420_combout\);

-- Location: LCCOMB_X39_Y35_N0
\Label_RAM|Z~423\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~423_combout\ = (\Label_MAR|output\(1) & ((\Label_MAR|output\(0)) # ((\Label_RAM|Z~420_combout\)))) # (!\Label_MAR|output\(1) & (!\Label_MAR|output\(0) & (\Label_RAM|Z~422_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(1),
	datab => \Label_MAR|output\(0),
	datac => \Label_RAM|Z~422_combout\,
	datad => \Label_RAM|Z~420_combout\,
	combout => \Label_RAM|Z~423_combout\);

-- Location: LCCOMB_X39_Y35_N28
\Label_RAM|Z~426\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~426_combout\ = (\Label_MAR|output\(0) & ((\Label_RAM|Z~423_combout\ & (\Label_RAM|Z~425_combout\)) # (!\Label_RAM|Z~423_combout\ & ((\Label_RAM|Z~418_combout\))))) # (!\Label_MAR|output\(0) & (((\Label_RAM|Z~423_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(0),
	datab => \Label_RAM|Z~425_combout\,
	datac => \Label_RAM|Z~418_combout\,
	datad => \Label_RAM|Z~423_combout\,
	combout => \Label_RAM|Z~426_combout\);

-- Location: LCCOMB_X39_Y35_N2
\Label_RAM|Z~437\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_RAM|Z~437_combout\ = (\Label_MAR|output\(4) & ((\Label_RAM|Z~426_combout\))) # (!\Label_MAR|output\(4) & (\Label_RAM|Z~436_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MAR|output\(4),
	datac => \Label_RAM|Z~436_combout\,
	datad => \Label_RAM|Z~426_combout\,
	combout => \Label_RAM|Z~437_combout\);

-- Location: FF_X39_Y35_N3
\Label_RAM|Data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_RAM|Z~437_combout\,
	ena => \Label_CU|ALT_INV_current_state.staa_write_mem~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_RAM|Data_out\(7));

-- Location: LCCOMB_X34_Y35_N20
\Label_MDRI|output[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_MDRI|output[7]~feeder_combout\ = \Label_RAM|Data_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Label_RAM|Data_out\(7),
	combout => \Label_MDRI|output[7]~feeder_combout\);

-- Location: FF_X34_Y35_N21
\Label_MDRI|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_MDRI|output[7]~feeder_combout\,
	ena => \Label_CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_MDRI|output\(7));

-- Location: LCCOMB_X29_Y35_N0
\Label_IR|output[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_IR|output[7]~feeder_combout\ = \Label_MDRI|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Label_MDRI|output\(7),
	combout => \Label_IR|output[7]~feeder_combout\);

-- Location: FF_X29_Y35_N1
\Label_IR|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_IR|output[7]~feeder_combout\,
	ena => \Label_CU|current_state.load_ir~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_IR|output\(7));

-- Location: LCCOMB_X32_Y35_N6
\Label_ALU|output[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_ALU|output[7]~1_combout\ = (\Label_CU|current_state.ldaa_read_mem~q\) # ((\Label_CU|current_state.ldaa_load_mar~q\) # ((\Label_CU|current_state.ldaa_load_mdri~q\) # (\Label_CU|current_state.staa_load_mdro~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_CU|current_state.ldaa_read_mem~q\,
	datab => \Label_CU|current_state.ldaa_load_mar~q\,
	datac => \Label_CU|current_state.ldaa_load_mdri~q\,
	datad => \Label_CU|current_state.staa_load_mdro~q\,
	combout => \Label_ALU|output[7]~1_combout\);

-- Location: LCCOMB_X27_Y35_N0
\Label_ALU|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_ALU|Add0~0_combout\ = \Label_Accumulator|output\(0) $ (((\Label_CU|current_state.ldaa_load_a~q\) # (\Label_ALU|output[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Label_CU|current_state.ldaa_load_a~q\,
	datac => \Label_Accumulator|output\(0),
	datad => \Label_ALU|output[7]~1_combout\,
	combout => \Label_ALU|Add0~0_combout\);

-- Location: LCCOMB_X32_Y35_N30
\Label_ALU|output[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_ALU|output[7]~2_combout\ = (\Label_CU|current_state.ldaa_load_a~q\) # (\Label_ALU|output[7]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_CU|current_state.ldaa_load_a~q\,
	datad => \Label_ALU|output[7]~1_combout\,
	combout => \Label_ALU|output[7]~2_combout\);

-- Location: LCCOMB_X27_Y35_N12
\Label_Accumulator|output[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_Accumulator|output[0]~9_cout\ = CARRY(\Label_ALU|output[7]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_ALU|output[7]~2_combout\,
	datad => VCC,
	cout => \Label_Accumulator|output[0]~9_cout\);

-- Location: LCCOMB_X27_Y35_N14
\Label_Accumulator|output[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_Accumulator|output[0]~10_combout\ = (\Label_MDRI|output\(0) & ((\Label_ALU|Add0~0_combout\ & (\Label_Accumulator|output[0]~9_cout\ & VCC)) # (!\Label_ALU|Add0~0_combout\ & (!\Label_Accumulator|output[0]~9_cout\)))) # (!\Label_MDRI|output\(0) & 
-- ((\Label_ALU|Add0~0_combout\ & (!\Label_Accumulator|output[0]~9_cout\)) # (!\Label_ALU|Add0~0_combout\ & ((\Label_Accumulator|output[0]~9_cout\) # (GND)))))
-- \Label_Accumulator|output[0]~11\ = CARRY((\Label_MDRI|output\(0) & (!\Label_ALU|Add0~0_combout\ & !\Label_Accumulator|output[0]~9_cout\)) # (!\Label_MDRI|output\(0) & ((!\Label_Accumulator|output[0]~9_cout\) # (!\Label_ALU|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MDRI|output\(0),
	datab => \Label_ALU|Add0~0_combout\,
	datad => VCC,
	cin => \Label_Accumulator|output[0]~9_cout\,
	combout => \Label_Accumulator|output[0]~10_combout\,
	cout => \Label_Accumulator|output[0]~11\);

-- Location: LCCOMB_X32_Y35_N28
\Label_Accumulator|output[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_Accumulator|output[0]~12_combout\ = (!\Label_CU|current_state.staa_load_mdro~q\ & ((\Label_CU|current_state.adaa_store_load_a~q\) # (\Label_CU|current_state.ldaa_load_a~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Label_CU|current_state.staa_load_mdro~q\,
	datac => \Label_CU|current_state.adaa_store_load_a~q\,
	datad => \Label_CU|current_state.ldaa_load_a~q\,
	combout => \Label_Accumulator|output[0]~12_combout\);

-- Location: FF_X27_Y35_N15
\Label_Accumulator|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_Accumulator|output[0]~10_combout\,
	asdata => \Label_MDRI|output\(0),
	sload => \Label_ALU|output[7]~2_combout\,
	ena => \Label_Accumulator|output[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_Accumulator|output\(0));

-- Location: LCCOMB_X27_Y35_N2
\Label_ALU|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_ALU|Add0~1_combout\ = \Label_Accumulator|output\(1) $ (((\Label_CU|current_state.ldaa_load_a~q\) # (\Label_ALU|output[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Label_Accumulator|output\(1),
	datac => \Label_CU|current_state.ldaa_load_a~q\,
	datad => \Label_ALU|output[7]~1_combout\,
	combout => \Label_ALU|Add0~1_combout\);

-- Location: LCCOMB_X27_Y35_N16
\Label_Accumulator|output[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_Accumulator|output[1]~13_combout\ = ((\Label_MDRI|output\(1) $ (\Label_ALU|Add0~1_combout\ $ (!\Label_Accumulator|output[0]~11\)))) # (GND)
-- \Label_Accumulator|output[1]~14\ = CARRY((\Label_MDRI|output\(1) & ((\Label_ALU|Add0~1_combout\) # (!\Label_Accumulator|output[0]~11\))) # (!\Label_MDRI|output\(1) & (\Label_ALU|Add0~1_combout\ & !\Label_Accumulator|output[0]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MDRI|output\(1),
	datab => \Label_ALU|Add0~1_combout\,
	datad => VCC,
	cin => \Label_Accumulator|output[0]~11\,
	combout => \Label_Accumulator|output[1]~13_combout\,
	cout => \Label_Accumulator|output[1]~14\);

-- Location: FF_X27_Y35_N17
\Label_Accumulator|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_Accumulator|output[1]~13_combout\,
	asdata => \Label_MDRI|output\(1),
	sload => \Label_ALU|output[7]~2_combout\,
	ena => \Label_Accumulator|output[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_Accumulator|output\(1));

-- Location: LCCOMB_X27_Y35_N4
\Label_ALU|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_ALU|Add0~2_combout\ = \Label_Accumulator|output\(2) $ (((\Label_CU|current_state.ldaa_load_a~q\) # (\Label_ALU|output[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Label_Accumulator|output\(2),
	datac => \Label_CU|current_state.ldaa_load_a~q\,
	datad => \Label_ALU|output[7]~1_combout\,
	combout => \Label_ALU|Add0~2_combout\);

-- Location: LCCOMB_X27_Y35_N18
\Label_Accumulator|output[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_Accumulator|output[2]~15_combout\ = (\Label_MDRI|output\(2) & ((\Label_ALU|Add0~2_combout\ & (\Label_Accumulator|output[1]~14\ & VCC)) # (!\Label_ALU|Add0~2_combout\ & (!\Label_Accumulator|output[1]~14\)))) # (!\Label_MDRI|output\(2) & 
-- ((\Label_ALU|Add0~2_combout\ & (!\Label_Accumulator|output[1]~14\)) # (!\Label_ALU|Add0~2_combout\ & ((\Label_Accumulator|output[1]~14\) # (GND)))))
-- \Label_Accumulator|output[2]~16\ = CARRY((\Label_MDRI|output\(2) & (!\Label_ALU|Add0~2_combout\ & !\Label_Accumulator|output[1]~14\)) # (!\Label_MDRI|output\(2) & ((!\Label_Accumulator|output[1]~14\) # (!\Label_ALU|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MDRI|output\(2),
	datab => \Label_ALU|Add0~2_combout\,
	datad => VCC,
	cin => \Label_Accumulator|output[1]~14\,
	combout => \Label_Accumulator|output[2]~15_combout\,
	cout => \Label_Accumulator|output[2]~16\);

-- Location: FF_X27_Y35_N19
\Label_Accumulator|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_Accumulator|output[2]~15_combout\,
	asdata => \Label_MDRI|output\(2),
	sload => \Label_ALU|output[7]~2_combout\,
	ena => \Label_Accumulator|output[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_Accumulator|output\(2));

-- Location: LCCOMB_X27_Y35_N10
\Label_ALU|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_ALU|Add0~3_combout\ = \Label_Accumulator|output\(3) $ (((\Label_CU|current_state.ldaa_load_a~q\) # (\Label_ALU|output[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Label_Accumulator|output\(3),
	datac => \Label_CU|current_state.ldaa_load_a~q\,
	datad => \Label_ALU|output[7]~1_combout\,
	combout => \Label_ALU|Add0~3_combout\);

-- Location: LCCOMB_X27_Y35_N20
\Label_Accumulator|output[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_Accumulator|output[3]~17_combout\ = ((\Label_ALU|Add0~3_combout\ $ (\Label_MDRI|output\(3) $ (!\Label_Accumulator|output[2]~16\)))) # (GND)
-- \Label_Accumulator|output[3]~18\ = CARRY((\Label_ALU|Add0~3_combout\ & ((\Label_MDRI|output\(3)) # (!\Label_Accumulator|output[2]~16\))) # (!\Label_ALU|Add0~3_combout\ & (\Label_MDRI|output\(3) & !\Label_Accumulator|output[2]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Label_ALU|Add0~3_combout\,
	datab => \Label_MDRI|output\(3),
	datad => VCC,
	cin => \Label_Accumulator|output[2]~16\,
	combout => \Label_Accumulator|output[3]~17_combout\,
	cout => \Label_Accumulator|output[3]~18\);

-- Location: FF_X27_Y35_N21
\Label_Accumulator|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_Accumulator|output[3]~17_combout\,
	asdata => \Label_MDRI|output\(3),
	sload => \Label_ALU|output[7]~2_combout\,
	ena => \Label_Accumulator|output[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_Accumulator|output\(3));

-- Location: LCCOMB_X27_Y35_N8
\Label_ALU|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_ALU|Add0~4_combout\ = \Label_Accumulator|output\(4) $ (((\Label_CU|current_state.ldaa_load_a~q\) # (\Label_ALU|output[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Label_CU|current_state.ldaa_load_a~q\,
	datac => \Label_Accumulator|output\(4),
	datad => \Label_ALU|output[7]~1_combout\,
	combout => \Label_ALU|Add0~4_combout\);

-- Location: LCCOMB_X27_Y35_N22
\Label_Accumulator|output[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_Accumulator|output[4]~19_combout\ = (\Label_ALU|Add0~4_combout\ & ((\Label_MDRI|output\(4) & (\Label_Accumulator|output[3]~18\ & VCC)) # (!\Label_MDRI|output\(4) & (!\Label_Accumulator|output[3]~18\)))) # (!\Label_ALU|Add0~4_combout\ & 
-- ((\Label_MDRI|output\(4) & (!\Label_Accumulator|output[3]~18\)) # (!\Label_MDRI|output\(4) & ((\Label_Accumulator|output[3]~18\) # (GND)))))
-- \Label_Accumulator|output[4]~20\ = CARRY((\Label_ALU|Add0~4_combout\ & (!\Label_MDRI|output\(4) & !\Label_Accumulator|output[3]~18\)) # (!\Label_ALU|Add0~4_combout\ & ((!\Label_Accumulator|output[3]~18\) # (!\Label_MDRI|output\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Label_ALU|Add0~4_combout\,
	datab => \Label_MDRI|output\(4),
	datad => VCC,
	cin => \Label_Accumulator|output[3]~18\,
	combout => \Label_Accumulator|output[4]~19_combout\,
	cout => \Label_Accumulator|output[4]~20\);

-- Location: FF_X27_Y35_N23
\Label_Accumulator|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_Accumulator|output[4]~19_combout\,
	asdata => \Label_MDRI|output\(4),
	sload => \Label_ALU|output[7]~2_combout\,
	ena => \Label_Accumulator|output[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_Accumulator|output\(4));

-- Location: LCCOMB_X27_Y35_N30
\Label_ALU|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_ALU|Add0~5_combout\ = \Label_Accumulator|output\(5) $ (((\Label_CU|current_state.ldaa_load_a~q\) # (\Label_ALU|output[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Label_Accumulator|output\(5),
	datac => \Label_CU|current_state.ldaa_load_a~q\,
	datad => \Label_ALU|output[7]~1_combout\,
	combout => \Label_ALU|Add0~5_combout\);

-- Location: LCCOMB_X27_Y35_N24
\Label_Accumulator|output[5]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_Accumulator|output[5]~21_combout\ = ((\Label_ALU|Add0~5_combout\ $ (\Label_MDRI|output\(5) $ (!\Label_Accumulator|output[4]~20\)))) # (GND)
-- \Label_Accumulator|output[5]~22\ = CARRY((\Label_ALU|Add0~5_combout\ & ((\Label_MDRI|output\(5)) # (!\Label_Accumulator|output[4]~20\))) # (!\Label_ALU|Add0~5_combout\ & (\Label_MDRI|output\(5) & !\Label_Accumulator|output[4]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Label_ALU|Add0~5_combout\,
	datab => \Label_MDRI|output\(5),
	datad => VCC,
	cin => \Label_Accumulator|output[4]~20\,
	combout => \Label_Accumulator|output[5]~21_combout\,
	cout => \Label_Accumulator|output[5]~22\);

-- Location: FF_X27_Y35_N25
\Label_Accumulator|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_Accumulator|output[5]~21_combout\,
	asdata => \Label_MDRI|output\(5),
	sload => \Label_ALU|output[7]~2_combout\,
	ena => \Label_Accumulator|output[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_Accumulator|output\(5));

-- Location: LCCOMB_X27_Y35_N6
\Label_ALU|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_ALU|Add0~6_combout\ = \Label_Accumulator|output\(6) $ (((\Label_CU|current_state.ldaa_load_a~q\) # (\Label_ALU|output[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Label_CU|current_state.ldaa_load_a~q\,
	datac => \Label_Accumulator|output\(6),
	datad => \Label_ALU|output[7]~1_combout\,
	combout => \Label_ALU|Add0~6_combout\);

-- Location: LCCOMB_X27_Y35_N26
\Label_Accumulator|output[6]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_Accumulator|output[6]~23_combout\ = (\Label_ALU|Add0~6_combout\ & ((\Label_MDRI|output\(6) & (\Label_Accumulator|output[5]~22\ & VCC)) # (!\Label_MDRI|output\(6) & (!\Label_Accumulator|output[5]~22\)))) # (!\Label_ALU|Add0~6_combout\ & 
-- ((\Label_MDRI|output\(6) & (!\Label_Accumulator|output[5]~22\)) # (!\Label_MDRI|output\(6) & ((\Label_Accumulator|output[5]~22\) # (GND)))))
-- \Label_Accumulator|output[6]~24\ = CARRY((\Label_ALU|Add0~6_combout\ & (!\Label_MDRI|output\(6) & !\Label_Accumulator|output[5]~22\)) # (!\Label_ALU|Add0~6_combout\ & ((!\Label_Accumulator|output[5]~22\) # (!\Label_MDRI|output\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Label_ALU|Add0~6_combout\,
	datab => \Label_MDRI|output\(6),
	datad => VCC,
	cin => \Label_Accumulator|output[5]~22\,
	combout => \Label_Accumulator|output[6]~23_combout\,
	cout => \Label_Accumulator|output[6]~24\);

-- Location: FF_X27_Y35_N27
\Label_Accumulator|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_Accumulator|output[6]~23_combout\,
	asdata => \Label_MDRI|output\(6),
	sload => \Label_ALU|output[7]~2_combout\,
	ena => \Label_Accumulator|output[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_Accumulator|output\(6));

-- Location: LCCOMB_X26_Y35_N24
\Label_ALU|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_ALU|Add0~7_combout\ = \Label_Accumulator|output\(7) $ (((\Label_ALU|output[7]~1_combout\) # (\Label_CU|current_state.ldaa_load_a~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Label_Accumulator|output\(7),
	datac => \Label_ALU|output[7]~1_combout\,
	datad => \Label_CU|current_state.ldaa_load_a~q\,
	combout => \Label_ALU|Add0~7_combout\);

-- Location: LCCOMB_X27_Y35_N28
\Label_Accumulator|output[7]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Label_Accumulator|output[7]~25_combout\ = \Label_MDRI|output\(7) $ (\Label_Accumulator|output[6]~24\ $ (!\Label_ALU|Add0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Label_MDRI|output\(7),
	datad => \Label_ALU|Add0~7_combout\,
	cin => \Label_Accumulator|output[6]~24\,
	combout => \Label_Accumulator|output[7]~25_combout\);

-- Location: FF_X27_Y35_N29
\Label_Accumulator|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Label_Accumulator|output[7]~25_combout\,
	asdata => \Label_MDRI|output\(7),
	sload => \Label_ALU|output[7]~2_combout\,
	ena => \Label_Accumulator|output[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Label_Accumulator|output\(7));

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_pcOut(0) <= \pcOut[0]~output_o\;

ww_pcOut(1) <= \pcOut[1]~output_o\;

ww_pcOut(2) <= \pcOut[2]~output_o\;

ww_pcOut(3) <= \pcOut[3]~output_o\;

ww_pcOut(4) <= \pcOut[4]~output_o\;

ww_pcOut(5) <= \pcOut[5]~output_o\;

ww_pcOut(6) <= \pcOut[6]~output_o\;

ww_pcOut(7) <= \pcOut[7]~output_o\;

ww_marOut(0) <= \marOut[0]~output_o\;

ww_marOut(1) <= \marOut[1]~output_o\;

ww_marOut(2) <= \marOut[2]~output_o\;

ww_marOut(3) <= \marOut[3]~output_o\;

ww_marOut(4) <= \marOut[4]~output_o\;

ww_marOut(5) <= \marOut[5]~output_o\;

ww_marOut(6) <= \marOut[6]~output_o\;

ww_marOut(7) <= \marOut[7]~output_o\;

ww_irOutput(0) <= \irOutput[0]~output_o\;

ww_irOutput(1) <= \irOutput[1]~output_o\;

ww_irOutput(2) <= \irOutput[2]~output_o\;

ww_irOutput(3) <= \irOutput[3]~output_o\;

ww_irOutput(4) <= \irOutput[4]~output_o\;

ww_irOutput(5) <= \irOutput[5]~output_o\;

ww_irOutput(6) <= \irOutput[6]~output_o\;

ww_irOutput(7) <= \irOutput[7]~output_o\;

ww_mdriOutput(0) <= \mdriOutput[0]~output_o\;

ww_mdriOutput(1) <= \mdriOutput[1]~output_o\;

ww_mdriOutput(2) <= \mdriOutput[2]~output_o\;

ww_mdriOutput(3) <= \mdriOutput[3]~output_o\;

ww_mdriOutput(4) <= \mdriOutput[4]~output_o\;

ww_mdriOutput(5) <= \mdriOutput[5]~output_o\;

ww_mdriOutput(6) <= \mdriOutput[6]~output_o\;

ww_mdriOutput(7) <= \mdriOutput[7]~output_o\;

ww_mdroOutput(0) <= \mdroOutput[0]~output_o\;

ww_mdroOutput(1) <= \mdroOutput[1]~output_o\;

ww_mdroOutput(2) <= \mdroOutput[2]~output_o\;

ww_mdroOutput(3) <= \mdroOutput[3]~output_o\;

ww_mdroOutput(4) <= \mdroOutput[4]~output_o\;

ww_mdroOutput(5) <= \mdroOutput[5]~output_o\;

ww_mdroOutput(6) <= \mdroOutput[6]~output_o\;

ww_mdroOutput(7) <= \mdroOutput[7]~output_o\;

ww_aOut(0) <= \aOut[0]~output_o\;

ww_aOut(1) <= \aOut[1]~output_o\;

ww_aOut(2) <= \aOut[2]~output_o\;

ww_aOut(3) <= \aOut[3]~output_o\;

ww_aOut(4) <= \aOut[4]~output_o\;

ww_aOut(5) <= \aOut[5]~output_o\;

ww_aOut(6) <= \aOut[6]~output_o\;

ww_aOut(7) <= \aOut[7]~output_o\;

ww_incrementOut <= \incrementOut~output_o\;
END structure;


