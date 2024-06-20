-- Copyright (C) 2021  Intel Corporation. All rights reserved.
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
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "12/25/2023 08:26:19"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for QuestaSim (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MIPS_Processor IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	pc_out : BUFFER std_logic_vector(7 DOWNTO 0);
	destnation_register : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END MIPS_Processor;

-- Design Ports Information
-- pc_out[0]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[1]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[2]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[3]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[4]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[5]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[6]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[7]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- destnation_register[0]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- destnation_register[1]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- destnation_register[2]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- destnation_register[3]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- destnation_register[4]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- destnation_register[5]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- destnation_register[6]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- destnation_register[7]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- destnation_register[8]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- destnation_register[9]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- destnation_register[10]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- destnation_register[11]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- destnation_register[12]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- destnation_register[13]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- destnation_register[14]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- destnation_register[15]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MIPS_Processor IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_pc_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_destnation_register : std_logic_vector(15 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \pc_out[0]~output_o\ : std_logic;
SIGNAL \pc_out[1]~output_o\ : std_logic;
SIGNAL \pc_out[2]~output_o\ : std_logic;
SIGNAL \pc_out[3]~output_o\ : std_logic;
SIGNAL \pc_out[4]~output_o\ : std_logic;
SIGNAL \pc_out[5]~output_o\ : std_logic;
SIGNAL \pc_out[6]~output_o\ : std_logic;
SIGNAL \pc_out[7]~output_o\ : std_logic;
SIGNAL \destnation_register[0]~output_o\ : std_logic;
SIGNAL \destnation_register[1]~output_o\ : std_logic;
SIGNAL \destnation_register[2]~output_o\ : std_logic;
SIGNAL \destnation_register[3]~output_o\ : std_logic;
SIGNAL \destnation_register[4]~output_o\ : std_logic;
SIGNAL \destnation_register[5]~output_o\ : std_logic;
SIGNAL \destnation_register[6]~output_o\ : std_logic;
SIGNAL \destnation_register[7]~output_o\ : std_logic;
SIGNAL \destnation_register[8]~output_o\ : std_logic;
SIGNAL \destnation_register[9]~output_o\ : std_logic;
SIGNAL \destnation_register[10]~output_o\ : std_logic;
SIGNAL \destnation_register[11]~output_o\ : std_logic;
SIGNAL \destnation_register[12]~output_o\ : std_logic;
SIGNAL \destnation_register[13]~output_o\ : std_logic;
SIGNAL \destnation_register[14]~output_o\ : std_logic;
SIGNAL \destnation_register[15]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Mux67~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Mux68~0_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux57~8_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Mux43~1_combout\ : std_logic;
SIGNAL \Mux43~2_combout\ : std_logic;
SIGNAL \Mux61~0_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \MyRAM~197_combout\ : std_logic;
SIGNAL \MyRAM~20_q\ : std_logic;
SIGNAL \MyRAM~165_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Mux36~1_combout\ : std_logic;
SIGNAL \MyRAM~27feeder_combout\ : std_logic;
SIGNAL \MyRAM~27_q\ : std_logic;
SIGNAL \MyRAM~179_combout\ : std_logic;
SIGNAL \MyRAM~196_combout\ : std_logic;
SIGNAL \MyRAM~42_q\ : std_logic;
SIGNAL \MyRAM~177_combout\ : std_logic;
SIGNAL \MyRAM~41_q\ : std_logic;
SIGNAL \MyRAM~175_combout\ : std_logic;
SIGNAL \MyRAM~40_q\ : std_logic;
SIGNAL \MyRAM~173_combout\ : std_logic;
SIGNAL \MyRAM~23_q\ : std_logic;
SIGNAL \MyRAM~171_combout\ : std_logic;
SIGNAL \MyRAM~22_q\ : std_logic;
SIGNAL \MyRAM~169_combout\ : std_logic;
SIGNAL \MyRAM~37_q\ : std_logic;
SIGNAL \MyRAM~167_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Mux54~0_combout\ : std_logic;
SIGNAL \Mux54~1_combout\ : std_logic;
SIGNAL \MyRAM~43_q\ : std_logic;
SIGNAL \MyRAM~178_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \Mux24~5_combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \Mux61~1_combout\ : std_logic;
SIGNAL \MyRAM~36_q\ : std_logic;
SIGNAL \MyRAM~164_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Mux42~1_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \Mux60~0_combout\ : std_logic;
SIGNAL \Mux60~1_combout\ : std_logic;
SIGNAL \MyRAM~21_q\ : std_logic;
SIGNAL \MyRAM~166_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Mux41~1_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Mux59~0_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Mux59~1_combout\ : std_logic;
SIGNAL \MyRAM~38_q\ : std_logic;
SIGNAL \MyRAM~168_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Mux40~1_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Mux58~0_combout\ : std_logic;
SIGNAL \Mux58~1_combout\ : std_logic;
SIGNAL \MyRAM~39_q\ : std_logic;
SIGNAL \MyRAM~170_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Mux39~1_combout\ : std_logic;
SIGNAL \Mux57~6_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Mux57~7_combout\ : std_logic;
SIGNAL \MyRAM~24_q\ : std_logic;
SIGNAL \MyRAM~172_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Mux38~1_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Mux56~0_combout\ : std_logic;
SIGNAL \Mux56~1_combout\ : std_logic;
SIGNAL \MyRAM~25_q\ : std_logic;
SIGNAL \MyRAM~174_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Mux55~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux43~3_combout\ : std_logic;
SIGNAL \Mux55~1_combout\ : std_logic;
SIGNAL \MyRAM~26_q\ : std_logic;
SIGNAL \MyRAM~176_combout\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \ZF~7_combout\ : std_logic;
SIGNAL \Mux35~1_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Mux53~0_combout\ : std_logic;
SIGNAL \MyRAM~28_q\ : std_logic;
SIGNAL \MyRAM~181_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Mux53~1_combout\ : std_logic;
SIGNAL \MyRAM~44_q\ : std_logic;
SIGNAL \MyRAM~180_combout\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Mux34~1_combout\ : std_logic;
SIGNAL \MyRAM~45_q\ : std_logic;
SIGNAL \MyRAM~183_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux52~0_combout\ : std_logic;
SIGNAL \Mux52~1_combout\ : std_logic;
SIGNAL \MyRAM~29feeder_combout\ : std_logic;
SIGNAL \MyRAM~29_q\ : std_logic;
SIGNAL \MyRAM~182_combout\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \ZF~8_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Mux33~1_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Mux51~0_combout\ : std_logic;
SIGNAL \Add4~19\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \MyRAM~46_q\ : std_logic;
SIGNAL \MyRAM~185_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux51~1_combout\ : std_logic;
SIGNAL \MyRAM~30_q\ : std_logic;
SIGNAL \MyRAM~184_combout\ : std_logic;
SIGNAL \Add4~21\ : std_logic;
SIGNAL \Add4~22_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \MyRAM~47_q\ : std_logic;
SIGNAL \MyRAM~187_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux50~0_combout\ : std_logic;
SIGNAL \Mux50~1_combout\ : std_logic;
SIGNAL \MyRAM~31_q\ : std_logic;
SIGNAL \MyRAM~186_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \Mux49~0_combout\ : std_logic;
SIGNAL \Add4~23\ : std_logic;
SIGNAL \Add4~24_combout\ : std_logic;
SIGNAL \MyRAM~32_q\ : std_logic;
SIGNAL \MyRAM~189_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux49~1_combout\ : std_logic;
SIGNAL \MyRAM~48_q\ : std_logic;
SIGNAL \MyRAM~188_combout\ : std_logic;
SIGNAL \Add4~25\ : std_logic;
SIGNAL \Add4~26_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \MyRAM~33feeder_combout\ : std_logic;
SIGNAL \MyRAM~33_q\ : std_logic;
SIGNAL \MyRAM~191_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux48~0_combout\ : std_logic;
SIGNAL \Mux48~1_combout\ : std_logic;
SIGNAL \MyRAM~49_q\ : std_logic;
SIGNAL \MyRAM~190_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~28_combout\ : std_logic;
SIGNAL \MyRAM~34feeder_combout\ : std_logic;
SIGNAL \MyRAM~34_q\ : std_logic;
SIGNAL \MyRAM~193_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux47~1_combout\ : std_logic;
SIGNAL \MyRAM~50_q\ : std_logic;
SIGNAL \MyRAM~192_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \MyRAM~51_q\ : std_logic;
SIGNAL \MyRAM~195_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \Mux46~1_combout\ : std_logic;
SIGNAL \MyRAM~35_q\ : std_logic;
SIGNAL \MyRAM~194_combout\ : std_logic;
SIGNAL \Add4~29\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \ZF~9_combout\ : std_logic;
SIGNAL \ZF~10_combout\ : std_logic;
SIGNAL \ZF~6_combout\ : std_logic;
SIGNAL \ZF~11_combout\ : std_logic;
SIGNAL \CF~0_combout\ : std_logic;
SIGNAL \ZF~4_combout\ : std_logic;
SIGNAL \ZF~3_combout\ : std_logic;
SIGNAL \ZF~1_combout\ : std_logic;
SIGNAL \ZF~0_combout\ : std_logic;
SIGNAL \ZF~2_combout\ : std_logic;
SIGNAL \ZF~5_combout\ : std_logic;
SIGNAL \ZF~12_combout\ : std_logic;
SIGNAL \ZF~q\ : std_logic;
SIGNAL \Mux66~3_combout\ : std_logic;
SIGNAL \Mux66~12_combout\ : std_logic;
SIGNAL \pc_current[0]~3_combout\ : std_logic;
SIGNAL \pc_current[0]~9_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Mux69~0_combout\ : std_logic;
SIGNAL \pc_out[0]~reg0_q\ : std_logic;
SIGNAL \pc_out[1]~reg0_q\ : std_logic;
SIGNAL \pc_out[2]~reg0_q\ : std_logic;
SIGNAL \pc_out[3]~reg0feeder_combout\ : std_logic;
SIGNAL \pc_out[3]~reg0_q\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Mux65~12_combout\ : std_logic;
SIGNAL \pc_out[4]~reg0feeder_combout\ : std_logic;
SIGNAL \pc_out[4]~reg0_q\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Mux64~12_combout\ : std_logic;
SIGNAL \pc_out[5]~reg0_q\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \CF~1_combout\ : std_logic;
SIGNAL \CF~2_combout\ : std_logic;
SIGNAL \CF~3_combout\ : std_logic;
SIGNAL \CF~4_combout\ : std_logic;
SIGNAL \CF~q\ : std_logic;
SIGNAL \Mux62~0_combout\ : std_logic;
SIGNAL \Mux63~0_combout\ : std_logic;
SIGNAL \pc_out[6]~reg0feeder_combout\ : std_logic;
SIGNAL \pc_out[6]~reg0_q\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Mux62~1_combout\ : std_logic;
SIGNAL \pc_out[7]~reg0_q\ : std_logic;
SIGNAL \destnation_register[0]~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \destnation_register[4]~17_combout\ : std_logic;
SIGNAL \destnation_register[0]~16_combout\ : std_logic;
SIGNAL \destnation_register[0]~reg0_q\ : std_logic;
SIGNAL \destnation_register[1]~1_combout\ : std_logic;
SIGNAL \destnation_register[1]~reg0_q\ : std_logic;
SIGNAL \destnation_register[2]~2_combout\ : std_logic;
SIGNAL \destnation_register[2]~reg0_q\ : std_logic;
SIGNAL \destnation_register[3]~3_combout\ : std_logic;
SIGNAL \destnation_register[3]~reg0_q\ : std_logic;
SIGNAL \destnation_register[4]~4_combout\ : std_logic;
SIGNAL \destnation_register[4]~reg0_q\ : std_logic;
SIGNAL \destnation_register[5]~5_combout\ : std_logic;
SIGNAL \destnation_register[5]~reg0_q\ : std_logic;
SIGNAL \destnation_register[6]~6_combout\ : std_logic;
SIGNAL \destnation_register[6]~reg0_q\ : std_logic;
SIGNAL \destnation_register[7]~7_combout\ : std_logic;
SIGNAL \destnation_register[7]~reg0_q\ : std_logic;
SIGNAL \destnation_register[8]~8_combout\ : std_logic;
SIGNAL \destnation_register[8]~reg0_q\ : std_logic;
SIGNAL \destnation_register[9]~9_combout\ : std_logic;
SIGNAL \destnation_register[9]~reg0_q\ : std_logic;
SIGNAL \destnation_register[10]~10_combout\ : std_logic;
SIGNAL \destnation_register[10]~reg0_q\ : std_logic;
SIGNAL \destnation_register[11]~11_combout\ : std_logic;
SIGNAL \destnation_register[11]~reg0_q\ : std_logic;
SIGNAL \destnation_register[12]~12_combout\ : std_logic;
SIGNAL \destnation_register[12]~reg0_q\ : std_logic;
SIGNAL \destnation_register[13]~13_combout\ : std_logic;
SIGNAL \destnation_register[13]~reg0_q\ : std_logic;
SIGNAL \destnation_register[14]~14_combout\ : std_logic;
SIGNAL \destnation_register[14]~reg0_q\ : std_logic;
SIGNAL \destnation_register[15]~15_combout\ : std_logic;
SIGNAL \destnation_register[15]~reg0_q\ : std_logic;
SIGNAL pc_current : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
pc_out <= ww_pc_out;
destnation_register <= ww_destnation_register;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult1~DATAOUT15\ & \Mult0|auto_generated|mac_mult1~DATAOUT14\ & \Mult0|auto_generated|mac_mult1~DATAOUT13\ & \Mult0|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT11\ & \Mult0|auto_generated|mac_mult1~DATAOUT10\ & \Mult0|auto_generated|mac_mult1~DATAOUT9\ & \Mult0|auto_generated|mac_mult1~DATAOUT8\ & \Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT6\ & \Mult0|auto_generated|mac_mult1~DATAOUT5\ & \Mult0|auto_generated|mac_mult1~DATAOUT4\ & \Mult0|auto_generated|mac_mult1~DATAOUT3\ & \Mult0|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT1\ & \Mult0|auto_generated|mac_mult1~dataout\ & \Mult0|auto_generated|mac_mult1~1\ & \Mult0|auto_generated|mac_mult1~0\);

\Mult0|auto_generated|mac_out2~0\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out2~1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out2~dataout\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out2~DATAOUT1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out2~DATAOUT2\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_out2~DATAOUT3\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_out2~DATAOUT4\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_out2~DATAOUT5\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_out2~DATAOUT6\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_out2~DATAOUT7\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_out2~DATAOUT8\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_out2~DATAOUT9\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_out2~DATAOUT10\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_out2~DATAOUT11\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_out2~DATAOUT12\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_out2~DATAOUT13\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_out2~DATAOUT14\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_out2~DATAOUT15\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\MyRAM~178_combout\ & \MyRAM~176_combout\ & \MyRAM~174_combout\ & \MyRAM~172_combout\ & \MyRAM~170_combout\ & \MyRAM~168_combout\ & \MyRAM~166_combout\ & \MyRAM~164_combout\ & gnd);

\Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\MyRAM~179_combout\ & \MyRAM~177_combout\ & \MyRAM~175_combout\ & \MyRAM~173_combout\ & \MyRAM~171_combout\ & \MyRAM~169_combout\ & \MyRAM~167_combout\ & \MyRAM~165_combout\ & gnd);

\Mult0|auto_generated|mac_mult1~0\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult1~1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult1~dataout\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X18_Y24_N23
\pc_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \pc_out[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\pc_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \pc_out[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\pc_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \pc_out[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\pc_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \pc_out[3]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\pc_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \pc_out[4]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\pc_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \pc_out[5]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\pc_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => \pc_out[6]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\pc_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_out[7]~reg0_q\,
	devoe => ww_devoe,
	o => \pc_out[7]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\destnation_register[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \destnation_register[0]~reg0_q\,
	devoe => ww_devoe,
	o => \destnation_register[0]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\destnation_register[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \destnation_register[1]~reg0_q\,
	devoe => ww_devoe,
	o => \destnation_register[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\destnation_register[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \destnation_register[2]~reg0_q\,
	devoe => ww_devoe,
	o => \destnation_register[2]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\destnation_register[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \destnation_register[3]~reg0_q\,
	devoe => ww_devoe,
	o => \destnation_register[3]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\destnation_register[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \destnation_register[4]~reg0_q\,
	devoe => ww_devoe,
	o => \destnation_register[4]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\destnation_register[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \destnation_register[5]~reg0_q\,
	devoe => ww_devoe,
	o => \destnation_register[5]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\destnation_register[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \destnation_register[6]~reg0_q\,
	devoe => ww_devoe,
	o => \destnation_register[6]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\destnation_register[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \destnation_register[7]~reg0_q\,
	devoe => ww_devoe,
	o => \destnation_register[7]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\destnation_register[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \destnation_register[8]~reg0_q\,
	devoe => ww_devoe,
	o => \destnation_register[8]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\destnation_register[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \destnation_register[9]~reg0_q\,
	devoe => ww_devoe,
	o => \destnation_register[9]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\destnation_register[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \destnation_register[10]~reg0_q\,
	devoe => ww_devoe,
	o => \destnation_register[10]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\destnation_register[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \destnation_register[11]~reg0_q\,
	devoe => ww_devoe,
	o => \destnation_register[11]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\destnation_register[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \destnation_register[12]~reg0_q\,
	devoe => ww_devoe,
	o => \destnation_register[12]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\destnation_register[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \destnation_register[13]~reg0_q\,
	devoe => ww_devoe,
	o => \destnation_register[13]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\destnation_register[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \destnation_register[14]~reg0_q\,
	devoe => ww_devoe,
	o => \destnation_register[14]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\destnation_register[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \destnation_register[15]~reg0_q\,
	devoe => ww_devoe,
	o => \destnation_register[15]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: LCCOMB_X28_Y15_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = pc_current(0) $ (VCC)
-- \Add0~1\ = CARRY(pc_current(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc_current(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X28_Y15_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (pc_current(1) & (!\Add0~1\)) # (!pc_current(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!pc_current(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc_current(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X28_Y15_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (pc_current(2) & (\Add0~3\ $ (GND))) # (!pc_current(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((pc_current(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pc_current(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X21_Y15_N24
\Mux67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux67~0_combout\ = (!\pc_current[0]~9_combout\ & \Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc_current[0]~9_combout\,
	datad => \Add0~4_combout\,
	combout => \Mux67~0_combout\);

-- Location: IOIBUF_X0_Y11_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X21_Y15_N25
\pc_current[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux67~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_current(2));

-- Location: LCCOMB_X22_Y14_N18
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!pc_current(3) & (pc_current(2) & (!pc_current(1) & pc_current(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_current(3),
	datab => pc_current(2),
	datac => pc_current(1),
	datad => pc_current(0),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X21_Y15_N2
\Mux68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux68~0_combout\ = (\pc_current[0]~9_combout\ & (\Mux7~0_combout\)) # (!\pc_current[0]~9_combout\ & ((\Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datac => \pc_current[0]~9_combout\,
	datad => \Add0~2_combout\,
	combout => \Mux68~0_combout\);

-- Location: FF_X21_Y15_N3
\pc_current[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux68~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_current(1));

-- Location: LCCOMB_X28_Y15_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (pc_current(3) & (!\Add0~5\)) # (!pc_current(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!pc_current(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pc_current(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X23_Y17_N20
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (pc_current(3)) # ((pc_current(1) & ((pc_current(2)) # (!pc_current(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_current(1),
	datab => pc_current(3),
	datac => pc_current(0),
	datad => pc_current(2),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X22_Y14_N28
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (pc_current(3)) # ((pc_current(2) & ((pc_current(1)) # (!pc_current(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_current(2),
	datab => pc_current(0),
	datac => pc_current(1),
	datad => pc_current(3),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X25_Y17_N26
\Mux57~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~8_combout\ = (pc_current(3) & (((\Mux2~0_combout\) # (!\Mux3~0_combout\)))) # (!pc_current(3) & (pc_current(1) & ((\Mux2~0_combout\) # (!\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_current(3),
	datab => pc_current(1),
	datac => \Mux2~0_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux57~8_combout\);

-- Location: LCCOMB_X21_Y15_N6
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!pc_current(2) & (!pc_current(3) & pc_current(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc_current(2),
	datac => pc_current(3),
	datad => pc_current(1),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X22_Y15_N24
\Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = (\Mux3~0_combout\ & (\MyRAM~176_combout\ & ((!\Mux2~0_combout\)))) # (!\Mux3~0_combout\ & ((\Mux2~0_combout\ & (\MyRAM~176_combout\)) # (!\Mux2~0_combout\ & ((\Mux5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~176_combout\,
	datab => \Mux5~0_combout\,
	datac => \Mux3~0_combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux37~0_combout\);

-- Location: LCCOMB_X21_Y15_N14
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (pc_current(0) & (!pc_current(3) & !pc_current(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc_current(0),
	datac => pc_current(3),
	datad => pc_current(2),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X22_Y14_N0
\Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (!pc_current(2) & (pc_current(0) & (pc_current(1) & !pc_current(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_current(2),
	datab => pc_current(0),
	datac => pc_current(1),
	datad => pc_current(3),
	combout => \Mux24~3_combout\);

-- Location: LCCOMB_X22_Y14_N8
\Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (!pc_current(3) & (!pc_current(2) & (!pc_current(1) & pc_current(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_current(3),
	datab => pc_current(2),
	datac => pc_current(1),
	datad => pc_current(0),
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X22_Y17_N0
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (\Mux8~0_combout\ & (\MyRAM~164_combout\ $ (VCC))) # (!\Mux8~0_combout\ & ((\MyRAM~164_combout\) # (GND)))
-- \Add4~1\ = CARRY((\MyRAM~164_combout\) # (!\Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datab => \MyRAM~164_combout\,
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X21_Y17_N0
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (\Mux8~0_combout\ & (\MyRAM~164_combout\ $ (VCC))) # (!\Mux8~0_combout\ & (\MyRAM~164_combout\ & VCC))
-- \Add3~1\ = CARRY((\Mux8~0_combout\ & \MyRAM~164_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datab => \MyRAM~164_combout\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X22_Y14_N2
\Mux43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~1_combout\ = (\Mux3~0_combout\ & (((\Add3~0_combout\) # (\Mux2~0_combout\)))) # (!\Mux3~0_combout\ & (\Mux8~0_combout\ & ((!\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datab => \Mux3~0_combout\,
	datac => \Add3~0_combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux43~1_combout\);

-- Location: LCCOMB_X21_Y16_N22
\Mux43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~2_combout\ = (\Mux43~1_combout\ & (((\Mux8~0_combout\ & \MyRAM~164_combout\)) # (!\Mux2~0_combout\))) # (!\Mux43~1_combout\ & (\Mux2~0_combout\ & ((\Mux8~0_combout\) # (\MyRAM~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datab => \Mux43~1_combout\,
	datac => \Mux2~0_combout\,
	datad => \MyRAM~164_combout\,
	combout => \Mux43~2_combout\);

-- Location: LCCOMB_X21_Y16_N8
\Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~0_combout\ = (\Mux24~3_combout\ & (((\Mux57~8_combout\) # (\Add3~0_combout\)))) # (!\Mux24~3_combout\ & (\Mux43~2_combout\ & (!\Mux57~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux43~2_combout\,
	datab => \Mux24~3_combout\,
	datac => \Mux57~8_combout\,
	datad => \Add3~0_combout\,
	combout => \Mux61~0_combout\);

-- Location: LCCOMB_X23_Y17_N26
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (pc_current(3)) # (((pc_current(1) & pc_current(2))) # (!pc_current(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_current(1),
	datab => pc_current(3),
	datac => pc_current(0),
	datad => pc_current(2),
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X22_Y14_N20
\MyRAM~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~197_combout\ = (!\reset~input_o\ & (!pc_current(0) & (!pc_current(2) & !pc_current(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => pc_current(0),
	datac => pc_current(2),
	datad => pc_current(3),
	combout => \MyRAM~197_combout\);

-- Location: FF_X21_Y16_N13
\MyRAM~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux61~1_combout\,
	ena => \MyRAM~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyRAM~20_q\);

-- Location: LCCOMB_X21_Y16_N30
\MyRAM~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~165_combout\ = (\Mux5~0_combout\ & ((\MyRAM~36_q\))) # (!\Mux5~0_combout\ & (\MyRAM~20_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~20_q\,
	datab => \MyRAM~36_q\,
	datad => \Mux5~0_combout\,
	combout => \MyRAM~165_combout\);

-- Location: LCCOMB_X22_Y16_N0
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\MyRAM~164_combout\ & (\MyRAM~165_combout\ $ (VCC))) # (!\MyRAM~164_combout\ & (\MyRAM~165_combout\ & VCC))
-- \Add1~1\ = CARRY((\MyRAM~164_combout\ & \MyRAM~165_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~164_combout\,
	datab => \MyRAM~165_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X22_Y14_N6
\Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (\Mux24~1_combout\ & ((\MyRAM~165_combout\) # (\MyRAM~164_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~165_combout\,
	datab => \Mux24~1_combout\,
	datad => \MyRAM~164_combout\,
	combout => \Mux24~2_combout\);

-- Location: LCCOMB_X23_Y16_N0
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\MyRAM~165_combout\ & (\MyRAM~164_combout\ $ (VCC))) # (!\MyRAM~165_combout\ & ((\MyRAM~164_combout\) # (GND)))
-- \Add2~1\ = CARRY((\MyRAM~164_combout\) # (!\MyRAM~165_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~165_combout\,
	datab => \MyRAM~164_combout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X22_Y17_N10
\Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (\MyRAM~174_combout\ & (\Add4~9\ & VCC)) # (!\MyRAM~174_combout\ & (!\Add4~9\))
-- \Add4~11\ = CARRY((!\MyRAM~174_combout\ & !\Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyRAM~174_combout\,
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X22_Y17_N12
\Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (\MyRAM~176_combout\ & ((GND) # (!\Add4~11\))) # (!\MyRAM~176_combout\ & (\Add4~11\ $ (GND)))
-- \Add4~13\ = CARRY((\MyRAM~176_combout\) # (!\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyRAM~176_combout\,
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X22_Y17_N14
\Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (\MyRAM~178_combout\ & (\Add4~13\ & VCC)) # (!\MyRAM~178_combout\ & (!\Add4~13\))
-- \Add4~15\ = CARRY((!\MyRAM~178_combout\ & !\Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyRAM~178_combout\,
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: LCCOMB_X21_Y17_N12
\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (\MyRAM~176_combout\ & (\Add3~11\ $ (GND))) # (!\MyRAM~176_combout\ & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((\MyRAM~176_combout\ & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyRAM~176_combout\,
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X21_Y17_N14
\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (\MyRAM~178_combout\ & (!\Add3~13\)) # (!\MyRAM~178_combout\ & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!\MyRAM~178_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyRAM~178_combout\,
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X25_Y15_N0
\Mux36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~1_combout\ = (\MyRAM~178_combout\ & (\Mux3~0_combout\ $ (\Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datac => \Mux2~0_combout\,
	datad => \MyRAM~178_combout\,
	combout => \Mux36~1_combout\);

-- Location: LCCOMB_X25_Y15_N16
\MyRAM~27feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~27feeder_combout\ = \Mux54~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux54~1_combout\,
	combout => \MyRAM~27feeder_combout\);

-- Location: FF_X25_Y15_N17
\MyRAM~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MyRAM~27feeder_combout\,
	ena => \MyRAM~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyRAM~27_q\);

-- Location: LCCOMB_X25_Y15_N22
\MyRAM~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~179_combout\ = (\Mux5~0_combout\ & ((\MyRAM~43_q\))) # (!\Mux5~0_combout\ & (\MyRAM~27_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MyRAM~27_q\,
	datac => \MyRAM~43_q\,
	datad => \Mux5~0_combout\,
	combout => \MyRAM~179_combout\);

-- Location: LCCOMB_X22_Y14_N30
\MyRAM~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~196_combout\ = (!\reset~input_o\ & (pc_current(0) & (!pc_current(2) & !pc_current(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => pc_current(0),
	datac => pc_current(2),
	datad => pc_current(3),
	combout => \MyRAM~196_combout\);

-- Location: FF_X21_Y15_N21
\MyRAM~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux55~1_combout\,
	sload => VCC,
	ena => \MyRAM~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyRAM~42_q\);

-- Location: LCCOMB_X22_Y15_N16
\MyRAM~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~177_combout\ = (\Mux5~0_combout\ & ((\MyRAM~42_q\))) # (!\Mux5~0_combout\ & (\MyRAM~26_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~26_q\,
	datac => \Mux5~0_combout\,
	datad => \MyRAM~42_q\,
	combout => \MyRAM~177_combout\);

-- Location: FF_X21_Y15_N11
\MyRAM~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux56~1_combout\,
	sload => VCC,
	ena => \MyRAM~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyRAM~41_q\);

-- Location: LCCOMB_X22_Y15_N2
\MyRAM~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~175_combout\ = (\Mux5~0_combout\ & ((\MyRAM~41_q\))) # (!\Mux5~0_combout\ & (\MyRAM~25_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MyRAM~25_q\,
	datac => \Mux5~0_combout\,
	datad => \MyRAM~41_q\,
	combout => \MyRAM~175_combout\);

-- Location: FF_X21_Y15_N13
\MyRAM~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux57~7_combout\,
	sload => VCC,
	ena => \MyRAM~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyRAM~40_q\);

-- Location: LCCOMB_X25_Y15_N14
\MyRAM~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~173_combout\ = (\Mux5~0_combout\ & ((\MyRAM~40_q\))) # (!\Mux5~0_combout\ & (\MyRAM~24_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~24_q\,
	datac => \MyRAM~40_q\,
	datad => \Mux5~0_combout\,
	combout => \MyRAM~173_combout\);

-- Location: FF_X23_Y15_N17
\MyRAM~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux58~1_combout\,
	ena => \MyRAM~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyRAM~23_q\);

-- Location: LCCOMB_X23_Y15_N22
\MyRAM~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~171_combout\ = (\Mux5~0_combout\ & (\MyRAM~39_q\)) # (!\Mux5~0_combout\ & ((\MyRAM~23_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MyRAM~39_q\,
	datac => \MyRAM~23_q\,
	datad => \Mux5~0_combout\,
	combout => \MyRAM~171_combout\);

-- Location: FF_X21_Y16_N29
\MyRAM~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux59~1_combout\,
	ena => \MyRAM~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyRAM~22_q\);

-- Location: LCCOMB_X21_Y15_N16
\MyRAM~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~169_combout\ = (\Mux5~0_combout\ & (\MyRAM~38_q\)) # (!\Mux5~0_combout\ & ((\MyRAM~22_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \MyRAM~38_q\,
	datad => \MyRAM~22_q\,
	combout => \MyRAM~169_combout\);

-- Location: FF_X21_Y15_N29
\MyRAM~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux60~1_combout\,
	sload => VCC,
	ena => \MyRAM~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyRAM~37_q\);

-- Location: LCCOMB_X21_Y15_N0
\MyRAM~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~167_combout\ = (\Mux5~0_combout\ & ((\MyRAM~37_q\))) # (!\Mux5~0_combout\ & (\MyRAM~21_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~21_q\,
	datab => \MyRAM~37_q\,
	datad => \Mux5~0_combout\,
	combout => \MyRAM~167_combout\);

-- Location: LCCOMB_X23_Y16_N2
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\MyRAM~167_combout\ & ((\MyRAM~166_combout\ & (!\Add2~1\)) # (!\MyRAM~166_combout\ & ((\Add2~1\) # (GND))))) # (!\MyRAM~167_combout\ & ((\MyRAM~166_combout\ & (\Add2~1\ & VCC)) # (!\MyRAM~166_combout\ & (!\Add2~1\))))
-- \Add2~3\ = CARRY((\MyRAM~167_combout\ & ((!\Add2~1\) # (!\MyRAM~166_combout\))) # (!\MyRAM~167_combout\ & (!\MyRAM~166_combout\ & !\Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~167_combout\,
	datab => \MyRAM~166_combout\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X23_Y16_N4
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\MyRAM~169_combout\ $ (\MyRAM~168_combout\ $ (\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((\MyRAM~169_combout\ & (\MyRAM~168_combout\ & !\Add2~3\)) # (!\MyRAM~169_combout\ & ((\MyRAM~168_combout\) # (!\Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~169_combout\,
	datab => \MyRAM~168_combout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X23_Y16_N6
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\MyRAM~171_combout\ & ((\MyRAM~170_combout\ & (!\Add2~5\)) # (!\MyRAM~170_combout\ & ((\Add2~5\) # (GND))))) # (!\MyRAM~171_combout\ & ((\MyRAM~170_combout\ & (\Add2~5\ & VCC)) # (!\MyRAM~170_combout\ & (!\Add2~5\))))
-- \Add2~7\ = CARRY((\MyRAM~171_combout\ & ((!\Add2~5\) # (!\MyRAM~170_combout\))) # (!\MyRAM~171_combout\ & (!\MyRAM~170_combout\ & !\Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~171_combout\,
	datab => \MyRAM~170_combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X23_Y16_N8
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = ((\MyRAM~173_combout\ $ (\MyRAM~172_combout\ $ (\Add2~7\)))) # (GND)
-- \Add2~9\ = CARRY((\MyRAM~173_combout\ & (\MyRAM~172_combout\ & !\Add2~7\)) # (!\MyRAM~173_combout\ & ((\MyRAM~172_combout\) # (!\Add2~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~173_combout\,
	datab => \MyRAM~172_combout\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X23_Y16_N10
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\MyRAM~175_combout\ & ((\MyRAM~174_combout\ & (!\Add2~9\)) # (!\MyRAM~174_combout\ & ((\Add2~9\) # (GND))))) # (!\MyRAM~175_combout\ & ((\MyRAM~174_combout\ & (\Add2~9\ & VCC)) # (!\MyRAM~174_combout\ & (!\Add2~9\))))
-- \Add2~11\ = CARRY((\MyRAM~175_combout\ & ((!\Add2~9\) # (!\MyRAM~174_combout\))) # (!\MyRAM~175_combout\ & (!\MyRAM~174_combout\ & !\Add2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~175_combout\,
	datab => \MyRAM~174_combout\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X23_Y16_N12
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = ((\MyRAM~177_combout\ $ (\MyRAM~176_combout\ $ (\Add2~11\)))) # (GND)
-- \Add2~13\ = CARRY((\MyRAM~177_combout\ & (\MyRAM~176_combout\ & !\Add2~11\)) # (!\MyRAM~177_combout\ & ((\MyRAM~176_combout\) # (!\Add2~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~177_combout\,
	datab => \MyRAM~176_combout\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X23_Y16_N14
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\MyRAM~179_combout\ & ((\MyRAM~178_combout\ & (!\Add2~13\)) # (!\MyRAM~178_combout\ & ((\Add2~13\) # (GND))))) # (!\MyRAM~179_combout\ & ((\MyRAM~178_combout\ & (\Add2~13\ & VCC)) # (!\MyRAM~178_combout\ & (!\Add2~13\))))
-- \Add2~15\ = CARRY((\MyRAM~179_combout\ & ((!\Add2~13\) # (!\MyRAM~178_combout\))) # (!\MyRAM~179_combout\ & (!\MyRAM~178_combout\ & !\Add2~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~179_combout\,
	datab => \MyRAM~178_combout\,
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X25_Y15_N28
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\Mux24~1_combout\ & ((\MyRAM~179_combout\) # (\MyRAM~178_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux24~1_combout\,
	datac => \MyRAM~179_combout\,
	datad => \MyRAM~178_combout\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X22_Y16_N2
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\MyRAM~166_combout\ & ((\MyRAM~167_combout\ & (\Add1~1\ & VCC)) # (!\MyRAM~167_combout\ & (!\Add1~1\)))) # (!\MyRAM~166_combout\ & ((\MyRAM~167_combout\ & (!\Add1~1\)) # (!\MyRAM~167_combout\ & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((\MyRAM~166_combout\ & (!\MyRAM~167_combout\ & !\Add1~1\)) # (!\MyRAM~166_combout\ & ((!\Add1~1\) # (!\MyRAM~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~166_combout\,
	datab => \MyRAM~167_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X22_Y16_N4
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\MyRAM~169_combout\ $ (\MyRAM~168_combout\ $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\MyRAM~169_combout\ & ((\MyRAM~168_combout\) # (!\Add1~3\))) # (!\MyRAM~169_combout\ & (\MyRAM~168_combout\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~169_combout\,
	datab => \MyRAM~168_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X22_Y16_N6
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\MyRAM~170_combout\ & ((\MyRAM~171_combout\ & (\Add1~5\ & VCC)) # (!\MyRAM~171_combout\ & (!\Add1~5\)))) # (!\MyRAM~170_combout\ & ((\MyRAM~171_combout\ & (!\Add1~5\)) # (!\MyRAM~171_combout\ & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((\MyRAM~170_combout\ & (!\MyRAM~171_combout\ & !\Add1~5\)) # (!\MyRAM~170_combout\ & ((!\Add1~5\) # (!\MyRAM~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~170_combout\,
	datab => \MyRAM~171_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X22_Y16_N8
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\MyRAM~173_combout\ $ (\MyRAM~172_combout\ $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\MyRAM~173_combout\ & ((\MyRAM~172_combout\) # (!\Add1~7\))) # (!\MyRAM~173_combout\ & (\MyRAM~172_combout\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~173_combout\,
	datab => \MyRAM~172_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X22_Y16_N10
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\MyRAM~174_combout\ & ((\MyRAM~175_combout\ & (\Add1~9\ & VCC)) # (!\MyRAM~175_combout\ & (!\Add1~9\)))) # (!\MyRAM~174_combout\ & ((\MyRAM~175_combout\ & (!\Add1~9\)) # (!\MyRAM~175_combout\ & ((\Add1~9\) # (GND)))))
-- \Add1~11\ = CARRY((\MyRAM~174_combout\ & (!\MyRAM~175_combout\ & !\Add1~9\)) # (!\MyRAM~174_combout\ & ((!\Add1~9\) # (!\MyRAM~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~174_combout\,
	datab => \MyRAM~175_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X22_Y16_N12
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\MyRAM~176_combout\ $ (\MyRAM~177_combout\ $ (!\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\MyRAM~176_combout\ & ((\MyRAM~177_combout\) # (!\Add1~11\))) # (!\MyRAM~176_combout\ & (\MyRAM~177_combout\ & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~176_combout\,
	datab => \MyRAM~177_combout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X22_Y16_N14
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\MyRAM~179_combout\ & ((\MyRAM~178_combout\ & (\Add1~13\ & VCC)) # (!\MyRAM~178_combout\ & (!\Add1~13\)))) # (!\MyRAM~179_combout\ & ((\MyRAM~178_combout\ & (!\Add1~13\)) # (!\MyRAM~178_combout\ & ((\Add1~13\) # (GND)))))
-- \Add1~15\ = CARRY((\MyRAM~179_combout\ & (!\MyRAM~178_combout\ & !\Add1~13\)) # (!\MyRAM~179_combout\ & ((!\Add1~13\) # (!\MyRAM~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~179_combout\,
	datab => \MyRAM~178_combout\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: DSPMULT_X20_Y15_N0
\Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X20_Y15_N2
\Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X24_Y15_N6
\Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Add1~14_combout\ & ((\Mux24~0_combout\) # ((\Mux7~0_combout\ & \Mult0|auto_generated|mac_out2~DATAOUT7\)))) # (!\Add1~14_combout\ & (((\Mux7~0_combout\ & \Mult0|auto_generated|mac_out2~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datab => \Mux24~0_combout\,
	datac => \Mux7~0_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT7\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X24_Y15_N28
\Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\Mux17~0_combout\) # ((\Mux17~1_combout\) # ((\Mux24~3_combout\ & \Add2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~3_combout\,
	datab => \Add2~14_combout\,
	datac => \Mux17~0_combout\,
	datad => \Mux17~1_combout\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X25_Y15_N18
\Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (!\Mux3~0_combout\ & \Mux17~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datad => \Mux17~2_combout\,
	combout => \Mux36~0_combout\);

-- Location: LCCOMB_X25_Y15_N24
\Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~0_combout\ = (\Mux24~3_combout\ & (((\Mux57~8_combout\)))) # (!\Mux24~3_combout\ & ((\Mux57~8_combout\ & ((\Mux36~0_combout\))) # (!\Mux57~8_combout\ & (\Mux36~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~3_combout\,
	datab => \Mux36~1_combout\,
	datac => \Mux57~8_combout\,
	datad => \Mux36~0_combout\,
	combout => \Mux54~0_combout\);

-- Location: LCCOMB_X25_Y15_N10
\Mux54~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~1_combout\ = (\Mux24~3_combout\ & ((\Mux54~0_combout\ & (\Add4~14_combout\)) # (!\Mux54~0_combout\ & ((\Add3~14_combout\))))) # (!\Mux24~3_combout\ & (((\Mux54~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~3_combout\,
	datab => \Add4~14_combout\,
	datac => \Add3~14_combout\,
	datad => \Mux54~0_combout\,
	combout => \Mux54~1_combout\);

-- Location: FF_X21_Y15_N17
\MyRAM~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux54~1_combout\,
	sload => VCC,
	ena => \MyRAM~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyRAM~43_q\);

-- Location: LCCOMB_X21_Y15_N26
\MyRAM~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~178_combout\ = (\Mux8~0_combout\ & (\MyRAM~43_q\)) # (!\Mux8~0_combout\ & ((\MyRAM~27_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MyRAM~43_q\,
	datac => \Mux8~0_combout\,
	datad => \MyRAM~27_q\,
	combout => \MyRAM~178_combout\);

-- Location: LCCOMB_X21_Y16_N16
\Mux24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = (\Mux7~0_combout\ & (((\Mult0|auto_generated|mac_out2~dataout\)))) # (!\Mux7~0_combout\ & (\Add2~0_combout\ & (\Mux24~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \Mux24~3_combout\,
	datac => \Mux7~0_combout\,
	datad => \Mult0|auto_generated|mac_out2~dataout\,
	combout => \Mux24~4_combout\);

-- Location: LCCOMB_X21_Y16_N6
\Mux24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~5_combout\ = (\Mux24~2_combout\) # ((\Mux24~4_combout\) # ((\Mux24~0_combout\ & \Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \Add1~0_combout\,
	datac => \Mux24~2_combout\,
	datad => \Mux24~4_combout\,
	combout => \Mux24~5_combout\);

-- Location: LCCOMB_X21_Y16_N20
\Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = (!\Mux3~0_combout\ & \Mux24~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux3~0_combout\,
	datad => \Mux24~5_combout\,
	combout => \Mux43~0_combout\);

-- Location: LCCOMB_X21_Y16_N12
\Mux61~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~1_combout\ = (\Mux61~0_combout\ & ((\Add4~0_combout\) # ((!\Mux57~8_combout\)))) # (!\Mux61~0_combout\ & (((\Mux57~8_combout\ & \Mux43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \Mux61~0_combout\,
	datac => \Mux57~8_combout\,
	datad => \Mux43~0_combout\,
	combout => \Mux61~1_combout\);

-- Location: FF_X21_Y15_N1
\MyRAM~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux61~1_combout\,
	sload => VCC,
	ena => \MyRAM~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyRAM~36_q\);

-- Location: LCCOMB_X21_Y15_N4
\MyRAM~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~164_combout\ = (\Mux8~0_combout\ & (\MyRAM~36_q\)) # (!\Mux8~0_combout\ & ((\MyRAM~20_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MyRAM~36_q\,
	datac => \Mux8~0_combout\,
	datad => \MyRAM~20_q\,
	combout => \MyRAM~164_combout\);

-- Location: LCCOMB_X22_Y17_N2
\Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\Mux7~0_combout\ & ((\MyRAM~166_combout\ & (!\Add4~1\)) # (!\MyRAM~166_combout\ & ((\Add4~1\) # (GND))))) # (!\Mux7~0_combout\ & ((\MyRAM~166_combout\ & (\Add4~1\ & VCC)) # (!\MyRAM~166_combout\ & (!\Add4~1\))))
-- \Add4~3\ = CARRY((\Mux7~0_combout\ & ((!\Add4~1\) # (!\MyRAM~166_combout\))) # (!\Mux7~0_combout\ & (!\MyRAM~166_combout\ & !\Add4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \MyRAM~166_combout\,
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X21_Y17_N2
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\Mux7~0_combout\ & ((\MyRAM~166_combout\ & (\Add3~1\ & VCC)) # (!\MyRAM~166_combout\ & (!\Add3~1\)))) # (!\Mux7~0_combout\ & ((\MyRAM~166_combout\ & (!\Add3~1\)) # (!\MyRAM~166_combout\ & ((\Add3~1\) # (GND)))))
-- \Add3~3\ = CARRY((\Mux7~0_combout\ & (!\MyRAM~166_combout\ & !\Add3~1\)) # (!\Mux7~0_combout\ & ((!\Add3~1\) # (!\MyRAM~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \MyRAM~166_combout\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X22_Y15_N8
\Mux42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~1_combout\ = (\Mux7~0_combout\ & ((\Mux2~0_combout\ $ (!\MyRAM~166_combout\)) # (!\Mux3~0_combout\))) # (!\Mux7~0_combout\ & (\MyRAM~166_combout\ & (\Mux2~0_combout\ $ (\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux7~0_combout\,
	datac => \Mux3~0_combout\,
	datad => \MyRAM~166_combout\,
	combout => \Mux42~1_combout\);

-- Location: LCCOMB_X18_Y15_N20
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\Mux24~1_combout\ & ((\MyRAM~167_combout\) # (\MyRAM~166_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~1_combout\,
	datab => \MyRAM~167_combout\,
	datad => \MyRAM~166_combout\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X19_Y15_N6
\Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\Add2~2_combout\ & ((\Mux24~3_combout\) # ((\Mux7~0_combout\ & \Mult0|auto_generated|mac_out2~DATAOUT1\)))) # (!\Add2~2_combout\ & (((\Mux7~0_combout\ & \Mult0|auto_generated|mac_out2~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \Mux24~3_combout\,
	datac => \Mux7~0_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT1\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X19_Y15_N8
\Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (\Mux23~0_combout\) # ((\Mux23~1_combout\) # ((\Add1~2_combout\ & \Mux24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~0_combout\,
	datab => \Add1~2_combout\,
	datac => \Mux24~0_combout\,
	datad => \Mux23~1_combout\,
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X19_Y15_N14
\Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = (!\Mux3~0_combout\ & \Mux23~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~0_combout\,
	datac => \Mux23~2_combout\,
	combout => \Mux42~0_combout\);

-- Location: LCCOMB_X22_Y15_N18
\Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~0_combout\ = (\Mux24~3_combout\ & (((\Mux57~8_combout\)))) # (!\Mux24~3_combout\ & ((\Mux57~8_combout\ & ((\Mux42~0_combout\))) # (!\Mux57~8_combout\ & (\Mux42~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~3_combout\,
	datab => \Mux42~1_combout\,
	datac => \Mux57~8_combout\,
	datad => \Mux42~0_combout\,
	combout => \Mux60~0_combout\);

-- Location: LCCOMB_X22_Y15_N30
\Mux60~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~1_combout\ = (\Mux24~3_combout\ & ((\Mux60~0_combout\ & (\Add4~2_combout\)) # (!\Mux60~0_combout\ & ((\Add3~2_combout\))))) # (!\Mux24~3_combout\ & (((\Mux60~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~3_combout\,
	datab => \Add4~2_combout\,
	datac => \Add3~2_combout\,
	datad => \Mux60~0_combout\,
	combout => \Mux60~1_combout\);

-- Location: FF_X22_Y15_N31
\MyRAM~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux60~1_combout\,
	ena => \MyRAM~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyRAM~21_q\);

-- Location: LCCOMB_X21_Y15_N28
\MyRAM~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~166_combout\ = (\Mux8~0_combout\ & ((\MyRAM~37_q\))) # (!\Mux8~0_combout\ & (\MyRAM~21_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~21_q\,
	datac => \MyRAM~37_q\,
	datad => \Mux8~0_combout\,
	combout => \MyRAM~166_combout\);

-- Location: LCCOMB_X22_Y17_N4
\Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = ((\Mux24~1_combout\ $ (\MyRAM~168_combout\ $ (\Add4~3\)))) # (GND)
-- \Add4~5\ = CARRY((\Mux24~1_combout\ & (\MyRAM~168_combout\ & !\Add4~3\)) # (!\Mux24~1_combout\ & ((\MyRAM~168_combout\) # (!\Add4~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~1_combout\,
	datab => \MyRAM~168_combout\,
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X21_Y16_N14
\Mux41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~1_combout\ = (\Mux24~1_combout\ & ((\Mux2~0_combout\ $ (!\MyRAM~168_combout\)) # (!\Mux3~0_combout\))) # (!\Mux24~1_combout\ & (\MyRAM~168_combout\ & (\Mux3~0_combout\ $ (\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~1_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux2~0_combout\,
	datad => \MyRAM~168_combout\,
	combout => \Mux41~1_combout\);

-- Location: LCCOMB_X21_Y17_N4
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = ((\MyRAM~168_combout\ $ (\Mux24~1_combout\ $ (!\Add3~3\)))) # (GND)
-- \Add3~5\ = CARRY((\MyRAM~168_combout\ & ((\Mux24~1_combout\) # (!\Add3~3\))) # (!\MyRAM~168_combout\ & (\Mux24~1_combout\ & !\Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~168_combout\,
	datab => \Mux24~1_combout\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X21_Y16_N18
\Mux59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~0_combout\ = (\Mux57~8_combout\ & (\Mux24~3_combout\)) # (!\Mux57~8_combout\ & ((\Mux24~3_combout\ & ((\Add3~4_combout\))) # (!\Mux24~3_combout\ & (\Mux41~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~8_combout\,
	datab => \Mux24~3_combout\,
	datac => \Mux41~1_combout\,
	datad => \Add3~4_combout\,
	combout => \Mux59~0_combout\);

-- Location: LCCOMB_X21_Y16_N4
\Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\Mux24~1_combout\ & ((\MyRAM~168_combout\) # ((\Mux24~0_combout\ & \Add1~4_combout\)))) # (!\Mux24~1_combout\ & (((\Mux24~0_combout\ & \Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~1_combout\,
	datab => \MyRAM~168_combout\,
	datac => \Mux24~0_combout\,
	datad => \Add1~4_combout\,
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X21_Y16_N2
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\Mux24~1_combout\ & ((\MyRAM~169_combout\) # ((\Mux24~3_combout\ & \Add2~4_combout\)))) # (!\Mux24~1_combout\ & (\Mux24~3_combout\ & ((\Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~1_combout\,
	datab => \Mux24~3_combout\,
	datac => \MyRAM~169_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X21_Y16_N10
\Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\Mux22~1_combout\) # ((\Mux22~0_combout\) # ((\Mux7~0_combout\ & \Mult0|auto_generated|mac_out2~DATAOUT2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \Mux22~1_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT2\,
	datad => \Mux22~0_combout\,
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X21_Y16_N24
\Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = (!\Mux3~0_combout\ & \Mux22~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux3~0_combout\,
	datad => \Mux22~2_combout\,
	combout => \Mux41~0_combout\);

-- Location: LCCOMB_X21_Y16_N28
\Mux59~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~1_combout\ = (\Mux59~0_combout\ & ((\Add4~4_combout\) # ((!\Mux57~8_combout\)))) # (!\Mux59~0_combout\ & (((\Mux57~8_combout\ & \Mux41~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~4_combout\,
	datab => \Mux59~0_combout\,
	datac => \Mux57~8_combout\,
	datad => \Mux41~0_combout\,
	combout => \Mux59~1_combout\);

-- Location: FF_X21_Y15_N19
\MyRAM~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux59~1_combout\,
	sload => VCC,
	ena => \MyRAM~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyRAM~38_q\);

-- Location: LCCOMB_X21_Y15_N18
\MyRAM~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~168_combout\ = (\Mux8~0_combout\ & (\MyRAM~38_q\)) # (!\Mux8~0_combout\ & ((\MyRAM~22_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux8~0_combout\,
	datac => \MyRAM~38_q\,
	datad => \MyRAM~22_q\,
	combout => \MyRAM~168_combout\);

-- Location: LCCOMB_X21_Y17_N6
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\MyRAM~170_combout\ & (!\Add3~5\)) # (!\MyRAM~170_combout\ & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!\MyRAM~170_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~170_combout\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X22_Y17_N6
\Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (\MyRAM~170_combout\ & (\Add4~5\ & VCC)) # (!\MyRAM~170_combout\ & (!\Add4~5\))
-- \Add4~7\ = CARRY((!\MyRAM~170_combout\ & !\Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~170_combout\,
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X22_Y15_N14
\Mux40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~1_combout\ = (\MyRAM~170_combout\ & (\Mux3~0_combout\ $ (\Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~170_combout\,
	datac => \Mux3~0_combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux40~1_combout\);

-- Location: LCCOMB_X24_Y15_N12
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\Mux24~1_combout\ & ((\MyRAM~170_combout\) # (\MyRAM~171_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MyRAM~170_combout\,
	datac => \Mux24~1_combout\,
	datad => \MyRAM~171_combout\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X24_Y15_N2
\Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\Mux24~3_combout\ & ((\Add2~6_combout\) # ((\Mux7~0_combout\ & \Mult0|auto_generated|mac_out2~DATAOUT3\)))) # (!\Mux24~3_combout\ & (\Mux7~0_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~3_combout\,
	datab => \Mux7~0_combout\,
	datac => \Add2~6_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT3\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X24_Y15_N24
\Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\Mux21~0_combout\) # ((\Mux21~1_combout\) # ((\Mux24~0_combout\ & \Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~0_combout\,
	datab => \Mux24~0_combout\,
	datac => \Add1~6_combout\,
	datad => \Mux21~1_combout\,
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X23_Y15_N28
\Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = (!\Mux3~0_combout\ & \Mux21~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux3~0_combout\,
	datad => \Mux21~2_combout\,
	combout => \Mux40~0_combout\);

-- Location: LCCOMB_X23_Y15_N20
\Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~0_combout\ = (\Mux57~8_combout\ & (((\Mux24~3_combout\) # (\Mux40~0_combout\)))) # (!\Mux57~8_combout\ & (\Mux40~1_combout\ & (!\Mux24~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux40~1_combout\,
	datab => \Mux57~8_combout\,
	datac => \Mux24~3_combout\,
	datad => \Mux40~0_combout\,
	combout => \Mux58~0_combout\);

-- Location: LCCOMB_X23_Y15_N16
\Mux58~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~1_combout\ = (\Mux24~3_combout\ & ((\Mux58~0_combout\ & ((\Add4~6_combout\))) # (!\Mux58~0_combout\ & (\Add3~6_combout\)))) # (!\Mux24~3_combout\ & (((\Mux58~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~3_combout\,
	datab => \Add3~6_combout\,
	datac => \Add4~6_combout\,
	datad => \Mux58~0_combout\,
	combout => \Mux58~1_combout\);

-- Location: FF_X21_Y15_N31
\MyRAM~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux58~1_combout\,
	sload => VCC,
	ena => \MyRAM~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyRAM~39_q\);

-- Location: LCCOMB_X21_Y15_N30
\MyRAM~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~170_combout\ = (\Mux8~0_combout\ & (\MyRAM~39_q\)) # (!\Mux8~0_combout\ & ((\MyRAM~23_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux8~0_combout\,
	datac => \MyRAM~39_q\,
	datad => \MyRAM~23_q\,
	combout => \MyRAM~170_combout\);

-- Location: LCCOMB_X21_Y17_N8
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (\MyRAM~172_combout\ & (\Add3~7\ $ (GND))) # (!\MyRAM~172_combout\ & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((\MyRAM~172_combout\ & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyRAM~172_combout\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X25_Y15_N20
\Mux39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~1_combout\ = (\MyRAM~172_combout\ & (\Mux2~0_combout\ $ (\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~172_combout\,
	datac => \Mux2~0_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux39~1_combout\);

-- Location: LCCOMB_X25_Y15_N26
\Mux57~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~6_combout\ = (\Mux57~8_combout\ & (((\Mux24~3_combout\)))) # (!\Mux57~8_combout\ & ((\Mux24~3_combout\ & (\Add3~8_combout\)) # (!\Mux24~3_combout\ & ((\Mux39~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datab => \Mux39~1_combout\,
	datac => \Mux57~8_combout\,
	datad => \Mux24~3_combout\,
	combout => \Mux57~6_combout\);

-- Location: LCCOMB_X22_Y17_N8
\Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (\MyRAM~172_combout\ & ((GND) # (!\Add4~7\))) # (!\MyRAM~172_combout\ & (\Add4~7\ $ (GND)))
-- \Add4~9\ = CARRY((\MyRAM~172_combout\) # (!\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~172_combout\,
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X25_Y15_N4
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\Mux24~1_combout\ & ((\MyRAM~173_combout\) # (\MyRAM~172_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MyRAM~173_combout\,
	datac => \Mux24~1_combout\,
	datad => \MyRAM~172_combout\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X24_Y15_N10
\Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\Mux24~3_combout\ & ((\Add2~8_combout\) # ((\Mux7~0_combout\ & \Mult0|auto_generated|mac_out2~DATAOUT4\)))) # (!\Mux24~3_combout\ & (\Mux7~0_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~3_combout\,
	datab => \Mux7~0_combout\,
	datac => \Add2~8_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT4\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X24_Y15_N20
\Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (\Mux20~0_combout\) # ((\Mux20~1_combout\) # ((\Add1~8_combout\ & \Mux24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Mux20~0_combout\,
	datac => \Mux24~0_combout\,
	datad => \Mux20~1_combout\,
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X25_Y15_N2
\Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = (!\Mux3~0_combout\ & \Mux20~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datad => \Mux20~2_combout\,
	combout => \Mux39~0_combout\);

-- Location: LCCOMB_X25_Y15_N12
\Mux57~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~7_combout\ = (\Mux57~6_combout\ & ((\Add4~8_combout\) # ((!\Mux57~8_combout\)))) # (!\Mux57~6_combout\ & (((\Mux57~8_combout\ & \Mux39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~6_combout\,
	datab => \Add4~8_combout\,
	datac => \Mux57~8_combout\,
	datad => \Mux39~0_combout\,
	combout => \Mux57~7_combout\);

-- Location: FF_X25_Y15_N13
\MyRAM~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux57~7_combout\,
	ena => \MyRAM~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyRAM~24_q\);

-- Location: LCCOMB_X21_Y15_N12
\MyRAM~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~172_combout\ = (\Mux8~0_combout\ & ((\MyRAM~40_q\))) # (!\Mux8~0_combout\ & (\MyRAM~24_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MyRAM~24_q\,
	datac => \MyRAM~40_q\,
	datad => \Mux8~0_combout\,
	combout => \MyRAM~172_combout\);

-- Location: LCCOMB_X21_Y17_N10
\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\MyRAM~174_combout\ & (!\Add3~9\)) # (!\MyRAM~174_combout\ & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!\MyRAM~174_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~174_combout\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X19_Y15_N4
\Mux38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~1_combout\ = (\MyRAM~174_combout\ & (\Mux3~0_combout\ $ (\Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MyRAM~174_combout\,
	datac => \Mux3~0_combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux38~1_combout\);

-- Location: LCCOMB_X23_Y15_N26
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\MyRAM~175_combout\ & ((\Mux24~1_combout\) # ((\Mux24~3_combout\ & \Add2~10_combout\)))) # (!\MyRAM~175_combout\ & (((\Mux24~3_combout\ & \Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~175_combout\,
	datab => \Mux24~1_combout\,
	datac => \Mux24~3_combout\,
	datad => \Add2~10_combout\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X23_Y15_N8
\Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\Mux24~0_combout\ & ((\Add1~10_combout\) # ((\MyRAM~174_combout\ & \Mux24~1_combout\)))) # (!\Mux24~0_combout\ & (\MyRAM~174_combout\ & ((\Mux24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \MyRAM~174_combout\,
	datac => \Add1~10_combout\,
	datad => \Mux24~1_combout\,
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X23_Y15_N2
\Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (\Mux19~0_combout\) # ((\Mux19~1_combout\) # ((\Mux7~0_combout\ & \Mult0|auto_generated|mac_out2~DATAOUT5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => \Mux7~0_combout\,
	datac => \Mux19~1_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT5\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X22_Y15_N28
\Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (!\Mux3~0_combout\ & \Mux19~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux3~0_combout\,
	datad => \Mux19~2_combout\,
	combout => \Mux38~0_combout\);

-- Location: LCCOMB_X22_Y15_N0
\Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~0_combout\ = (\Mux57~8_combout\ & ((\Mux24~3_combout\) # ((\Mux38~0_combout\)))) # (!\Mux57~8_combout\ & (!\Mux24~3_combout\ & (\Mux38~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~8_combout\,
	datab => \Mux24~3_combout\,
	datac => \Mux38~1_combout\,
	datad => \Mux38~0_combout\,
	combout => \Mux56~0_combout\);

-- Location: LCCOMB_X22_Y15_N20
\Mux56~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~1_combout\ = (\Mux24~3_combout\ & ((\Mux56~0_combout\ & (\Add4~10_combout\)) # (!\Mux56~0_combout\ & ((\Add3~10_combout\))))) # (!\Mux24~3_combout\ & (((\Mux56~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~10_combout\,
	datab => \Mux24~3_combout\,
	datac => \Add3~10_combout\,
	datad => \Mux56~0_combout\,
	combout => \Mux56~1_combout\);

-- Location: FF_X22_Y15_N21
\MyRAM~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux56~1_combout\,
	ena => \MyRAM~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyRAM~25_q\);

-- Location: LCCOMB_X21_Y15_N10
\MyRAM~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~174_combout\ = (\Mux8~0_combout\ & ((\MyRAM~41_q\))) # (!\Mux8~0_combout\ & (\MyRAM~25_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~25_q\,
	datac => \MyRAM~41_q\,
	datad => \Mux8~0_combout\,
	combout => \MyRAM~174_combout\);

-- Location: LCCOMB_X22_Y15_N22
\Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~0_combout\ = (\Mux57~8_combout\ & (((\Mux24~3_combout\)))) # (!\Mux57~8_combout\ & ((\Mux24~3_combout\ & ((\Add3~12_combout\))) # (!\Mux24~3_combout\ & (\Mux37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~8_combout\,
	datab => \Mux37~0_combout\,
	datac => \Add3~12_combout\,
	datad => \Mux24~3_combout\,
	combout => \Mux55~0_combout\);

-- Location: LCCOMB_X25_Y15_N6
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\Mux24~1_combout\ & ((\MyRAM~177_combout\) # (\MyRAM~176_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MyRAM~177_combout\,
	datac => \Mux24~1_combout\,
	datad => \MyRAM~176_combout\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X24_Y15_N30
\Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Mux24~3_combout\ & ((\Add2~12_combout\) # ((\Mux7~0_combout\ & \Mult0|auto_generated|mac_out2~DATAOUT6\)))) # (!\Mux24~3_combout\ & (((\Mux7~0_combout\ & \Mult0|auto_generated|mac_out2~DATAOUT6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~3_combout\,
	datab => \Add2~12_combout\,
	datac => \Mux7~0_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT6\,
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X24_Y15_N16
\Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\Mux18~0_combout\) # ((\Mux18~1_combout\) # ((\Mux24~0_combout\ & \Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Mux24~0_combout\,
	datac => \Mux18~1_combout\,
	datad => \Add1~12_combout\,
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X22_Y15_N6
\Mux43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~3_combout\ = (!\Mux3~0_combout\ & \Mux18~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux3~0_combout\,
	datad => \Mux18~2_combout\,
	combout => \Mux43~3_combout\);

-- Location: LCCOMB_X22_Y15_N10
\Mux55~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~1_combout\ = (\Mux57~8_combout\ & ((\Mux55~0_combout\ & (\Add4~12_combout\)) # (!\Mux55~0_combout\ & ((\Mux43~3_combout\))))) # (!\Mux57~8_combout\ & (((\Mux55~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~8_combout\,
	datab => \Add4~12_combout\,
	datac => \Mux55~0_combout\,
	datad => \Mux43~3_combout\,
	combout => \Mux55~1_combout\);

-- Location: FF_X22_Y15_N11
\MyRAM~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux55~1_combout\,
	ena => \MyRAM~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyRAM~26_q\);

-- Location: LCCOMB_X21_Y15_N20
\MyRAM~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~176_combout\ = (\Mux8~0_combout\ & ((\MyRAM~42_q\))) # (!\Mux8~0_combout\ & (\MyRAM~26_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MyRAM~26_q\,
	datac => \MyRAM~42_q\,
	datad => \Mux8~0_combout\,
	combout => \MyRAM~176_combout\);

-- Location: LCCOMB_X23_Y17_N16
\ZF~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZF~7_combout\ = (!\Add4~12_combout\ & (!\Add4~6_combout\ & (!\Add4~8_combout\ & !\Add4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~12_combout\,
	datab => \Add4~6_combout\,
	datac => \Add4~8_combout\,
	datad => \Add4~10_combout\,
	combout => \ZF~7_combout\);

-- Location: LCCOMB_X23_Y17_N30
\Mux35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~1_combout\ = (\MyRAM~180_combout\ & (\Mux3~0_combout\ $ (\Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~0_combout\,
	datac => \MyRAM~180_combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux35~1_combout\);

-- Location: LCCOMB_X21_Y17_N16
\Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (\MyRAM~180_combout\ & (\Add3~15\ $ (GND))) # (!\MyRAM~180_combout\ & (!\Add3~15\ & VCC))
-- \Add3~17\ = CARRY((\MyRAM~180_combout\ & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyRAM~180_combout\,
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X19_Y17_N6
\Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~0_combout\ = (\Mux57~8_combout\ & (\Mux24~3_combout\)) # (!\Mux57~8_combout\ & ((\Mux24~3_combout\ & ((\Add3~16_combout\))) # (!\Mux24~3_combout\ & (\Mux35~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~8_combout\,
	datab => \Mux24~3_combout\,
	datac => \Mux35~1_combout\,
	datad => \Add3~16_combout\,
	combout => \Mux53~0_combout\);

-- Location: FF_X18_Y15_N21
\MyRAM~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux53~1_combout\,
	sload => VCC,
	ena => \MyRAM~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyRAM~28_q\);

-- Location: LCCOMB_X18_Y15_N10
\MyRAM~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~181_combout\ = (\Mux5~0_combout\ & (\MyRAM~44_q\)) # (!\Mux5~0_combout\ & ((\MyRAM~28_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~44_q\,
	datab => \MyRAM~28_q\,
	datac => \Mux5~0_combout\,
	combout => \MyRAM~181_combout\);

-- Location: LCCOMB_X22_Y16_N16
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((\MyRAM~181_combout\ $ (\MyRAM~180_combout\ $ (!\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((\MyRAM~181_combout\ & ((\MyRAM~180_combout\) # (!\Add1~15\))) # (!\MyRAM~181_combout\ & (\MyRAM~180_combout\ & !\Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~181_combout\,
	datab => \MyRAM~180_combout\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X23_Y16_N16
\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = ((\MyRAM~181_combout\ $ (\MyRAM~180_combout\ $ (\Add2~15\)))) # (GND)
-- \Add2~17\ = CARRY((\MyRAM~181_combout\ & (\MyRAM~180_combout\ & !\Add2~15\)) # (!\MyRAM~181_combout\ & ((\MyRAM~180_combout\) # (!\Add2~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~181_combout\,
	datab => \MyRAM~180_combout\,
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X19_Y15_N26
\Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Add2~16_combout\ & ((\Mux24~3_combout\) # ((\Mux7~0_combout\ & \Mult0|auto_generated|mac_out2~DATAOUT8\)))) # (!\Add2~16_combout\ & (\Mux7~0_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~16_combout\,
	datab => \Mux7~0_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT8\,
	datad => \Mux24~3_combout\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X18_Y15_N30
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\Mux24~1_combout\ & ((\MyRAM~180_combout\) # (\MyRAM~181_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~1_combout\,
	datab => \MyRAM~180_combout\,
	datad => \MyRAM~181_combout\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X19_Y15_N0
\Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\Mux16~1_combout\) # ((\Mux16~0_combout\) # ((\Add1~16_combout\ & \Mux24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datab => \Mux24~0_combout\,
	datac => \Mux16~1_combout\,
	datad => \Mux16~0_combout\,
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X19_Y15_N22
\Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (!\Mux3~0_combout\ & \Mux16~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux3~0_combout\,
	datad => \Mux16~2_combout\,
	combout => \Mux35~0_combout\);

-- Location: LCCOMB_X18_Y15_N8
\Mux53~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~1_combout\ = (\Mux57~8_combout\ & ((\Mux53~0_combout\ & (\Add4~16_combout\)) # (!\Mux53~0_combout\ & ((\Mux35~0_combout\))))) # (!\Mux57~8_combout\ & (\Mux53~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~8_combout\,
	datab => \Mux53~0_combout\,
	datac => \Add4~16_combout\,
	datad => \Mux35~0_combout\,
	combout => \Mux53~1_combout\);

-- Location: FF_X18_Y15_N31
\MyRAM~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux53~1_combout\,
	sload => VCC,
	ena => \MyRAM~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyRAM~44_q\);

-- Location: LCCOMB_X18_Y15_N0
\MyRAM~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~180_combout\ = (\Mux8~0_combout\ & (\MyRAM~44_q\)) # (!\Mux8~0_combout\ & ((\MyRAM~28_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~44_q\,
	datab => \MyRAM~28_q\,
	datad => \Mux8~0_combout\,
	combout => \MyRAM~180_combout\);

-- Location: LCCOMB_X22_Y17_N16
\Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = (\MyRAM~180_combout\ & ((GND) # (!\Add4~15\))) # (!\MyRAM~180_combout\ & (\Add4~15\ $ (GND)))
-- \Add4~17\ = CARRY((\MyRAM~180_combout\) # (!\Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyRAM~180_combout\,
	datad => VCC,
	cin => \Add4~15\,
	combout => \Add4~16_combout\,
	cout => \Add4~17\);

-- Location: LCCOMB_X21_Y17_N18
\Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (\MyRAM~182_combout\ & (!\Add3~17\)) # (!\MyRAM~182_combout\ & ((\Add3~17\) # (GND)))
-- \Add3~19\ = CARRY((!\Add3~17\) # (!\MyRAM~182_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyRAM~182_combout\,
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X19_Y17_N24
\Mux34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~1_combout\ = (\MyRAM~182_combout\ & (\Mux3~0_combout\ $ (\Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~0_combout\,
	datac => \MyRAM~182_combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux34~1_combout\);

-- Location: FF_X18_Y15_N17
\MyRAM~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux52~1_combout\,
	sload => VCC,
	ena => \MyRAM~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyRAM~45_q\);

-- Location: LCCOMB_X18_Y15_N18
\MyRAM~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~183_combout\ = (\Mux5~0_combout\ & ((\MyRAM~45_q\))) # (!\Mux5~0_combout\ & (\MyRAM~29_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~29_q\,
	datac => \Mux5~0_combout\,
	datad => \MyRAM~45_q\,
	combout => \MyRAM~183_combout\);

-- Location: LCCOMB_X22_Y16_N18
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\MyRAM~183_combout\ & ((\MyRAM~182_combout\ & (\Add1~17\ & VCC)) # (!\MyRAM~182_combout\ & (!\Add1~17\)))) # (!\MyRAM~183_combout\ & ((\MyRAM~182_combout\ & (!\Add1~17\)) # (!\MyRAM~182_combout\ & ((\Add1~17\) # (GND)))))
-- \Add1~19\ = CARRY((\MyRAM~183_combout\ & (!\MyRAM~182_combout\ & !\Add1~17\)) # (!\MyRAM~183_combout\ & ((!\Add1~17\) # (!\MyRAM~182_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~183_combout\,
	datab => \MyRAM~182_combout\,
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X18_Y15_N16
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\Mux24~1_combout\ & ((\MyRAM~183_combout\) # (\MyRAM~182_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~1_combout\,
	datab => \MyRAM~183_combout\,
	datad => \MyRAM~182_combout\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X23_Y16_N18
\Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (\MyRAM~182_combout\ & ((\MyRAM~183_combout\ & (!\Add2~17\)) # (!\MyRAM~183_combout\ & (\Add2~17\ & VCC)))) # (!\MyRAM~182_combout\ & ((\MyRAM~183_combout\ & ((\Add2~17\) # (GND))) # (!\MyRAM~183_combout\ & (!\Add2~17\))))
-- \Add2~19\ = CARRY((\MyRAM~182_combout\ & (\MyRAM~183_combout\ & !\Add2~17\)) # (!\MyRAM~182_combout\ & ((\MyRAM~183_combout\) # (!\Add2~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~182_combout\,
	datab => \MyRAM~183_combout\,
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X19_Y15_N16
\Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Add2~18_combout\ & ((\Mux24~3_combout\) # ((\Mux7~0_combout\ & \Mult0|auto_generated|mac_out2~DATAOUT9\)))) # (!\Add2~18_combout\ & (((\Mux7~0_combout\ & \Mult0|auto_generated|mac_out2~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~18_combout\,
	datab => \Mux24~3_combout\,
	datac => \Mux7~0_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT9\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X19_Y15_N10
\Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\Mux15~0_combout\) # ((\Mux15~1_combout\) # ((\Add1~18_combout\ & \Mux24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~18_combout\,
	datab => \Mux24~0_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X19_Y15_N24
\Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (!\Mux3~0_combout\ & \Mux15~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux3~0_combout\,
	datad => \Mux15~2_combout\,
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X18_Y15_N6
\Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~0_combout\ = (\Mux57~8_combout\ & ((\Mux24~3_combout\) # ((\Mux34~0_combout\)))) # (!\Mux57~8_combout\ & (!\Mux24~3_combout\ & (\Mux34~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~8_combout\,
	datab => \Mux24~3_combout\,
	datac => \Mux34~1_combout\,
	datad => \Mux34~0_combout\,
	combout => \Mux52~0_combout\);

-- Location: LCCOMB_X18_Y15_N4
\Mux52~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~1_combout\ = (\Mux24~3_combout\ & ((\Mux52~0_combout\ & ((\Add4~18_combout\))) # (!\Mux52~0_combout\ & (\Add3~18_combout\)))) # (!\Mux24~3_combout\ & (((\Mux52~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~18_combout\,
	datab => \Mux24~3_combout\,
	datac => \Add4~18_combout\,
	datad => \Mux52~0_combout\,
	combout => \Mux52~1_combout\);

-- Location: LCCOMB_X18_Y15_N26
\MyRAM~29feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~29feeder_combout\ = \Mux52~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux52~1_combout\,
	combout => \MyRAM~29feeder_combout\);

-- Location: FF_X18_Y15_N27
\MyRAM~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MyRAM~29feeder_combout\,
	ena => \MyRAM~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyRAM~29_q\);

-- Location: LCCOMB_X18_Y15_N24
\MyRAM~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~182_combout\ = (\Mux8~0_combout\ & ((\MyRAM~45_q\))) # (!\Mux8~0_combout\ & (\MyRAM~29_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~29_q\,
	datac => \Mux8~0_combout\,
	datad => \MyRAM~45_q\,
	combout => \MyRAM~182_combout\);

-- Location: LCCOMB_X22_Y17_N18
\Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = (\MyRAM~182_combout\ & (\Add4~17\ & VCC)) # (!\MyRAM~182_combout\ & (!\Add4~17\))
-- \Add4~19\ = CARRY((!\MyRAM~182_combout\ & !\Add4~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~182_combout\,
	datad => VCC,
	cin => \Add4~17\,
	combout => \Add4~18_combout\,
	cout => \Add4~19\);

-- Location: LCCOMB_X23_Y17_N14
\ZF~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZF~8_combout\ = (!\Add4~16_combout\ & (!\Add4~18_combout\ & (!\Add4~4_combout\ & !\Add4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~16_combout\,
	datab => \Add4~18_combout\,
	datac => \Add4~4_combout\,
	datad => \Add4~2_combout\,
	combout => \ZF~8_combout\);

-- Location: LCCOMB_X25_Y17_N12
\Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\MyRAM~192_combout\ & (\Mux2~0_combout\ $ (\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux3~0_combout\,
	datad => \MyRAM~192_combout\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X23_Y15_N18
\Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\MyRAM~188_combout\ & (\Mux3~0_combout\ $ (\Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~0_combout\,
	datac => \MyRAM~188_combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X19_Y15_N12
\Mux33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~1_combout\ = (\MyRAM~184_combout\ & (\Mux3~0_combout\ $ (\Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~184_combout\,
	datac => \Mux3~0_combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux33~1_combout\);

-- Location: LCCOMB_X21_Y17_N20
\Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (\MyRAM~184_combout\ & (\Add3~19\ $ (GND))) # (!\MyRAM~184_combout\ & (!\Add3~19\ & VCC))
-- \Add3~21\ = CARRY((\MyRAM~184_combout\ & !\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyRAM~184_combout\,
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X18_Y15_N2
\Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~0_combout\ = (\Mux24~3_combout\ & (((\Mux57~8_combout\) # (\Add3~20_combout\)))) # (!\Mux24~3_combout\ & (\Mux33~1_combout\ & (!\Mux57~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~1_combout\,
	datab => \Mux24~3_combout\,
	datac => \Mux57~8_combout\,
	datad => \Add3~20_combout\,
	combout => \Mux51~0_combout\);

-- Location: LCCOMB_X22_Y17_N20
\Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~20_combout\ = (\MyRAM~184_combout\ & ((GND) # (!\Add4~19\))) # (!\MyRAM~184_combout\ & (\Add4~19\ $ (GND)))
-- \Add4~21\ = CARRY((\MyRAM~184_combout\) # (!\Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~184_combout\,
	datad => VCC,
	cin => \Add4~19\,
	combout => \Add4~20_combout\,
	cout => \Add4~21\);

-- Location: FF_X18_Y15_N13
\MyRAM~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux51~1_combout\,
	sload => VCC,
	ena => \MyRAM~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyRAM~46_q\);

-- Location: LCCOMB_X18_Y15_N28
\MyRAM~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~185_combout\ = (\Mux5~0_combout\ & ((\MyRAM~46_q\))) # (!\Mux5~0_combout\ & (\MyRAM~30_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~30_q\,
	datac => \Mux5~0_combout\,
	datad => \MyRAM~46_q\,
	combout => \MyRAM~185_combout\);

-- Location: LCCOMB_X19_Y16_N28
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\Mux24~1_combout\ & ((\MyRAM~184_combout\) # (\MyRAM~185_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~184_combout\,
	datac => \MyRAM~185_combout\,
	datad => \Mux24~1_combout\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X22_Y16_N20
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = ((\MyRAM~185_combout\ $ (\MyRAM~184_combout\ $ (!\Add1~19\)))) # (GND)
-- \Add1~21\ = CARRY((\MyRAM~185_combout\ & ((\MyRAM~184_combout\) # (!\Add1~19\))) # (!\MyRAM~185_combout\ & (\MyRAM~184_combout\ & !\Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~185_combout\,
	datab => \MyRAM~184_combout\,
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X23_Y16_N20
\Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = ((\MyRAM~185_combout\ $ (\MyRAM~184_combout\ $ (\Add2~19\)))) # (GND)
-- \Add2~21\ = CARRY((\MyRAM~185_combout\ & (\MyRAM~184_combout\ & !\Add2~19\)) # (!\MyRAM~185_combout\ & ((\MyRAM~184_combout\) # (!\Add2~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~185_combout\,
	datab => \MyRAM~184_combout\,
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X19_Y15_N2
\Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\Add2~20_combout\ & ((\Mux24~3_combout\) # ((\Mux7~0_combout\ & \Mult0|auto_generated|mac_out2~DATAOUT10\)))) # (!\Add2~20_combout\ & (((\Mux7~0_combout\ & \Mult0|auto_generated|mac_out2~DATAOUT10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~20_combout\,
	datab => \Mux24~3_combout\,
	datac => \Mux7~0_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT10\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X19_Y15_N20
\Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\Mux14~0_combout\) # ((\Mux14~1_combout\) # ((\Mux24~0_combout\ & \Add1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Mux24~0_combout\,
	datac => \Add1~20_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X19_Y15_N18
\Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (!\Mux3~0_combout\ & \Mux14~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux3~0_combout\,
	datad => \Mux14~2_combout\,
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X18_Y15_N14
\Mux51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~1_combout\ = (\Mux57~8_combout\ & ((\Mux51~0_combout\ & (\Add4~20_combout\)) # (!\Mux51~0_combout\ & ((\Mux33~0_combout\))))) # (!\Mux57~8_combout\ & (\Mux51~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~8_combout\,
	datab => \Mux51~0_combout\,
	datac => \Add4~20_combout\,
	datad => \Mux33~0_combout\,
	combout => \Mux51~1_combout\);

-- Location: FF_X18_Y15_N15
\MyRAM~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux51~1_combout\,
	ena => \MyRAM~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyRAM~30_q\);

-- Location: LCCOMB_X18_Y15_N12
\MyRAM~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~184_combout\ = (\Mux8~0_combout\ & ((\MyRAM~46_q\))) # (!\Mux8~0_combout\ & (\MyRAM~30_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~30_q\,
	datac => \MyRAM~46_q\,
	datad => \Mux8~0_combout\,
	combout => \MyRAM~184_combout\);

-- Location: LCCOMB_X22_Y17_N22
\Add4~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~22_combout\ = (\MyRAM~186_combout\ & (\Add4~21\ & VCC)) # (!\MyRAM~186_combout\ & (!\Add4~21\))
-- \Add4~23\ = CARRY((!\MyRAM~186_combout\ & !\Add4~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~186_combout\,
	datad => VCC,
	cin => \Add4~21\,
	combout => \Add4~22_combout\,
	cout => \Add4~23\);

-- Location: LCCOMB_X21_Y17_N22
\Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (\MyRAM~186_combout\ & (!\Add3~21\)) # (!\MyRAM~186_combout\ & ((\Add3~21\) # (GND)))
-- \Add3~23\ = CARRY((!\Add3~21\) # (!\MyRAM~186_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyRAM~186_combout\,
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCCOMB_X24_Y17_N4
\Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = (\MyRAM~186_combout\ & (\Mux2~0_combout\ $ (\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux3~0_combout\,
	datad => \MyRAM~186_combout\,
	combout => \Mux32~1_combout\);

-- Location: FF_X24_Y17_N5
\MyRAM~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux50~1_combout\,
	sload => VCC,
	ena => \MyRAM~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyRAM~47_q\);

-- Location: LCCOMB_X24_Y17_N18
\MyRAM~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~187_combout\ = (\Mux5~0_combout\ & ((\MyRAM~47_q\))) # (!\Mux5~0_combout\ & (\MyRAM~31_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~31_q\,
	datab => \MyRAM~47_q\,
	datac => \Mux5~0_combout\,
	combout => \MyRAM~187_combout\);

-- Location: LCCOMB_X24_Y17_N22
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\Mux24~1_combout\ & ((\MyRAM~187_combout\) # (\MyRAM~186_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~1_combout\,
	datab => \MyRAM~187_combout\,
	datad => \MyRAM~186_combout\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X22_Y16_N22
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\MyRAM~186_combout\ & ((\MyRAM~187_combout\ & (\Add1~21\ & VCC)) # (!\MyRAM~187_combout\ & (!\Add1~21\)))) # (!\MyRAM~186_combout\ & ((\MyRAM~187_combout\ & (!\Add1~21\)) # (!\MyRAM~187_combout\ & ((\Add1~21\) # (GND)))))
-- \Add1~23\ = CARRY((\MyRAM~186_combout\ & (!\MyRAM~187_combout\ & !\Add1~21\)) # (!\MyRAM~186_combout\ & ((!\Add1~21\) # (!\MyRAM~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~186_combout\,
	datab => \MyRAM~187_combout\,
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X23_Y16_N22
\Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (\MyRAM~187_combout\ & ((\MyRAM~186_combout\ & (!\Add2~21\)) # (!\MyRAM~186_combout\ & ((\Add2~21\) # (GND))))) # (!\MyRAM~187_combout\ & ((\MyRAM~186_combout\ & (\Add2~21\ & VCC)) # (!\MyRAM~186_combout\ & (!\Add2~21\))))
-- \Add2~23\ = CARRY((\MyRAM~187_combout\ & ((!\Add2~21\) # (!\MyRAM~186_combout\))) # (!\MyRAM~187_combout\ & (!\MyRAM~186_combout\ & !\Add2~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~187_combout\,
	datab => \MyRAM~186_combout\,
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X24_Y17_N12
\Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Mux24~3_combout\ & ((\Add2~22_combout\) # ((\Mux7~0_combout\ & \Mult0|auto_generated|mac_out2~DATAOUT11\)))) # (!\Mux24~3_combout\ & (\Mux7~0_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~3_combout\,
	datab => \Mux7~0_combout\,
	datac => \Add2~22_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT11\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X24_Y17_N14
\Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\Mux13~0_combout\) # ((\Mux13~1_combout\) # ((\Add1~22_combout\ & \Mux24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~0_combout\,
	datab => \Add1~22_combout\,
	datac => \Mux24~0_combout\,
	datad => \Mux13~1_combout\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X24_Y17_N20
\Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (!\Mux3~0_combout\ & \Mux13~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~0_combout\,
	datac => \Mux13~2_combout\,
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X24_Y17_N0
\Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~0_combout\ = (\Mux24~3_combout\ & (\Mux57~8_combout\)) # (!\Mux24~3_combout\ & ((\Mux57~8_combout\ & ((\Mux32~0_combout\))) # (!\Mux57~8_combout\ & (\Mux32~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~3_combout\,
	datab => \Mux57~8_combout\,
	datac => \Mux32~1_combout\,
	datad => \Mux32~0_combout\,
	combout => \Mux50~0_combout\);

-- Location: LCCOMB_X24_Y17_N30
\Mux50~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~1_combout\ = (\Mux24~3_combout\ & ((\Mux50~0_combout\ & (\Add4~22_combout\)) # (!\Mux50~0_combout\ & ((\Add3~22_combout\))))) # (!\Mux24~3_combout\ & (((\Mux50~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~3_combout\,
	datab => \Add4~22_combout\,
	datac => \Add3~22_combout\,
	datad => \Mux50~0_combout\,
	combout => \Mux50~1_combout\);

-- Location: FF_X24_Y17_N23
\MyRAM~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux50~1_combout\,
	sload => VCC,
	ena => \MyRAM~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyRAM~31_q\);

-- Location: LCCOMB_X24_Y17_N8
\MyRAM~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~186_combout\ = (\Mux8~0_combout\ & ((\MyRAM~47_q\))) # (!\Mux8~0_combout\ & (\MyRAM~31_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~31_q\,
	datab => \MyRAM~47_q\,
	datac => \Mux8~0_combout\,
	combout => \MyRAM~186_combout\);

-- Location: LCCOMB_X21_Y17_N24
\Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (\MyRAM~188_combout\ & (\Add3~23\ $ (GND))) # (!\MyRAM~188_combout\ & (!\Add3~23\ & VCC))
-- \Add3~25\ = CARRY((\MyRAM~188_combout\ & !\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~188_combout\,
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X23_Y15_N10
\Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = (\Mux24~3_combout\ & (((\Mux57~8_combout\) # (\Add3~24_combout\)))) # (!\Mux24~3_combout\ & (\Mux31~1_combout\ & (!\Mux57~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~3_combout\,
	datab => \Mux31~1_combout\,
	datac => \Mux57~8_combout\,
	datad => \Add3~24_combout\,
	combout => \Mux49~0_combout\);

-- Location: LCCOMB_X22_Y17_N24
\Add4~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~24_combout\ = (\MyRAM~188_combout\ & ((GND) # (!\Add4~23\))) # (!\MyRAM~188_combout\ & (\Add4~23\ $ (GND)))
-- \Add4~25\ = CARRY((\MyRAM~188_combout\) # (!\Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyRAM~188_combout\,
	datad => VCC,
	cin => \Add4~23\,
	combout => \Add4~24_combout\,
	cout => \Add4~25\);

-- Location: FF_X23_Y15_N5
\MyRAM~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux49~1_combout\,
	ena => \MyRAM~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyRAM~32_q\);

-- Location: LCCOMB_X18_Y15_N22
\MyRAM~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~189_combout\ = (\Mux5~0_combout\ & (\MyRAM~48_q\)) # (!\Mux5~0_combout\ & ((\MyRAM~32_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux5~0_combout\,
	datac => \MyRAM~48_q\,
	datad => \MyRAM~32_q\,
	combout => \MyRAM~189_combout\);

-- Location: LCCOMB_X23_Y15_N14
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\Mux24~1_combout\ & ((\MyRAM~189_combout\) # (\MyRAM~188_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MyRAM~189_combout\,
	datac => \MyRAM~188_combout\,
	datad => \Mux24~1_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X22_Y16_N24
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = ((\MyRAM~188_combout\ $ (\MyRAM~189_combout\ $ (!\Add1~23\)))) # (GND)
-- \Add1~25\ = CARRY((\MyRAM~188_combout\ & ((\MyRAM~189_combout\) # (!\Add1~23\))) # (!\MyRAM~188_combout\ & (\MyRAM~189_combout\ & !\Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~188_combout\,
	datab => \MyRAM~189_combout\,
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X23_Y16_N24
\Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = ((\MyRAM~188_combout\ $ (\MyRAM~189_combout\ $ (\Add2~23\)))) # (GND)
-- \Add2~25\ = CARRY((\MyRAM~188_combout\ & ((!\Add2~23\) # (!\MyRAM~189_combout\))) # (!\MyRAM~188_combout\ & (!\MyRAM~189_combout\ & !\Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~188_combout\,
	datab => \MyRAM~189_combout\,
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X23_Y15_N12
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux24~3_combout\ & ((\Add2~24_combout\) # ((\Mux7~0_combout\ & \Mult0|auto_generated|mac_out2~DATAOUT12\)))) # (!\Mux24~3_combout\ & (\Mux7~0_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~3_combout\,
	datab => \Mux7~0_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT12\,
	datad => \Add2~24_combout\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X23_Y15_N30
\Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\Mux12~0_combout\) # ((\Mux12~1_combout\) # ((\Mux24~0_combout\ & \Add1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \Mux12~0_combout\,
	datac => \Add1~24_combout\,
	datad => \Mux12~1_combout\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X23_Y15_N0
\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (!\Mux3~0_combout\ & \Mux12~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~0_combout\,
	datac => \Mux12~2_combout\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X23_Y15_N4
\Mux49~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~1_combout\ = (\Mux49~0_combout\ & (((\Add4~24_combout\)) # (!\Mux57~8_combout\))) # (!\Mux49~0_combout\ & (\Mux57~8_combout\ & ((\Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~0_combout\,
	datab => \Mux57~8_combout\,
	datac => \Add4~24_combout\,
	datad => \Mux31~0_combout\,
	combout => \Mux49~1_combout\);

-- Location: FF_X18_Y15_N23
\MyRAM~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux49~1_combout\,
	sload => VCC,
	ena => \MyRAM~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyRAM~48_q\);

-- Location: LCCOMB_X19_Y15_N30
\MyRAM~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~188_combout\ = (\Mux8~0_combout\ & (\MyRAM~48_q\)) # (!\Mux8~0_combout\ & ((\MyRAM~32_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~48_q\,
	datab => \MyRAM~32_q\,
	datad => \Mux8~0_combout\,
	combout => \MyRAM~188_combout\);

-- Location: LCCOMB_X22_Y17_N26
\Add4~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~26_combout\ = (\MyRAM~190_combout\ & (\Add4~25\ & VCC)) # (!\MyRAM~190_combout\ & (!\Add4~25\))
-- \Add4~27\ = CARRY((!\MyRAM~190_combout\ & !\Add4~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~190_combout\,
	datad => VCC,
	cin => \Add4~25\,
	combout => \Add4~26_combout\,
	cout => \Add4~27\);

-- Location: LCCOMB_X21_Y17_N26
\Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (\MyRAM~190_combout\ & (!\Add3~25\)) # (!\MyRAM~190_combout\ & ((\Add3~25\) # (GND)))
-- \Add3~27\ = CARRY((!\Add3~25\) # (!\MyRAM~190_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~190_combout\,
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X23_Y17_N8
\Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\MyRAM~190_combout\ & (\Mux3~0_combout\ $ (\Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~0_combout\,
	datac => \MyRAM~190_combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X24_Y17_N24
\MyRAM~33feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~33feeder_combout\ = \Mux48~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux48~1_combout\,
	combout => \MyRAM~33feeder_combout\);

-- Location: FF_X24_Y17_N25
\MyRAM~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MyRAM~33feeder_combout\,
	ena => \MyRAM~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyRAM~33_q\);

-- Location: LCCOMB_X23_Y17_N24
\MyRAM~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~191_combout\ = (\Mux5~0_combout\ & (\MyRAM~49_q\)) # (!\Mux5~0_combout\ & ((\MyRAM~33_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~49_q\,
	datab => \MyRAM~33_q\,
	datad => \Mux5~0_combout\,
	combout => \MyRAM~191_combout\);

-- Location: LCCOMB_X23_Y17_N18
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\Mux24~1_combout\ & ((\MyRAM~190_combout\) # (\MyRAM~191_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux24~1_combout\,
	datac => \MyRAM~190_combout\,
	datad => \MyRAM~191_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X22_Y16_N26
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\MyRAM~191_combout\ & ((\MyRAM~190_combout\ & (\Add1~25\ & VCC)) # (!\MyRAM~190_combout\ & (!\Add1~25\)))) # (!\MyRAM~191_combout\ & ((\MyRAM~190_combout\ & (!\Add1~25\)) # (!\MyRAM~190_combout\ & ((\Add1~25\) # (GND)))))
-- \Add1~27\ = CARRY((\MyRAM~191_combout\ & (!\MyRAM~190_combout\ & !\Add1~25\)) # (!\MyRAM~191_combout\ & ((!\Add1~25\) # (!\MyRAM~190_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~191_combout\,
	datab => \MyRAM~190_combout\,
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X23_Y16_N26
\Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (\MyRAM~190_combout\ & ((\MyRAM~191_combout\ & (!\Add2~25\)) # (!\MyRAM~191_combout\ & (\Add2~25\ & VCC)))) # (!\MyRAM~190_combout\ & ((\MyRAM~191_combout\ & ((\Add2~25\) # (GND))) # (!\MyRAM~191_combout\ & (!\Add2~25\))))
-- \Add2~27\ = CARRY((\MyRAM~190_combout\ & (\MyRAM~191_combout\ & !\Add2~25\)) # (!\MyRAM~190_combout\ & ((\MyRAM~191_combout\) # (!\Add2~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~190_combout\,
	datab => \MyRAM~191_combout\,
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X24_Y17_N10
\Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux24~3_combout\ & ((\Add2~26_combout\) # ((\Mux7~0_combout\ & \Mult0|auto_generated|mac_out2~DATAOUT13\)))) # (!\Mux24~3_combout\ & (\Mux7~0_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~3_combout\,
	datab => \Mux7~0_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => \Add2~26_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X24_Y17_N28
\Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\Mux11~0_combout\) # ((\Mux11~1_combout\) # ((\Mux24~0_combout\ & \Add1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \Mux11~0_combout\,
	datac => \Add1~26_combout\,
	datad => \Mux11~1_combout\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X24_Y17_N2
\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (!\Mux3~0_combout\ & \Mux11~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~0_combout\,
	datad => \Mux11~2_combout\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X24_Y17_N16
\Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = (\Mux24~3_combout\ & (\Mux57~8_combout\)) # (!\Mux24~3_combout\ & ((\Mux57~8_combout\ & ((\Mux30~0_combout\))) # (!\Mux57~8_combout\ & (\Mux30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~3_combout\,
	datab => \Mux57~8_combout\,
	datac => \Mux30~1_combout\,
	datad => \Mux30~0_combout\,
	combout => \Mux48~0_combout\);

-- Location: LCCOMB_X24_Y17_N26
\Mux48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~1_combout\ = (\Mux24~3_combout\ & ((\Mux48~0_combout\ & (\Add4~26_combout\)) # (!\Mux48~0_combout\ & ((\Add3~26_combout\))))) # (!\Mux24~3_combout\ & (((\Mux48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~3_combout\,
	datab => \Add4~26_combout\,
	datac => \Add3~26_combout\,
	datad => \Mux48~0_combout\,
	combout => \Mux48~1_combout\);

-- Location: FF_X24_Y17_N7
\MyRAM~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux48~1_combout\,
	sload => VCC,
	ena => \MyRAM~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyRAM~49_q\);

-- Location: LCCOMB_X24_Y17_N6
\MyRAM~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~190_combout\ = (\Mux8~0_combout\ & (\MyRAM~49_q\)) # (!\Mux8~0_combout\ & ((\MyRAM~33_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux8~0_combout\,
	datac => \MyRAM~49_q\,
	datad => \MyRAM~33_q\,
	combout => \MyRAM~190_combout\);

-- Location: LCCOMB_X21_Y17_N28
\Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (\MyRAM~192_combout\ & (\Add3~27\ $ (GND))) # (!\MyRAM~192_combout\ & (!\Add3~27\ & VCC))
-- \Add3~29\ = CARRY((\MyRAM~192_combout\ & !\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyRAM~192_combout\,
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCCOMB_X25_Y17_N16
\Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = (\Mux24~3_combout\ & (((\Mux57~8_combout\) # (\Add3~28_combout\)))) # (!\Mux24~3_combout\ & (\Mux29~1_combout\ & (!\Mux57~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~3_combout\,
	datab => \Mux29~1_combout\,
	datac => \Mux57~8_combout\,
	datad => \Add3~28_combout\,
	combout => \Mux47~0_combout\);

-- Location: LCCOMB_X22_Y17_N28
\Add4~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~28_combout\ = (\MyRAM~192_combout\ & ((GND) # (!\Add4~27\))) # (!\MyRAM~192_combout\ & (\Add4~27\ $ (GND)))
-- \Add4~29\ = CARRY((\MyRAM~192_combout\) # (!\Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~192_combout\,
	datad => VCC,
	cin => \Add4~27\,
	combout => \Add4~28_combout\,
	cout => \Add4~29\);

-- Location: LCCOMB_X25_Y17_N18
\MyRAM~34feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~34feeder_combout\ = \Mux47~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux47~1_combout\,
	combout => \MyRAM~34feeder_combout\);

-- Location: FF_X25_Y17_N19
\MyRAM~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MyRAM~34feeder_combout\,
	ena => \MyRAM~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyRAM~34_q\);

-- Location: LCCOMB_X25_Y17_N30
\MyRAM~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~193_combout\ = (\Mux5~0_combout\ & ((\MyRAM~50_q\))) # (!\Mux5~0_combout\ & (\MyRAM~34_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MyRAM~34_q\,
	datac => \Mux5~0_combout\,
	datad => \MyRAM~50_q\,
	combout => \MyRAM~193_combout\);

-- Location: LCCOMB_X25_Y16_N28
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\Mux24~1_combout\ & ((\MyRAM~192_combout\) # (\MyRAM~193_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MyRAM~192_combout\,
	datac => \MyRAM~193_combout\,
	datad => \Mux24~1_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X22_Y16_N28
\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = ((\MyRAM~193_combout\ $ (\MyRAM~192_combout\ $ (!\Add1~27\)))) # (GND)
-- \Add1~29\ = CARRY((\MyRAM~193_combout\ & ((\MyRAM~192_combout\) # (!\Add1~27\))) # (!\MyRAM~193_combout\ & (\MyRAM~192_combout\ & !\Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~193_combout\,
	datab => \MyRAM~192_combout\,
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X23_Y16_N28
\Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = ((\MyRAM~192_combout\ $ (\MyRAM~193_combout\ $ (\Add2~27\)))) # (GND)
-- \Add2~29\ = CARRY((\MyRAM~192_combout\ & ((!\Add2~27\) # (!\MyRAM~193_combout\))) # (!\MyRAM~192_combout\ & (!\MyRAM~193_combout\ & !\Add2~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~192_combout\,
	datab => \MyRAM~193_combout\,
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X24_Y16_N16
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux7~0_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT14\) # ((\Mux24~3_combout\ & \Add2~28_combout\)))) # (!\Mux7~0_combout\ & (\Mux24~3_combout\ & ((\Add2~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \Mux24~3_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT14\,
	datad => \Add2~28_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X24_Y16_N30
\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\Mux10~0_combout\) # ((\Mux10~1_combout\) # ((\Mux24~0_combout\ & \Add1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \Mux10~0_combout\,
	datac => \Add1~28_combout\,
	datad => \Mux10~1_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X24_Y16_N20
\Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\Mux10~2_combout\ & !\Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux10~2_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X25_Y17_N22
\Mux47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~1_combout\ = (\Mux57~8_combout\ & ((\Mux47~0_combout\ & (\Add4~28_combout\)) # (!\Mux47~0_combout\ & ((\Mux29~0_combout\))))) # (!\Mux57~8_combout\ & (\Mux47~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~8_combout\,
	datab => \Mux47~0_combout\,
	datac => \Add4~28_combout\,
	datad => \Mux29~0_combout\,
	combout => \Mux47~1_combout\);

-- Location: FF_X25_Y17_N13
\MyRAM~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux47~1_combout\,
	sload => VCC,
	ena => \MyRAM~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyRAM~50_q\);

-- Location: LCCOMB_X25_Y17_N28
\MyRAM~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~192_combout\ = (\Mux8~0_combout\ & (\MyRAM~50_q\)) # (!\Mux8~0_combout\ & ((\MyRAM~34_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~50_q\,
	datab => \MyRAM~34_q\,
	datac => \Mux8~0_combout\,
	combout => \MyRAM~192_combout\);

-- Location: LCCOMB_X21_Y17_N30
\Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = \Add3~29\ $ (\MyRAM~194_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \MyRAM~194_combout\,
	cin => \Add3~29\,
	combout => \Add3~30_combout\);

-- Location: LCCOMB_X24_Y16_N8
\Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\MyRAM~194_combout\ & (\Mux3~0_combout\ $ (\Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MyRAM~194_combout\,
	datac => \Mux3~0_combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux28~1_combout\);

-- Location: FF_X24_Y16_N7
\MyRAM~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux46~1_combout\,
	sload => VCC,
	ena => \MyRAM~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyRAM~51_q\);

-- Location: LCCOMB_X24_Y16_N6
\MyRAM~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~195_combout\ = (\Mux5~0_combout\ & ((\MyRAM~51_q\))) # (!\Mux5~0_combout\ & (\MyRAM~35_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~35_q\,
	datab => \Mux5~0_combout\,
	datac => \MyRAM~51_q\,
	combout => \MyRAM~195_combout\);

-- Location: LCCOMB_X24_Y16_N12
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\Mux24~1_combout\ & ((\MyRAM~195_combout\) # (\MyRAM~194_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~195_combout\,
	datac => \MyRAM~194_combout\,
	datad => \Mux24~1_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X22_Y16_N30
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = \MyRAM~194_combout\ $ (\MyRAM~195_combout\ $ (\Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~194_combout\,
	datab => \MyRAM~195_combout\,
	cin => \Add1~29\,
	combout => \Add1~30_combout\);

-- Location: LCCOMB_X23_Y16_N30
\Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = \MyRAM~194_combout\ $ (\Add2~29\ $ (!\MyRAM~195_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyRAM~194_combout\,
	datad => \MyRAM~195_combout\,
	cin => \Add2~29\,
	combout => \Add2~30_combout\);

-- Location: LCCOMB_X24_Y16_N18
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux7~0_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT15\) # ((\Add2~30_combout\ & \Mux24~3_combout\)))) # (!\Mux7~0_combout\ & (\Add2~30_combout\ & (\Mux24~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \Add2~30_combout\,
	datac => \Mux24~3_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT15\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X24_Y16_N28
\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Mux9~0_combout\) # ((\Mux9~1_combout\) # ((\Add1~30_combout\ & \Mux24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datab => \Add1~30_combout\,
	datac => \Mux24~0_combout\,
	datad => \Mux9~1_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X24_Y16_N10
\Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (!\Mux3~0_combout\ & \Mux9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux3~0_combout\,
	datad => \Mux9~2_combout\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X24_Y16_N0
\Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = (\Mux57~8_combout\ & (((\Mux24~3_combout\) # (\Mux28~0_combout\)))) # (!\Mux57~8_combout\ & (\Mux28~1_combout\ & (!\Mux24~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~8_combout\,
	datab => \Mux28~1_combout\,
	datac => \Mux24~3_combout\,
	datad => \Mux28~0_combout\,
	combout => \Mux46~0_combout\);

-- Location: LCCOMB_X24_Y16_N4
\Mux46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~1_combout\ = (\Mux24~3_combout\ & ((\Mux46~0_combout\ & (\Add4~30_combout\)) # (!\Mux46~0_combout\ & ((\Add3~30_combout\))))) # (!\Mux24~3_combout\ & (((\Mux46~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~30_combout\,
	datab => \Mux24~3_combout\,
	datac => \Add3~30_combout\,
	datad => \Mux46~0_combout\,
	combout => \Mux46~1_combout\);

-- Location: FF_X24_Y16_N5
\MyRAM~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux46~1_combout\,
	ena => \MyRAM~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyRAM~35_q\);

-- Location: LCCOMB_X24_Y16_N2
\MyRAM~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \MyRAM~194_combout\ = (\Mux8~0_combout\ & ((\MyRAM~51_q\))) # (!\Mux8~0_combout\ & (\MyRAM~35_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyRAM~35_q\,
	datac => \Mux8~0_combout\,
	datad => \MyRAM~51_q\,
	combout => \MyRAM~194_combout\);

-- Location: LCCOMB_X22_Y17_N30
\Add4~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~30_combout\ = \Add4~29\ $ (!\MyRAM~194_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \MyRAM~194_combout\,
	cin => \Add4~29\,
	combout => \Add4~30_combout\);

-- Location: LCCOMB_X25_Y17_N24
\ZF~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZF~9_combout\ = (\Add4~14_combout\) # ((\Add4~30_combout\) # (\Add4~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~14_combout\,
	datac => \Add4~30_combout\,
	datad => \Add4~28_combout\,
	combout => \ZF~9_combout\);

-- Location: LCCOMB_X25_Y17_N14
\ZF~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZF~10_combout\ = (\ZF~7_combout\ & (!\Add4~0_combout\ & (\ZF~8_combout\ & !\ZF~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ZF~7_combout\,
	datab => \Add4~0_combout\,
	datac => \ZF~8_combout\,
	datad => \ZF~9_combout\,
	combout => \ZF~10_combout\);

-- Location: LCCOMB_X23_Y17_N10
\ZF~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZF~6_combout\ = (!\Add4~24_combout\ & (!\Add4~22_combout\ & (!\Add4~26_combout\ & !\Add4~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~24_combout\,
	datab => \Add4~22_combout\,
	datac => \Add4~26_combout\,
	datad => \Add4~20_combout\,
	combout => \ZF~6_combout\);

-- Location: LCCOMB_X25_Y17_N20
\ZF~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZF~11_combout\ = (\Mux2~0_combout\ & (\Mux3~0_combout\)) # (!\Mux2~0_combout\ & (!\Mux3~0_combout\ & (\ZF~10_combout\ & \ZF~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux3~0_combout\,
	datac => \ZF~10_combout\,
	datad => \ZF~6_combout\,
	combout => \ZF~11_combout\);

-- Location: LCCOMB_X22_Y14_N14
\CF~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CF~0_combout\ = (!\reset~input_o\ & ((pc_current(3)) # (pc_current(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc_current(3),
	datac => pc_current(1),
	datad => \reset~input_o\,
	combout => \CF~0_combout\);

-- Location: LCCOMB_X24_Y15_N4
\ZF~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZF~4_combout\ = (!\Mux10~2_combout\ & (!\Mux12~2_combout\ & (!\Mux9~2_combout\ & !\Mux11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~2_combout\,
	datab => \Mux12~2_combout\,
	datac => \Mux9~2_combout\,
	datad => \Mux11~2_combout\,
	combout => \ZF~4_combout\);

-- Location: LCCOMB_X24_Y15_N26
\ZF~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZF~3_combout\ = (!\Mux15~2_combout\ & (!\Mux13~2_combout\ & (!\Mux14~2_combout\ & !\Mux16~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~2_combout\,
	datab => \Mux13~2_combout\,
	datac => \Mux14~2_combout\,
	datad => \Mux16~2_combout\,
	combout => \ZF~3_combout\);

-- Location: LCCOMB_X24_Y15_N14
\ZF~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZF~1_combout\ = (!\Mux17~2_combout\ & (!\Mux18~2_combout\ & (!\Mux19~2_combout\ & !\Mux20~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~2_combout\,
	datab => \Mux18~2_combout\,
	datac => \Mux19~2_combout\,
	datad => \Mux20~2_combout\,
	combout => \ZF~1_combout\);

-- Location: LCCOMB_X24_Y15_N8
\ZF~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZF~0_combout\ = (!\Mux21~2_combout\ & !\Mux22~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux21~2_combout\,
	datad => \Mux22~2_combout\,
	combout => \ZF~0_combout\);

-- Location: LCCOMB_X24_Y15_N0
\ZF~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZF~2_combout\ = (!\Mux23~2_combout\ & (\ZF~1_combout\ & (\ZF~0_combout\ & !\Mux24~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~2_combout\,
	datab => \ZF~1_combout\,
	datac => \ZF~0_combout\,
	datad => \Mux24~5_combout\,
	combout => \ZF~2_combout\);

-- Location: LCCOMB_X24_Y15_N18
\ZF~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZF~5_combout\ = (\Mux2~0_combout\ & (\ZF~4_combout\ & (\ZF~3_combout\ & \ZF~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \ZF~4_combout\,
	datac => \ZF~3_combout\,
	datad => \ZF~2_combout\,
	combout => \ZF~5_combout\);

-- Location: LCCOMB_X24_Y15_N22
\ZF~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZF~12_combout\ = (\CF~0_combout\ & ((\ZF~11_combout\) # ((\ZF~5_combout\)))) # (!\CF~0_combout\ & (((\ZF~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ZF~11_combout\,
	datab => \CF~0_combout\,
	datac => \ZF~q\,
	datad => \ZF~5_combout\,
	combout => \ZF~12_combout\);

-- Location: FF_X24_Y15_N23
ZF : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ZF~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ZF~q\);

-- Location: LCCOMB_X25_Y17_N8
\Mux66~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux66~3_combout\ = (pc_current(3)) # ((!pc_current(0) & !\ZF~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_current(3),
	datac => pc_current(0),
	datad => \ZF~q\,
	combout => \Mux66~3_combout\);

-- Location: LCCOMB_X21_Y15_N22
\Mux66~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux66~12_combout\ = (\Add0~6_combout\ & ((pc_current(1)) # ((\Mux66~3_combout\) # (!pc_current(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_current(1),
	datab => \Add0~6_combout\,
	datac => pc_current(2),
	datad => \Mux66~3_combout\,
	combout => \Mux66~12_combout\);

-- Location: FF_X21_Y15_N23
\pc_current[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux66~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_current(3));

-- Location: LCCOMB_X25_Y17_N4
\pc_current[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_current[0]~3_combout\ = (pc_current(0)) # (\ZF~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => pc_current(0),
	datad => \ZF~q\,
	combout => \pc_current[0]~3_combout\);

-- Location: LCCOMB_X25_Y17_N10
\pc_current[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_current[0]~9_combout\ = (!pc_current(3) & (\pc_current[0]~3_combout\ & (!pc_current(1) & pc_current(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_current(3),
	datab => \pc_current[0]~3_combout\,
	datac => pc_current(1),
	datad => pc_current(2),
	combout => \pc_current[0]~9_combout\);

-- Location: LCCOMB_X21_Y15_N8
\Mux69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux69~0_combout\ = (!\pc_current[0]~9_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc_current[0]~9_combout\,
	datac => \Add0~0_combout\,
	combout => \Mux69~0_combout\);

-- Location: FF_X21_Y15_N9
\pc_current[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux69~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_current(0));

-- Location: FF_X21_Y17_N1
\pc_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => pc_current(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_out[0]~reg0_q\);

-- Location: FF_X21_Y17_N3
\pc_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => pc_current(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_out[1]~reg0_q\);

-- Location: FF_X21_Y17_N5
\pc_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => pc_current(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_out[2]~reg0_q\);

-- Location: LCCOMB_X23_Y17_N12
\pc_out[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_out[3]~reg0feeder_combout\ = pc_current(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => pc_current(3),
	combout => \pc_out[3]~reg0feeder_combout\);

-- Location: FF_X23_Y17_N13
\pc_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc_out[3]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_out[3]~reg0_q\);

-- Location: LCCOMB_X28_Y15_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (pc_current(4) & (\Add0~7\ $ (GND))) # (!pc_current(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((pc_current(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc_current(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X28_Y15_N20
\Mux65~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux65~12_combout\ = (\Add0~8_combout\ & ((\Mux66~3_combout\) # ((pc_current(1)) # (!pc_current(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux66~3_combout\,
	datab => pc_current(2),
	datac => \Add0~8_combout\,
	datad => pc_current(1),
	combout => \Mux65~12_combout\);

-- Location: FF_X28_Y15_N21
\pc_current[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux65~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_current(4));

-- Location: LCCOMB_X28_Y15_N24
\pc_out[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_out[4]~reg0feeder_combout\ = pc_current(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => pc_current(4),
	combout => \pc_out[4]~reg0feeder_combout\);

-- Location: FF_X28_Y15_N25
\pc_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc_out[4]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_out[4]~reg0_q\);

-- Location: LCCOMB_X28_Y15_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (pc_current(5) & (!\Add0~9\)) # (!pc_current(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!pc_current(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pc_current(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X28_Y15_N30
\Mux64~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux64~12_combout\ = (\Add0~10_combout\ & (((\Mux66~3_combout\) # (pc_current(1))) # (!pc_current(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => pc_current(2),
	datac => \Mux66~3_combout\,
	datad => pc_current(1),
	combout => \Mux64~12_combout\);

-- Location: FF_X28_Y15_N31
\pc_current[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux64~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_current(5));

-- Location: FF_X28_Y15_N27
\pc_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => pc_current(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_out[5]~reg0_q\);

-- Location: LCCOMB_X28_Y15_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (pc_current(6) & (\Add0~11\ $ (GND))) # (!pc_current(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((pc_current(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc_current(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X22_Y14_N22
\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (pc_current(2) & (!pc_current(1) & !pc_current(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_current(2),
	datac => pc_current(1),
	datad => pc_current(3),
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X24_Y16_N26
\CF~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CF~1_combout\ = (!\Mux7~2_combout\ & (\Mux2~0_combout\ & (\CF~0_combout\ & !\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~2_combout\,
	datab => \Mux2~0_combout\,
	datac => \CF~0_combout\,
	datad => \Mux3~0_combout\,
	combout => \CF~1_combout\);

-- Location: LCCOMB_X24_Y16_N24
\CF~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CF~2_combout\ = (!\Mux7~0_combout\ & (\Mux24~3_combout\ & (\Add2~30_combout\ $ (\Add2~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \Add2~30_combout\,
	datac => \Mux24~3_combout\,
	datad => \Add2~28_combout\,
	combout => \CF~2_combout\);

-- Location: LCCOMB_X24_Y16_N22
\CF~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CF~3_combout\ = (\CF~2_combout\) # ((\Mux24~0_combout\ & (\Add1~30_combout\ $ (\Add1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \Add1~30_combout\,
	datac => \Add1~28_combout\,
	datad => \CF~2_combout\,
	combout => \CF~3_combout\);

-- Location: LCCOMB_X25_Y16_N18
\CF~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CF~4_combout\ = (\CF~1_combout\ & ((\CF~3_combout\) # ((\Mux24~1_combout\ & \CF~q\)))) # (!\CF~1_combout\ & (((\CF~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~1_combout\,
	datab => \CF~1_combout\,
	datac => \CF~q\,
	datad => \CF~3_combout\,
	combout => \CF~4_combout\);

-- Location: FF_X25_Y16_N19
CF : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CF~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CF~q\);

-- Location: LCCOMB_X24_Y16_N14
\Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~0_combout\ = ((\Mux3~0_combout\) # ((\Mux2~0_combout\ & !\CF~q\))) # (!\Mux7~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~2_combout\,
	datab => \Mux2~0_combout\,
	datac => \Mux3~0_combout\,
	datad => \CF~q\,
	combout => \Mux62~0_combout\);

-- Location: LCCOMB_X28_Y15_N16
\Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~0_combout\ = (\Add0~12_combout\ & \Mux62~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datad => \Mux62~0_combout\,
	combout => \Mux63~0_combout\);

-- Location: FF_X28_Y15_N17
\pc_current[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux63~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_current(6));

-- Location: LCCOMB_X28_Y15_N28
\pc_out[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_out[6]~reg0feeder_combout\ = pc_current(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => pc_current(6),
	combout => \pc_out[6]~reg0feeder_combout\);

-- Location: FF_X28_Y15_N29
\pc_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc_out[6]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_out[6]~reg0_q\);

-- Location: LCCOMB_X28_Y15_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = pc_current(7) $ (\Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pc_current(7),
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X28_Y15_N22
\Mux62~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~1_combout\ = (\Add0~14_combout\ & \Mux62~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	datad => \Mux62~0_combout\,
	combout => \Mux62~1_combout\);

-- Location: FF_X28_Y15_N23
\pc_current[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux62~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_current(7));

-- Location: FF_X28_Y15_N19
\pc_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => pc_current(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_out[7]~reg0_q\);

-- Location: LCCOMB_X21_Y16_N0
\destnation_register[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \destnation_register[0]~0_combout\ = (\Mux2~0_combout\ & ((\Mux43~0_combout\))) # (!\Mux2~0_combout\ & (\Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \Mux2~0_combout\,
	datad => \Mux43~0_combout\,
	combout => \destnation_register[0]~0_combout\);

-- Location: LCCOMB_X22_Y14_N12
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (!pc_current(1) & !pc_current(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => pc_current(1),
	datad => pc_current(3),
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X22_Y14_N4
\destnation_register[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \destnation_register[4]~17_combout\ = (!\Mux3~0_combout\ & !\Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~0_combout\,
	datad => \Mux2~0_combout\,
	combout => \destnation_register[4]~17_combout\);

-- Location: LCCOMB_X22_Y14_N16
\destnation_register[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \destnation_register[0]~16_combout\ = (!\reset~input_o\ & (!\Mux7~2_combout\ & ((\Mux7~1_combout\) # (!\destnation_register[4]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \reset~input_o\,
	datac => \destnation_register[4]~17_combout\,
	datad => \Mux7~2_combout\,
	combout => \destnation_register[0]~16_combout\);

-- Location: FF_X21_Y16_N1
\destnation_register[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \destnation_register[0]~0_combout\,
	asdata => \Mux43~2_combout\,
	sload => \Mux7~1_combout\,
	ena => \destnation_register[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \destnation_register[0]~reg0_q\);

-- Location: LCCOMB_X22_Y15_N12
\destnation_register[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \destnation_register[1]~1_combout\ = (\Mux2~0_combout\ & ((\Mux42~0_combout\))) # (!\Mux2~0_combout\ & (\Add3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \Mux2~0_combout\,
	datad => \Mux42~0_combout\,
	combout => \destnation_register[1]~1_combout\);

-- Location: FF_X22_Y15_N13
\destnation_register[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \destnation_register[1]~1_combout\,
	asdata => \Mux42~1_combout\,
	sload => \Mux7~1_combout\,
	ena => \destnation_register[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \destnation_register[1]~reg0_q\);

-- Location: LCCOMB_X21_Y16_N26
\destnation_register[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \destnation_register[2]~2_combout\ = (\Mux2~0_combout\ & ((\Mux41~0_combout\))) # (!\Mux2~0_combout\ & (\Add3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Add3~4_combout\,
	datad => \Mux41~0_combout\,
	combout => \destnation_register[2]~2_combout\);

-- Location: FF_X21_Y16_N27
\destnation_register[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \destnation_register[2]~2_combout\,
	asdata => \Mux41~1_combout\,
	sload => \Mux7~1_combout\,
	ena => \destnation_register[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \destnation_register[2]~reg0_q\);

-- Location: LCCOMB_X23_Y15_N24
\destnation_register[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \destnation_register[3]~3_combout\ = (\Mux2~0_combout\ & ((\Mux40~0_combout\))) # (!\Mux2~0_combout\ & (\Add3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Add3~6_combout\,
	datad => \Mux40~0_combout\,
	combout => \destnation_register[3]~3_combout\);

-- Location: FF_X23_Y15_N25
\destnation_register[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \destnation_register[3]~3_combout\,
	asdata => \Mux40~1_combout\,
	sload => \Mux7~1_combout\,
	ena => \destnation_register[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \destnation_register[3]~reg0_q\);

-- Location: LCCOMB_X25_Y15_N8
\destnation_register[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \destnation_register[4]~4_combout\ = (\Mux2~0_combout\ & ((\Mux39~0_combout\))) # (!\Mux2~0_combout\ & (\Add3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datab => \Mux2~0_combout\,
	datad => \Mux39~0_combout\,
	combout => \destnation_register[4]~4_combout\);

-- Location: FF_X25_Y15_N9
\destnation_register[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \destnation_register[4]~4_combout\,
	asdata => \Mux39~1_combout\,
	sload => \Mux7~1_combout\,
	ena => \destnation_register[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \destnation_register[4]~reg0_q\);

-- Location: LCCOMB_X22_Y15_N26
\destnation_register[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \destnation_register[5]~5_combout\ = (\Mux2~0_combout\ & ((\Mux38~0_combout\))) # (!\Mux2~0_combout\ & (\Add3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Add3~10_combout\,
	datad => \Mux38~0_combout\,
	combout => \destnation_register[5]~5_combout\);

-- Location: FF_X22_Y15_N27
\destnation_register[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \destnation_register[5]~5_combout\,
	asdata => \Mux38~1_combout\,
	sload => \Mux7~1_combout\,
	ena => \destnation_register[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \destnation_register[5]~reg0_q\);

-- Location: LCCOMB_X22_Y15_N4
\destnation_register[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \destnation_register[6]~6_combout\ = (\Mux2~0_combout\ & ((\Mux43~3_combout\))) # (!\Mux2~0_combout\ & (\Add3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~12_combout\,
	datab => \Mux2~0_combout\,
	datad => \Mux43~3_combout\,
	combout => \destnation_register[6]~6_combout\);

-- Location: FF_X22_Y15_N5
\destnation_register[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \destnation_register[6]~6_combout\,
	asdata => \Mux37~0_combout\,
	sload => \Mux7~1_combout\,
	ena => \destnation_register[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \destnation_register[6]~reg0_q\);

-- Location: LCCOMB_X25_Y15_N30
\destnation_register[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \destnation_register[7]~7_combout\ = (\Mux2~0_combout\ & ((\Mux36~0_combout\))) # (!\Mux2~0_combout\ & (\Add3~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~14_combout\,
	datab => \Mux2~0_combout\,
	datad => \Mux36~0_combout\,
	combout => \destnation_register[7]~7_combout\);

-- Location: FF_X25_Y15_N31
\destnation_register[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \destnation_register[7]~7_combout\,
	asdata => \Mux36~1_combout\,
	sload => \Mux7~1_combout\,
	ena => \destnation_register[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \destnation_register[7]~reg0_q\);

-- Location: LCCOMB_X19_Y17_N16
\destnation_register[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \destnation_register[8]~8_combout\ = (\Mux2~0_combout\ & (\Mux35~0_combout\)) # (!\Mux2~0_combout\ & ((\Add3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux35~0_combout\,
	datad => \Add3~16_combout\,
	combout => \destnation_register[8]~8_combout\);

-- Location: FF_X19_Y17_N17
\destnation_register[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \destnation_register[8]~8_combout\,
	asdata => \Mux35~1_combout\,
	sload => \Mux7~1_combout\,
	ena => \destnation_register[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \destnation_register[8]~reg0_q\);

-- Location: LCCOMB_X19_Y17_N18
\destnation_register[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \destnation_register[9]~9_combout\ = (\Mux2~0_combout\ & ((\Mux34~0_combout\))) # (!\Mux2~0_combout\ & (\Add3~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Add3~18_combout\,
	datad => \Mux34~0_combout\,
	combout => \destnation_register[9]~9_combout\);

-- Location: FF_X19_Y17_N19
\destnation_register[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \destnation_register[9]~9_combout\,
	asdata => \Mux34~1_combout\,
	sload => \Mux7~1_combout\,
	ena => \destnation_register[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \destnation_register[9]~reg0_q\);

-- Location: LCCOMB_X19_Y15_N28
\destnation_register[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \destnation_register[10]~10_combout\ = (\Mux2~0_combout\ & ((\Mux33~0_combout\))) # (!\Mux2~0_combout\ & (\Add3~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~20_combout\,
	datab => \Mux2~0_combout\,
	datad => \Mux33~0_combout\,
	combout => \destnation_register[10]~10_combout\);

-- Location: FF_X19_Y15_N29
\destnation_register[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \destnation_register[10]~10_combout\,
	asdata => \Mux33~1_combout\,
	sload => \Mux7~1_combout\,
	ena => \destnation_register[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \destnation_register[10]~reg0_q\);

-- Location: LCCOMB_X23_Y17_N28
\destnation_register[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \destnation_register[11]~11_combout\ = (\Mux2~0_combout\ & (\Mux32~0_combout\)) # (!\Mux2~0_combout\ & ((\Add3~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~0_combout\,
	datab => \Add3~22_combout\,
	datad => \Mux2~0_combout\,
	combout => \destnation_register[11]~11_combout\);

-- Location: FF_X23_Y17_N29
\destnation_register[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \destnation_register[11]~11_combout\,
	asdata => \Mux32~1_combout\,
	sload => \Mux7~1_combout\,
	ena => \destnation_register[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \destnation_register[11]~reg0_q\);

-- Location: LCCOMB_X23_Y15_N6
\destnation_register[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \destnation_register[12]~12_combout\ = (\Mux2~0_combout\ & ((\Mux31~0_combout\))) # (!\Mux2~0_combout\ & (\Add3~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Add3~24_combout\,
	datad => \Mux31~0_combout\,
	combout => \destnation_register[12]~12_combout\);

-- Location: FF_X23_Y15_N7
\destnation_register[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \destnation_register[12]~12_combout\,
	asdata => \Mux31~1_combout\,
	sload => \Mux7~1_combout\,
	ena => \destnation_register[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \destnation_register[12]~reg0_q\);

-- Location: LCCOMB_X23_Y17_N2
\destnation_register[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \destnation_register[13]~13_combout\ = (\Mux2~0_combout\ & ((\Mux30~0_combout\))) # (!\Mux2~0_combout\ & (\Add3~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~26_combout\,
	datab => \Mux2~0_combout\,
	datad => \Mux30~0_combout\,
	combout => \destnation_register[13]~13_combout\);

-- Location: FF_X23_Y17_N3
\destnation_register[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \destnation_register[13]~13_combout\,
	asdata => \Mux30~1_combout\,
	sload => \Mux7~1_combout\,
	ena => \destnation_register[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \destnation_register[13]~reg0_q\);

-- Location: LCCOMB_X25_Y16_N24
\destnation_register[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \destnation_register[14]~14_combout\ = (\Mux2~0_combout\ & ((\Mux29~0_combout\))) # (!\Mux2~0_combout\ & (\Add3~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Add3~28_combout\,
	datad => \Mux29~0_combout\,
	combout => \destnation_register[14]~14_combout\);

-- Location: FF_X25_Y16_N25
\destnation_register[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \destnation_register[14]~14_combout\,
	asdata => \Mux29~1_combout\,
	sload => \Mux7~1_combout\,
	ena => \destnation_register[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \destnation_register[14]~reg0_q\);

-- Location: LCCOMB_X25_Y16_N26
\destnation_register[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \destnation_register[15]~15_combout\ = (\Mux2~0_combout\ & ((\Mux28~0_combout\))) # (!\Mux2~0_combout\ & (\Add3~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Add3~30_combout\,
	datad => \Mux28~0_combout\,
	combout => \destnation_register[15]~15_combout\);

-- Location: FF_X25_Y16_N27
\destnation_register[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \destnation_register[15]~15_combout\,
	asdata => \Mux28~1_combout\,
	sload => \Mux7~1_combout\,
	ena => \destnation_register[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \destnation_register[15]~reg0_q\);

ww_pc_out(0) <= \pc_out[0]~output_o\;

ww_pc_out(1) <= \pc_out[1]~output_o\;

ww_pc_out(2) <= \pc_out[2]~output_o\;

ww_pc_out(3) <= \pc_out[3]~output_o\;

ww_pc_out(4) <= \pc_out[4]~output_o\;

ww_pc_out(5) <= \pc_out[5]~output_o\;

ww_pc_out(6) <= \pc_out[6]~output_o\;

ww_pc_out(7) <= \pc_out[7]~output_o\;

ww_destnation_register(0) <= \destnation_register[0]~output_o\;

ww_destnation_register(1) <= \destnation_register[1]~output_o\;

ww_destnation_register(2) <= \destnation_register[2]~output_o\;

ww_destnation_register(3) <= \destnation_register[3]~output_o\;

ww_destnation_register(4) <= \destnation_register[4]~output_o\;

ww_destnation_register(5) <= \destnation_register[5]~output_o\;

ww_destnation_register(6) <= \destnation_register[6]~output_o\;

ww_destnation_register(7) <= \destnation_register[7]~output_o\;

ww_destnation_register(8) <= \destnation_register[8]~output_o\;

ww_destnation_register(9) <= \destnation_register[9]~output_o\;

ww_destnation_register(10) <= \destnation_register[10]~output_o\;

ww_destnation_register(11) <= \destnation_register[11]~output_o\;

ww_destnation_register(12) <= \destnation_register[12]~output_o\;

ww_destnation_register(13) <= \destnation_register[13]~output_o\;

ww_destnation_register(14) <= \destnation_register[14]~output_o\;

ww_destnation_register(15) <= \destnation_register[15]~output_o\;
END structure;


