-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Full Version"

-- DATE "11/15/2015 21:56:30"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	drawData IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	VGA_CLK : BUFFER std_logic;
	VGA_HS : BUFFER std_logic;
	VGA_VS : BUFFER std_logic;
	VGA_BLANK : BUFFER std_logic;
	VGA_SYNC : BUFFER std_logic;
	VGA_R : BUFFER std_logic_vector(9 DOWNTO 0);
	VGA_G : BUFFER std_logic_vector(9 DOWNTO 0);
	VGA_B : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END drawData;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_CLK	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BLANK	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_SYNC	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[6]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[8]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[9]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[0]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[1]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[4]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[5]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[8]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[9]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[4]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[7]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[8]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[9]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF drawData IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_BLANK : std_logic;
SIGNAL ww_VGA_SYNC : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_CLKIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_SHIFTEN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER_VCO0PH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \s|Add0~13_sumout\ : std_logic;
SIGNAL \s|Add0~2\ : std_logic;
SIGNAL \s|Add0~25_sumout\ : std_logic;
SIGNAL \s|Add0~26\ : std_logic;
SIGNAL \s|Add0~73_sumout\ : std_logic;
SIGNAL \s|Add0~74\ : std_logic;
SIGNAL \s|Add0~77_sumout\ : std_logic;
SIGNAL \s|Add0~78\ : std_logic;
SIGNAL \s|Add0~69_sumout\ : std_logic;
SIGNAL \s|Add0~70\ : std_logic;
SIGNAL \s|Add0~65_sumout\ : std_logic;
SIGNAL \s|Equal0~5_combout\ : std_logic;
SIGNAL \s|Equal0~6_combout\ : std_logic;
SIGNAL \s|Equal0~7_combout\ : std_logic;
SIGNAL \s|LessThan0~0_combout\ : std_logic;
SIGNAL \s|LessThan0~1_combout\ : std_logic;
SIGNAL \s|LessThan0~2_combout\ : std_logic;
SIGNAL \s|Add0~14\ : std_logic;
SIGNAL \s|Add0~17_sumout\ : std_logic;
SIGNAL \s|Add0~18\ : std_logic;
SIGNAL \s|Add0~21_sumout\ : std_logic;
SIGNAL \s|Add0~22\ : std_logic;
SIGNAL \s|Add0~5_sumout\ : std_logic;
SIGNAL \s|Add0~6\ : std_logic;
SIGNAL \s|Add0~29_sumout\ : std_logic;
SIGNAL \s|Add0~30\ : std_logic;
SIGNAL \s|Add0~33_sumout\ : std_logic;
SIGNAL \s|Add0~34\ : std_logic;
SIGNAL \s|Add0~37_sumout\ : std_logic;
SIGNAL \s|Add0~38\ : std_logic;
SIGNAL \s|Add0~41_sumout\ : std_logic;
SIGNAL \s|Add0~42\ : std_logic;
SIGNAL \s|Add0~45_sumout\ : std_logic;
SIGNAL \s|Add0~46\ : std_logic;
SIGNAL \s|Add0~49_sumout\ : std_logic;
SIGNAL \s|Add0~50\ : std_logic;
SIGNAL \s|Add0~53_sumout\ : std_logic;
SIGNAL \s|Add0~54\ : std_logic;
SIGNAL \s|Add0~9_sumout\ : std_logic;
SIGNAL \s|Add0~10\ : std_logic;
SIGNAL \s|Add0~57_sumout\ : std_logic;
SIGNAL \s|Add0~58\ : std_logic;
SIGNAL \s|Add0~61_sumout\ : std_logic;
SIGNAL \s|Add0~62\ : std_logic;
SIGNAL \s|Add0~1_sumout\ : std_logic;
SIGNAL \s|Equal0~2_combout\ : std_logic;
SIGNAL \s|Equal0~0_combout\ : std_logic;
SIGNAL \s|Equal0~3_combout\ : std_logic;
SIGNAL \s|Equal0~1_combout\ : std_logic;
SIGNAL \s|Equal0~4_combout\ : std_logic;
SIGNAL \s|k~q\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \player1one|cero|f0~0_combout\ : std_logic;
SIGNAL \player1one|cero|f1~0_combout\ : std_logic;
SIGNAL \player1one|cero|f2~0_combout\ : std_logic;
SIGNAL \player1one|cero|f3~0_combout\ : std_logic;
SIGNAL \player1one|cero|f4~0_combout\ : std_logic;
SIGNAL \player1one|cero|f5~0_combout\ : std_logic;
SIGNAL \player1one|cero|f6~0_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \bubble1one|cero|f0~0_combout\ : std_logic;
SIGNAL \bubble1one|cero|f1~0_combout\ : std_logic;
SIGNAL \bubble1one|cero|f2~0_combout\ : std_logic;
SIGNAL \bubble1one|cero|f3~0_combout\ : std_logic;
SIGNAL \bubble1one|cero|f4~0_combout\ : std_logic;
SIGNAL \bubble1one|cero|f5~0_combout\ : std_logic;
SIGNAL \bubble1one|cero|f0~1_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \bubble2one|cero|f0~0_combout\ : std_logic;
SIGNAL \bubble2one|cero|f1~0_combout\ : std_logic;
SIGNAL \bubble2one|cero|f2~0_combout\ : std_logic;
SIGNAL \bubble2one|cero|f3~0_combout\ : std_logic;
SIGNAL \bubble2one|cero|f4~0_combout\ : std_logic;
SIGNAL \bubble2one|cero|f5~0_combout\ : std_logic;
SIGNAL \bubble2one|cero|f0~1_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \d|presentState.RESET_S~q\ : std_logic;
SIGNAL \d|Add6~13_sumout\ : std_logic;
SIGNAL \d|select~2_combout\ : std_logic;
SIGNAL \d|select[3]~1_combout\ : std_logic;
SIGNAL \d|select[0]~DUPLICATE_q\ : std_logic;
SIGNAL \d|select~3_combout\ : std_logic;
SIGNAL \d|select~4_combout\ : std_logic;
SIGNAL \d|Selector6~0_combout\ : std_logic;
SIGNAL \d|Selector6~1_combout\ : std_logic;
SIGNAL \d|presentState.EXIT_S~q\ : std_logic;
SIGNAL \d|Selector5~0_combout\ : std_logic;
SIGNAL \d|presentState.CLEAR_S~q\ : std_logic;
SIGNAL \d|Add6~18\ : std_logic;
SIGNAL \d|Add6~21_sumout\ : std_logic;
SIGNAL \d|clearXcount[0]~1_combout\ : std_logic;
SIGNAL \d|Add6~22\ : std_logic;
SIGNAL \d|Add6~25_sumout\ : std_logic;
SIGNAL \d|Add6~26\ : std_logic;
SIGNAL \d|Add6~29_sumout\ : std_logic;
SIGNAL \d|Add6~30\ : std_logic;
SIGNAL \d|Add6~9_sumout\ : std_logic;
SIGNAL \d|Add6~10\ : std_logic;
SIGNAL \d|Add6~5_sumout\ : std_logic;
SIGNAL \d|LessThan6~1_combout\ : std_logic;
SIGNAL \d|Add6~6\ : std_logic;
SIGNAL \d|Add6~1_sumout\ : std_logic;
SIGNAL \d|clearXcount[0]~0_combout\ : std_logic;
SIGNAL \d|Add6~14\ : std_logic;
SIGNAL \d|Add6~17_sumout\ : std_logic;
SIGNAL \d|LessThan6~0_combout\ : std_logic;
SIGNAL \d|Add5~25_sumout\ : std_logic;
SIGNAL \d|clearYcount[6]~0_combout\ : std_logic;
SIGNAL \d|clearYcount[6]~1_combout\ : std_logic;
SIGNAL \d|Add5~26\ : std_logic;
SIGNAL \d|Add5~21_sumout\ : std_logic;
SIGNAL \d|Add5~22\ : std_logic;
SIGNAL \d|Add5~17_sumout\ : std_logic;
SIGNAL \d|Add5~18\ : std_logic;
SIGNAL \d|Add5~5_sumout\ : std_logic;
SIGNAL \d|Add5~6\ : std_logic;
SIGNAL \d|Add5~1_sumout\ : std_logic;
SIGNAL \d|Add5~2\ : std_logic;
SIGNAL \d|Add5~13_sumout\ : std_logic;
SIGNAL \d|Add5~14\ : std_logic;
SIGNAL \d|Add5~9_sumout\ : std_logic;
SIGNAL \d|clearYcount[6]~DUPLICATE_q\ : std_logic;
SIGNAL \d|always0~2_combout\ : std_logic;
SIGNAL \d|clearYcount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \d|clearYcount[2]~DUPLICATE_q\ : std_logic;
SIGNAL \d|always0~1_combout\ : std_logic;
SIGNAL \d|always0~3_combout\ : std_logic;
SIGNAL \d|presentState~14_combout\ : std_logic;
SIGNAL \d|presentState.LOAD_S~q\ : std_logic;
SIGNAL \d|bXcount[3]~1_combout\ : std_logic;
SIGNAL \d|bXcount~2_combout\ : std_logic;
SIGNAL \d|bXcount~4_combout\ : std_logic;
SIGNAL \d|bXcount[2]~DUPLICATE_q\ : std_logic;
SIGNAL \d|bXcount~0_combout\ : std_logic;
SIGNAL \d|bXcount~3_combout\ : std_logic;
SIGNAL \d|LessThan4~0_combout\ : std_logic;
SIGNAL \d|Selector1~0_combout\ : std_logic;
SIGNAL \d|bYcount[1]~1_combout\ : std_logic;
SIGNAL \d|bYcount~2_combout\ : std_logic;
SIGNAL \d|bYcount[0]~DUPLICATE_q\ : std_logic;
SIGNAL \d|bYcount~3_combout\ : std_logic;
SIGNAL \d|bYcount~4_combout\ : std_logic;
SIGNAL \d|bYcount[2]~DUPLICATE_q\ : std_logic;
SIGNAL \d|bYcount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \d|Add0~0_combout\ : std_logic;
SIGNAL \d|bYcount~0_combout\ : std_logic;
SIGNAL \d|always0~0_combout\ : std_logic;
SIGNAL \d|Selector1~1_combout\ : std_logic;
SIGNAL \d|presentState.DRAWB1_S~q\ : std_logic;
SIGNAL \d|pXcount~0_combout\ : std_logic;
SIGNAL \d|pXcount[1]~1_combout\ : std_logic;
SIGNAL \d|pXcount[0]~DUPLICATE_q\ : std_logic;
SIGNAL \d|pYcount~2_combout\ : std_logic;
SIGNAL \d|pYcount[2]~1_combout\ : std_logic;
SIGNAL \d|pYcount~0_combout\ : std_logic;
SIGNAL \d|Selector3~0_combout\ : std_logic;
SIGNAL \d|select[1]~DUPLICATE_q\ : std_logic;
SIGNAL \d|Selector3~1_combout\ : std_logic;
SIGNAL \d|presentState.DRAWP_S~q\ : std_logic;
SIGNAL \d|pXcount~2_combout\ : std_logic;
SIGNAL \d|pYcount~3_combout\ : std_logic;
SIGNAL \d|pYcount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \d|Selector4~0_combout\ : std_logic;
SIGNAL \d|Selector4~1_combout\ : std_logic;
SIGNAL \d|presentState.SWITCH_S~q\ : std_logic;
SIGNAL \d|select~0_combout\ : std_logic;
SIGNAL \d|Selector2~0_combout\ : std_logic;
SIGNAL \d|Selector2~1_combout\ : std_logic;
SIGNAL \d|presentState.DRAWB2_S~q\ : std_logic;
SIGNAL \colourdisplay|cero|f3~0_combout\ : std_logic;
SIGNAL \colourdisplay|cero|f3~1_combout\ : std_logic;
SIGNAL \colourdisplay|cero|f3~2_combout\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_O_CLKOUT\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI2\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI3\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI4\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI5\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI6\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI7\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_UP\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI1\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFTENM\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI0\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFT\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|fb_clkin\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_CNTNEN\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIGSHIFTEN6\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_TCLK\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH0\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH1\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH2\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH3\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH4\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH5\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH6\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH7\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\ : std_logic;
SIGNAL \VGA|controller|Add0~33_sumout\ : std_logic;
SIGNAL \VGA|controller|Equal0~1_combout\ : std_logic;
SIGNAL \VGA|controller|Add0~26\ : std_logic;
SIGNAL \VGA|controller|Add0~21_sumout\ : std_logic;
SIGNAL \VGA|controller|xCounter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|Equal0~0_combout\ : std_logic;
SIGNAL \VGA|controller|Equal0~2_combout\ : std_logic;
SIGNAL \VGA|controller|Add0~34\ : std_logic;
SIGNAL \VGA|controller|Add0~37_sumout\ : std_logic;
SIGNAL \VGA|controller|Add0~38\ : std_logic;
SIGNAL \VGA|controller|Add0~1_sumout\ : std_logic;
SIGNAL \VGA|controller|Add0~2\ : std_logic;
SIGNAL \VGA|controller|Add0~5_sumout\ : std_logic;
SIGNAL \VGA|controller|Add0~6\ : std_logic;
SIGNAL \VGA|controller|Add0~9_sumout\ : std_logic;
SIGNAL \VGA|controller|Add0~10\ : std_logic;
SIGNAL \VGA|controller|Add0~13_sumout\ : std_logic;
SIGNAL \VGA|controller|Add0~14\ : std_logic;
SIGNAL \VGA|controller|Add0~17_sumout\ : std_logic;
SIGNAL \VGA|controller|Add0~18\ : std_logic;
SIGNAL \VGA|controller|Add0~29_sumout\ : std_logic;
SIGNAL \VGA|controller|Add0~30\ : std_logic;
SIGNAL \VGA|controller|Add0~25_sumout\ : std_logic;
SIGNAL \VGA|controller|VGA_HS1~0_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_HS1~1_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_HS1~q\ : std_logic;
SIGNAL \VGA|controller|VGA_HS~q\ : std_logic;
SIGNAL \VGA|controller|Add1~5_sumout\ : std_logic;
SIGNAL \VGA|controller|always1~1_combout\ : std_logic;
SIGNAL \VGA|controller|always1~2_combout\ : std_logic;
SIGNAL \VGA|controller|always1~3_combout\ : std_logic;
SIGNAL \VGA|controller|Add1~6\ : std_logic;
SIGNAL \VGA|controller|Add1~9_sumout\ : std_logic;
SIGNAL \VGA|controller|Add1~10\ : std_logic;
SIGNAL \VGA|controller|Add1~37_sumout\ : std_logic;
SIGNAL \VGA|controller|Add1~38\ : std_logic;
SIGNAL \VGA|controller|Add1~33_sumout\ : std_logic;
SIGNAL \VGA|controller|Add1~34\ : std_logic;
SIGNAL \VGA|controller|Add1~29_sumout\ : std_logic;
SIGNAL \VGA|controller|Add1~30\ : std_logic;
SIGNAL \VGA|controller|Add1~25_sumout\ : std_logic;
SIGNAL \VGA|controller|Add1~26\ : std_logic;
SIGNAL \VGA|controller|Add1~21_sumout\ : std_logic;
SIGNAL \VGA|controller|Add1~22\ : std_logic;
SIGNAL \VGA|controller|Add1~17_sumout\ : std_logic;
SIGNAL \VGA|controller|Add1~18\ : std_logic;
SIGNAL \VGA|controller|Add1~13_sumout\ : std_logic;
SIGNAL \VGA|controller|Add1~14\ : std_logic;
SIGNAL \VGA|controller|Add1~1_sumout\ : std_logic;
SIGNAL \VGA|controller|always1~0_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_VS1~0_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_VS1~1_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_VS1~q\ : std_logic;
SIGNAL \VGA|controller|VGA_VS~feeder_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_VS~q\ : std_logic;
SIGNAL \VGA|controller|VGA_BLANK1~0_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_BLANK1~q\ : std_logic;
SIGNAL \VGA|controller|VGA_BLANK~feeder_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_BLANK~q\ : std_logic;
SIGNAL \d|bYcount[3]~DUPLICATE_q\ : std_logic;
SIGNAL \d|Add8~14\ : std_logic;
SIGNAL \d|Add8~18\ : std_logic;
SIGNAL \d|Add8~10\ : std_logic;
SIGNAL \d|Add8~5_sumout\ : std_logic;
SIGNAL \d|Selector18~0_combout\ : std_logic;
SIGNAL \VGA|writeEn~0_combout\ : std_logic;
SIGNAL \d|Add8~6\ : std_logic;
SIGNAL \d|Add8~1_sumout\ : std_logic;
SIGNAL \d|Selector17~0_combout\ : std_logic;
SIGNAL \d|Add12~18\ : std_logic;
SIGNAL \d|Add12~22\ : std_logic;
SIGNAL \d|Add12~14\ : std_logic;
SIGNAL \d|Add12~6\ : std_logic;
SIGNAL \d|Add12~2\ : std_logic;
SIGNAL \d|Add12~9_sumout\ : std_logic;
SIGNAL \VGA|LessThan3~0_combout\ : std_logic;
SIGNAL \d|Add12~1_sumout\ : std_logic;
SIGNAL \d|Selector17~1_combout\ : std_logic;
SIGNAL \d|Add10~14\ : std_logic;
SIGNAL \d|Add10~18\ : std_logic;
SIGNAL \d|Add10~10\ : std_logic;
SIGNAL \d|Add10~6\ : std_logic;
SIGNAL \d|Add10~1_sumout\ : std_logic;
SIGNAL \d|Selector17~2_combout\ : std_logic;
SIGNAL \d|Add10~5_sumout\ : std_logic;
SIGNAL \d|Add12~5_sumout\ : std_logic;
SIGNAL \d|Selector18~1_combout\ : std_logic;
SIGNAL \d|Selector18~2_combout\ : std_logic;
SIGNAL \VGA|writeEn~2_combout\ : std_logic;
SIGNAL \VGA|writeEn~1_combout\ : std_logic;
SIGNAL \d|WideNor0~0_combout\ : std_logic;
SIGNAL \d|Selector8~0_combout\ : std_logic;
SIGNAL \d|Add7~29_combout\ : std_logic;
SIGNAL \d|Add7~12_combout\ : std_logic;
SIGNAL \d|Add7~37_combout\ : std_logic;
SIGNAL \d|Add7~39_combout\ : std_logic;
SIGNAL \d|bXcount[3]~DUPLICATE_q\ : std_logic;
SIGNAL \d|Add7~38_combout\ : std_logic;
SIGNAL \d|Add7~31_combout\ : std_logic;
SIGNAL \d|Add7~30_combout\ : std_logic;
SIGNAL \d|Add7~36_combout\ : std_logic;
SIGNAL \d|Add7~34_combout\ : std_logic;
SIGNAL \d|pXcount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \d|Add7~35_combout\ : std_logic;
SIGNAL \d|Add7~32_combout\ : std_logic;
SIGNAL \d|Add7~33_combout\ : std_logic;
SIGNAL \d|Add7~10\ : std_logic;
SIGNAL \d|Add7~15\ : std_logic;
SIGNAL \d|Add7~19\ : std_logic;
SIGNAL \d|Add7~23\ : std_logic;
SIGNAL \d|Add7~27\ : std_logic;
SIGNAL \d|Add7~5_sumout\ : std_logic;
SIGNAL \d|Selector9~0_combout\ : std_logic;
SIGNAL \VGA|writeEn~3_combout\ : std_logic;
SIGNAL \d|Selector17~3_combout\ : std_logic;
SIGNAL \d|Selector18~3_combout\ : std_logic;
SIGNAL \d|Selector16~0_combout\ : std_logic;
SIGNAL \d|Add10~9_sumout\ : std_logic;
SIGNAL \d|Add8~9_sumout\ : std_logic;
SIGNAL \d|Add12~13_sumout\ : std_logic;
SIGNAL \d|Selector19~0_combout\ : std_logic;
SIGNAL \d|Selector19~1_combout\ : std_logic;
SIGNAL \d|Add10~17_sumout\ : std_logic;
SIGNAL \d|Add12~21_sumout\ : std_logic;
SIGNAL \d|Selector20~0_combout\ : std_logic;
SIGNAL \d|Add8~17_sumout\ : std_logic;
SIGNAL \d|Selector20~1_combout\ : std_logic;
SIGNAL \d|Add8~13_sumout\ : std_logic;
SIGNAL \d|Add10~13_sumout\ : std_logic;
SIGNAL \d|Add12~17_sumout\ : std_logic;
SIGNAL \d|Selector21~0_combout\ : std_logic;
SIGNAL \d|Selector21~1_combout\ : std_logic;
SIGNAL \d|Add7~6\ : std_logic;
SIGNAL \d|Add7~1_sumout\ : std_logic;
SIGNAL \d|Selector8~1_combout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~10\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~11\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~14\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~15\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~18\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~19\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~22\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~23\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~26\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~27\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~30\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~31\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~34\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~35\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~38\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~39\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~5_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~6\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~7\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~1_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~10\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~11\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~14\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~15\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~18\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~19\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~22\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~23\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~26\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~27\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~30\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~31\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~34\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~35\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~38\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~39\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~2\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~3\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~5_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~1_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \d|Add7~9_sumout\ : std_logic;
SIGNAL \d|Selector11~0_combout\ : std_logic;
SIGNAL \d|Selector14~0_combout\ : std_logic;
SIGNAL \d|Add7~14_sumout\ : std_logic;
SIGNAL \d|Selector13~0_combout\ : std_logic;
SIGNAL \d|Add7~18_sumout\ : std_logic;
SIGNAL \d|Selector12~0_combout\ : std_logic;
SIGNAL \d|Add7~22_sumout\ : std_logic;
SIGNAL \d|Selector11~1_combout\ : std_logic;
SIGNAL \d|Add7~26_sumout\ : std_logic;
SIGNAL \d|Selector10~0_combout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~9_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~13_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~17_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~21_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~25_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~29_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~33_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~37_sumout\ : std_logic;
SIGNAL \VGA|controller|xCounter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|xCounter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~9_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~13_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~17_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~21_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~25_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~29_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~33_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~37_sumout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|address_reg_b[0]~feeder_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|out_address_reg_b[0]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|result_node[2]~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|result_node[1]~1_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|result_node[0]~2_combout\ : std_logic;
SIGNAL \VGA|controller|yCounter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \d|clearXcount\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \p1|xOut\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \d|clearYcount\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \d|cToVGA\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \VGA|controller|xCounter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \s|sysCount\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \b1|xOut\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2|xOut\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|out_address_reg_b\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \d|bXcount\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \d|bYcount\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \d|select\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \d|pXcount\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \d|pYcount\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|decode2|w_anode126w\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode166w\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|address_reg_b\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|decode2|w_anode118w\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode157w\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|decode2|w_anode105w\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode143w\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \VGA|mypll|altpll_component|auto_generated|clk\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \d|ALT_INV_pYcount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \d|ALT_INV_pXcount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \d|ALT_INV_pXcount[0]~DUPLICATE_q\ : std_logic;
SIGNAL \d|ALT_INV_select[0]~DUPLICATE_q\ : std_logic;
SIGNAL \d|ALT_INV_select[1]~DUPLICATE_q\ : std_logic;
SIGNAL \d|ALT_INV_bYcount[2]~DUPLICATE_q\ : std_logic;
SIGNAL \d|ALT_INV_bYcount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \d|ALT_INV_bYcount[0]~DUPLICATE_q\ : std_logic;
SIGNAL \d|ALT_INV_bYcount[3]~DUPLICATE_q\ : std_logic;
SIGNAL \d|ALT_INV_bXcount[2]~DUPLICATE_q\ : std_logic;
SIGNAL \d|ALT_INV_bXcount[3]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b[0]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_xCounter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \d|ALT_INV_clearYcount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \d|ALT_INV_clearYcount[2]~DUPLICATE_q\ : std_logic;
SIGNAL \d|ALT_INV_clearYcount[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_always1~2_combout\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_always1~1_combout\ : std_logic;
SIGNAL \s|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \s|ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \s|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \s|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \s|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \d|ALT_INV_Selector16~0_combout\ : std_logic;
SIGNAL \d|ALT_INV_Selector17~3_combout\ : std_logic;
SIGNAL \d|ALT_INV_Selector18~3_combout\ : std_logic;
SIGNAL \d|ALT_INV_Selector19~1_combout\ : std_logic;
SIGNAL \d|ALT_INV_Selector19~0_combout\ : std_logic;
SIGNAL \d|ALT_INV_Selector20~1_combout\ : std_logic;
SIGNAL \d|ALT_INV_Selector20~0_combout\ : std_logic;
SIGNAL \d|ALT_INV_Selector8~1_combout\ : std_logic;
SIGNAL \d|ALT_INV_Selector21~1_combout\ : std_logic;
SIGNAL \d|ALT_INV_Selector21~0_combout\ : std_logic;
SIGNAL \d|ALT_INV_Add7~39_combout\ : std_logic;
SIGNAL \d|ALT_INV_Add7~38_combout\ : std_logic;
SIGNAL \d|ALT_INV_Add7~37_combout\ : std_logic;
SIGNAL \d|ALT_INV_Add7~36_combout\ : std_logic;
SIGNAL \d|ALT_INV_Add7~35_combout\ : std_logic;
SIGNAL \d|ALT_INV_Add7~34_combout\ : std_logic;
SIGNAL \d|ALT_INV_Add7~33_combout\ : std_logic;
SIGNAL \d|ALT_INV_Add7~32_combout\ : std_logic;
SIGNAL \d|ALT_INV_Add7~31_combout\ : std_logic;
SIGNAL \d|ALT_INV_Add7~30_combout\ : std_logic;
SIGNAL \d|ALT_INV_Add7~29_combout\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_always1~0_combout\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_VGA_VS1~0_combout\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_VGA_HS1~0_combout\ : std_logic;
SIGNAL \d|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \d|ALT_INV_always0~3_combout\ : std_logic;
SIGNAL \d|ALT_INV_always0~2_combout\ : std_logic;
SIGNAL \d|ALT_INV_always0~1_combout\ : std_logic;
SIGNAL \d|ALT_INV_LessThan6~1_combout\ : std_logic;
SIGNAL \d|ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \d|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \s|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \s|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \s|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \s|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \d|ALT_INV_Selector11~0_combout\ : std_logic;
SIGNAL \d|ALT_INV_Add7~12_combout\ : std_logic;
SIGNAL \VGA|ALT_INV_writeEn~3_combout\ : std_logic;
SIGNAL \VGA|ALT_INV_writeEn~2_combout\ : std_logic;
SIGNAL \VGA|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \d|ALT_INV_Selector18~2_combout\ : std_logic;
SIGNAL \d|ALT_INV_Selector18~1_combout\ : std_logic;
SIGNAL \d|ALT_INV_Selector18~0_combout\ : std_logic;
SIGNAL \d|ALT_INV_Selector17~2_combout\ : std_logic;
SIGNAL \d|ALT_INV_Selector17~1_combout\ : std_logic;
SIGNAL \d|ALT_INV_Selector17~0_combout\ : std_logic;
SIGNAL \d|ALT_INV_Selector9~0_combout\ : std_logic;
SIGNAL \d|ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \d|ALT_INV_WideNor0~0_combout\ : std_logic;
SIGNAL \VGA|ALT_INV_writeEn~1_combout\ : std_logic;
SIGNAL \VGA|ALT_INV_writeEn~0_combout\ : std_logic;
SIGNAL \d|ALT_INV_presentState.RESET_S~q\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_VGA_BLANK1~q\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_VGA_VS1~q\ : std_logic;
SIGNAL \d|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \d|ALT_INV_pYcount\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \d|ALT_INV_pXcount\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \d|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \d|ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \d|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \d|ALT_INV_select\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \d|ALT_INV_always0~0_combout\ : std_logic;
SIGNAL \d|ALT_INV_bYcount\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \d|ALT_INV_LessThan4~0_combout\ : std_logic;
SIGNAL \d|ALT_INV_bXcount\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s|ALT_INV_k~q\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \d|ALT_INV_cToVGA\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \bubble2one|cero|ALT_INV_f0~1_combout\ : std_logic;
SIGNAL \bubble2one|cero|ALT_INV_f5~0_combout\ : std_logic;
SIGNAL \bubble2one|cero|ALT_INV_f4~0_combout\ : std_logic;
SIGNAL \bubble2one|cero|ALT_INV_f3~0_combout\ : std_logic;
SIGNAL \bubble2one|cero|ALT_INV_f1~0_combout\ : std_logic;
SIGNAL \bubble2one|cero|ALT_INV_f0~0_combout\ : std_logic;
SIGNAL \b2|ALT_INV_xOut\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \bubble1one|cero|ALT_INV_f0~1_combout\ : std_logic;
SIGNAL \bubble1one|cero|ALT_INV_f5~0_combout\ : std_logic;
SIGNAL \bubble1one|cero|ALT_INV_f4~0_combout\ : std_logic;
SIGNAL \bubble1one|cero|ALT_INV_f3~0_combout\ : std_logic;
SIGNAL \bubble1one|cero|ALT_INV_f1~0_combout\ : std_logic;
SIGNAL \bubble1one|cero|ALT_INV_f0~0_combout\ : std_logic;
SIGNAL \b1|ALT_INV_xOut\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \player1one|cero|ALT_INV_f6~0_combout\ : std_logic;
SIGNAL \player1one|cero|ALT_INV_f5~0_combout\ : std_logic;
SIGNAL \player1one|cero|ALT_INV_f4~0_combout\ : std_logic;
SIGNAL \player1one|cero|ALT_INV_f3~0_combout\ : std_logic;
SIGNAL \player1one|cero|ALT_INV_f2~0_combout\ : std_logic;
SIGNAL \player1one|cero|ALT_INV_f1~0_combout\ : std_logic;
SIGNAL \player1one|cero|ALT_INV_f0~0_combout\ : std_logic;
SIGNAL \p1|ALT_INV_xOut\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \d|ALT_INV_Add12~21_sumout\ : std_logic;
SIGNAL \d|ALT_INV_Add10~17_sumout\ : std_logic;
SIGNAL \d|ALT_INV_Add8~17_sumout\ : std_logic;
SIGNAL \d|ALT_INV_Add12~17_sumout\ : std_logic;
SIGNAL \d|ALT_INV_Add10~13_sumout\ : std_logic;
SIGNAL \d|ALT_INV_Add8~13_sumout\ : std_logic;
SIGNAL \d|ALT_INV_Add12~13_sumout\ : std_logic;
SIGNAL \d|ALT_INV_Add10~9_sumout\ : std_logic;
SIGNAL \d|ALT_INV_Add8~9_sumout\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_yCounter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA|controller|ALT_INV_xCounter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \d|ALT_INV_clearYcount\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \s|ALT_INV_sysCount\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \d|ALT_INV_Add7~26_sumout\ : std_logic;
SIGNAL \d|ALT_INV_clearXcount\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \d|ALT_INV_Add7~22_sumout\ : std_logic;
SIGNAL \d|ALT_INV_Add7~18_sumout\ : std_logic;
SIGNAL \d|ALT_INV_Add7~14_sumout\ : std_logic;
SIGNAL \d|ALT_INV_Add7~9_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \d|ALT_INV_Add12~9_sumout\ : std_logic;
SIGNAL \d|ALT_INV_Add12~5_sumout\ : std_logic;
SIGNAL \d|ALT_INV_Add10~5_sumout\ : std_logic;
SIGNAL \d|ALT_INV_Add8~5_sumout\ : std_logic;
SIGNAL \d|ALT_INV_Add12~1_sumout\ : std_logic;
SIGNAL \d|ALT_INV_Add10~1_sumout\ : std_logic;
SIGNAL \d|ALT_INV_Add8~1_sumout\ : std_logic;
SIGNAL \d|ALT_INV_Add7~5_sumout\ : std_logic;
SIGNAL \d|ALT_INV_presentState.EXIT_S~q\ : std_logic;
SIGNAL \d|ALT_INV_presentState.CLEAR_S~q\ : std_logic;
SIGNAL \d|ALT_INV_Add7~1_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \d|ALT_INV_presentState.SWITCH_S~q\ : std_logic;
SIGNAL \d|ALT_INV_presentState.LOAD_S~q\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a0~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a3~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a6~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a1~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a4~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a8\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a7~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a2~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a5~portbdataout\ : std_logic;
SIGNAL \d|ALT_INV_presentState.DRAWP_S~q\ : std_logic;
SIGNAL \d|ALT_INV_presentState.DRAWB2_S~q\ : std_logic;
SIGNAL \d|ALT_INV_presentState.DRAWB1_S~q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX5 <= ww_HEX5;
VGA_CLK <= ww_VGA_CLK;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_BLANK <= ww_VGA_BLANK;
VGA_SYNC <= ww_VGA_SYNC;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\VGA|VideoMemory|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \~GND~combout\;

\VGA|VideoMemory|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~37_sumout\ & \VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & \VGA|user_input_translator|Add1~25_sumout\ & 
\VGA|user_input_translator|Add1~21_sumout\ & \VGA|user_input_translator|Add1~17_sumout\ & \VGA|user_input_translator|Add1~13_sumout\ & \VGA|user_input_translator|Add1~9_sumout\ & \d|Selector10~0_combout\ & \d|Selector11~1_combout\ & 
\d|Selector12~0_combout\ & \d|Selector13~0_combout\ & \d|Selector14~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & \VGA|controller|controller_translator|Add1~29_sumout\ & 
\VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|controller_translator|Add1~13_sumout\ & 
\VGA|controller|controller_translator|Add1~9_sumout\ & \VGA|controller|xCounter[6]~DUPLICATE_q\ & \VGA|controller|xCounter\(5) & \VGA|controller|xCounter[4]~DUPLICATE_q\ & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2));

\VGA|VideoMemory|auto_generated|ram_block1a5~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \~GND~combout\;

\VGA|VideoMemory|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~37_sumout\ & \VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & \VGA|user_input_translator|Add1~25_sumout\ & 
\VGA|user_input_translator|Add1~21_sumout\ & \VGA|user_input_translator|Add1~17_sumout\ & \VGA|user_input_translator|Add1~13_sumout\ & \VGA|user_input_translator|Add1~9_sumout\ & \d|Selector10~0_combout\ & \d|Selector11~1_combout\ & 
\d|Selector12~0_combout\ & \d|Selector13~0_combout\ & \d|Selector14~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & \VGA|controller|controller_translator|Add1~29_sumout\ & 
\VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|controller_translator|Add1~13_sumout\ & 
\VGA|controller|controller_translator|Add1~9_sumout\ & \VGA|controller|xCounter[6]~DUPLICATE_q\ & \VGA|controller|xCounter\(5) & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2));

\VGA|VideoMemory|auto_generated|ram_block1a2~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a7_PORTADATAIN_bus\ <= (\~GND~combout\ & \d|presentState.DRAWP_S~q\);

\VGA|VideoMemory|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & \VGA|user_input_translator|Add1~25_sumout\ & \VGA|user_input_translator|Add1~21_sumout\ & 
\VGA|user_input_translator|Add1~17_sumout\ & \VGA|user_input_translator|Add1~13_sumout\ & \VGA|user_input_translator|Add1~9_sumout\ & \d|Selector10~0_combout\ & \d|Selector11~1_combout\ & \d|Selector12~0_combout\ & \d|Selector13~0_combout\ & 
\d|Selector14~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~33_sumout\ & \VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & 
\VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|controller_translator|Add1~13_sumout\ & \VGA|controller|controller_translator|Add1~9_sumout\ & 
\VGA|controller|xCounter[6]~DUPLICATE_q\ & \VGA|controller|xCounter\(5) & \VGA|controller|xCounter[4]~DUPLICATE_q\ & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2));

\VGA|VideoMemory|auto_generated|ram_block1a7~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);
\VGA|VideoMemory|auto_generated|ram_block1a8\ <= \VGA|VideoMemory|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(1);

\VGA|VideoMemory|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \d|presentState.DRAWP_S~q\;

\VGA|VideoMemory|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~37_sumout\ & \VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & \VGA|user_input_translator|Add1~25_sumout\ & 
\VGA|user_input_translator|Add1~21_sumout\ & \VGA|user_input_translator|Add1~17_sumout\ & \VGA|user_input_translator|Add1~13_sumout\ & \VGA|user_input_translator|Add1~9_sumout\ & \d|Selector10~0_combout\ & \d|Selector11~1_combout\ & 
\d|Selector12~0_combout\ & \d|Selector13~0_combout\ & \d|Selector14~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & \VGA|controller|controller_translator|Add1~29_sumout\ & 
\VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|controller_translator|Add1~13_sumout\ & 
\VGA|controller|controller_translator|Add1~9_sumout\ & \VGA|controller|xCounter[6]~DUPLICATE_q\ & \VGA|controller|xCounter\(5) & \VGA|controller|xCounter[4]~DUPLICATE_q\ & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2));

\VGA|VideoMemory|auto_generated|ram_block1a4~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \d|presentState.DRAWP_S~q\;

\VGA|VideoMemory|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~37_sumout\ & \VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & \VGA|user_input_translator|Add1~25_sumout\ & 
\VGA|user_input_translator|Add1~21_sumout\ & \VGA|user_input_translator|Add1~17_sumout\ & \VGA|user_input_translator|Add1~13_sumout\ & \VGA|user_input_translator|Add1~9_sumout\ & \d|Selector10~0_combout\ & \d|Selector11~1_combout\ & 
\d|Selector12~0_combout\ & \d|Selector13~0_combout\ & \d|Selector14~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & \VGA|controller|controller_translator|Add1~29_sumout\ & 
\VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|controller_translator|Add1~13_sumout\ & 
\VGA|controller|controller_translator|Add1~9_sumout\ & \VGA|controller|xCounter[6]~DUPLICATE_q\ & \VGA|controller|xCounter\(5) & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2));

\VGA|VideoMemory|auto_generated|ram_block1a1~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a6_PORTADATAIN_bus\ <= (gnd & \d|cToVGA\(0));

\VGA|VideoMemory|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & \VGA|user_input_translator|Add1~25_sumout\ & \VGA|user_input_translator|Add1~21_sumout\ & 
\VGA|user_input_translator|Add1~17_sumout\ & \VGA|user_input_translator|Add1~13_sumout\ & \VGA|user_input_translator|Add1~9_sumout\ & \d|Selector10~0_combout\ & \d|Selector11~1_combout\ & \d|Selector12~0_combout\ & \d|Selector13~0_combout\ & 
\d|Selector14~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~33_sumout\ & \VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & 
\VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|controller_translator|Add1~13_sumout\ & \VGA|controller|controller_translator|Add1~9_sumout\ & 
\VGA|controller|xCounter[6]~DUPLICATE_q\ & \VGA|controller|xCounter\(5) & \VGA|controller|xCounter[4]~DUPLICATE_q\ & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2));

\VGA|VideoMemory|auto_generated|ram_block1a6~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \d|cToVGA\(0);

\VGA|VideoMemory|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~37_sumout\ & \VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & \VGA|user_input_translator|Add1~25_sumout\ & 
\VGA|user_input_translator|Add1~21_sumout\ & \VGA|user_input_translator|Add1~17_sumout\ & \VGA|user_input_translator|Add1~13_sumout\ & \VGA|user_input_translator|Add1~9_sumout\ & \d|Selector10~0_combout\ & \d|Selector11~1_combout\ & 
\d|Selector12~0_combout\ & \d|Selector13~0_combout\ & \d|Selector14~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & \VGA|controller|controller_translator|Add1~29_sumout\ & 
\VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|controller_translator|Add1~13_sumout\ & 
\VGA|controller|controller_translator|Add1~9_sumout\ & \VGA|controller|xCounter[6]~DUPLICATE_q\ & \VGA|controller|xCounter\(5) & \VGA|controller|xCounter[4]~DUPLICATE_q\ & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2));

\VGA|VideoMemory|auto_generated|ram_block1a3~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \d|cToVGA\(0);

\VGA|VideoMemory|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~37_sumout\ & \VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & \VGA|user_input_translator|Add1~25_sumout\ & 
\VGA|user_input_translator|Add1~21_sumout\ & \VGA|user_input_translator|Add1~17_sumout\ & \VGA|user_input_translator|Add1~13_sumout\ & \VGA|user_input_translator|Add1~9_sumout\ & \d|Selector10~0_combout\ & \d|Selector11~1_combout\ & 
\d|Selector12~0_combout\ & \d|Selector13~0_combout\ & \d|Selector14~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & \VGA|controller|controller_translator|Add1~29_sumout\ & 
\VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|controller_translator|Add1~13_sumout\ & 
\VGA|controller|controller_translator|Add1~9_sumout\ & \VGA|controller|xCounter[6]~DUPLICATE_q\ & \VGA|controller|xCounter\(5) & \VGA|controller|xCounter[4]~DUPLICATE_q\ & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2));

\VGA|VideoMemory|auto_generated|ram_block1a0~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH0\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(0);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH1\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(1);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH2\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(2);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH3\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(3);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH4\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(4);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH5\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(5);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH6\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(6);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH7\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(7);

\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI0\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(0);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI1\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(1);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI2\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(2);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI3\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(3);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI4\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(4);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI5\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(5);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI6\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(6);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI7\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(7);

\VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_CLKIN_bus\ <= (gnd & gnd & gnd & \CLOCK_50~input_o\);

\VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_MHI_bus\ <= (\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI7\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI6\ & 
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI5\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI4\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI3\ & 
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI2\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI1\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI0\);

\VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIGSHIFTEN6\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_SHIFTEN_bus\(6);

\VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER_VCO0PH_bus\ <= (\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH7\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH6\
& \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH5\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH4\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH3\ & 
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH2\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH1\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH0\);
\d|ALT_INV_pYcount[1]~DUPLICATE_q\ <= NOT \d|pYcount[1]~DUPLICATE_q\;
\d|ALT_INV_pXcount[1]~DUPLICATE_q\ <= NOT \d|pXcount[1]~DUPLICATE_q\;
\d|ALT_INV_pXcount[0]~DUPLICATE_q\ <= NOT \d|pXcount[0]~DUPLICATE_q\;
\d|ALT_INV_select[0]~DUPLICATE_q\ <= NOT \d|select[0]~DUPLICATE_q\;
\d|ALT_INV_select[1]~DUPLICATE_q\ <= NOT \d|select[1]~DUPLICATE_q\;
\d|ALT_INV_bYcount[2]~DUPLICATE_q\ <= NOT \d|bYcount[2]~DUPLICATE_q\;
\d|ALT_INV_bYcount[1]~DUPLICATE_q\ <= NOT \d|bYcount[1]~DUPLICATE_q\;
\d|ALT_INV_bYcount[0]~DUPLICATE_q\ <= NOT \d|bYcount[0]~DUPLICATE_q\;
\d|ALT_INV_bYcount[3]~DUPLICATE_q\ <= NOT \d|bYcount[3]~DUPLICATE_q\;
\d|ALT_INV_bXcount[2]~DUPLICATE_q\ <= NOT \d|bXcount[2]~DUPLICATE_q\;
\d|ALT_INV_bXcount[3]~DUPLICATE_q\ <= NOT \d|bXcount[3]~DUPLICATE_q\;
\VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b[0]~DUPLICATE_q\ <= NOT \VGA|VideoMemory|auto_generated|out_address_reg_b[0]~DUPLICATE_q\;
\VGA|controller|ALT_INV_xCounter[7]~DUPLICATE_q\ <= NOT \VGA|controller|xCounter[7]~DUPLICATE_q\;
\d|ALT_INV_clearYcount[1]~DUPLICATE_q\ <= NOT \d|clearYcount[1]~DUPLICATE_q\;
\d|ALT_INV_clearYcount[2]~DUPLICATE_q\ <= NOT \d|clearYcount[2]~DUPLICATE_q\;
\d|ALT_INV_clearYcount[6]~DUPLICATE_q\ <= NOT \d|clearYcount[6]~DUPLICATE_q\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\VGA|controller|ALT_INV_always1~2_combout\ <= NOT \VGA|controller|always1~2_combout\;
\VGA|controller|ALT_INV_always1~1_combout\ <= NOT \VGA|controller|always1~1_combout\;
\s|ALT_INV_LessThan0~1_combout\ <= NOT \s|LessThan0~1_combout\;
\s|ALT_INV_Equal0~7_combout\ <= NOT \s|Equal0~7_combout\;
\s|ALT_INV_LessThan0~0_combout\ <= NOT \s|LessThan0~0_combout\;
\s|ALT_INV_Equal0~6_combout\ <= NOT \s|Equal0~6_combout\;
\s|ALT_INV_Equal0~5_combout\ <= NOT \s|Equal0~5_combout\;
\VGA|controller|ALT_INV_Equal0~1_combout\ <= NOT \VGA|controller|Equal0~1_combout\;
\VGA|controller|ALT_INV_Equal0~0_combout\ <= NOT \VGA|controller|Equal0~0_combout\;
\d|ALT_INV_Selector16~0_combout\ <= NOT \d|Selector16~0_combout\;
\d|ALT_INV_Selector17~3_combout\ <= NOT \d|Selector17~3_combout\;
\d|ALT_INV_Selector18~3_combout\ <= NOT \d|Selector18~3_combout\;
\d|ALT_INV_Selector19~1_combout\ <= NOT \d|Selector19~1_combout\;
\d|ALT_INV_Selector19~0_combout\ <= NOT \d|Selector19~0_combout\;
\d|ALT_INV_Selector20~1_combout\ <= NOT \d|Selector20~1_combout\;
\d|ALT_INV_Selector20~0_combout\ <= NOT \d|Selector20~0_combout\;
\d|ALT_INV_Selector8~1_combout\ <= NOT \d|Selector8~1_combout\;
\d|ALT_INV_Selector21~1_combout\ <= NOT \d|Selector21~1_combout\;
\d|ALT_INV_Selector21~0_combout\ <= NOT \d|Selector21~0_combout\;
\d|ALT_INV_Add7~39_combout\ <= NOT \d|Add7~39_combout\;
\d|ALT_INV_Add7~38_combout\ <= NOT \d|Add7~38_combout\;
\d|ALT_INV_Add7~37_combout\ <= NOT \d|Add7~37_combout\;
\d|ALT_INV_Add7~36_combout\ <= NOT \d|Add7~36_combout\;
\d|ALT_INV_Add7~35_combout\ <= NOT \d|Add7~35_combout\;
\d|ALT_INV_Add7~34_combout\ <= NOT \d|Add7~34_combout\;
\d|ALT_INV_Add7~33_combout\ <= NOT \d|Add7~33_combout\;
\d|ALT_INV_Add7~32_combout\ <= NOT \d|Add7~32_combout\;
\d|ALT_INV_Add7~31_combout\ <= NOT \d|Add7~31_combout\;
\d|ALT_INV_Add7~30_combout\ <= NOT \d|Add7~30_combout\;
\d|ALT_INV_Add7~29_combout\ <= NOT \d|Add7~29_combout\;
\VGA|controller|ALT_INV_always1~0_combout\ <= NOT \VGA|controller|always1~0_combout\;
\VGA|controller|ALT_INV_VGA_VS1~0_combout\ <= NOT \VGA|controller|VGA_VS1~0_combout\;
\VGA|controller|ALT_INV_VGA_HS1~0_combout\ <= NOT \VGA|controller|VGA_HS1~0_combout\;
\d|ALT_INV_Selector4~0_combout\ <= NOT \d|Selector4~0_combout\;
\d|ALT_INV_always0~3_combout\ <= NOT \d|always0~3_combout\;
\d|ALT_INV_always0~2_combout\ <= NOT \d|always0~2_combout\;
\d|ALT_INV_always0~1_combout\ <= NOT \d|always0~1_combout\;
\d|ALT_INV_LessThan6~1_combout\ <= NOT \d|LessThan6~1_combout\;
\d|ALT_INV_LessThan6~0_combout\ <= NOT \d|LessThan6~0_combout\;
\d|ALT_INV_Add0~0_combout\ <= NOT \d|Add0~0_combout\;
\s|ALT_INV_Equal0~3_combout\ <= NOT \s|Equal0~3_combout\;
\s|ALT_INV_Equal0~2_combout\ <= NOT \s|Equal0~2_combout\;
\s|ALT_INV_Equal0~1_combout\ <= NOT \s|Equal0~1_combout\;
\s|ALT_INV_Equal0~0_combout\ <= NOT \s|Equal0~0_combout\;
\d|ALT_INV_Selector11~0_combout\ <= NOT \d|Selector11~0_combout\;
\d|ALT_INV_Add7~12_combout\ <= NOT \d|Add7~12_combout\;
\VGA|ALT_INV_writeEn~3_combout\ <= NOT \VGA|writeEn~3_combout\;
\VGA|ALT_INV_writeEn~2_combout\ <= NOT \VGA|writeEn~2_combout\;
\VGA|ALT_INV_LessThan3~0_combout\ <= NOT \VGA|LessThan3~0_combout\;
\d|ALT_INV_Selector18~2_combout\ <= NOT \d|Selector18~2_combout\;
\d|ALT_INV_Selector18~1_combout\ <= NOT \d|Selector18~1_combout\;
\d|ALT_INV_Selector18~0_combout\ <= NOT \d|Selector18~0_combout\;
\d|ALT_INV_Selector17~2_combout\ <= NOT \d|Selector17~2_combout\;
\d|ALT_INV_Selector17~1_combout\ <= NOT \d|Selector17~1_combout\;
\d|ALT_INV_Selector17~0_combout\ <= NOT \d|Selector17~0_combout\;
\d|ALT_INV_Selector9~0_combout\ <= NOT \d|Selector9~0_combout\;
\d|ALT_INV_Selector8~0_combout\ <= NOT \d|Selector8~0_combout\;
\d|ALT_INV_WideNor0~0_combout\ <= NOT \d|WideNor0~0_combout\;
\VGA|ALT_INV_writeEn~1_combout\ <= NOT \VGA|writeEn~1_combout\;
\VGA|ALT_INV_writeEn~0_combout\ <= NOT \VGA|writeEn~0_combout\;
\d|ALT_INV_presentState.RESET_S~q\ <= NOT \d|presentState.RESET_S~q\;
\VGA|controller|ALT_INV_VGA_BLANK1~q\ <= NOT \VGA|controller|VGA_BLANK1~q\;
\VGA|controller|ALT_INV_VGA_VS1~q\ <= NOT \VGA|controller|VGA_VS1~q\;
\d|ALT_INV_Selector3~0_combout\ <= NOT \d|Selector3~0_combout\;
\d|ALT_INV_pYcount\(1) <= NOT \d|pYcount\(1);
\d|ALT_INV_pYcount\(0) <= NOT \d|pYcount\(0);
\d|ALT_INV_pYcount\(2) <= NOT \d|pYcount\(2);
\d|ALT_INV_pXcount\(1) <= NOT \d|pXcount\(1);
\d|ALT_INV_pXcount\(0) <= NOT \d|pXcount\(0);
\d|ALT_INV_Selector2~0_combout\ <= NOT \d|Selector2~0_combout\;
\d|ALT_INV_Selector6~0_combout\ <= NOT \d|Selector6~0_combout\;
\d|ALT_INV_Selector1~0_combout\ <= NOT \d|Selector1~0_combout\;
\d|ALT_INV_select\(3) <= NOT \d|select\(3);
\d|ALT_INV_select\(2) <= NOT \d|select\(2);
\d|ALT_INV_select\(0) <= NOT \d|select\(0);
\d|ALT_INV_select\(1) <= NOT \d|select\(1);
\d|ALT_INV_always0~0_combout\ <= NOT \d|always0~0_combout\;
\d|ALT_INV_bYcount\(2) <= NOT \d|bYcount\(2);
\d|ALT_INV_bYcount\(1) <= NOT \d|bYcount\(1);
\d|ALT_INV_bYcount\(0) <= NOT \d|bYcount\(0);
\d|ALT_INV_bYcount\(3) <= NOT \d|bYcount\(3);
\d|ALT_INV_LessThan4~0_combout\ <= NOT \d|LessThan4~0_combout\;
\d|ALT_INV_bXcount\(2) <= NOT \d|bXcount\(2);
\d|ALT_INV_bXcount\(1) <= NOT \d|bXcount\(1);
\d|ALT_INV_bXcount\(0) <= NOT \d|bXcount\(0);
\d|ALT_INV_bXcount\(3) <= NOT \d|bXcount\(3);
\s|ALT_INV_k~q\ <= NOT \s|k~q\;
\VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(0) <= NOT \VGA|VideoMemory|auto_generated|out_address_reg_b\(0);
\VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(1) <= NOT \VGA|VideoMemory|auto_generated|out_address_reg_b\(1);
\d|ALT_INV_cToVGA\(0) <= NOT \d|cToVGA\(0);
\bubble2one|cero|ALT_INV_f0~1_combout\ <= NOT \bubble2one|cero|f0~1_combout\;
\bubble2one|cero|ALT_INV_f5~0_combout\ <= NOT \bubble2one|cero|f5~0_combout\;
\bubble2one|cero|ALT_INV_f4~0_combout\ <= NOT \bubble2one|cero|f4~0_combout\;
\bubble2one|cero|ALT_INV_f3~0_combout\ <= NOT \bubble2one|cero|f3~0_combout\;
\bubble2one|cero|ALT_INV_f1~0_combout\ <= NOT \bubble2one|cero|f1~0_combout\;
\bubble2one|cero|ALT_INV_f0~0_combout\ <= NOT \bubble2one|cero|f0~0_combout\;
\b2|ALT_INV_xOut\(2) <= NOT \b2|xOut\(2);
\b2|ALT_INV_xOut\(1) <= NOT \b2|xOut\(1);
\b2|ALT_INV_xOut\(0) <= NOT \b2|xOut\(0);
\bubble1one|cero|ALT_INV_f0~1_combout\ <= NOT \bubble1one|cero|f0~1_combout\;
\bubble1one|cero|ALT_INV_f5~0_combout\ <= NOT \bubble1one|cero|f5~0_combout\;
\bubble1one|cero|ALT_INV_f4~0_combout\ <= NOT \bubble1one|cero|f4~0_combout\;
\bubble1one|cero|ALT_INV_f3~0_combout\ <= NOT \bubble1one|cero|f3~0_combout\;
\bubble1one|cero|ALT_INV_f1~0_combout\ <= NOT \bubble1one|cero|f1~0_combout\;
\bubble1one|cero|ALT_INV_f0~0_combout\ <= NOT \bubble1one|cero|f0~0_combout\;
\b1|ALT_INV_xOut\(2) <= NOT \b1|xOut\(2);
\b1|ALT_INV_xOut\(1) <= NOT \b1|xOut\(1);
\b1|ALT_INV_xOut\(0) <= NOT \b1|xOut\(0);
\player1one|cero|ALT_INV_f6~0_combout\ <= NOT \player1one|cero|f6~0_combout\;
\player1one|cero|ALT_INV_f5~0_combout\ <= NOT \player1one|cero|f5~0_combout\;
\player1one|cero|ALT_INV_f4~0_combout\ <= NOT \player1one|cero|f4~0_combout\;
\player1one|cero|ALT_INV_f3~0_combout\ <= NOT \player1one|cero|f3~0_combout\;
\player1one|cero|ALT_INV_f2~0_combout\ <= NOT \player1one|cero|f2~0_combout\;
\player1one|cero|ALT_INV_f1~0_combout\ <= NOT \player1one|cero|f1~0_combout\;
\player1one|cero|ALT_INV_f0~0_combout\ <= NOT \player1one|cero|f0~0_combout\;
\p1|ALT_INV_xOut\(3) <= NOT \p1|xOut\(3);
\p1|ALT_INV_xOut\(2) <= NOT \p1|xOut\(2);
\p1|ALT_INV_xOut\(1) <= NOT \p1|xOut\(1);
\p1|ALT_INV_xOut\(0) <= NOT \p1|xOut\(0);
\d|ALT_INV_Add12~21_sumout\ <= NOT \d|Add12~21_sumout\;
\d|ALT_INV_Add10~17_sumout\ <= NOT \d|Add10~17_sumout\;
\d|ALT_INV_Add8~17_sumout\ <= NOT \d|Add8~17_sumout\;
\d|ALT_INV_Add12~17_sumout\ <= NOT \d|Add12~17_sumout\;
\d|ALT_INV_Add10~13_sumout\ <= NOT \d|Add10~13_sumout\;
\d|ALT_INV_Add8~13_sumout\ <= NOT \d|Add8~13_sumout\;
\d|ALT_INV_Add12~13_sumout\ <= NOT \d|Add12~13_sumout\;
\d|ALT_INV_Add10~9_sumout\ <= NOT \d|Add10~9_sumout\;
\d|ALT_INV_Add8~9_sumout\ <= NOT \d|Add8~9_sumout\;
\VGA|controller|ALT_INV_yCounter\(2) <= NOT \VGA|controller|yCounter\(2);
\VGA|controller|ALT_INV_yCounter\(3) <= NOT \VGA|controller|yCounter\(3);
\VGA|controller|ALT_INV_yCounter\(4) <= NOT \VGA|controller|yCounter\(4);
\VGA|controller|ALT_INV_yCounter\(5) <= NOT \VGA|controller|yCounter\(5);
\VGA|controller|ALT_INV_yCounter\(6) <= NOT \VGA|controller|yCounter\(6);
\VGA|controller|ALT_INV_yCounter\(7) <= NOT \VGA|controller|yCounter\(7);
\VGA|controller|ALT_INV_yCounter\(8) <= NOT \VGA|controller|yCounter\(8);
\VGA|controller|ALT_INV_yCounter\(1) <= NOT \VGA|controller|yCounter\(1);
\VGA|controller|ALT_INV_yCounter\(0) <= NOT \VGA|controller|yCounter\(0);
\VGA|controller|ALT_INV_yCounter\(9) <= NOT \VGA|controller|yCounter\(9);
\VGA|controller|ALT_INV_xCounter\(1) <= NOT \VGA|controller|xCounter\(1);
\VGA|controller|ALT_INV_xCounter\(0) <= NOT \VGA|controller|xCounter\(0);
\VGA|controller|ALT_INV_xCounter\(7) <= NOT \VGA|controller|xCounter\(7);
\VGA|controller|ALT_INV_xCounter\(8) <= NOT \VGA|controller|xCounter\(8);
\VGA|controller|ALT_INV_xCounter\(9) <= NOT \VGA|controller|xCounter\(9);
\d|ALT_INV_clearYcount\(0) <= NOT \d|clearYcount\(0);
\d|ALT_INV_clearYcount\(1) <= NOT \d|clearYcount\(1);
\d|ALT_INV_clearYcount\(2) <= NOT \d|clearYcount\(2);
\s|ALT_INV_sysCount\(17) <= NOT \s|sysCount\(17);
\s|ALT_INV_sysCount\(16) <= NOT \s|sysCount\(16);
\s|ALT_INV_sysCount\(18) <= NOT \s|sysCount\(18);
\s|ALT_INV_sysCount\(19) <= NOT \s|sysCount\(19);
\s|ALT_INV_sysCount\(13) <= NOT \s|sysCount\(13);
\s|ALT_INV_sysCount\(12) <= NOT \s|sysCount\(12);
\s|ALT_INV_sysCount\(10) <= NOT \s|sysCount\(10);
\s|ALT_INV_sysCount\(9) <= NOT \s|sysCount\(9);
\s|ALT_INV_sysCount\(8) <= NOT \s|sysCount\(8);
\s|ALT_INV_sysCount\(7) <= NOT \s|sysCount\(7);
\s|ALT_INV_sysCount\(6) <= NOT \s|sysCount\(6);
\s|ALT_INV_sysCount\(5) <= NOT \s|sysCount\(5);
\s|ALT_INV_sysCount\(4) <= NOT \s|sysCount\(4);
\s|ALT_INV_sysCount\(15) <= NOT \s|sysCount\(15);
\s|ALT_INV_sysCount\(2) <= NOT \s|sysCount\(2);
\s|ALT_INV_sysCount\(1) <= NOT \s|sysCount\(1);
\s|ALT_INV_sysCount\(0) <= NOT \s|sysCount\(0);
\s|ALT_INV_sysCount\(11) <= NOT \s|sysCount\(11);
\s|ALT_INV_sysCount\(3) <= NOT \s|sysCount\(3);
\s|ALT_INV_sysCount\(14) <= NOT \s|sysCount\(14);
\VGA|controller|ALT_INV_xCounter\(6) <= NOT \VGA|controller|xCounter\(6);
\VGA|controller|ALT_INV_xCounter\(5) <= NOT \VGA|controller|xCounter\(5);
\VGA|controller|ALT_INV_xCounter\(4) <= NOT \VGA|controller|xCounter\(4);
\VGA|controller|ALT_INV_xCounter\(3) <= NOT \VGA|controller|xCounter\(3);
\VGA|controller|ALT_INV_xCounter\(2) <= NOT \VGA|controller|xCounter\(2);
\d|ALT_INV_Add7~26_sumout\ <= NOT \d|Add7~26_sumout\;
\d|ALT_INV_clearXcount\(4) <= NOT \d|clearXcount\(4);
\d|ALT_INV_clearXcount\(3) <= NOT \d|clearXcount\(3);
\d|ALT_INV_Add7~22_sumout\ <= NOT \d|Add7~22_sumout\;
\d|ALT_INV_clearXcount\(2) <= NOT \d|clearXcount\(2);
\d|ALT_INV_Add7~18_sumout\ <= NOT \d|Add7~18_sumout\;
\d|ALT_INV_clearXcount\(1) <= NOT \d|clearXcount\(1);
\d|ALT_INV_Add7~14_sumout\ <= NOT \d|Add7~14_sumout\;
\d|ALT_INV_clearXcount\(0) <= NOT \d|clearXcount\(0);
\d|ALT_INV_Add7~9_sumout\ <= NOT \d|Add7~9_sumout\;
\VGA|controller|controller_translator|ALT_INV_Add1~5_sumout\ <= NOT \VGA|controller|controller_translator|Add1~5_sumout\;
\VGA|controller|controller_translator|ALT_INV_Add1~1_sumout\ <= NOT \VGA|controller|controller_translator|Add1~1_sumout\;
\d|ALT_INV_Add12~9_sumout\ <= NOT \d|Add12~9_sumout\;
\d|ALT_INV_clearYcount\(5) <= NOT \d|clearYcount\(5);
\d|ALT_INV_clearYcount\(6) <= NOT \d|clearYcount\(6);
\d|ALT_INV_clearYcount\(3) <= NOT \d|clearYcount\(3);
\d|ALT_INV_Add12~5_sumout\ <= NOT \d|Add12~5_sumout\;
\d|ALT_INV_Add10~5_sumout\ <= NOT \d|Add10~5_sumout\;
\d|ALT_INV_Add8~5_sumout\ <= NOT \d|Add8~5_sumout\;
\d|ALT_INV_clearYcount\(4) <= NOT \d|clearYcount\(4);
\d|ALT_INV_Add12~1_sumout\ <= NOT \d|Add12~1_sumout\;
\d|ALT_INV_Add10~1_sumout\ <= NOT \d|Add10~1_sumout\;
\d|ALT_INV_Add8~1_sumout\ <= NOT \d|Add8~1_sumout\;
\d|ALT_INV_clearXcount\(5) <= NOT \d|clearXcount\(5);
\d|ALT_INV_Add7~5_sumout\ <= NOT \d|Add7~5_sumout\;
\d|ALT_INV_clearXcount\(6) <= NOT \d|clearXcount\(6);
\d|ALT_INV_presentState.EXIT_S~q\ <= NOT \d|presentState.EXIT_S~q\;
\d|ALT_INV_presentState.CLEAR_S~q\ <= NOT \d|presentState.CLEAR_S~q\;
\d|ALT_INV_Add7~1_sumout\ <= NOT \d|Add7~1_sumout\;
\d|ALT_INV_clearXcount\(7) <= NOT \d|clearXcount\(7);
\VGA|user_input_translator|ALT_INV_Add1~5_sumout\ <= NOT \VGA|user_input_translator|Add1~5_sumout\;
\VGA|user_input_translator|ALT_INV_Add1~1_sumout\ <= NOT \VGA|user_input_translator|Add1~1_sumout\;
\d|ALT_INV_presentState.SWITCH_S~q\ <= NOT \d|presentState.SWITCH_S~q\;
\d|ALT_INV_presentState.LOAD_S~q\ <= NOT \d|presentState.LOAD_S~q\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a0~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a0~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a3~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a3~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a6~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a6~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a1~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a1~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a4~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a4~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a8\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a8\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a7~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a7~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a2~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a2~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a5~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a5~portbdataout\;
\d|ALT_INV_presentState.DRAWP_S~q\ <= NOT \d|presentState.DRAWP_S~q\;
\d|ALT_INV_presentState.DRAWB2_S~q\ <= NOT \d|presentState.DRAWB2_S~q\;
\d|ALT_INV_presentState.DRAWB1_S~q\ <= NOT \d|presentState.DRAWB1_S~q\;

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \player1one|cero|ALT_INV_f0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \player1one|cero|ALT_INV_f1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \player1one|cero|ALT_INV_f2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \player1one|cero|ALT_INV_f3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \player1one|cero|ALT_INV_f4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \player1one|cero|ALT_INV_f5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \player1one|cero|ALT_INV_f6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X89_Y6_N39
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \player1one|cero|ALT_INV_f0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X89_Y6_N56
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \player1one|cero|ALT_INV_f1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X89_Y16_N39
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \player1one|cero|ALT_INV_f2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X89_Y16_N56
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \player1one|cero|ALT_INV_f3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X89_Y15_N39
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \player1one|cero|ALT_INV_f4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X89_Y15_N56
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \player1one|cero|ALT_INV_f5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X89_Y8_N56
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \player1one|cero|ALT_INV_f6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X89_Y9_N22
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bubble1one|cero|ALT_INV_f0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X89_Y23_N39
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bubble1one|cero|ALT_INV_f1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X89_Y23_N56
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bubble1one|cero|f2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X89_Y20_N79
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bubble1one|cero|ALT_INV_f3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X89_Y25_N39
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bubble1one|cero|ALT_INV_f4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X89_Y20_N96
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bubble1one|cero|ALT_INV_f5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X89_Y25_N56
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bubble1one|cero|ALT_INV_f0~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X89_Y16_N5
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bubble2one|cero|ALT_INV_f0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X89_Y16_N22
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bubble2one|cero|ALT_INV_f1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X89_Y4_N45
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bubble2one|cero|f2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X89_Y4_N62
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bubble2one|cero|ALT_INV_f3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X89_Y21_N39
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bubble2one|cero|ALT_INV_f4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X89_Y11_N62
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bubble2one|cero|ALT_INV_f5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X89_Y9_N5
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bubble2one|cero|ALT_INV_f0~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X89_Y20_N62
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \colourdisplay|cero|f3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X89_Y21_N56
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X89_Y25_N22
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \colourdisplay|cero|f3~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X89_Y23_N22
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \colourdisplay|cero|f3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X89_Y9_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d|cToVGA\(0),
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X89_Y23_N5
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \colourdisplay|cero|f3~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X89_Y9_N39
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d|ALT_INV_presentState.DRAWP_S~q\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X38_Y81_N36
\VGA_CLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	devoe => ww_devoe,
	o => ww_VGA_CLK);

-- Location: IOOBUF_X36_Y81_N53
\VGA_HS~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|controller|VGA_HS~q\,
	devoe => ww_devoe,
	o => ww_VGA_HS);

-- Location: IOOBUF_X34_Y81_N42
\VGA_VS~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|controller|VGA_VS~q\,
	devoe => ww_devoe,
	o => ww_VGA_VS);

-- Location: IOOBUF_X89_Y13_N5
\VGA_BLANK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|controller|VGA_BLANK~q\,
	devoe => ww_devoe,
	o => ww_VGA_BLANK);

-- Location: IOOBUF_X4_Y81_N36
\VGA_SYNC~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_VGA_SYNC);

-- Location: IOOBUF_X40_Y81_N53
\VGA_R[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[2]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(0));

-- Location: IOOBUF_X38_Y81_N2
\VGA_R[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[2]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(1));

-- Location: IOOBUF_X26_Y81_N59
\VGA_R[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[2]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(2));

-- Location: IOOBUF_X38_Y81_N19
\VGA_R[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[2]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(3));

-- Location: IOOBUF_X36_Y81_N36
\VGA_R[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[2]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(4));

-- Location: IOOBUF_X22_Y81_N19
\VGA_R[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[2]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(5));

-- Location: IOOBUF_X22_Y81_N2
\VGA_R[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[2]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(6));

-- Location: IOOBUF_X26_Y81_N42
\VGA_R[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[2]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(7));

-- Location: IOOBUF_X38_Y81_N53
\VGA_R[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[2]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(8));

-- Location: IOOBUF_X30_Y81_N19
\VGA_R[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[2]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(9));

-- Location: IOOBUF_X4_Y81_N19
\VGA_G[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(0));

-- Location: IOOBUF_X4_Y81_N2
\VGA_G[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(1));

-- Location: IOOBUF_X20_Y81_N19
\VGA_G[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(2));

-- Location: IOOBUF_X6_Y81_N2
\VGA_G[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(3));

-- Location: IOOBUF_X10_Y81_N59
\VGA_G[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(4));

-- Location: IOOBUF_X10_Y81_N42
\VGA_G[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(5));

-- Location: IOOBUF_X18_Y81_N42
\VGA_G[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(6));

-- Location: IOOBUF_X18_Y81_N59
\VGA_G[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(7));

-- Location: IOOBUF_X14_Y81_N19
\VGA_G[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(8));

-- Location: IOOBUF_X34_Y81_N76
\VGA_G[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(9));

-- Location: IOOBUF_X40_Y81_N36
\VGA_B[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(0));

-- Location: IOOBUF_X28_Y81_N19
\VGA_B[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(1));

-- Location: IOOBUF_X20_Y81_N2
\VGA_B[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(2));

-- Location: IOOBUF_X36_Y81_N19
\VGA_B[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(3));

-- Location: IOOBUF_X28_Y81_N2
\VGA_B[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(4));

-- Location: IOOBUF_X36_Y81_N2
\VGA_B[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(5));

-- Location: IOOBUF_X40_Y81_N19
\VGA_B[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(6));

-- Location: IOOBUF_X32_Y81_N19
\VGA_B[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(7));

-- Location: IOOBUF_X32_Y81_N53
\VGA_B[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(8));

-- Location: IOOBUF_X34_Y81_N93
\VGA_B[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(9));

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G5
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: MLABCELL_X72_Y10_N0
\s|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \s|Add0~13_sumout\ = SUM(( \s|sysCount\(0) ) + ( VCC ) + ( !VCC ))
-- \s|Add0~14\ = CARRY(( \s|sysCount\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \s|ALT_INV_sysCount\(0),
	cin => GND,
	sumout => \s|Add0~13_sumout\,
	cout => \s|Add0~14\);

-- Location: MLABCELL_X72_Y10_N42
\s|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \s|Add0~1_sumout\ = SUM(( \s|sysCount\(14) ) + ( GND ) + ( \s|Add0~62\ ))
-- \s|Add0~2\ = CARRY(( \s|sysCount\(14) ) + ( GND ) + ( \s|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \s|ALT_INV_sysCount\(14),
	cin => \s|Add0~62\,
	sumout => \s|Add0~1_sumout\,
	cout => \s|Add0~2\);

-- Location: MLABCELL_X72_Y10_N45
\s|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \s|Add0~25_sumout\ = SUM(( \s|sysCount\(15) ) + ( GND ) + ( \s|Add0~2\ ))
-- \s|Add0~26\ = CARRY(( \s|sysCount\(15) ) + ( GND ) + ( \s|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \s|ALT_INV_sysCount\(15),
	cin => \s|Add0~2\,
	sumout => \s|Add0~25_sumout\,
	cout => \s|Add0~26\);

-- Location: FF_X72_Y10_N46
\s|sysCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \s|Add0~25_sumout\,
	sclr => \s|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|sysCount\(15));

-- Location: MLABCELL_X72_Y10_N48
\s|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \s|Add0~73_sumout\ = SUM(( \s|sysCount\(16) ) + ( GND ) + ( \s|Add0~26\ ))
-- \s|Add0~74\ = CARRY(( \s|sysCount\(16) ) + ( GND ) + ( \s|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \s|ALT_INV_sysCount\(16),
	cin => \s|Add0~26\,
	sumout => \s|Add0~73_sumout\,
	cout => \s|Add0~74\);

-- Location: FF_X72_Y10_N50
\s|sysCount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \s|Add0~73_sumout\,
	sclr => \s|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|sysCount\(16));

-- Location: MLABCELL_X72_Y10_N51
\s|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \s|Add0~77_sumout\ = SUM(( \s|sysCount\(17) ) + ( GND ) + ( \s|Add0~74\ ))
-- \s|Add0~78\ = CARRY(( \s|sysCount\(17) ) + ( GND ) + ( \s|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \s|ALT_INV_sysCount\(17),
	cin => \s|Add0~74\,
	sumout => \s|Add0~77_sumout\,
	cout => \s|Add0~78\);

-- Location: FF_X72_Y10_N52
\s|sysCount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \s|Add0~77_sumout\,
	sclr => \s|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|sysCount\(17));

-- Location: MLABCELL_X72_Y10_N54
\s|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \s|Add0~69_sumout\ = SUM(( \s|sysCount\(18) ) + ( GND ) + ( \s|Add0~78\ ))
-- \s|Add0~70\ = CARRY(( \s|sysCount\(18) ) + ( GND ) + ( \s|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \s|ALT_INV_sysCount\(18),
	cin => \s|Add0~78\,
	sumout => \s|Add0~69_sumout\,
	cout => \s|Add0~70\);

-- Location: FF_X72_Y10_N56
\s|sysCount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \s|Add0~69_sumout\,
	sclr => \s|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|sysCount\(18));

-- Location: MLABCELL_X72_Y10_N57
\s|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \s|Add0~65_sumout\ = SUM(( \s|sysCount\(19) ) + ( GND ) + ( \s|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \s|ALT_INV_sysCount\(19),
	cin => \s|Add0~70\,
	sumout => \s|Add0~65_sumout\);

-- Location: FF_X72_Y10_N59
\s|sysCount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \s|Add0~65_sumout\,
	sclr => \s|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|sysCount\(19));

-- Location: LABCELL_X73_Y10_N0
\s|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \s|Equal0~5_combout\ = ( !\s|sysCount\(17) & ( !\s|sysCount\(16) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \s|ALT_INV_sysCount\(16),
	dataf => \s|ALT_INV_sysCount\(17),
	combout => \s|Equal0~5_combout\);

-- Location: LABCELL_X73_Y10_N3
\s|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \s|Equal0~6_combout\ = (!\s|sysCount\(7) & !\s|sysCount\(6))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s|ALT_INV_sysCount\(7),
	datac => \s|ALT_INV_sysCount\(6),
	combout => \s|Equal0~6_combout\);

-- Location: LABCELL_X73_Y10_N51
\s|Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \s|Equal0~7_combout\ = ( \s|sysCount\(10) & ( (\s|sysCount\(9) & \s|sysCount\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s|ALT_INV_sysCount\(9),
	datac => \s|ALT_INV_sysCount\(8),
	dataf => \s|ALT_INV_sysCount\(10),
	combout => \s|Equal0~7_combout\);

-- Location: LABCELL_X73_Y10_N30
\s|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s|LessThan0~0_combout\ = ( \s|sysCount\(2) & ( \s|sysCount\(3) & ( (\s|sysCount\(5) & \s|sysCount\(4)) ) ) ) # ( !\s|sysCount\(2) & ( \s|sysCount\(3) & ( (\s|sysCount\(5) & \s|sysCount\(4)) ) ) ) # ( \s|sysCount\(2) & ( !\s|sysCount\(3) & ( 
-- (\s|sysCount\(5) & (\s|sysCount\(4) & ((\s|sysCount\(0)) # (\s|sysCount\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s|ALT_INV_sysCount\(1),
	datab => \s|ALT_INV_sysCount\(5),
	datac => \s|ALT_INV_sysCount\(4),
	datad => \s|ALT_INV_sysCount\(0),
	datae => \s|ALT_INV_sysCount\(2),
	dataf => \s|ALT_INV_sysCount\(3),
	combout => \s|LessThan0~0_combout\);

-- Location: LABCELL_X73_Y10_N6
\s|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \s|LessThan0~1_combout\ = ( \s|sysCount\(13) & ( \s|sysCount\(12) & ( ((\s|Equal0~7_combout\ & ((!\s|Equal0~6_combout\) # (\s|LessThan0~0_combout\)))) # (\s|sysCount\(11)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011101100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s|ALT_INV_Equal0~6_combout\,
	datab => \s|ALT_INV_sysCount\(11),
	datac => \s|ALT_INV_Equal0~7_combout\,
	datad => \s|ALT_INV_LessThan0~0_combout\,
	datae => \s|ALT_INV_sysCount\(13),
	dataf => \s|ALT_INV_sysCount\(12),
	combout => \s|LessThan0~1_combout\);

-- Location: LABCELL_X73_Y10_N54
\s|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \s|LessThan0~2_combout\ = ( \s|sysCount\(14) & ( \s|LessThan0~1_combout\ & ( (\s|sysCount\(19) & (\s|sysCount\(18) & ((!\s|Equal0~5_combout\) # (\s|sysCount\(15))))) ) ) ) # ( !\s|sysCount\(14) & ( \s|LessThan0~1_combout\ & ( (\s|sysCount\(19) & 
-- (\s|sysCount\(18) & ((!\s|Equal0~5_combout\) # (\s|sysCount\(15))))) ) ) ) # ( \s|sysCount\(14) & ( !\s|LessThan0~1_combout\ & ( (\s|sysCount\(19) & (\s|sysCount\(18) & ((!\s|Equal0~5_combout\) # (\s|sysCount\(15))))) ) ) ) # ( !\s|sysCount\(14) & ( 
-- !\s|LessThan0~1_combout\ & ( (\s|sysCount\(19) & (!\s|Equal0~5_combout\ & \s|sysCount\(18))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000100000000010100010000000001010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s|ALT_INV_sysCount\(19),
	datab => \s|ALT_INV_sysCount\(15),
	datac => \s|ALT_INV_Equal0~5_combout\,
	datad => \s|ALT_INV_sysCount\(18),
	datae => \s|ALT_INV_sysCount\(14),
	dataf => \s|ALT_INV_LessThan0~1_combout\,
	combout => \s|LessThan0~2_combout\);

-- Location: FF_X72_Y10_N1
\s|sysCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \s|Add0~13_sumout\,
	sclr => \s|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|sysCount\(0));

-- Location: MLABCELL_X72_Y10_N3
\s|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \s|Add0~17_sumout\ = SUM(( \s|sysCount\(1) ) + ( GND ) + ( \s|Add0~14\ ))
-- \s|Add0~18\ = CARRY(( \s|sysCount\(1) ) + ( GND ) + ( \s|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \s|ALT_INV_sysCount\(1),
	cin => \s|Add0~14\,
	sumout => \s|Add0~17_sumout\,
	cout => \s|Add0~18\);

-- Location: FF_X72_Y10_N4
\s|sysCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \s|Add0~17_sumout\,
	sclr => \s|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|sysCount\(1));

-- Location: MLABCELL_X72_Y10_N6
\s|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \s|Add0~21_sumout\ = SUM(( \s|sysCount\(2) ) + ( GND ) + ( \s|Add0~18\ ))
-- \s|Add0~22\ = CARRY(( \s|sysCount\(2) ) + ( GND ) + ( \s|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \s|ALT_INV_sysCount\(2),
	cin => \s|Add0~18\,
	sumout => \s|Add0~21_sumout\,
	cout => \s|Add0~22\);

-- Location: FF_X72_Y10_N8
\s|sysCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \s|Add0~21_sumout\,
	sclr => \s|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|sysCount\(2));

-- Location: MLABCELL_X72_Y10_N9
\s|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \s|Add0~5_sumout\ = SUM(( \s|sysCount\(3) ) + ( GND ) + ( \s|Add0~22\ ))
-- \s|Add0~6\ = CARRY(( \s|sysCount\(3) ) + ( GND ) + ( \s|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \s|ALT_INV_sysCount\(3),
	cin => \s|Add0~22\,
	sumout => \s|Add0~5_sumout\,
	cout => \s|Add0~6\);

-- Location: FF_X72_Y10_N11
\s|sysCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \s|Add0~5_sumout\,
	sclr => \s|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|sysCount\(3));

-- Location: MLABCELL_X72_Y10_N12
\s|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \s|Add0~29_sumout\ = SUM(( \s|sysCount\(4) ) + ( GND ) + ( \s|Add0~6\ ))
-- \s|Add0~30\ = CARRY(( \s|sysCount\(4) ) + ( GND ) + ( \s|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \s|ALT_INV_sysCount\(4),
	cin => \s|Add0~6\,
	sumout => \s|Add0~29_sumout\,
	cout => \s|Add0~30\);

-- Location: FF_X72_Y10_N14
\s|sysCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \s|Add0~29_sumout\,
	sclr => \s|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|sysCount\(4));

-- Location: MLABCELL_X72_Y10_N15
\s|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \s|Add0~33_sumout\ = SUM(( \s|sysCount\(5) ) + ( GND ) + ( \s|Add0~30\ ))
-- \s|Add0~34\ = CARRY(( \s|sysCount\(5) ) + ( GND ) + ( \s|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \s|ALT_INV_sysCount\(5),
	cin => \s|Add0~30\,
	sumout => \s|Add0~33_sumout\,
	cout => \s|Add0~34\);

-- Location: FF_X72_Y10_N16
\s|sysCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \s|Add0~33_sumout\,
	sclr => \s|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|sysCount\(5));

-- Location: MLABCELL_X72_Y10_N18
\s|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \s|Add0~37_sumout\ = SUM(( \s|sysCount\(6) ) + ( GND ) + ( \s|Add0~34\ ))
-- \s|Add0~38\ = CARRY(( \s|sysCount\(6) ) + ( GND ) + ( \s|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \s|ALT_INV_sysCount\(6),
	cin => \s|Add0~34\,
	sumout => \s|Add0~37_sumout\,
	cout => \s|Add0~38\);

-- Location: FF_X72_Y10_N19
\s|sysCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \s|Add0~37_sumout\,
	sclr => \s|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|sysCount\(6));

-- Location: MLABCELL_X72_Y10_N21
\s|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \s|Add0~41_sumout\ = SUM(( \s|sysCount\(7) ) + ( GND ) + ( \s|Add0~38\ ))
-- \s|Add0~42\ = CARRY(( \s|sysCount\(7) ) + ( GND ) + ( \s|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \s|ALT_INV_sysCount\(7),
	cin => \s|Add0~38\,
	sumout => \s|Add0~41_sumout\,
	cout => \s|Add0~42\);

-- Location: FF_X72_Y10_N22
\s|sysCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \s|Add0~41_sumout\,
	sclr => \s|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|sysCount\(7));

-- Location: MLABCELL_X72_Y10_N24
\s|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \s|Add0~45_sumout\ = SUM(( \s|sysCount\(8) ) + ( GND ) + ( \s|Add0~42\ ))
-- \s|Add0~46\ = CARRY(( \s|sysCount\(8) ) + ( GND ) + ( \s|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \s|ALT_INV_sysCount\(8),
	cin => \s|Add0~42\,
	sumout => \s|Add0~45_sumout\,
	cout => \s|Add0~46\);

-- Location: FF_X72_Y10_N25
\s|sysCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \s|Add0~45_sumout\,
	sclr => \s|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|sysCount\(8));

-- Location: MLABCELL_X72_Y10_N27
\s|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \s|Add0~49_sumout\ = SUM(( \s|sysCount\(9) ) + ( GND ) + ( \s|Add0~46\ ))
-- \s|Add0~50\ = CARRY(( \s|sysCount\(9) ) + ( GND ) + ( \s|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \s|ALT_INV_sysCount\(9),
	cin => \s|Add0~46\,
	sumout => \s|Add0~49_sumout\,
	cout => \s|Add0~50\);

-- Location: FF_X72_Y10_N29
\s|sysCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \s|Add0~49_sumout\,
	sclr => \s|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|sysCount\(9));

-- Location: MLABCELL_X72_Y10_N30
\s|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \s|Add0~53_sumout\ = SUM(( \s|sysCount\(10) ) + ( GND ) + ( \s|Add0~50\ ))
-- \s|Add0~54\ = CARRY(( \s|sysCount\(10) ) + ( GND ) + ( \s|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \s|ALT_INV_sysCount\(10),
	cin => \s|Add0~50\,
	sumout => \s|Add0~53_sumout\,
	cout => \s|Add0~54\);

-- Location: FF_X72_Y10_N31
\s|sysCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \s|Add0~53_sumout\,
	sclr => \s|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|sysCount\(10));

-- Location: MLABCELL_X72_Y10_N33
\s|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \s|Add0~9_sumout\ = SUM(( \s|sysCount\(11) ) + ( GND ) + ( \s|Add0~54\ ))
-- \s|Add0~10\ = CARRY(( \s|sysCount\(11) ) + ( GND ) + ( \s|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \s|ALT_INV_sysCount\(11),
	cin => \s|Add0~54\,
	sumout => \s|Add0~9_sumout\,
	cout => \s|Add0~10\);

-- Location: FF_X72_Y10_N34
\s|sysCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \s|Add0~9_sumout\,
	sclr => \s|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|sysCount\(11));

-- Location: MLABCELL_X72_Y10_N36
\s|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \s|Add0~57_sumout\ = SUM(( \s|sysCount\(12) ) + ( GND ) + ( \s|Add0~10\ ))
-- \s|Add0~58\ = CARRY(( \s|sysCount\(12) ) + ( GND ) + ( \s|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \s|ALT_INV_sysCount\(12),
	cin => \s|Add0~10\,
	sumout => \s|Add0~57_sumout\,
	cout => \s|Add0~58\);

-- Location: FF_X72_Y10_N38
\s|sysCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \s|Add0~57_sumout\,
	sclr => \s|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|sysCount\(12));

-- Location: MLABCELL_X72_Y10_N39
\s|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \s|Add0~61_sumout\ = SUM(( \s|sysCount\(13) ) + ( GND ) + ( \s|Add0~58\ ))
-- \s|Add0~62\ = CARRY(( \s|sysCount\(13) ) + ( GND ) + ( \s|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \s|ALT_INV_sysCount\(13),
	cin => \s|Add0~58\,
	sumout => \s|Add0~61_sumout\,
	cout => \s|Add0~62\);

-- Location: FF_X72_Y10_N40
\s|sysCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \s|Add0~61_sumout\,
	sclr => \s|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|sysCount\(13));

-- Location: FF_X72_Y10_N44
\s|sysCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \s|Add0~1_sumout\,
	sclr => \s|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|sysCount\(14));

-- Location: LABCELL_X73_Y10_N12
\s|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \s|Equal0~2_combout\ = ( \s|sysCount\(13) & ( \s|sysCount\(10) & ( (\s|sysCount\(12) & (\s|sysCount\(8) & \s|sysCount\(9))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s|ALT_INV_sysCount\(12),
	datab => \s|ALT_INV_sysCount\(8),
	datad => \s|ALT_INV_sysCount\(9),
	datae => \s|ALT_INV_sysCount\(13),
	dataf => \s|ALT_INV_sysCount\(10),
	combout => \s|Equal0~2_combout\);

-- Location: LABCELL_X73_Y10_N24
\s|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s|Equal0~0_combout\ = ( \s|sysCount\(2) & ( !\s|sysCount\(11) & ( (\s|sysCount\(0) & (!\s|sysCount\(3) & !\s|sysCount\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s|ALT_INV_sysCount\(0),
	datab => \s|ALT_INV_sysCount\(3),
	datac => \s|ALT_INV_sysCount\(1),
	datae => \s|ALT_INV_sysCount\(2),
	dataf => \s|ALT_INV_sysCount\(11),
	combout => \s|Equal0~0_combout\);

-- Location: LABCELL_X73_Y10_N36
\s|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \s|Equal0~3_combout\ = ( \s|sysCount\(19) & ( (!\s|sysCount\(17) & (\s|sysCount\(18) & !\s|sysCount\(16))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000010000000000000000000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s|ALT_INV_sysCount\(17),
	datab => \s|ALT_INV_sysCount\(18),
	datac => \s|ALT_INV_sysCount\(16),
	datae => \s|ALT_INV_sysCount\(19),
	combout => \s|Equal0~3_combout\);

-- Location: LABCELL_X73_Y10_N45
\s|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \s|Equal0~1_combout\ = ( !\s|sysCount\(7) & ( \s|sysCount\(15) & ( (!\s|sysCount\(6) & (\s|sysCount\(5) & \s|sysCount\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s|ALT_INV_sysCount\(6),
	datab => \s|ALT_INV_sysCount\(5),
	datad => \s|ALT_INV_sysCount\(4),
	datae => \s|ALT_INV_sysCount\(7),
	dataf => \s|ALT_INV_sysCount\(15),
	combout => \s|Equal0~1_combout\);

-- Location: LABCELL_X73_Y10_N18
\s|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \s|Equal0~4_combout\ = ( \s|Equal0~3_combout\ & ( \s|Equal0~1_combout\ & ( (!\s|sysCount\(14) & (\s|Equal0~2_combout\ & \s|Equal0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s|ALT_INV_sysCount\(14),
	datab => \s|ALT_INV_Equal0~2_combout\,
	datac => \s|ALT_INV_Equal0~0_combout\,
	datae => \s|ALT_INV_Equal0~3_combout\,
	dataf => \s|ALT_INV_Equal0~1_combout\,
	combout => \s|Equal0~4_combout\);

-- Location: FF_X73_Y10_N20
\s|k\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \s|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|k~q\);

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: FF_X73_Y11_N20
\p1|xOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s|k~q\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|xOut\(3));

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X72_Y11_N23
\p1|xOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s|k~q\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|xOut\(2));

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X72_Y11_N38
\p1|xOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s|k~q\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|xOut\(0));

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X72_Y11_N29
\p1|xOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s|k~q\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|xOut\(1));

-- Location: LABCELL_X83_Y11_N27
\player1one|cero|f0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \player1one|cero|f0~0_combout\ = ( \p1|xOut\(0) & ( \p1|xOut\(1) & ( (!\p1|xOut\(3)) # (\p1|xOut\(2)) ) ) ) # ( !\p1|xOut\(0) & ( \p1|xOut\(1) ) ) # ( \p1|xOut\(0) & ( !\p1|xOut\(1) & ( !\p1|xOut\(3) $ (!\p1|xOut\(2)) ) ) ) # ( !\p1|xOut\(0) & ( 
-- !\p1|xOut\(1) & ( (!\p1|xOut\(2)) # (\p1|xOut\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101010110100101101011111111111111111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ALT_INV_xOut\(3),
	datac => \p1|ALT_INV_xOut\(2),
	datae => \p1|ALT_INV_xOut\(0),
	dataf => \p1|ALT_INV_xOut\(1),
	combout => \player1one|cero|f0~0_combout\);

-- Location: LABCELL_X83_Y11_N57
\player1one|cero|f1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \player1one|cero|f1~0_combout\ = ( \p1|xOut\(0) & ( \p1|xOut\(1) & ( !\p1|xOut\(3) ) ) ) # ( !\p1|xOut\(0) & ( \p1|xOut\(1) & ( !\p1|xOut\(2) ) ) ) # ( \p1|xOut\(0) & ( !\p1|xOut\(1) & ( (!\p1|xOut\(2)) # (\p1|xOut\(3)) ) ) ) # ( !\p1|xOut\(0) & ( 
-- !\p1|xOut\(1) & ( (!\p1|xOut\(3)) # (!\p1|xOut\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111101011111010111110000111100001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ALT_INV_xOut\(3),
	datac => \p1|ALT_INV_xOut\(2),
	datae => \p1|ALT_INV_xOut\(0),
	dataf => \p1|ALT_INV_xOut\(1),
	combout => \player1one|cero|f1~0_combout\);

-- Location: LABCELL_X83_Y11_N39
\player1one|cero|f2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \player1one|cero|f2~0_combout\ = ( \p1|xOut\(0) & ( \p1|xOut\(1) & ( (!\p1|xOut\(3)) # (!\p1|xOut\(2)) ) ) ) # ( !\p1|xOut\(0) & ( \p1|xOut\(1) & ( !\p1|xOut\(3) $ (!\p1|xOut\(2)) ) ) ) # ( \p1|xOut\(0) & ( !\p1|xOut\(1) ) ) # ( !\p1|xOut\(0) & ( 
-- !\p1|xOut\(1) & ( (!\p1|xOut\(3)) # (!\p1|xOut\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111111111111111101011010010110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ALT_INV_xOut\(3),
	datac => \p1|ALT_INV_xOut\(2),
	datae => \p1|ALT_INV_xOut\(0),
	dataf => \p1|ALT_INV_xOut\(1),
	combout => \player1one|cero|f2~0_combout\);

-- Location: LABCELL_X83_Y11_N6
\player1one|cero|f3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \player1one|cero|f3~0_combout\ = ( \p1|xOut\(0) & ( \p1|xOut\(1) & ( !\p1|xOut\(2) ) ) ) # ( !\p1|xOut\(0) & ( \p1|xOut\(1) & ( (!\p1|xOut\(3)) # (\p1|xOut\(2)) ) ) ) # ( \p1|xOut\(0) & ( !\p1|xOut\(1) & ( \p1|xOut\(2) ) ) ) # ( !\p1|xOut\(0) & ( 
-- !\p1|xOut\(1) & ( (!\p1|xOut\(2)) # (\p1|xOut\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111001100110011001111110011111100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ALT_INV_xOut\(2),
	datac => \p1|ALT_INV_xOut\(3),
	datae => \p1|ALT_INV_xOut\(0),
	dataf => \p1|ALT_INV_xOut\(1),
	combout => \player1one|cero|f3~0_combout\);

-- Location: LABCELL_X83_Y11_N12
\player1one|cero|f4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \player1one|cero|f4~0_combout\ = ( \p1|xOut\(0) & ( \p1|xOut\(1) & ( \p1|xOut\(3) ) ) ) # ( !\p1|xOut\(0) & ( \p1|xOut\(1) ) ) # ( \p1|xOut\(0) & ( !\p1|xOut\(1) & ( (\p1|xOut\(2) & \p1|xOut\(3)) ) ) ) # ( !\p1|xOut\(0) & ( !\p1|xOut\(1) & ( 
-- (!\p1|xOut\(2)) # (\p1|xOut\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111000000110000001111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ALT_INV_xOut\(2),
	datac => \p1|ALT_INV_xOut\(3),
	datae => \p1|ALT_INV_xOut\(0),
	dataf => \p1|ALT_INV_xOut\(1),
	combout => \player1one|cero|f4~0_combout\);

-- Location: LABCELL_X83_Y11_N42
\player1one|cero|f5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \player1one|cero|f5~0_combout\ = ( \p1|xOut\(0) & ( \p1|xOut\(1) & ( \p1|xOut\(3) ) ) ) # ( !\p1|xOut\(0) & ( \p1|xOut\(1) & ( (\p1|xOut\(3)) # (\p1|xOut\(2)) ) ) ) # ( \p1|xOut\(0) & ( !\p1|xOut\(1) & ( !\p1|xOut\(2) $ (!\p1|xOut\(3)) ) ) ) # ( 
-- !\p1|xOut\(0) & ( !\p1|xOut\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001111000011110000111111001111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ALT_INV_xOut\(2),
	datac => \p1|ALT_INV_xOut\(3),
	datae => \p1|ALT_INV_xOut\(0),
	dataf => \p1|ALT_INV_xOut\(1),
	combout => \player1one|cero|f5~0_combout\);

-- Location: LABCELL_X83_Y11_N3
\player1one|cero|f6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \player1one|cero|f6~0_combout\ = ( \p1|xOut\(0) & ( \p1|xOut\(1) & ( (!\p1|xOut\(2)) # (\p1|xOut\(3)) ) ) ) # ( !\p1|xOut\(0) & ( \p1|xOut\(1) ) ) # ( \p1|xOut\(0) & ( !\p1|xOut\(1) & ( (\p1|xOut\(2)) # (\p1|xOut\(3)) ) ) ) # ( !\p1|xOut\(0) & ( 
-- !\p1|xOut\(1) & ( !\p1|xOut\(3) $ (!\p1|xOut\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010111110101111111111111111111111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ALT_INV_xOut\(3),
	datac => \p1|ALT_INV_xOut\(2),
	datae => \p1|ALT_INV_xOut\(0),
	dataf => \p1|ALT_INV_xOut\(1),
	combout => \player1one|cero|f6~0_combout\);

-- Location: IOIBUF_X16_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: FF_X74_Y11_N59
\b1|xOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s|k~q\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|xOut\(1));

-- Location: IOIBUF_X4_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: FF_X73_Y11_N50
\b1|xOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s|k~q\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|xOut\(2));

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: FF_X73_Y11_N38
\b1|xOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s|k~q\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|xOut\(0));

-- Location: LABCELL_X88_Y23_N24
\bubble1one|cero|f0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bubble1one|cero|f0~0_combout\ = ( \b1|xOut\(0) & ( !\b1|xOut\(1) $ (\b1|xOut\(2)) ) ) # ( !\b1|xOut\(0) & ( (!\b1|xOut\(2)) # (\b1|xOut\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011110000111100001111110011111100111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b1|ALT_INV_xOut\(1),
	datac => \b1|ALT_INV_xOut\(2),
	datae => \b1|ALT_INV_xOut\(0),
	combout => \bubble1one|cero|f0~0_combout\);

-- Location: LABCELL_X88_Y23_N45
\bubble1one|cero|f1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bubble1one|cero|f1~0_combout\ = ( \b1|xOut\(0) & ( \b1|xOut\(2) & ( !\b1|xOut\(1) ) ) ) # ( !\b1|xOut\(0) & ( \b1|xOut\(2) & ( !\b1|xOut\(1) ) ) ) # ( \b1|xOut\(0) & ( !\b1|xOut\(2) & ( !\b1|xOut\(1) ) ) ) # ( !\b1|xOut\(0) & ( !\b1|xOut\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b1|ALT_INV_xOut\(1),
	datae => \b1|ALT_INV_xOut\(0),
	dataf => \b1|ALT_INV_xOut\(2),
	combout => \bubble1one|cero|f1~0_combout\);

-- Location: LABCELL_X88_Y23_N0
\bubble1one|cero|f2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bubble1one|cero|f2~0_combout\ = ( \b1|xOut\(0) & ( (\b1|xOut\(1) & \b1|xOut\(2)) ) ) # ( !\b1|xOut\(0) & ( (\b1|xOut\(1) & !\b1|xOut\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000110000001100110000001100000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b1|ALT_INV_xOut\(1),
	datac => \b1|ALT_INV_xOut\(2),
	datae => \b1|ALT_INV_xOut\(0),
	combout => \bubble1one|cero|f2~0_combout\);

-- Location: LABCELL_X88_Y23_N21
\bubble1one|cero|f3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bubble1one|cero|f3~0_combout\ = ( \b1|xOut\(0) & ( \b1|xOut\(2) & ( !\b1|xOut\(1) ) ) ) # ( !\b1|xOut\(0) & ( \b1|xOut\(2) & ( \b1|xOut\(1) ) ) ) # ( \b1|xOut\(0) & ( !\b1|xOut\(2) & ( \b1|xOut\(1) ) ) ) # ( !\b1|xOut\(0) & ( !\b1|xOut\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000011110000111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b1|ALT_INV_xOut\(1),
	datae => \b1|ALT_INV_xOut\(0),
	dataf => \b1|ALT_INV_xOut\(2),
	combout => \bubble1one|cero|f3~0_combout\);

-- Location: LABCELL_X88_Y23_N36
\bubble1one|cero|f4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bubble1one|cero|f4~0_combout\ = ( \b1|xOut\(0) & ( (\b1|xOut\(2)) # (\b1|xOut\(1)) ) ) # ( !\b1|xOut\(0) & ( (!\b1|xOut\(2)) # (\b1|xOut\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011001111110011111111110011111100110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b1|ALT_INV_xOut\(1),
	datac => \b1|ALT_INV_xOut\(2),
	datae => \b1|ALT_INV_xOut\(0),
	combout => \bubble1one|cero|f4~0_combout\);

-- Location: LABCELL_X88_Y23_N54
\bubble1one|cero|f5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bubble1one|cero|f5~0_combout\ = ( \b1|xOut\(0) & ( (!\b1|xOut\(2)) # (\b1|xOut\(1)) ) ) # ( !\b1|xOut\(0) & ( (!\b1|xOut\(1)) # (\b1|xOut\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111111100111111001111001111110011111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b1|ALT_INV_xOut\(1),
	datac => \b1|ALT_INV_xOut\(2),
	datae => \b1|ALT_INV_xOut\(0),
	combout => \bubble1one|cero|f5~0_combout\);

-- Location: LABCELL_X88_Y23_N51
\bubble1one|cero|f0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \bubble1one|cero|f0~1_combout\ = ( \b1|xOut\(0) & ( \b1|xOut\(2) ) ) # ( !\b1|xOut\(0) & ( \b1|xOut\(2) ) ) # ( \b1|xOut\(0) & ( !\b1|xOut\(2) ) ) # ( !\b1|xOut\(0) & ( !\b1|xOut\(2) & ( \b1|xOut\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b1|ALT_INV_xOut\(1),
	datae => \b1|ALT_INV_xOut\(0),
	dataf => \b1|ALT_INV_xOut\(2),
	combout => \bubble1one|cero|f0~1_combout\);

-- Location: IOIBUF_X2_Y0_N58
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: FF_X74_Y11_N29
\b2|xOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s|k~q\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2|xOut\(2));

-- Location: IOIBUF_X4_Y0_N18
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: FF_X74_Y11_N56
\b2|xOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s|k~q\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2|xOut\(1));

-- Location: IOIBUF_X4_Y0_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: FF_X74_Y11_N20
\b2|xOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s|k~q\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2|xOut\(0));

-- Location: LABCELL_X88_Y11_N3
\bubble2one|cero|f0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bubble2one|cero|f0~0_combout\ = ( \b2|xOut\(1) & ( \b2|xOut\(0) & ( \b2|xOut\(2) ) ) ) # ( !\b2|xOut\(1) & ( \b2|xOut\(0) & ( !\b2|xOut\(2) ) ) ) # ( \b2|xOut\(1) & ( !\b2|xOut\(0) ) ) # ( !\b2|xOut\(1) & ( !\b2|xOut\(0) & ( !\b2|xOut\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010111111111111111110101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2|ALT_INV_xOut\(2),
	datae => \b2|ALT_INV_xOut\(1),
	dataf => \b2|ALT_INV_xOut\(0),
	combout => \bubble2one|cero|f0~0_combout\);

-- Location: LABCELL_X88_Y11_N42
\bubble2one|cero|f1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bubble2one|cero|f1~0_combout\ = ( \b2|xOut\(0) & ( !\b2|xOut\(1) ) ) # ( !\b2|xOut\(0) & ( (!\b2|xOut\(1)) # (!\b2|xOut\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111111001111110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2|ALT_INV_xOut\(1),
	datac => \b2|ALT_INV_xOut\(2),
	dataf => \b2|ALT_INV_xOut\(0),
	combout => \bubble2one|cero|f1~0_combout\);

-- Location: MLABCELL_X87_Y11_N27
\bubble2one|cero|f2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bubble2one|cero|f2~0_combout\ = ( \b2|xOut\(2) & ( (\b2|xOut\(1) & \b2|xOut\(0)) ) ) # ( !\b2|xOut\(2) & ( (\b2|xOut\(1) & !\b2|xOut\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2|ALT_INV_xOut\(1),
	datac => \b2|ALT_INV_xOut\(0),
	dataf => \b2|ALT_INV_xOut\(2),
	combout => \bubble2one|cero|f2~0_combout\);

-- Location: LABCELL_X88_Y11_N24
\bubble2one|cero|f3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bubble2one|cero|f3~0_combout\ = ( \b2|xOut\(0) & ( !\b2|xOut\(1) $ (!\b2|xOut\(2)) ) ) # ( !\b2|xOut\(0) & ( (!\b2|xOut\(2)) # (\b2|xOut\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111100111111001100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2|ALT_INV_xOut\(1),
	datac => \b2|ALT_INV_xOut\(2),
	dataf => \b2|ALT_INV_xOut\(0),
	combout => \bubble2one|cero|f3~0_combout\);

-- Location: LABCELL_X88_Y11_N9
\bubble2one|cero|f4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bubble2one|cero|f4~0_combout\ = ( \b2|xOut\(1) & ( \b2|xOut\(0) ) ) # ( !\b2|xOut\(1) & ( \b2|xOut\(0) & ( \b2|xOut\(2) ) ) ) # ( \b2|xOut\(1) & ( !\b2|xOut\(0) ) ) # ( !\b2|xOut\(1) & ( !\b2|xOut\(0) & ( !\b2|xOut\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010111111111111111101010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2|ALT_INV_xOut\(2),
	datae => \b2|ALT_INV_xOut\(1),
	dataf => \b2|ALT_INV_xOut\(0),
	combout => \bubble2one|cero|f4~0_combout\);

-- Location: LABCELL_X88_Y11_N36
\bubble2one|cero|f5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bubble2one|cero|f5~0_combout\ = ( \b2|xOut\(0) & ( (!\b2|xOut\(2)) # (\b2|xOut\(1)) ) ) # ( !\b2|xOut\(0) & ( (!\b2|xOut\(1)) # (\b2|xOut\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2|ALT_INV_xOut\(1),
	datac => \b2|ALT_INV_xOut\(2),
	dataf => \b2|ALT_INV_xOut\(0),
	combout => \bubble2one|cero|f5~0_combout\);

-- Location: LABCELL_X88_Y11_N33
\bubble2one|cero|f0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \bubble2one|cero|f0~1_combout\ = ( \b2|xOut\(1) & ( \b2|xOut\(0) ) ) # ( !\b2|xOut\(1) & ( \b2|xOut\(0) ) ) # ( \b2|xOut\(1) & ( !\b2|xOut\(0) ) ) # ( !\b2|xOut\(1) & ( !\b2|xOut\(0) & ( \b2|xOut\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2|ALT_INV_xOut\(2),
	datae => \b2|ALT_INV_xOut\(1),
	dataf => \b2|ALT_INV_xOut\(0),
	combout => \bubble2one|cero|f0~1_combout\);

-- Location: IOIBUF_X36_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X71_Y12_N14
\d|presentState.RESET_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|presentState.RESET_S~q\);

-- Location: LABCELL_X77_Y11_N0
\d|Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add6~13_sumout\ = SUM(( \d|clearXcount\(0) ) + ( VCC ) + ( !VCC ))
-- \d|Add6~14\ = CARRY(( \d|clearXcount\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \d|ALT_INV_clearXcount\(0),
	cin => GND,
	sumout => \d|Add6~13_sumout\,
	cout => \d|Add6~14\);

-- Location: LABCELL_X75_Y12_N45
\d|select~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|select~2_combout\ = (\d|presentState.SWITCH_S~q\ & !\d|select\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_presentState.SWITCH_S~q\,
	datad => \d|ALT_INV_select\(0),
	combout => \d|select~2_combout\);

-- Location: LABCELL_X75_Y12_N0
\d|select[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|select[3]~1_combout\ = ( \d|presentState.LOAD_S~q\ ) # ( !\d|presentState.LOAD_S~q\ & ( (!\d|presentState.RESET_S~q\) # (\d|presentState.SWITCH_S~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \d|ALT_INV_presentState.RESET_S~q\,
	datad => \d|ALT_INV_presentState.SWITCH_S~q\,
	dataf => \d|ALT_INV_presentState.LOAD_S~q\,
	combout => \d|select[3]~1_combout\);

-- Location: FF_X75_Y12_N47
\d|select[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|select~2_combout\,
	ena => \d|select[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|select\(0));

-- Location: FF_X75_Y12_N46
\d|select[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|select~2_combout\,
	ena => \d|select[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|select[0]~DUPLICATE_q\);

-- Location: LABCELL_X75_Y12_N24
\d|select~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|select~3_combout\ = ( \d|select[0]~DUPLICATE_q\ & ( (\d|presentState.SWITCH_S~q\ & (!\d|select\(1) $ (!\d|select\(2)))) ) ) # ( !\d|select[0]~DUPLICATE_q\ & ( (\d|presentState.SWITCH_S~q\ & \d|select\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000011000011000000001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \d|ALT_INV_select\(1),
	datac => \d|ALT_INV_presentState.SWITCH_S~q\,
	datad => \d|ALT_INV_select\(2),
	dataf => \d|ALT_INV_select[0]~DUPLICATE_q\,
	combout => \d|select~3_combout\);

-- Location: FF_X75_Y12_N25
\d|select[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|select~3_combout\,
	ena => \d|select[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|select\(2));

-- Location: LABCELL_X75_Y12_N57
\d|select~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|select~4_combout\ = ( \d|select[0]~DUPLICATE_q\ & ( (\d|presentState.SWITCH_S~q\ & (!\d|select\(3) $ (((!\d|select\(2)) # (!\d|select\(1)))))) ) ) # ( !\d|select[0]~DUPLICATE_q\ & ( (\d|presentState.SWITCH_S~q\ & \d|select\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000001010101000000000101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_presentState.SWITCH_S~q\,
	datab => \d|ALT_INV_select\(2),
	datac => \d|ALT_INV_select\(1),
	datad => \d|ALT_INV_select\(3),
	dataf => \d|ALT_INV_select[0]~DUPLICATE_q\,
	combout => \d|select~4_combout\);

-- Location: FF_X75_Y12_N59
\d|select[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|select~4_combout\,
	ena => \d|select[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|select\(3));

-- Location: LABCELL_X75_Y12_N51
\d|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Selector6~0_combout\ = ( !\d|select\(2) & ( !\d|select\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \d|ALT_INV_select\(3),
	dataf => \d|ALT_INV_select\(2),
	combout => \d|Selector6~0_combout\);

-- Location: LABCELL_X74_Y12_N30
\d|Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Selector6~1_combout\ = ( \d|presentState.EXIT_S~q\ & ( \s|k~q\ & ( (\d|presentState.SWITCH_S~q\ & ((!\d|Selector6~0_combout\) # ((\d|select\(0) & \d|select\(1))))) ) ) ) # ( !\d|presentState.EXIT_S~q\ & ( \s|k~q\ & ( (\d|presentState.SWITCH_S~q\ & 
-- ((!\d|Selector6~0_combout\) # ((\d|select\(0) & \d|select\(1))))) ) ) ) # ( \d|presentState.EXIT_S~q\ & ( !\s|k~q\ ) ) # ( !\d|presentState.EXIT_S~q\ & ( !\s|k~q\ & ( (\d|presentState.SWITCH_S~q\ & ((!\d|Selector6~0_combout\) # ((\d|select\(0) & 
-- \d|select\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001101111111111111111100001100000011010000110000001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_select\(0),
	datab => \d|ALT_INV_Selector6~0_combout\,
	datac => \d|ALT_INV_presentState.SWITCH_S~q\,
	datad => \d|ALT_INV_select\(1),
	datae => \d|ALT_INV_presentState.EXIT_S~q\,
	dataf => \s|ALT_INV_k~q\,
	combout => \d|Selector6~1_combout\);

-- Location: FF_X74_Y12_N32
\d|presentState.EXIT_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|Selector6~1_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|presentState.EXIT_S~q\);

-- Location: LABCELL_X74_Y12_N12
\d|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Selector5~0_combout\ = ( \d|presentState.CLEAR_S~q\ & ( \s|k~q\ & ( (!\d|always0~3_combout\) # (\d|presentState.EXIT_S~q\) ) ) ) # ( !\d|presentState.CLEAR_S~q\ & ( \s|k~q\ & ( \d|presentState.EXIT_S~q\ ) ) ) # ( \d|presentState.CLEAR_S~q\ & ( !\s|k~q\ 
-- & ( !\d|always0~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \d|ALT_INV_always0~3_combout\,
	datad => \d|ALT_INV_presentState.EXIT_S~q\,
	datae => \d|ALT_INV_presentState.CLEAR_S~q\,
	dataf => \s|ALT_INV_k~q\,
	combout => \d|Selector5~0_combout\);

-- Location: FF_X74_Y12_N14
\d|presentState.CLEAR_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|Selector5~0_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|presentState.CLEAR_S~q\);

-- Location: LABCELL_X77_Y11_N3
\d|Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add6~17_sumout\ = SUM(( \d|clearXcount\(1) ) + ( GND ) + ( \d|Add6~14\ ))
-- \d|Add6~18\ = CARRY(( \d|clearXcount\(1) ) + ( GND ) + ( \d|Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \d|ALT_INV_clearXcount\(1),
	cin => \d|Add6~14\,
	sumout => \d|Add6~17_sumout\,
	cout => \d|Add6~18\);

-- Location: LABCELL_X77_Y11_N6
\d|Add6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add6~21_sumout\ = SUM(( \d|clearXcount\(2) ) + ( GND ) + ( \d|Add6~18\ ))
-- \d|Add6~22\ = CARRY(( \d|clearXcount\(2) ) + ( GND ) + ( \d|Add6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \d|ALT_INV_clearXcount\(2),
	cin => \d|Add6~18\,
	sumout => \d|Add6~21_sumout\,
	cout => \d|Add6~22\);

-- Location: MLABCELL_X72_Y11_N48
\d|clearXcount[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|clearXcount[0]~1_combout\ = ( \d|presentState.CLEAR_S~q\ ) # ( !\d|presentState.CLEAR_S~q\ & ( (!\d|presentState.RESET_S~q\) # (\d|presentState.SWITCH_S~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \d|ALT_INV_presentState.SWITCH_S~q\,
	datad => \d|ALT_INV_presentState.RESET_S~q\,
	dataf => \d|ALT_INV_presentState.CLEAR_S~q\,
	combout => \d|clearXcount[0]~1_combout\);

-- Location: FF_X77_Y11_N7
\d|clearXcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|Add6~21_sumout\,
	sclr => \d|clearXcount[0]~0_combout\,
	ena => \d|clearXcount[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|clearXcount\(2));

-- Location: LABCELL_X77_Y11_N9
\d|Add6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add6~25_sumout\ = SUM(( \d|clearXcount\(3) ) + ( GND ) + ( \d|Add6~22\ ))
-- \d|Add6~26\ = CARRY(( \d|clearXcount\(3) ) + ( GND ) + ( \d|Add6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \d|ALT_INV_clearXcount\(3),
	cin => \d|Add6~22\,
	sumout => \d|Add6~25_sumout\,
	cout => \d|Add6~26\);

-- Location: FF_X77_Y11_N11
\d|clearXcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|Add6~25_sumout\,
	sclr => \d|clearXcount[0]~0_combout\,
	ena => \d|clearXcount[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|clearXcount\(3));

-- Location: LABCELL_X77_Y11_N12
\d|Add6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add6~29_sumout\ = SUM(( \d|clearXcount\(4) ) + ( GND ) + ( \d|Add6~26\ ))
-- \d|Add6~30\ = CARRY(( \d|clearXcount\(4) ) + ( GND ) + ( \d|Add6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \d|ALT_INV_clearXcount\(4),
	cin => \d|Add6~26\,
	sumout => \d|Add6~29_sumout\,
	cout => \d|Add6~30\);

-- Location: FF_X77_Y11_N14
\d|clearXcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|Add6~29_sumout\,
	sclr => \d|clearXcount[0]~0_combout\,
	ena => \d|clearXcount[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|clearXcount\(4));

-- Location: LABCELL_X77_Y11_N15
\d|Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add6~9_sumout\ = SUM(( \d|clearXcount\(5) ) + ( GND ) + ( \d|Add6~30\ ))
-- \d|Add6~10\ = CARRY(( \d|clearXcount\(5) ) + ( GND ) + ( \d|Add6~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \d|ALT_INV_clearXcount\(5),
	cin => \d|Add6~30\,
	sumout => \d|Add6~9_sumout\,
	cout => \d|Add6~10\);

-- Location: FF_X77_Y11_N16
\d|clearXcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|Add6~9_sumout\,
	sclr => \d|clearXcount[0]~0_combout\,
	ena => \d|clearXcount[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|clearXcount\(5));

-- Location: LABCELL_X77_Y11_N18
\d|Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add6~5_sumout\ = SUM(( \d|clearXcount\(6) ) + ( GND ) + ( \d|Add6~10\ ))
-- \d|Add6~6\ = CARRY(( \d|clearXcount\(6) ) + ( GND ) + ( \d|Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \d|ALT_INV_clearXcount\(6),
	cin => \d|Add6~10\,
	sumout => \d|Add6~5_sumout\,
	cout => \d|Add6~6\);

-- Location: FF_X77_Y11_N19
\d|clearXcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|Add6~5_sumout\,
	sclr => \d|clearXcount[0]~0_combout\,
	ena => \d|clearXcount[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|clearXcount\(6));

-- Location: LABCELL_X77_Y11_N39
\d|LessThan6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|LessThan6~1_combout\ = ( !\d|clearXcount\(5) & ( !\d|clearXcount\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \d|ALT_INV_clearXcount\(6),
	datae => \d|ALT_INV_clearXcount\(5),
	combout => \d|LessThan6~1_combout\);

-- Location: LABCELL_X77_Y11_N21
\d|Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add6~1_sumout\ = SUM(( \d|clearXcount\(7) ) + ( GND ) + ( \d|Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \d|ALT_INV_clearXcount\(7),
	cin => \d|Add6~6\,
	sumout => \d|Add6~1_sumout\);

-- Location: FF_X77_Y11_N22
\d|clearXcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|Add6~1_sumout\,
	sclr => \d|clearXcount[0]~0_combout\,
	ena => \d|clearXcount[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|clearXcount\(7));

-- Location: LABCELL_X77_Y11_N30
\d|clearXcount[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|clearXcount[0]~0_combout\ = ( \d|LessThan6~0_combout\ & ( (!\d|presentState.CLEAR_S~q\) # (\d|clearXcount\(7)) ) ) # ( !\d|LessThan6~0_combout\ & ( (!\d|presentState.CLEAR_S~q\) # ((!\d|LessThan6~1_combout\ & \d|clearXcount\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111010101110101011111010111110101110101011101010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_presentState.CLEAR_S~q\,
	datab => \d|ALT_INV_LessThan6~1_combout\,
	datac => \d|ALT_INV_clearXcount\(7),
	datae => \d|ALT_INV_LessThan6~0_combout\,
	combout => \d|clearXcount[0]~0_combout\);

-- Location: FF_X77_Y11_N2
\d|clearXcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|Add6~13_sumout\,
	sclr => \d|clearXcount[0]~0_combout\,
	ena => \d|clearXcount[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|clearXcount\(0));

-- Location: FF_X77_Y11_N5
\d|clearXcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|Add6~17_sumout\,
	sclr => \d|clearXcount[0]~0_combout\,
	ena => \d|clearXcount[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|clearXcount\(1));

-- Location: LABCELL_X77_Y11_N54
\d|LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|LessThan6~0_combout\ = ( \d|clearXcount\(2) & ( (\d|clearXcount\(1) & (\d|clearXcount\(4) & (\d|clearXcount\(0) & \d|clearXcount\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_clearXcount\(1),
	datab => \d|ALT_INV_clearXcount\(4),
	datac => \d|ALT_INV_clearXcount\(0),
	datad => \d|ALT_INV_clearXcount\(3),
	datae => \d|ALT_INV_clearXcount\(2),
	combout => \d|LessThan6~0_combout\);

-- Location: LABCELL_X71_Y11_N0
\d|Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add5~25_sumout\ = SUM(( \d|clearYcount\(0) ) + ( VCC ) + ( !VCC ))
-- \d|Add5~26\ = CARRY(( \d|clearYcount\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \d|ALT_INV_clearYcount\(0),
	cin => GND,
	sumout => \d|Add5~25_sumout\,
	cout => \d|Add5~26\);

-- Location: LABCELL_X71_Y11_N48
\d|clearYcount[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|clearYcount[6]~0_combout\ = (!\d|clearXcount\(7)) # ((!\d|presentState.CLEAR_S~q\) # ((!\d|LessThan6~0_combout\ & \d|LessThan6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110010111111111111001011111111111100101111111111110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_LessThan6~0_combout\,
	datab => \d|ALT_INV_LessThan6~1_combout\,
	datac => \d|ALT_INV_clearXcount\(7),
	datad => \d|ALT_INV_presentState.CLEAR_S~q\,
	combout => \d|clearYcount[6]~0_combout\);

-- Location: LABCELL_X71_Y11_N54
\d|clearYcount[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|clearYcount[6]~1_combout\ = ( \d|presentState.CLEAR_S~q\ & ( \d|clearXcount\(7) & ( (!\d|presentState.RESET_S~q\) # ((!\d|LessThan6~1_combout\) # ((\d|presentState.SWITCH_S~q\) # (\d|LessThan6~0_combout\))) ) ) ) # ( !\d|presentState.CLEAR_S~q\ & ( 
-- \d|clearXcount\(7) & ( (!\d|presentState.RESET_S~q\) # (\d|presentState.SWITCH_S~q\) ) ) ) # ( \d|presentState.CLEAR_S~q\ & ( !\d|clearXcount\(7) & ( (!\d|presentState.RESET_S~q\) # (\d|presentState.SWITCH_S~q\) ) ) ) # ( !\d|presentState.CLEAR_S~q\ & ( 
-- !\d|clearXcount\(7) & ( (!\d|presentState.RESET_S~q\) # (\d|presentState.SWITCH_S~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111101010101111111110101010111111111110111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_presentState.RESET_S~q\,
	datab => \d|ALT_INV_LessThan6~1_combout\,
	datac => \d|ALT_INV_LessThan6~0_combout\,
	datad => \d|ALT_INV_presentState.SWITCH_S~q\,
	datae => \d|ALT_INV_presentState.CLEAR_S~q\,
	dataf => \d|ALT_INV_clearXcount\(7),
	combout => \d|clearYcount[6]~1_combout\);

-- Location: FF_X71_Y11_N1
\d|clearYcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|Add5~25_sumout\,
	sclr => \d|clearYcount[6]~0_combout\,
	ena => \d|clearYcount[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|clearYcount\(0));

-- Location: LABCELL_X71_Y11_N3
\d|Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add5~21_sumout\ = SUM(( \d|clearYcount\(1) ) + ( GND ) + ( \d|Add5~26\ ))
-- \d|Add5~22\ = CARRY(( \d|clearYcount\(1) ) + ( GND ) + ( \d|Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \d|ALT_INV_clearYcount\(1),
	cin => \d|Add5~26\,
	sumout => \d|Add5~21_sumout\,
	cout => \d|Add5~22\);

-- Location: FF_X71_Y11_N4
\d|clearYcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|Add5~21_sumout\,
	sclr => \d|clearYcount[6]~0_combout\,
	ena => \d|clearYcount[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|clearYcount\(1));

-- Location: LABCELL_X71_Y11_N6
\d|Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add5~17_sumout\ = SUM(( \d|clearYcount\(2) ) + ( GND ) + ( \d|Add5~22\ ))
-- \d|Add5~18\ = CARRY(( \d|clearYcount\(2) ) + ( GND ) + ( \d|Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \d|ALT_INV_clearYcount\(2),
	cin => \d|Add5~22\,
	sumout => \d|Add5~17_sumout\,
	cout => \d|Add5~18\);

-- Location: FF_X71_Y11_N7
\d|clearYcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|Add5~17_sumout\,
	sclr => \d|clearYcount[6]~0_combout\,
	ena => \d|clearYcount[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|clearYcount\(2));

-- Location: LABCELL_X71_Y11_N9
\d|Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add5~5_sumout\ = SUM(( \d|clearYcount\(3) ) + ( GND ) + ( \d|Add5~18\ ))
-- \d|Add5~6\ = CARRY(( \d|clearYcount\(3) ) + ( GND ) + ( \d|Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \d|ALT_INV_clearYcount\(3),
	cin => \d|Add5~18\,
	sumout => \d|Add5~5_sumout\,
	cout => \d|Add5~6\);

-- Location: FF_X71_Y11_N11
\d|clearYcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|Add5~5_sumout\,
	sclr => \d|clearYcount[6]~0_combout\,
	ena => \d|clearYcount[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|clearYcount\(3));

-- Location: LABCELL_X71_Y11_N12
\d|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add5~1_sumout\ = SUM(( \d|clearYcount\(4) ) + ( GND ) + ( \d|Add5~6\ ))
-- \d|Add5~2\ = CARRY(( \d|clearYcount\(4) ) + ( GND ) + ( \d|Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \d|ALT_INV_clearYcount\(4),
	cin => \d|Add5~6\,
	sumout => \d|Add5~1_sumout\,
	cout => \d|Add5~2\);

-- Location: FF_X71_Y11_N13
\d|clearYcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|Add5~1_sumout\,
	sclr => \d|clearYcount[6]~0_combout\,
	ena => \d|clearYcount[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|clearYcount\(4));

-- Location: LABCELL_X71_Y11_N15
\d|Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add5~13_sumout\ = SUM(( \d|clearYcount\(5) ) + ( GND ) + ( \d|Add5~2\ ))
-- \d|Add5~14\ = CARRY(( \d|clearYcount\(5) ) + ( GND ) + ( \d|Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \d|ALT_INV_clearYcount\(5),
	cin => \d|Add5~2\,
	sumout => \d|Add5~13_sumout\,
	cout => \d|Add5~14\);

-- Location: FF_X71_Y11_N17
\d|clearYcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|Add5~13_sumout\,
	sclr => \d|clearYcount[6]~0_combout\,
	ena => \d|clearYcount[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|clearYcount\(5));

-- Location: FF_X71_Y11_N19
\d|clearYcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|Add5~9_sumout\,
	sclr => \d|clearYcount[6]~0_combout\,
	ena => \d|clearYcount[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|clearYcount\(6));

-- Location: LABCELL_X71_Y11_N18
\d|Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add5~9_sumout\ = SUM(( \d|clearYcount\(6) ) + ( GND ) + ( \d|Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \d|ALT_INV_clearYcount\(6),
	cin => \d|Add5~14\,
	sumout => \d|Add5~9_sumout\);

-- Location: FF_X71_Y11_N20
\d|clearYcount[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|Add5~9_sumout\,
	sclr => \d|clearYcount[6]~0_combout\,
	ena => \d|clearYcount[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|clearYcount[6]~DUPLICATE_q\);

-- Location: LABCELL_X71_Y11_N42
\d|always0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|always0~2_combout\ = ( \d|clearYcount\(4) & ( (\d|clearYcount\(5) & \d|clearYcount[6]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \d|ALT_INV_clearYcount\(5),
	datac => \d|ALT_INV_clearYcount[6]~DUPLICATE_q\,
	dataf => \d|ALT_INV_clearYcount\(4),
	combout => \d|always0~2_combout\);

-- Location: FF_X71_Y11_N5
\d|clearYcount[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|Add5~21_sumout\,
	sclr => \d|clearYcount[6]~0_combout\,
	ena => \d|clearYcount[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|clearYcount[1]~DUPLICATE_q\);

-- Location: FF_X71_Y11_N8
\d|clearYcount[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|Add5~17_sumout\,
	sclr => \d|clearYcount[6]~0_combout\,
	ena => \d|clearYcount[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|clearYcount[2]~DUPLICATE_q\);

-- Location: LABCELL_X71_Y11_N45
\d|always0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|always0~1_combout\ = ( !\d|clearYcount\(3) & ( (!\d|clearYcount[1]~DUPLICATE_q\) # ((!\d|clearYcount[2]~DUPLICATE_q\) # (!\d|clearYcount\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111010111111111111101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_clearYcount[1]~DUPLICATE_q\,
	datac => \d|ALT_INV_clearYcount[2]~DUPLICATE_q\,
	datad => \d|ALT_INV_clearYcount\(0),
	dataf => \d|ALT_INV_clearYcount\(3),
	combout => \d|always0~1_combout\);

-- Location: LABCELL_X71_Y11_N51
\d|always0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|always0~3_combout\ = ( \d|clearXcount\(7) & ( (\d|always0~2_combout\ & (!\d|always0~1_combout\ & ((!\d|LessThan6~1_combout\) # (\d|LessThan6~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001101000000000000110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_LessThan6~0_combout\,
	datab => \d|ALT_INV_LessThan6~1_combout\,
	datac => \d|ALT_INV_always0~2_combout\,
	datad => \d|ALT_INV_always0~1_combout\,
	dataf => \d|ALT_INV_clearXcount\(7),
	combout => \d|always0~3_combout\);

-- Location: LABCELL_X74_Y12_N45
\d|presentState~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|presentState~14_combout\ = ( \d|always0~3_combout\ & ( \d|presentState.CLEAR_S~q\ ) ) # ( !\d|always0~3_combout\ & ( \d|presentState.CLEAR_S~q\ & ( !\d|presentState.RESET_S~q\ ) ) ) # ( \d|always0~3_combout\ & ( !\d|presentState.CLEAR_S~q\ & ( 
-- !\d|presentState.RESET_S~q\ ) ) ) # ( !\d|always0~3_combout\ & ( !\d|presentState.CLEAR_S~q\ & ( !\d|presentState.RESET_S~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \d|ALT_INV_presentState.RESET_S~q\,
	datae => \d|ALT_INV_always0~3_combout\,
	dataf => \d|ALT_INV_presentState.CLEAR_S~q\,
	combout => \d|presentState~14_combout\);

-- Location: FF_X74_Y12_N47
\d|presentState.LOAD_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|presentState~14_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|presentState.LOAD_S~q\);

-- Location: MLABCELL_X78_Y11_N18
\d|bXcount[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|bXcount[3]~1_combout\ = (((!\d|presentState.RESET_S~q\) # (\d|presentState.SWITCH_S~q\)) # (\d|presentState.DRAWB2_S~q\)) # (\d|presentState.DRAWB1_S~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101111111111111110111111111111111011111111111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_presentState.DRAWB1_S~q\,
	datab => \d|ALT_INV_presentState.DRAWB2_S~q\,
	datac => \d|ALT_INV_presentState.SWITCH_S~q\,
	datad => \d|ALT_INV_presentState.RESET_S~q\,
	combout => \d|bXcount[3]~1_combout\);

-- Location: FF_X78_Y11_N50
\d|bXcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|bXcount~4_combout\,
	ena => \d|bXcount[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|bXcount\(2));

-- Location: MLABCELL_X78_Y11_N24
\d|bXcount~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|bXcount~2_combout\ = ( !\d|bXcount\(0) & ( \d|bXcount\(1) & ( (!\d|bXcount\(3) & ((\d|presentState.DRAWB2_S~q\) # (\d|presentState.DRAWB1_S~q\))) ) ) ) # ( !\d|bXcount\(0) & ( !\d|bXcount\(1) & ( (!\d|presentState.DRAWB1_S~q\ & 
-- (\d|presentState.DRAWB2_S~q\ & ((!\d|bXcount[2]~DUPLICATE_q\) # (!\d|bXcount\(3))))) # (\d|presentState.DRAWB1_S~q\ & ((!\d|bXcount[2]~DUPLICATE_q\) # ((!\d|bXcount\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101001100000000000000000001011111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_presentState.DRAWB1_S~q\,
	datab => \d|ALT_INV_bXcount[2]~DUPLICATE_q\,
	datac => \d|ALT_INV_presentState.DRAWB2_S~q\,
	datad => \d|ALT_INV_bXcount\(3),
	datae => \d|ALT_INV_bXcount\(0),
	dataf => \d|ALT_INV_bXcount\(1),
	combout => \d|bXcount~2_combout\);

-- Location: FF_X78_Y11_N25
\d|bXcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|bXcount~2_combout\,
	ena => \d|bXcount[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|bXcount\(0));

-- Location: MLABCELL_X78_Y11_N48
\d|bXcount~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|bXcount~4_combout\ = ( \d|bXcount\(2) & ( \d|bXcount\(0) & ( (!\d|bXcount\(1) & (!\d|bXcount\(3) & ((\d|presentState.DRAWB1_S~q\) # (\d|presentState.DRAWB2_S~q\)))) ) ) ) # ( !\d|bXcount\(2) & ( \d|bXcount\(0) & ( (\d|bXcount\(1) & (!\d|bXcount\(3) & 
-- ((\d|presentState.DRAWB1_S~q\) # (\d|presentState.DRAWB2_S~q\)))) ) ) ) # ( \d|bXcount\(2) & ( !\d|bXcount\(0) & ( (!\d|bXcount\(3) & ((\d|presentState.DRAWB1_S~q\) # (\d|presentState.DRAWB2_S~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110000000000010011000000000100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_presentState.DRAWB2_S~q\,
	datab => \d|ALT_INV_bXcount\(1),
	datac => \d|ALT_INV_presentState.DRAWB1_S~q\,
	datad => \d|ALT_INV_bXcount\(3),
	datae => \d|ALT_INV_bXcount\(2),
	dataf => \d|ALT_INV_bXcount\(0),
	combout => \d|bXcount~4_combout\);

-- Location: FF_X78_Y11_N49
\d|bXcount[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|bXcount~4_combout\,
	ena => \d|bXcount[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|bXcount[2]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y11_N6
\d|bXcount~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|bXcount~0_combout\ = ( !\d|bXcount\(3) & ( \d|bXcount\(0) & ( (\d|bXcount[2]~DUPLICATE_q\ & (\d|bXcount\(1) & ((\d|presentState.DRAWB2_S~q\) # (\d|presentState.DRAWB1_S~q\)))) ) ) ) # ( \d|bXcount\(3) & ( !\d|bXcount\(0) & ( 
-- (!\d|bXcount[2]~DUPLICATE_q\ & (!\d|bXcount\(1) & ((\d|presentState.DRAWB2_S~q\) # (\d|presentState.DRAWB1_S~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010011000000000000000000000100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_presentState.DRAWB1_S~q\,
	datab => \d|ALT_INV_bXcount[2]~DUPLICATE_q\,
	datac => \d|ALT_INV_presentState.DRAWB2_S~q\,
	datad => \d|ALT_INV_bXcount\(1),
	datae => \d|ALT_INV_bXcount\(3),
	dataf => \d|ALT_INV_bXcount\(0),
	combout => \d|bXcount~0_combout\);

-- Location: FF_X78_Y11_N8
\d|bXcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|bXcount~0_combout\,
	ena => \d|bXcount[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|bXcount\(3));

-- Location: MLABCELL_X78_Y11_N21
\d|bXcount~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|bXcount~3_combout\ = ( \d|bXcount\(0) & ( (!\d|bXcount\(3) & (!\d|bXcount\(1) & ((\d|presentState.DRAWB2_S~q\) # (\d|presentState.DRAWB1_S~q\)))) ) ) # ( !\d|bXcount\(0) & ( (!\d|bXcount\(3) & (\d|bXcount\(1) & ((\d|presentState.DRAWB2_S~q\) # 
-- (\d|presentState.DRAWB1_S~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110000000000000111000001110000000000000111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_presentState.DRAWB1_S~q\,
	datab => \d|ALT_INV_presentState.DRAWB2_S~q\,
	datac => \d|ALT_INV_bXcount\(3),
	datad => \d|ALT_INV_bXcount\(1),
	dataf => \d|ALT_INV_bXcount\(0),
	combout => \d|bXcount~3_combout\);

-- Location: FF_X78_Y11_N22
\d|bXcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|bXcount~3_combout\,
	ena => \d|bXcount[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|bXcount\(1));

-- Location: MLABCELL_X78_Y11_N30
\d|LessThan4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|LessThan4~0_combout\ = ( \d|bXcount[2]~DUPLICATE_q\ & ( \d|bXcount\(3) ) ) # ( !\d|bXcount[2]~DUPLICATE_q\ & ( \d|bXcount\(3) & ( (\d|bXcount\(0)) # (\d|bXcount\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \d|ALT_INV_bXcount\(1),
	datad => \d|ALT_INV_bXcount\(0),
	datae => \d|ALT_INV_bXcount[2]~DUPLICATE_q\,
	dataf => \d|ALT_INV_bXcount\(3),
	combout => \d|LessThan4~0_combout\);

-- Location: LABCELL_X75_Y12_N54
\d|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Selector1~0_combout\ = ( !\d|select\(1) & ( (\d|presentState.SWITCH_S~q\ & (!\d|select\(2) & (!\d|select[0]~DUPLICATE_q\ & !\d|select\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_presentState.SWITCH_S~q\,
	datab => \d|ALT_INV_select\(2),
	datac => \d|ALT_INV_select[0]~DUPLICATE_q\,
	datad => \d|ALT_INV_select\(3),
	dataf => \d|ALT_INV_select\(1),
	combout => \d|Selector1~0_combout\);

-- Location: LABCELL_X75_Y12_N30
\d|bYcount[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|bYcount[1]~1_combout\ = ( \d|presentState.DRAWB2_S~q\ & ( ((!\d|presentState.RESET_S~q\) # (\d|presentState.SWITCH_S~q\)) # (\d|LessThan4~0_combout\) ) ) # ( !\d|presentState.DRAWB2_S~q\ & ( (!\d|presentState.RESET_S~q\) # 
-- (((\d|presentState.DRAWB1_S~q\ & \d|LessThan4~0_combout\)) # (\d|presentState.SWITCH_S~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000111111111111100011111111111110011111111111111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_presentState.DRAWB1_S~q\,
	datab => \d|ALT_INV_LessThan4~0_combout\,
	datac => \d|ALT_INV_presentState.RESET_S~q\,
	datad => \d|ALT_INV_presentState.SWITCH_S~q\,
	dataf => \d|ALT_INV_presentState.DRAWB2_S~q\,
	combout => \d|bYcount[1]~1_combout\);

-- Location: FF_X75_Y12_N38
\d|bYcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|bYcount~2_combout\,
	ena => \d|bYcount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|bYcount\(0));

-- Location: LABCELL_X75_Y12_N36
\d|bYcount~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|bYcount~2_combout\ = ( \d|LessThan4~0_combout\ & ( (!\d|bYcount\(0) & ((\d|presentState.DRAWB1_S~q\) # (\d|presentState.DRAWB2_S~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111111000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \d|ALT_INV_presentState.DRAWB2_S~q\,
	datac => \d|ALT_INV_presentState.DRAWB1_S~q\,
	datad => \d|ALT_INV_bYcount\(0),
	dataf => \d|ALT_INV_LessThan4~0_combout\,
	combout => \d|bYcount~2_combout\);

-- Location: FF_X75_Y12_N37
\d|bYcount[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|bYcount~2_combout\,
	ena => \d|bYcount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|bYcount[0]~DUPLICATE_q\);

-- Location: LABCELL_X75_Y12_N39
\d|bYcount~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|bYcount~3_combout\ = ( \d|bYcount[0]~DUPLICATE_q\ & ( (\d|LessThan4~0_combout\ & (!\d|bYcount\(1) & ((\d|presentState.DRAWB2_S~q\) # (\d|presentState.DRAWB1_S~q\)))) ) ) # ( !\d|bYcount[0]~DUPLICATE_q\ & ( (\d|LessThan4~0_combout\ & (\d|bYcount\(1) & 
-- ((\d|presentState.DRAWB2_S~q\) # (\d|presentState.DRAWB1_S~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111000000000000011100000111000000000000011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_presentState.DRAWB1_S~q\,
	datab => \d|ALT_INV_presentState.DRAWB2_S~q\,
	datac => \d|ALT_INV_LessThan4~0_combout\,
	datad => \d|ALT_INV_bYcount\(1),
	dataf => \d|ALT_INV_bYcount[0]~DUPLICATE_q\,
	combout => \d|bYcount~3_combout\);

-- Location: FF_X75_Y12_N41
\d|bYcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|bYcount~3_combout\,
	ena => \d|bYcount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|bYcount\(1));

-- Location: FF_X75_Y12_N20
\d|bYcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|bYcount~4_combout\,
	ena => \d|bYcount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|bYcount\(2));

-- Location: LABCELL_X75_Y12_N18
\d|bYcount~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|bYcount~4_combout\ = ( \d|bYcount\(2) & ( \d|bYcount[0]~DUPLICATE_q\ & ( (\d|LessThan4~0_combout\ & (!\d|bYcount\(1) & ((\d|presentState.DRAWB2_S~q\) # (\d|presentState.DRAWB1_S~q\)))) ) ) ) # ( !\d|bYcount\(2) & ( \d|bYcount[0]~DUPLICATE_q\ & ( 
-- (\d|LessThan4~0_combout\ & (\d|bYcount\(1) & ((\d|presentState.DRAWB2_S~q\) # (\d|presentState.DRAWB1_S~q\)))) ) ) ) # ( \d|bYcount\(2) & ( !\d|bYcount[0]~DUPLICATE_q\ & ( (\d|LessThan4~0_combout\ & ((\d|presentState.DRAWB2_S~q\) # 
-- (\d|presentState.DRAWB1_S~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001110000011100000000000001110000011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_presentState.DRAWB1_S~q\,
	datab => \d|ALT_INV_presentState.DRAWB2_S~q\,
	datac => \d|ALT_INV_LessThan4~0_combout\,
	datad => \d|ALT_INV_bYcount\(1),
	datae => \d|ALT_INV_bYcount\(2),
	dataf => \d|ALT_INV_bYcount[0]~DUPLICATE_q\,
	combout => \d|bYcount~4_combout\);

-- Location: FF_X75_Y12_N19
\d|bYcount[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|bYcount~4_combout\,
	ena => \d|bYcount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|bYcount[2]~DUPLICATE_q\);

-- Location: FF_X75_Y12_N40
\d|bYcount[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|bYcount~3_combout\,
	ena => \d|bYcount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|bYcount[1]~DUPLICATE_q\);

-- Location: LABCELL_X75_Y12_N15
\d|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add0~0_combout\ = ( \d|bYcount[1]~DUPLICATE_q\ & ( !\d|bYcount\(3) $ (((!\d|bYcount[0]~DUPLICATE_q\) # (!\d|bYcount[2]~DUPLICATE_q\))) ) ) # ( !\d|bYcount[1]~DUPLICATE_q\ & ( \d|bYcount\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010110100101010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_bYcount\(3),
	datac => \d|ALT_INV_bYcount[0]~DUPLICATE_q\,
	datad => \d|ALT_INV_bYcount[2]~DUPLICATE_q\,
	dataf => \d|ALT_INV_bYcount[1]~DUPLICATE_q\,
	combout => \d|Add0~0_combout\);

-- Location: LABCELL_X75_Y12_N33
\d|bYcount~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|bYcount~0_combout\ = ( \d|Add0~0_combout\ & ( (\d|LessThan4~0_combout\ & ((\d|presentState.DRAWB2_S~q\) # (\d|presentState.DRAWB1_S~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_presentState.DRAWB1_S~q\,
	datab => \d|ALT_INV_LessThan4~0_combout\,
	datac => \d|ALT_INV_presentState.DRAWB2_S~q\,
	dataf => \d|ALT_INV_Add0~0_combout\,
	combout => \d|bYcount~0_combout\);

-- Location: FF_X75_Y12_N35
\d|bYcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|bYcount~0_combout\,
	ena => \d|bYcount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|bYcount\(3));

-- Location: LABCELL_X75_Y12_N12
\d|always0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|always0~0_combout\ = (\d|bYcount\(3) & (((\d|bYcount\(0)) # (\d|bYcount\(2))) # (\d|bYcount\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101000101010101010100010101010101010001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_bYcount\(3),
	datab => \d|ALT_INV_bYcount\(1),
	datac => \d|ALT_INV_bYcount\(2),
	datad => \d|ALT_INV_bYcount\(0),
	combout => \d|always0~0_combout\);

-- Location: LABCELL_X75_Y12_N48
\d|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Selector1~1_combout\ = ( \d|always0~0_combout\ & ( (((!\d|LessThan4~0_combout\ & \d|presentState.DRAWB1_S~q\)) # (\d|Selector1~0_combout\)) # (\d|presentState.LOAD_S~q\) ) ) # ( !\d|always0~0_combout\ & ( ((\d|presentState.DRAWB1_S~q\) # 
-- (\d|Selector1~0_combout\)) # (\d|presentState.LOAD_S~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111010111111111111101011111110111110101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_presentState.LOAD_S~q\,
	datab => \d|ALT_INV_LessThan4~0_combout\,
	datac => \d|ALT_INV_Selector1~0_combout\,
	datad => \d|ALT_INV_presentState.DRAWB1_S~q\,
	dataf => \d|ALT_INV_always0~0_combout\,
	combout => \d|Selector1~1_combout\);

-- Location: FF_X75_Y12_N50
\d|presentState.DRAWB1_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|Selector1~1_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|presentState.DRAWB1_S~q\);

-- Location: MLABCELL_X78_Y11_N45
\d|cToVGA[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|cToVGA\(0) = ( \d|presentState.DRAWB2_S~q\ & ( \d|presentState.DRAWB1_S~q\ ) ) # ( !\d|presentState.DRAWB2_S~q\ & ( \d|presentState.DRAWB1_S~q\ ) ) # ( \d|presentState.DRAWB2_S~q\ & ( !\d|presentState.DRAWB1_S~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \d|ALT_INV_presentState.DRAWB2_S~q\,
	dataf => \d|ALT_INV_presentState.DRAWB1_S~q\,
	combout => \d|cToVGA\(0));

-- Location: LABCELL_X74_Y12_N39
\d|pXcount~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|pXcount~0_combout\ = ( \d|presentState.DRAWP_S~q\ & ( !\d|pXcount\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \d|ALT_INV_pXcount\(0),
	dataf => \d|ALT_INV_presentState.DRAWP_S~q\,
	combout => \d|pXcount~0_combout\);

-- Location: LABCELL_X74_Y12_N3
\d|pXcount[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|pXcount[1]~1_combout\ = ((!\d|presentState.RESET_S~q\) # (\d|presentState.SWITCH_S~q\)) # (\d|presentState.DRAWP_S~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111111111111101011111111111110101111111111111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_presentState.DRAWP_S~q\,
	datac => \d|ALT_INV_presentState.RESET_S~q\,
	datad => \d|ALT_INV_presentState.SWITCH_S~q\,
	combout => \d|pXcount[1]~1_combout\);

-- Location: FF_X74_Y12_N41
\d|pXcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|pXcount~0_combout\,
	ena => \d|pXcount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|pXcount\(0));

-- Location: FF_X74_Y12_N40
\d|pXcount[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|pXcount~0_combout\,
	ena => \d|pXcount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|pXcount[0]~DUPLICATE_q\);

-- Location: LABCELL_X74_Y12_N0
\d|pYcount~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|pYcount~2_combout\ = ( \d|pXcount[0]~DUPLICATE_q\ & ( (\d|presentState.DRAWP_S~q\ & (\d|pXcount\(1) & !\d|pYcount\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_presentState.DRAWP_S~q\,
	datac => \d|ALT_INV_pXcount\(1),
	datad => \d|ALT_INV_pYcount\(0),
	dataf => \d|ALT_INV_pXcount[0]~DUPLICATE_q\,
	combout => \d|pYcount~2_combout\);

-- Location: LABCELL_X74_Y12_N21
\d|pYcount[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|pYcount[2]~1_combout\ = ( \d|presentState.SWITCH_S~q\ & ( \d|presentState.DRAWP_S~q\ ) ) # ( !\d|presentState.SWITCH_S~q\ & ( \d|presentState.DRAWP_S~q\ & ( (\d|pXcount\(1) & \d|pXcount\(0)) ) ) ) # ( \d|presentState.SWITCH_S~q\ & ( 
-- !\d|presentState.DRAWP_S~q\ ) ) # ( !\d|presentState.SWITCH_S~q\ & ( !\d|presentState.DRAWP_S~q\ & ( !\d|presentState.RESET_S~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111111111111111100010001000100011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_pXcount\(1),
	datab => \d|ALT_INV_pXcount\(0),
	datac => \d|ALT_INV_presentState.RESET_S~q\,
	datae => \d|ALT_INV_presentState.SWITCH_S~q\,
	dataf => \d|ALT_INV_presentState.DRAWP_S~q\,
	combout => \d|pYcount[2]~1_combout\);

-- Location: FF_X74_Y12_N1
\d|pYcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|pYcount~2_combout\,
	ena => \d|pYcount[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|pYcount\(0));

-- Location: FF_X74_Y12_N11
\d|pYcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|pYcount~3_combout\,
	ena => \d|pYcount[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|pYcount\(1));

-- Location: LABCELL_X74_Y12_N54
\d|pYcount~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|pYcount~0_combout\ = ( \d|pYcount\(2) & ( \d|pXcount\(1) & ( (\d|presentState.DRAWP_S~q\ & (\d|pXcount\(0) & ((!\d|pYcount\(0)) # (!\d|pYcount\(1))))) ) ) ) # ( !\d|pYcount\(2) & ( \d|pXcount\(1) & ( (\d|pYcount\(0) & (\d|pYcount\(1) & 
-- (\d|presentState.DRAWP_S~q\ & \d|pXcount\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_pYcount\(0),
	datab => \d|ALT_INV_pYcount\(1),
	datac => \d|ALT_INV_presentState.DRAWP_S~q\,
	datad => \d|ALT_INV_pXcount\(0),
	datae => \d|ALT_INV_pYcount\(2),
	dataf => \d|ALT_INV_pXcount\(1),
	combout => \d|pYcount~0_combout\);

-- Location: FF_X74_Y12_N55
\d|pYcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|pYcount~0_combout\,
	ena => \d|pYcount[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|pYcount\(2));

-- Location: LABCELL_X74_Y12_N6
\d|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Selector3~0_combout\ = ( \d|pYcount\(0) & ( (\d|pXcount\(1) & (\d|pXcount\(0) & ((\d|pYcount\(2)) # (\d|pYcount[1]~DUPLICATE_q\)))) ) ) # ( !\d|pYcount\(0) & ( (\d|pXcount\(1) & (\d|pXcount\(0) & \d|pYcount\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000001000100010000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_pXcount\(1),
	datab => \d|ALT_INV_pXcount\(0),
	datac => \d|ALT_INV_pYcount[1]~DUPLICATE_q\,
	datad => \d|ALT_INV_pYcount\(2),
	dataf => \d|ALT_INV_pYcount\(0),
	combout => \d|Selector3~0_combout\);

-- Location: FF_X75_Y12_N43
\d|select[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|select~0_combout\,
	ena => \d|select[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|select[1]~DUPLICATE_q\);

-- Location: LABCELL_X74_Y12_N24
\d|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Selector3~1_combout\ = ( \d|presentState.DRAWP_S~q\ & ( \d|select[1]~DUPLICATE_q\ & ( (!\d|Selector3~0_combout\) # ((!\d|select\(0) & (\d|presentState.SWITCH_S~q\ & \d|Selector6~0_combout\))) ) ) ) # ( !\d|presentState.DRAWP_S~q\ & ( 
-- \d|select[1]~DUPLICATE_q\ & ( (!\d|select\(0) & (\d|presentState.SWITCH_S~q\ & \d|Selector6~0_combout\)) ) ) ) # ( \d|presentState.DRAWP_S~q\ & ( !\d|select[1]~DUPLICATE_q\ & ( !\d|Selector3~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000010101100110011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_select\(0),
	datab => \d|ALT_INV_Selector3~0_combout\,
	datac => \d|ALT_INV_presentState.SWITCH_S~q\,
	datad => \d|ALT_INV_Selector6~0_combout\,
	datae => \d|ALT_INV_presentState.DRAWP_S~q\,
	dataf => \d|ALT_INV_select[1]~DUPLICATE_q\,
	combout => \d|Selector3~1_combout\);

-- Location: FF_X74_Y12_N26
\d|presentState.DRAWP_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|Selector3~1_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|presentState.DRAWP_S~q\);

-- Location: LABCELL_X74_Y12_N36
\d|pXcount~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|pXcount~2_combout\ = ( \d|pXcount[0]~DUPLICATE_q\ & ( (\d|presentState.DRAWP_S~q\ & !\d|pXcount\(1)) ) ) # ( !\d|pXcount[0]~DUPLICATE_q\ & ( (\d|presentState.DRAWP_S~q\ & \d|pXcount\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \d|ALT_INV_presentState.DRAWP_S~q\,
	datad => \d|ALT_INV_pXcount\(1),
	dataf => \d|ALT_INV_pXcount[0]~DUPLICATE_q\,
	combout => \d|pXcount~2_combout\);

-- Location: FF_X74_Y12_N38
\d|pXcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|pXcount~2_combout\,
	ena => \d|pXcount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|pXcount\(1));

-- Location: LABCELL_X74_Y12_N9
\d|pYcount~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|pYcount~3_combout\ = ( \d|presentState.DRAWP_S~q\ & ( (\d|pXcount\(1) & (\d|pXcount\(0) & (!\d|pYcount\(0) $ (!\d|pYcount\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000100000000000100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_pXcount\(1),
	datab => \d|ALT_INV_pXcount\(0),
	datac => \d|ALT_INV_pYcount\(0),
	datad => \d|ALT_INV_pYcount\(1),
	dataf => \d|ALT_INV_presentState.DRAWP_S~q\,
	combout => \d|pYcount~3_combout\);

-- Location: FF_X74_Y12_N10
\d|pYcount[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|pYcount~3_combout\,
	ena => \d|pYcount[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|pYcount[1]~DUPLICATE_q\);

-- Location: LABCELL_X74_Y12_N48
\d|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Selector4~0_combout\ = ( \d|pYcount\(0) & ( \d|presentState.DRAWP_S~q\ & ( (\d|pXcount\(1) & (\d|pXcount\(0) & ((\d|pYcount\(2)) # (\d|pYcount[1]~DUPLICATE_q\)))) ) ) ) # ( !\d|pYcount\(0) & ( \d|presentState.DRAWP_S~q\ & ( (\d|pYcount\(2) & 
-- (\d|pXcount\(1) & \d|pXcount\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_pYcount[1]~DUPLICATE_q\,
	datab => \d|ALT_INV_pYcount\(2),
	datac => \d|ALT_INV_pXcount\(1),
	datad => \d|ALT_INV_pXcount\(0),
	datae => \d|ALT_INV_pYcount\(0),
	dataf => \d|ALT_INV_presentState.DRAWP_S~q\,
	combout => \d|Selector4~0_combout\);

-- Location: LABCELL_X75_Y12_N3
\d|Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Selector4~1_combout\ = ( \d|always0~0_combout\ & ( ((\d|cToVGA\(0) & \d|LessThan4~0_combout\)) # (\d|Selector4~0_combout\) ) ) # ( !\d|always0~0_combout\ & ( \d|Selector4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \d|ALT_INV_cToVGA\(0),
	datac => \d|ALT_INV_LessThan4~0_combout\,
	datad => \d|ALT_INV_Selector4~0_combout\,
	dataf => \d|ALT_INV_always0~0_combout\,
	combout => \d|Selector4~1_combout\);

-- Location: FF_X75_Y12_N5
\d|presentState.SWITCH_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|Selector4~1_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|presentState.SWITCH_S~q\);

-- Location: LABCELL_X75_Y12_N42
\d|select~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|select~0_combout\ = ( \d|select[0]~DUPLICATE_q\ & ( (\d|presentState.SWITCH_S~q\ & !\d|select\(1)) ) ) # ( !\d|select[0]~DUPLICATE_q\ & ( (\d|presentState.SWITCH_S~q\ & \d|select\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \d|ALT_INV_presentState.SWITCH_S~q\,
	datad => \d|ALT_INV_select\(1),
	dataf => \d|ALT_INV_select[0]~DUPLICATE_q\,
	combout => \d|select~0_combout\);

-- Location: FF_X75_Y12_N44
\d|select[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|select~0_combout\,
	ena => \d|select[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|select\(1));

-- Location: LABCELL_X75_Y12_N27
\d|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Selector2~0_combout\ = ( \d|select[0]~DUPLICATE_q\ & ( !\d|select\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \d|ALT_INV_select\(1),
	dataf => \d|ALT_INV_select[0]~DUPLICATE_q\,
	combout => \d|Selector2~0_combout\);

-- Location: LABCELL_X75_Y12_N6
\d|Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Selector2~1_combout\ = ( \d|presentState.DRAWB2_S~q\ & ( \d|always0~0_combout\ & ( (!\d|LessThan4~0_combout\) # ((\d|Selector2~0_combout\ & (\d|presentState.SWITCH_S~q\ & \d|Selector6~0_combout\))) ) ) ) # ( !\d|presentState.DRAWB2_S~q\ & ( 
-- \d|always0~0_combout\ & ( (\d|Selector2~0_combout\ & (\d|presentState.SWITCH_S~q\ & \d|Selector6~0_combout\)) ) ) ) # ( \d|presentState.DRAWB2_S~q\ & ( !\d|always0~0_combout\ ) ) # ( !\d|presentState.DRAWB2_S~q\ & ( !\d|always0~0_combout\ & ( 
-- (\d|Selector2~0_combout\ & (\d|presentState.SWITCH_S~q\ & \d|Selector6~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101111111111111111100000000000001011100110011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_Selector2~0_combout\,
	datab => \d|ALT_INV_LessThan4~0_combout\,
	datac => \d|ALT_INV_presentState.SWITCH_S~q\,
	datad => \d|ALT_INV_Selector6~0_combout\,
	datae => \d|ALT_INV_presentState.DRAWB2_S~q\,
	dataf => \d|ALT_INV_always0~0_combout\,
	combout => \d|Selector2~1_combout\);

-- Location: FF_X75_Y12_N8
\d|presentState.DRAWB2_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|Selector2~1_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|presentState.DRAWB2_S~q\);

-- Location: LABCELL_X79_Y12_N39
\colourdisplay|cero|f3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \colourdisplay|cero|f3~0_combout\ = ( !\d|presentState.DRAWP_S~q\ & ( \d|presentState.DRAWB1_S~q\ ) ) # ( !\d|presentState.DRAWP_S~q\ & ( !\d|presentState.DRAWB1_S~q\ & ( \d|presentState.DRAWB2_S~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \d|ALT_INV_presentState.DRAWB2_S~q\,
	datae => \d|ALT_INV_presentState.DRAWP_S~q\,
	dataf => \d|ALT_INV_presentState.DRAWB1_S~q\,
	combout => \colourdisplay|cero|f3~0_combout\);

-- Location: MLABCELL_X78_Y11_N12
\colourdisplay|cero|f3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \colourdisplay|cero|f3~1_combout\ = ( \d|presentState.DRAWP_S~q\ & ( !\d|presentState.DRAWB1_S~q\ & ( !\d|presentState.DRAWB2_S~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \d|ALT_INV_presentState.DRAWB2_S~q\,
	datae => \d|ALT_INV_presentState.DRAWP_S~q\,
	dataf => \d|ALT_INV_presentState.DRAWB1_S~q\,
	combout => \colourdisplay|cero|f3~1_combout\);

-- Location: MLABCELL_X78_Y11_N39
\colourdisplay|cero|f3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \colourdisplay|cero|f3~2_combout\ = ( \d|presentState.DRAWP_S~q\ & ( \d|presentState.DRAWB1_S~q\ ) ) # ( !\d|presentState.DRAWP_S~q\ & ( \d|presentState.DRAWB1_S~q\ ) ) # ( \d|presentState.DRAWP_S~q\ & ( !\d|presentState.DRAWB1_S~q\ ) ) # ( 
-- !\d|presentState.DRAWP_S~q\ & ( !\d|presentState.DRAWB1_S~q\ & ( \d|presentState.DRAWB2_S~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_presentState.DRAWB2_S~q\,
	datae => \d|ALT_INV_presentState.DRAWP_S~q\,
	dataf => \d|ALT_INV_presentState.DRAWB1_S~q\,
	combout => \colourdisplay|cero|f3~2_combout\);

-- Location: PLLREFCLKSELECT_X0_Y21_N0
\VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT\ : cyclonev_pll_refclk_select
-- pragma translate_off
GENERIC MAP (
	pll_auto_clk_sw_en => "false",
	pll_clk_loss_edge => "both_edges",
	pll_clk_loss_sw_en => "false",
	pll_clk_sw_dly => 0,
	pll_clkin_0_src => "clk_0",
	pll_clkin_1_src => "ref_clk1",
	pll_manu_clk_sw_en => "false",
	pll_sw_refclk_src => "clk_0")
-- pragma translate_on
PORT MAP (
	clkin => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_CLKIN_bus\,
	clkout => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_O_CLKOUT\,
	extswitchbuf => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\);

-- Location: FRACTIONALPLL_X0_Y15_N0
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL\ : cyclonev_fractional_pll
-- pragma translate_off
GENERIC MAP (
	dsm_accumulator_reset_value => 0,
	forcelock => "false",
	mimic_fbclk_type => "gclk_far",
	nreset_invert => "true",
	output_clock_frequency => "300.0 mhz",
	pll_atb => 0,
	pll_bwctrl => 4000,
	pll_cmp_buf_dly => "0 ps",
	pll_cp_comp => "true",
	pll_cp_current => 10,
	pll_ctrl_override_setting => "false",
	pll_dsm_dither => "disable",
	pll_dsm_out_sel => "disable",
	pll_dsm_reset => "false",
	pll_ecn_bypass => "false",
	pll_ecn_test_en => "false",
	pll_enable => "true",
	pll_fbclk_mux_1 => "glb",
	pll_fbclk_mux_2 => "fb_1",
	pll_fractional_carry_out => 32,
	pll_fractional_division => 1,
	pll_fractional_division_string => "'0'",
	pll_fractional_value_ready => "true",
	pll_lf_testen => "false",
	pll_lock_fltr_cfg => 25,
	pll_lock_fltr_test => "false",
	pll_m_cnt_bypass_en => "false",
	pll_m_cnt_coarse_dly => "0 ps",
	pll_m_cnt_fine_dly => "0 ps",
	pll_m_cnt_hi_div => 6,
	pll_m_cnt_in_src => "ph_mux_clk",
	pll_m_cnt_lo_div => 6,
	pll_m_cnt_odd_div_duty_en => "false",
	pll_m_cnt_ph_mux_prst => 0,
	pll_m_cnt_prst => 1,
	pll_n_cnt_bypass_en => "false",
	pll_n_cnt_coarse_dly => "0 ps",
	pll_n_cnt_fine_dly => "0 ps",
	pll_n_cnt_hi_div => 1,
	pll_n_cnt_lo_div => 1,
	pll_n_cnt_odd_div_duty_en => "false",
	pll_ref_buf_dly => "0 ps",
	pll_reg_boost => 0,
	pll_regulator_bypass => "false",
	pll_ripplecap_ctrl => 0,
	pll_slf_rst => "false",
	pll_tclk_mux_en => "false",
	pll_tclk_sel => "n_src",
	pll_test_enable => "false",
	pll_testdn_enable => "false",
	pll_testup_enable => "false",
	pll_unlock_fltr_cfg => 2,
	pll_vco_div => 2,
	pll_vco_ph0_en => "true",
	pll_vco_ph1_en => "true",
	pll_vco_ph2_en => "true",
	pll_vco_ph3_en => "true",
	pll_vco_ph4_en => "true",
	pll_vco_ph5_en => "true",
	pll_vco_ph6_en => "true",
	pll_vco_ph7_en => "true",
	pll_vctrl_test_voltage => 750,
	reference_clock_frequency => "50.0 mhz",
	vccd0g_atb => "disable",
	vccd0g_output => 0,
	vccd1g_atb => "disable",
	vccd1g_output => 0,
	vccm1g_tap => 2,
	vccr_pd => "false",
	vcodiv_override => "false",
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	coreclkfb => \VGA|mypll|altpll_component|auto_generated|fb_clkin\,
	ecnc1test => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\,
	nresync => GND,
	refclkin => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_O_CLKOUT\,
	shift => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFT\,
	shiftdonein => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFT\,
	shiften => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFTENM\,
	up => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_UP\,
	cntnen => \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_CNTNEN\,
	fbclk => \VGA|mypll|altpll_component|auto_generated|fb_clkin\,
	tclk => \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_TCLK\,
	vcoph => \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\,
	mhi => \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\);

-- Location: PLLRECONFIG_X0_Y19_N0
\VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG\ : cyclonev_pll_reconfig
-- pragma translate_off
GENERIC MAP (
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	cntnen => \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_CNTNEN\,
	mhi => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_MHI_bus\,
	shift => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFT\,
	shiftenm => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFTENM\,
	up => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_UP\,
	shiften => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_SHIFTEN_bus\);

-- Location: PLLOUTPUTCOUNTER_X0_Y20_N1
\VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER\ : cyclonev_pll_output_counter
-- pragma translate_off
GENERIC MAP (
	c_cnt_coarse_dly => "0 ps",
	c_cnt_fine_dly => "0 ps",
	c_cnt_in_src => "ph_mux_clk",
	c_cnt_ph_mux_prst => 0,
	c_cnt_prst => 1,
	cnt_fpll_src => "fpll_0",
	dprio0_cnt_bypass_en => "false",
	dprio0_cnt_hi_div => 6,
	dprio0_cnt_lo_div => 6,
	dprio0_cnt_odd_div_even_duty_en => "false",
	duty_cycle => 50,
	output_clock_frequency => "25.0 mhz",
	phase_shift => "0 ps",
  fractional_pll_index => 0,
  output_counter_index => 6)
-- pragma translate_on
PORT MAP (
	nen0 => \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_CNTNEN\,
	shift0 => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFT\,
	shiften => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIGSHIFTEN6\,
	tclk0 => \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_TCLK\,
	up0 => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_UP\,
	vco0ph => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER_VCO0PH_bus\,
	divclk => \VGA|mypll|altpll_component|auto_generated|clk\(0));

-- Location: CLKCTRL_G6
\VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \VGA|mypll|altpll_component|auto_generated|clk\(0),
	outclk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\);

-- Location: LABCELL_X73_Y12_N30
\VGA|controller|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~33_sumout\ = SUM(( \VGA|controller|xCounter\(0) ) + ( VCC ) + ( !VCC ))
-- \VGA|controller|Add0~34\ = CARRY(( \VGA|controller|xCounter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(0),
	cin => GND,
	sumout => \VGA|controller|Add0~33_sumout\,
	cout => \VGA|controller|Add0~34\);

-- Location: LABCELL_X73_Y12_N3
\VGA|controller|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Equal0~1_combout\ = ( !\VGA|controller|xCounter\(6) & ( (\VGA|controller|xCounter\(1) & (\VGA|controller|xCounter\(0) & !\VGA|controller|xCounter\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_xCounter\(1),
	datab => \VGA|controller|ALT_INV_xCounter\(0),
	datac => \VGA|controller|ALT_INV_xCounter\(5),
	dataf => \VGA|controller|ALT_INV_xCounter\(6),
	combout => \VGA|controller|Equal0~1_combout\);

-- Location: LABCELL_X73_Y12_N54
\VGA|controller|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~25_sumout\ = SUM(( \VGA|controller|xCounter\(8) ) + ( GND ) + ( \VGA|controller|Add0~30\ ))
-- \VGA|controller|Add0~26\ = CARRY(( \VGA|controller|xCounter\(8) ) + ( GND ) + ( \VGA|controller|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(8),
	cin => \VGA|controller|Add0~30\,
	sumout => \VGA|controller|Add0~25_sumout\,
	cout => \VGA|controller|Add0~26\);

-- Location: LABCELL_X73_Y12_N57
\VGA|controller|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~21_sumout\ = SUM(( \VGA|controller|xCounter\(9) ) + ( GND ) + ( \VGA|controller|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(9),
	cin => \VGA|controller|Add0~26\,
	sumout => \VGA|controller|Add0~21_sumout\);

-- Location: FF_X73_Y12_N59
\VGA|controller|xCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~21_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(9));

-- Location: FF_X73_Y12_N53
\VGA|controller|xCounter[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~29_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter[7]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y12_N21
\VGA|controller|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Equal0~0_combout\ = ( !\VGA|controller|xCounter[7]~DUPLICATE_q\ & ( (\VGA|controller|xCounter\(8) & (\VGA|controller|xCounter\(9) & (\VGA|controller|xCounter\(4) & \VGA|controller|xCounter\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_xCounter\(8),
	datab => \VGA|controller|ALT_INV_xCounter\(9),
	datac => \VGA|controller|ALT_INV_xCounter\(4),
	datad => \VGA|controller|ALT_INV_xCounter\(3),
	dataf => \VGA|controller|ALT_INV_xCounter[7]~DUPLICATE_q\,
	combout => \VGA|controller|Equal0~0_combout\);

-- Location: LABCELL_X73_Y12_N15
\VGA|controller|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Equal0~2_combout\ = (\VGA|controller|Equal0~1_combout\ & (\VGA|controller|xCounter\(2) & \VGA|controller|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_Equal0~1_combout\,
	datab => \VGA|controller|ALT_INV_xCounter\(2),
	datad => \VGA|controller|ALT_INV_Equal0~0_combout\,
	combout => \VGA|controller|Equal0~2_combout\);

-- Location: FF_X73_Y12_N32
\VGA|controller|xCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~33_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(0));

-- Location: LABCELL_X73_Y12_N33
\VGA|controller|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~37_sumout\ = SUM(( \VGA|controller|xCounter\(1) ) + ( GND ) + ( \VGA|controller|Add0~34\ ))
-- \VGA|controller|Add0~38\ = CARRY(( \VGA|controller|xCounter\(1) ) + ( GND ) + ( \VGA|controller|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(1),
	cin => \VGA|controller|Add0~34\,
	sumout => \VGA|controller|Add0~37_sumout\,
	cout => \VGA|controller|Add0~38\);

-- Location: FF_X73_Y12_N35
\VGA|controller|xCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~37_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(1));

-- Location: LABCELL_X73_Y12_N36
\VGA|controller|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~1_sumout\ = SUM(( \VGA|controller|xCounter\(2) ) + ( GND ) + ( \VGA|controller|Add0~38\ ))
-- \VGA|controller|Add0~2\ = CARRY(( \VGA|controller|xCounter\(2) ) + ( GND ) + ( \VGA|controller|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(2),
	cin => \VGA|controller|Add0~38\,
	sumout => \VGA|controller|Add0~1_sumout\,
	cout => \VGA|controller|Add0~2\);

-- Location: FF_X73_Y12_N37
\VGA|controller|xCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~1_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(2));

-- Location: LABCELL_X73_Y12_N39
\VGA|controller|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~5_sumout\ = SUM(( \VGA|controller|xCounter\(3) ) + ( GND ) + ( \VGA|controller|Add0~2\ ))
-- \VGA|controller|Add0~6\ = CARRY(( \VGA|controller|xCounter\(3) ) + ( GND ) + ( \VGA|controller|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(3),
	cin => \VGA|controller|Add0~2\,
	sumout => \VGA|controller|Add0~5_sumout\,
	cout => \VGA|controller|Add0~6\);

-- Location: FF_X73_Y12_N40
\VGA|controller|xCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~5_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(3));

-- Location: LABCELL_X73_Y12_N42
\VGA|controller|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~9_sumout\ = SUM(( \VGA|controller|xCounter\(4) ) + ( GND ) + ( \VGA|controller|Add0~6\ ))
-- \VGA|controller|Add0~10\ = CARRY(( \VGA|controller|xCounter\(4) ) + ( GND ) + ( \VGA|controller|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(4),
	cin => \VGA|controller|Add0~6\,
	sumout => \VGA|controller|Add0~9_sumout\,
	cout => \VGA|controller|Add0~10\);

-- Location: FF_X73_Y12_N44
\VGA|controller|xCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~9_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(4));

-- Location: LABCELL_X73_Y12_N45
\VGA|controller|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~13_sumout\ = SUM(( \VGA|controller|xCounter\(5) ) + ( GND ) + ( \VGA|controller|Add0~10\ ))
-- \VGA|controller|Add0~14\ = CARRY(( \VGA|controller|xCounter\(5) ) + ( GND ) + ( \VGA|controller|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(5),
	cin => \VGA|controller|Add0~10\,
	sumout => \VGA|controller|Add0~13_sumout\,
	cout => \VGA|controller|Add0~14\);

-- Location: FF_X73_Y12_N46
\VGA|controller|xCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~13_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(5));

-- Location: LABCELL_X73_Y12_N48
\VGA|controller|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~17_sumout\ = SUM(( \VGA|controller|xCounter\(6) ) + ( GND ) + ( \VGA|controller|Add0~14\ ))
-- \VGA|controller|Add0~18\ = CARRY(( \VGA|controller|xCounter\(6) ) + ( GND ) + ( \VGA|controller|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(6),
	cin => \VGA|controller|Add0~14\,
	sumout => \VGA|controller|Add0~17_sumout\,
	cout => \VGA|controller|Add0~18\);

-- Location: FF_X73_Y12_N50
\VGA|controller|xCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~17_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(6));

-- Location: LABCELL_X73_Y12_N51
\VGA|controller|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~29_sumout\ = SUM(( \VGA|controller|xCounter\(7) ) + ( GND ) + ( \VGA|controller|Add0~18\ ))
-- \VGA|controller|Add0~30\ = CARRY(( \VGA|controller|xCounter\(7) ) + ( GND ) + ( \VGA|controller|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(7),
	cin => \VGA|controller|Add0~18\,
	sumout => \VGA|controller|Add0~29_sumout\,
	cout => \VGA|controller|Add0~30\);

-- Location: FF_X73_Y12_N52
\VGA|controller|xCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~29_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(7));

-- Location: FF_X73_Y12_N56
\VGA|controller|xCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~25_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(8));

-- Location: LABCELL_X73_Y12_N0
\VGA|controller|VGA_HS1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_HS1~0_combout\ = ( \VGA|controller|xCounter\(4) & ( (((\VGA|controller|xCounter\(1) & \VGA|controller|xCounter\(0))) # (\VGA|controller|xCounter\(2))) # (\VGA|controller|xCounter\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000011111111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_xCounter\(1),
	datab => \VGA|controller|ALT_INV_xCounter\(0),
	datac => \VGA|controller|ALT_INV_xCounter\(3),
	datad => \VGA|controller|ALT_INV_xCounter\(2),
	dataf => \VGA|controller|ALT_INV_xCounter\(4),
	combout => \VGA|controller|VGA_HS1~0_combout\);

-- Location: LABCELL_X73_Y12_N24
\VGA|controller|VGA_HS1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_HS1~1_combout\ = ( \VGA|controller|xCounter\(7) & ( \VGA|controller|xCounter\(9) & ( ((!\VGA|controller|xCounter\(5) & (!\VGA|controller|xCounter\(6) & !\VGA|controller|VGA_HS1~0_combout\)) # (\VGA|controller|xCounter\(5) & 
-- (\VGA|controller|xCounter\(6) & \VGA|controller|VGA_HS1~0_combout\))) # (\VGA|controller|xCounter\(8)) ) ) ) # ( !\VGA|controller|xCounter\(7) & ( \VGA|controller|xCounter\(9) ) ) # ( \VGA|controller|xCounter\(7) & ( !\VGA|controller|xCounter\(9) ) ) # ( 
-- !\VGA|controller|xCounter\(7) & ( !\VGA|controller|xCounter\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111101010101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_xCounter\(8),
	datab => \VGA|controller|ALT_INV_xCounter\(5),
	datac => \VGA|controller|ALT_INV_xCounter\(6),
	datad => \VGA|controller|ALT_INV_VGA_HS1~0_combout\,
	datae => \VGA|controller|ALT_INV_xCounter\(7),
	dataf => \VGA|controller|ALT_INV_xCounter\(9),
	combout => \VGA|controller|VGA_HS1~1_combout\);

-- Location: FF_X73_Y12_N25
\VGA|controller|VGA_HS1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|VGA_HS1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|VGA_HS1~q\);

-- Location: FF_X45_Y69_N13
\VGA|controller|VGA_HS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	asdata => \VGA|controller|VGA_HS1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|VGA_HS~q\);

-- Location: LABCELL_X71_Y12_N30
\VGA|controller|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~5_sumout\ = SUM(( \VGA|controller|yCounter\(0) ) + ( VCC ) + ( !VCC ))
-- \VGA|controller|Add1~6\ = CARRY(( \VGA|controller|yCounter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(0),
	cin => GND,
	sumout => \VGA|controller|Add1~5_sumout\,
	cout => \VGA|controller|Add1~6\);

-- Location: MLABCELL_X72_Y12_N36
\VGA|controller|always1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|always1~1_combout\ = ( \VGA|controller|yCounter\(9) & ( (!\VGA|controller|yCounter\(5) & (!\VGA|controller|yCounter\(6) & (!\VGA|controller|yCounter\(8) & !\VGA|controller|yCounter\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_yCounter\(5),
	datab => \VGA|controller|ALT_INV_yCounter\(6),
	datac => \VGA|controller|ALT_INV_yCounter\(8),
	datad => \VGA|controller|ALT_INV_yCounter\(7),
	dataf => \VGA|controller|ALT_INV_yCounter\(9),
	combout => \VGA|controller|always1~1_combout\);

-- Location: MLABCELL_X72_Y12_N57
\VGA|controller|always1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|always1~2_combout\ = ( !\VGA|controller|yCounter\(0) & ( (\VGA|controller|yCounter\(2) & (!\VGA|controller|yCounter\(4) & (!\VGA|controller|yCounter\(1) & \VGA|controller|yCounter\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_yCounter\(2),
	datab => \VGA|controller|ALT_INV_yCounter\(4),
	datac => \VGA|controller|ALT_INV_yCounter\(1),
	datad => \VGA|controller|ALT_INV_yCounter\(3),
	dataf => \VGA|controller|ALT_INV_yCounter\(0),
	combout => \VGA|controller|always1~2_combout\);

-- Location: LABCELL_X73_Y12_N12
\VGA|controller|always1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|always1~3_combout\ = ( \VGA|controller|always1~2_combout\ & ( (\VGA|controller|Equal0~1_combout\ & (\VGA|controller|xCounter\(2) & (\VGA|controller|always1~1_combout\ & \VGA|controller|Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_Equal0~1_combout\,
	datab => \VGA|controller|ALT_INV_xCounter\(2),
	datac => \VGA|controller|ALT_INV_always1~1_combout\,
	datad => \VGA|controller|ALT_INV_Equal0~0_combout\,
	dataf => \VGA|controller|ALT_INV_always1~2_combout\,
	combout => \VGA|controller|always1~3_combout\);

-- Location: FF_X71_Y12_N31
\VGA|controller|yCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~5_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(0));

-- Location: LABCELL_X71_Y12_N33
\VGA|controller|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~9_sumout\ = SUM(( \VGA|controller|yCounter\(1) ) + ( GND ) + ( \VGA|controller|Add1~6\ ))
-- \VGA|controller|Add1~10\ = CARRY(( \VGA|controller|yCounter\(1) ) + ( GND ) + ( \VGA|controller|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(1),
	cin => \VGA|controller|Add1~6\,
	sumout => \VGA|controller|Add1~9_sumout\,
	cout => \VGA|controller|Add1~10\);

-- Location: FF_X71_Y12_N34
\VGA|controller|yCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~9_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(1));

-- Location: LABCELL_X71_Y12_N36
\VGA|controller|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~37_sumout\ = SUM(( \VGA|controller|yCounter\(2) ) + ( GND ) + ( \VGA|controller|Add1~10\ ))
-- \VGA|controller|Add1~38\ = CARRY(( \VGA|controller|yCounter\(2) ) + ( GND ) + ( \VGA|controller|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(2),
	cin => \VGA|controller|Add1~10\,
	sumout => \VGA|controller|Add1~37_sumout\,
	cout => \VGA|controller|Add1~38\);

-- Location: FF_X71_Y12_N37
\VGA|controller|yCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~37_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(2));

-- Location: LABCELL_X71_Y12_N39
\VGA|controller|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~33_sumout\ = SUM(( \VGA|controller|yCounter\(3) ) + ( GND ) + ( \VGA|controller|Add1~38\ ))
-- \VGA|controller|Add1~34\ = CARRY(( \VGA|controller|yCounter\(3) ) + ( GND ) + ( \VGA|controller|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(3),
	cin => \VGA|controller|Add1~38\,
	sumout => \VGA|controller|Add1~33_sumout\,
	cout => \VGA|controller|Add1~34\);

-- Location: FF_X71_Y12_N40
\VGA|controller|yCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~33_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(3));

-- Location: LABCELL_X71_Y12_N42
\VGA|controller|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~29_sumout\ = SUM(( \VGA|controller|yCounter\(4) ) + ( GND ) + ( \VGA|controller|Add1~34\ ))
-- \VGA|controller|Add1~30\ = CARRY(( \VGA|controller|yCounter\(4) ) + ( GND ) + ( \VGA|controller|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(4),
	cin => \VGA|controller|Add1~34\,
	sumout => \VGA|controller|Add1~29_sumout\,
	cout => \VGA|controller|Add1~30\);

-- Location: FF_X71_Y12_N43
\VGA|controller|yCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~29_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(4));

-- Location: LABCELL_X71_Y12_N45
\VGA|controller|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~25_sumout\ = SUM(( \VGA|controller|yCounter\(5) ) + ( GND ) + ( \VGA|controller|Add1~30\ ))
-- \VGA|controller|Add1~26\ = CARRY(( \VGA|controller|yCounter\(5) ) + ( GND ) + ( \VGA|controller|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(5),
	cin => \VGA|controller|Add1~30\,
	sumout => \VGA|controller|Add1~25_sumout\,
	cout => \VGA|controller|Add1~26\);

-- Location: FF_X71_Y12_N46
\VGA|controller|yCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~25_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(5));

-- Location: LABCELL_X71_Y12_N48
\VGA|controller|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~21_sumout\ = SUM(( \VGA|controller|yCounter\(6) ) + ( GND ) + ( \VGA|controller|Add1~26\ ))
-- \VGA|controller|Add1~22\ = CARRY(( \VGA|controller|yCounter\(6) ) + ( GND ) + ( \VGA|controller|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(6),
	cin => \VGA|controller|Add1~26\,
	sumout => \VGA|controller|Add1~21_sumout\,
	cout => \VGA|controller|Add1~22\);

-- Location: FF_X71_Y12_N49
\VGA|controller|yCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~21_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(6));

-- Location: LABCELL_X71_Y12_N51
\VGA|controller|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~17_sumout\ = SUM(( \VGA|controller|yCounter\(7) ) + ( GND ) + ( \VGA|controller|Add1~22\ ))
-- \VGA|controller|Add1~18\ = CARRY(( \VGA|controller|yCounter\(7) ) + ( GND ) + ( \VGA|controller|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(7),
	cin => \VGA|controller|Add1~22\,
	sumout => \VGA|controller|Add1~17_sumout\,
	cout => \VGA|controller|Add1~18\);

-- Location: FF_X71_Y12_N52
\VGA|controller|yCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~17_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(7));

-- Location: LABCELL_X71_Y12_N54
\VGA|controller|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~13_sumout\ = SUM(( \VGA|controller|yCounter\(8) ) + ( GND ) + ( \VGA|controller|Add1~18\ ))
-- \VGA|controller|Add1~14\ = CARRY(( \VGA|controller|yCounter\(8) ) + ( GND ) + ( \VGA|controller|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(8),
	cin => \VGA|controller|Add1~18\,
	sumout => \VGA|controller|Add1~13_sumout\,
	cout => \VGA|controller|Add1~14\);

-- Location: FF_X71_Y12_N55
\VGA|controller|yCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~13_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(8));

-- Location: LABCELL_X71_Y12_N57
\VGA|controller|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~1_sumout\ = SUM(( \VGA|controller|yCounter\(9) ) + ( GND ) + ( \VGA|controller|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(9),
	cin => \VGA|controller|Add1~14\,
	sumout => \VGA|controller|Add1~1_sumout\);

-- Location: FF_X71_Y12_N58
\VGA|controller|yCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~1_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(9));

-- Location: MLABCELL_X72_Y12_N54
\VGA|controller|always1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|always1~0_combout\ = ( \VGA|controller|yCounter\(3) & ( (!\VGA|controller|yCounter\(4) & \VGA|controller|yCounter\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|ALT_INV_yCounter\(4),
	datac => \VGA|controller|ALT_INV_yCounter\(2),
	dataf => \VGA|controller|ALT_INV_yCounter\(3),
	combout => \VGA|controller|always1~0_combout\);

-- Location: MLABCELL_X72_Y12_N39
\VGA|controller|VGA_VS1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_VS1~0_combout\ = ( \VGA|controller|yCounter\(8) & ( (\VGA|controller|yCounter\(5) & (\VGA|controller|yCounter\(6) & \VGA|controller|yCounter\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_yCounter\(5),
	datab => \VGA|controller|ALT_INV_yCounter\(6),
	datad => \VGA|controller|ALT_INV_yCounter\(7),
	dataf => \VGA|controller|ALT_INV_yCounter\(8),
	combout => \VGA|controller|VGA_VS1~0_combout\);

-- Location: MLABCELL_X72_Y12_N42
\VGA|controller|VGA_VS1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_VS1~1_combout\ = ( \VGA|controller|VGA_VS1~0_combout\ & ( ((!\VGA|controller|always1~0_combout\) # (!\VGA|controller|yCounter\(1) $ (\VGA|controller|yCounter\(0)))) # (\VGA|controller|yCounter\(9)) ) ) # ( 
-- !\VGA|controller|VGA_VS1~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111110101111111111111010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_yCounter\(9),
	datab => \VGA|controller|ALT_INV_yCounter\(1),
	datac => \VGA|controller|ALT_INV_yCounter\(0),
	datad => \VGA|controller|ALT_INV_always1~0_combout\,
	dataf => \VGA|controller|ALT_INV_VGA_VS1~0_combout\,
	combout => \VGA|controller|VGA_VS1~1_combout\);

-- Location: FF_X72_Y12_N44
\VGA|controller|VGA_VS1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|VGA_VS1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|VGA_VS1~q\);

-- Location: LABCELL_X36_Y36_N36
\VGA|controller|VGA_VS~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_VS~feeder_combout\ = ( \VGA|controller|VGA_VS1~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \VGA|controller|ALT_INV_VGA_VS1~q\,
	combout => \VGA|controller|VGA_VS~feeder_combout\);

-- Location: FF_X36_Y36_N37
\VGA|controller|VGA_VS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|VGA_VS~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|VGA_VS~q\);

-- Location: LABCELL_X73_Y12_N9
\VGA|controller|VGA_BLANK1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_BLANK1~0_combout\ = ( !\VGA|controller|xCounter\(7) & ( \VGA|controller|xCounter\(9) & ( (!\VGA|controller|VGA_VS1~0_combout\ & (!\VGA|controller|yCounter\(9) & !\VGA|controller|xCounter\(8))) ) ) ) # ( \VGA|controller|xCounter\(7) & ( 
-- !\VGA|controller|xCounter\(9) & ( (!\VGA|controller|VGA_VS1~0_combout\ & !\VGA|controller|yCounter\(9)) ) ) ) # ( !\VGA|controller|xCounter\(7) & ( !\VGA|controller|xCounter\(9) & ( (!\VGA|controller|VGA_VS1~0_combout\ & !\VGA|controller|yCounter\(9)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_VGA_VS1~0_combout\,
	datac => \VGA|controller|ALT_INV_yCounter\(9),
	datad => \VGA|controller|ALT_INV_xCounter\(8),
	datae => \VGA|controller|ALT_INV_xCounter\(7),
	dataf => \VGA|controller|ALT_INV_xCounter\(9),
	combout => \VGA|controller|VGA_BLANK1~0_combout\);

-- Location: FF_X73_Y12_N10
\VGA|controller|VGA_BLANK1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|VGA_BLANK1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|VGA_BLANK1~q\);

-- Location: MLABCELL_X84_Y13_N12
\VGA|controller|VGA_BLANK~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_BLANK~feeder_combout\ = ( \VGA|controller|VGA_BLANK1~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \VGA|controller|ALT_INV_VGA_BLANK1~q\,
	combout => \VGA|controller|VGA_BLANK~feeder_combout\);

-- Location: FF_X84_Y13_N13
\VGA|controller|VGA_BLANK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|VGA_BLANK~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|VGA_BLANK~q\);

-- Location: FF_X75_Y12_N34
\d|bYcount[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|bYcount~0_combout\,
	ena => \d|bYcount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|bYcount[3]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y11_N0
\d|Add8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add8~13_sumout\ = SUM(( \b1|xOut\(0) ) + ( \d|bYcount[0]~DUPLICATE_q\ ) + ( !VCC ))
-- \d|Add8~14\ = CARRY(( \b1|xOut\(0) ) + ( \d|bYcount[0]~DUPLICATE_q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \d|ALT_INV_bYcount[0]~DUPLICATE_q\,
	datad => \b1|ALT_INV_xOut\(0),
	cin => GND,
	sumout => \d|Add8~13_sumout\,
	cout => \d|Add8~14\);

-- Location: LABCELL_X73_Y11_N3
\d|Add8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add8~17_sumout\ = SUM(( \d|bYcount[1]~DUPLICATE_q\ ) + ( \b1|xOut\(1) ) + ( \d|Add8~14\ ))
-- \d|Add8~18\ = CARRY(( \d|bYcount[1]~DUPLICATE_q\ ) + ( \b1|xOut\(1) ) + ( \d|Add8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b1|ALT_INV_xOut\(1),
	datad => \d|ALT_INV_bYcount[1]~DUPLICATE_q\,
	cin => \d|Add8~14\,
	sumout => \d|Add8~17_sumout\,
	cout => \d|Add8~18\);

-- Location: LABCELL_X73_Y11_N6
\d|Add8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add8~9_sumout\ = SUM(( \b1|xOut\(2) ) + ( \d|bYcount[2]~DUPLICATE_q\ ) + ( \d|Add8~18\ ))
-- \d|Add8~10\ = CARRY(( \b1|xOut\(2) ) + ( \d|bYcount[2]~DUPLICATE_q\ ) + ( \d|Add8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b1|ALT_INV_xOut\(2),
	dataf => \d|ALT_INV_bYcount[2]~DUPLICATE_q\,
	cin => \d|Add8~18\,
	sumout => \d|Add8~9_sumout\,
	cout => \d|Add8~10\);

-- Location: LABCELL_X73_Y11_N9
\d|Add8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add8~5_sumout\ = SUM(( \d|bYcount[3]~DUPLICATE_q\ ) + ( VCC ) + ( \d|Add8~10\ ))
-- \d|Add8~6\ = CARRY(( \d|bYcount[3]~DUPLICATE_q\ ) + ( VCC ) + ( \d|Add8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_bYcount[3]~DUPLICATE_q\,
	cin => \d|Add8~10\,
	sumout => \d|Add8~5_sumout\,
	cout => \d|Add8~6\);

-- Location: LABCELL_X74_Y11_N27
\d|Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Selector18~0_combout\ = ( \d|Add8~5_sumout\ & ( \d|presentState.DRAWB1_S~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_presentState.DRAWB1_S~q\,
	dataf => \d|ALT_INV_Add8~5_sumout\,
	combout => \d|Selector18~0_combout\);

-- Location: LABCELL_X71_Y11_N24
\VGA|writeEn~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|writeEn~0_combout\ = ( !\d|presentState.SWITCH_S~q\ & ( \d|presentState.RESET_S~q\ & ( (!\d|presentState.LOAD_S~q\ & !\d|presentState.EXIT_S~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \d|ALT_INV_presentState.LOAD_S~q\,
	datad => \d|ALT_INV_presentState.EXIT_S~q\,
	datae => \d|ALT_INV_presentState.SWITCH_S~q\,
	dataf => \d|ALT_INV_presentState.RESET_S~q\,
	combout => \VGA|writeEn~0_combout\);

-- Location: LABCELL_X73_Y11_N12
\d|Add8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add8~1_sumout\ = SUM(( GND ) + ( GND ) + ( \d|Add8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \d|Add8~6\,
	sumout => \d|Add8~1_sumout\);

-- Location: LABCELL_X74_Y11_N24
\d|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Selector17~0_combout\ = (\d|presentState.DRAWB1_S~q\ & \d|Add8~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_presentState.DRAWB1_S~q\,
	datac => \d|ALT_INV_Add8~1_sumout\,
	combout => \d|Selector17~0_combout\);

-- Location: MLABCELL_X72_Y11_N0
\d|Add12~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add12~17_sumout\ = SUM(( \p1|xOut\(0) ) + ( \d|pYcount\(0) ) + ( !VCC ))
-- \d|Add12~18\ = CARRY(( \p1|xOut\(0) ) + ( \d|pYcount\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \d|ALT_INV_pYcount\(0),
	datad => \p1|ALT_INV_xOut\(0),
	cin => GND,
	sumout => \d|Add12~17_sumout\,
	cout => \d|Add12~18\);

-- Location: MLABCELL_X72_Y11_N3
\d|Add12~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add12~21_sumout\ = SUM(( \p1|xOut\(1) ) + ( \d|pYcount[1]~DUPLICATE_q\ ) + ( \d|Add12~18\ ))
-- \d|Add12~22\ = CARRY(( \p1|xOut\(1) ) + ( \d|pYcount[1]~DUPLICATE_q\ ) + ( \d|Add12~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_pYcount[1]~DUPLICATE_q\,
	datad => \p1|ALT_INV_xOut\(1),
	cin => \d|Add12~18\,
	sumout => \d|Add12~21_sumout\,
	cout => \d|Add12~22\);

-- Location: MLABCELL_X72_Y11_N6
\d|Add12~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add12~13_sumout\ = SUM(( \p1|xOut\(2) ) + ( \d|pYcount\(2) ) + ( \d|Add12~22\ ))
-- \d|Add12~14\ = CARRY(( \p1|xOut\(2) ) + ( \d|pYcount\(2) ) + ( \d|Add12~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \d|ALT_INV_pYcount\(2),
	datad => \p1|ALT_INV_xOut\(2),
	cin => \d|Add12~22\,
	sumout => \d|Add12~13_sumout\,
	cout => \d|Add12~14\);

-- Location: MLABCELL_X72_Y11_N9
\d|Add12~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add12~5_sumout\ = SUM(( \p1|xOut\(3) ) + ( GND ) + ( \d|Add12~14\ ))
-- \d|Add12~6\ = CARRY(( \p1|xOut\(3) ) + ( GND ) + ( \d|Add12~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ALT_INV_xOut\(3),
	cin => \d|Add12~14\,
	sumout => \d|Add12~5_sumout\,
	cout => \d|Add12~6\);

-- Location: MLABCELL_X72_Y11_N12
\d|Add12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add12~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \d|Add12~6\ ))
-- \d|Add12~2\ = CARRY(( VCC ) + ( GND ) + ( \d|Add12~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \d|Add12~6\,
	sumout => \d|Add12~1_sumout\,
	cout => \d|Add12~2\);

-- Location: MLABCELL_X72_Y11_N15
\d|Add12~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add12~9_sumout\ = SUM(( GND ) + ( GND ) + ( \d|Add12~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \d|Add12~2\,
	sumout => \d|Add12~9_sumout\);

-- Location: MLABCELL_X72_Y11_N45
\VGA|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|LessThan3~0_combout\ = ( \d|Add12~9_sumout\ & ( (\d|presentState.CLEAR_S~q\ & (\d|clearYcount\(6) & ((\d|clearYcount\(5)) # (\d|presentState.DRAWP_S~q\)))) ) ) # ( !\d|Add12~9_sumout\ & ( (\d|presentState.CLEAR_S~q\ & (\d|clearYcount\(6) & 
-- \d|clearYcount\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000001000000110000000100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_presentState.DRAWP_S~q\,
	datab => \d|ALT_INV_presentState.CLEAR_S~q\,
	datac => \d|ALT_INV_clearYcount\(6),
	datad => \d|ALT_INV_clearYcount\(5),
	dataf => \d|ALT_INV_Add12~9_sumout\,
	combout => \VGA|LessThan3~0_combout\);

-- Location: MLABCELL_X72_Y11_N39
\d|Selector17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Selector17~1_combout\ = (!\d|presentState.LOAD_S~q\ & ((!\d|presentState.CLEAR_S~q\) # (!\d|clearYcount\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000111100001100000011110000110000001111000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \d|ALT_INV_presentState.CLEAR_S~q\,
	datac => \d|ALT_INV_presentState.LOAD_S~q\,
	datad => \d|ALT_INV_clearYcount\(4),
	combout => \d|Selector17~1_combout\);

-- Location: LABCELL_X74_Y11_N0
\d|Add10~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add10~13_sumout\ = SUM(( \d|bYcount[0]~DUPLICATE_q\ ) + ( \b2|xOut\(0) ) + ( !VCC ))
-- \d|Add10~14\ = CARRY(( \d|bYcount[0]~DUPLICATE_q\ ) + ( \b2|xOut\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_bYcount[0]~DUPLICATE_q\,
	datac => \b2|ALT_INV_xOut\(0),
	cin => GND,
	sumout => \d|Add10~13_sumout\,
	cout => \d|Add10~14\);

-- Location: LABCELL_X74_Y11_N3
\d|Add10~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add10~17_sumout\ = SUM(( \b2|xOut\(1) ) + ( \d|bYcount[1]~DUPLICATE_q\ ) + ( \d|Add10~14\ ))
-- \d|Add10~18\ = CARRY(( \b2|xOut\(1) ) + ( \d|bYcount[1]~DUPLICATE_q\ ) + ( \d|Add10~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \d|ALT_INV_bYcount[1]~DUPLICATE_q\,
	datad => \b2|ALT_INV_xOut\(1),
	cin => \d|Add10~14\,
	sumout => \d|Add10~17_sumout\,
	cout => \d|Add10~18\);

-- Location: LABCELL_X74_Y11_N6
\d|Add10~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add10~9_sumout\ = SUM(( \b2|xOut\(2) ) + ( \d|bYcount[2]~DUPLICATE_q\ ) + ( \d|Add10~18\ ))
-- \d|Add10~10\ = CARRY(( \b2|xOut\(2) ) + ( \d|bYcount[2]~DUPLICATE_q\ ) + ( \d|Add10~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \d|ALT_INV_bYcount[2]~DUPLICATE_q\,
	datad => \b2|ALT_INV_xOut\(2),
	cin => \d|Add10~18\,
	sumout => \d|Add10~9_sumout\,
	cout => \d|Add10~10\);

-- Location: LABCELL_X74_Y11_N9
\d|Add10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add10~5_sumout\ = SUM(( \d|bYcount\(3) ) + ( VCC ) + ( \d|Add10~10\ ))
-- \d|Add10~6\ = CARRY(( \d|bYcount\(3) ) + ( VCC ) + ( \d|Add10~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \d|ALT_INV_bYcount\(3),
	cin => \d|Add10~10\,
	sumout => \d|Add10~5_sumout\,
	cout => \d|Add10~6\);

-- Location: LABCELL_X74_Y11_N12
\d|Add10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add10~1_sumout\ = SUM(( GND ) + ( GND ) + ( \d|Add10~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \d|Add10~6\,
	sumout => \d|Add10~1_sumout\);

-- Location: LABCELL_X73_Y11_N57
\d|Selector17~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Selector17~2_combout\ = ( \d|Add10~1_sumout\ & ( (!\d|presentState.DRAWB2_S~q\ & (\d|Selector17~1_combout\ & ((!\d|presentState.DRAWP_S~q\) # (!\d|Add12~1_sumout\)))) ) ) # ( !\d|Add10~1_sumout\ & ( (\d|Selector17~1_combout\ & 
-- ((!\d|presentState.DRAWP_S~q\) # (!\d|Add12~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110000000000101010000000000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_presentState.DRAWB2_S~q\,
	datab => \d|ALT_INV_presentState.DRAWP_S~q\,
	datac => \d|ALT_INV_Add12~1_sumout\,
	datad => \d|ALT_INV_Selector17~1_combout\,
	dataf => \d|ALT_INV_Add10~1_sumout\,
	combout => \d|Selector17~2_combout\);

-- Location: LABCELL_X73_Y11_N39
\d|Selector18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Selector18~1_combout\ = ( \d|clearYcount\(3) & ( ((\p1|xOut\(3) & \d|presentState.LOAD_S~q\)) # (\d|presentState.CLEAR_S~q\) ) ) # ( !\d|clearYcount\(3) & ( (\p1|xOut\(3) & \d|presentState.LOAD_S~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_presentState.CLEAR_S~q\,
	datac => \p1|ALT_INV_xOut\(3),
	datad => \d|ALT_INV_presentState.LOAD_S~q\,
	dataf => \d|ALT_INV_clearYcount\(3),
	combout => \d|Selector18~1_combout\);

-- Location: LABCELL_X73_Y11_N54
\d|Selector18~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Selector18~2_combout\ = ( !\d|Selector18~1_combout\ & ( (!\d|presentState.DRAWB2_S~q\ & ((!\d|presentState.DRAWP_S~q\) # ((!\d|Add12~5_sumout\)))) # (\d|presentState.DRAWB2_S~q\ & (!\d|Add10~5_sumout\ & ((!\d|presentState.DRAWP_S~q\) # 
-- (!\d|Add12~5_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011001000111110101100100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_presentState.DRAWB2_S~q\,
	datab => \d|ALT_INV_presentState.DRAWP_S~q\,
	datac => \d|ALT_INV_Add10~5_sumout\,
	datad => \d|ALT_INV_Add12~5_sumout\,
	dataf => \d|ALT_INV_Selector18~1_combout\,
	combout => \d|Selector18~2_combout\);

-- Location: LABCELL_X74_Y11_N57
\VGA|writeEn~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|writeEn~2_combout\ = ( \d|Selector17~2_combout\ & ( \d|Selector18~2_combout\ & ( (\VGA|writeEn~0_combout\ & ((!\d|Selector18~0_combout\) # ((!\d|Selector17~0_combout\) # (!\VGA|LessThan3~0_combout\)))) ) ) ) # ( !\d|Selector17~2_combout\ & ( 
-- \d|Selector18~2_combout\ & ( (\VGA|writeEn~0_combout\ & ((!\d|Selector18~0_combout\) # (!\VGA|LessThan3~0_combout\))) ) ) ) # ( \d|Selector17~2_combout\ & ( !\d|Selector18~2_combout\ & ( (\VGA|writeEn~0_combout\ & ((!\d|Selector17~0_combout\) # 
-- (!\VGA|LessThan3~0_combout\))) ) ) ) # ( !\d|Selector17~2_combout\ & ( !\d|Selector18~2_combout\ & ( (\VGA|writeEn~0_combout\ & !\VGA|LessThan3~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110011000000110011001000100011001100110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_Selector18~0_combout\,
	datab => \VGA|ALT_INV_writeEn~0_combout\,
	datac => \d|ALT_INV_Selector17~0_combout\,
	datad => \VGA|ALT_INV_LessThan3~0_combout\,
	datae => \d|ALT_INV_Selector17~2_combout\,
	dataf => \d|ALT_INV_Selector18~2_combout\,
	combout => \VGA|writeEn~2_combout\);

-- Location: MLABCELL_X72_Y11_N36
\VGA|writeEn~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|writeEn~1_combout\ = ( \VGA|writeEn~0_combout\ & ( !\d|presentState.CLEAR_S~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \d|ALT_INV_presentState.CLEAR_S~q\,
	dataf => \VGA|ALT_INV_writeEn~0_combout\,
	combout => \VGA|writeEn~1_combout\);

-- Location: MLABCELL_X78_Y11_N0
\d|WideNor0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|WideNor0~0_combout\ = ( !\d|presentState.EXIT_S~q\ & ( (\d|presentState.RESET_S~q\ & !\d|presentState.SWITCH_S~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \d|ALT_INV_presentState.RESET_S~q\,
	datad => \d|ALT_INV_presentState.SWITCH_S~q\,
	dataf => \d|ALT_INV_presentState.EXIT_S~q\,
	combout => \d|WideNor0~0_combout\);

-- Location: LABCELL_X77_Y11_N27
\d|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Selector8~0_combout\ = ( \d|WideNor0~0_combout\ & ( ((\d|presentState.CLEAR_S~q\ & \d|clearXcount\(6))) # (\d|presentState.LOAD_S~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_presentState.CLEAR_S~q\,
	datac => \d|ALT_INV_clearXcount\(6),
	datad => \d|ALT_INV_presentState.LOAD_S~q\,
	dataf => \d|ALT_INV_WideNor0~0_combout\,
	combout => \d|Selector8~0_combout\);

-- Location: LABCELL_X73_Y11_N51
\d|Add7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add7~29_combout\ = ( \d|presentState.DRAWB2_S~q\ & ( \b2|xOut\(2) ) ) # ( !\d|presentState.DRAWB2_S~q\ & ( \b2|xOut\(2) & ( ((\b1|xOut\(2) & \d|presentState.DRAWB1_S~q\)) # (\d|presentState.DRAWP_S~q\) ) ) ) # ( \d|presentState.DRAWB2_S~q\ & ( 
-- !\b2|xOut\(2) & ( ((\b1|xOut\(2) & \d|presentState.DRAWB1_S~q\)) # (\d|presentState.DRAWP_S~q\) ) ) ) # ( !\d|presentState.DRAWB2_S~q\ & ( !\b2|xOut\(2) & ( ((\b1|xOut\(2) & \d|presentState.DRAWB1_S~q\)) # (\d|presentState.DRAWP_S~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100000101111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b1|ALT_INV_xOut\(2),
	datac => \d|ALT_INV_presentState.DRAWB1_S~q\,
	datad => \d|ALT_INV_presentState.DRAWP_S~q\,
	datae => \d|ALT_INV_presentState.DRAWB2_S~q\,
	dataf => \b2|ALT_INV_xOut\(2),
	combout => \d|Add7~29_combout\);

-- Location: MLABCELL_X72_Y11_N42
\d|Add7~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add7~12_combout\ = (\d|presentState.LOAD_S~q\) # (\d|presentState.CLEAR_S~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \d|ALT_INV_presentState.CLEAR_S~q\,
	datad => \d|ALT_INV_presentState.LOAD_S~q\,
	combout => \d|Add7~12_combout\);

-- Location: LABCELL_X73_Y11_N45
\d|Add7~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add7~37_combout\ = ( \b1|xOut\(0) & ( \d|presentState.DRAWB1_S~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \d|ALT_INV_presentState.DRAWB1_S~q\,
	dataf => \b1|ALT_INV_xOut\(0),
	combout => \d|Add7~37_combout\);

-- Location: LABCELL_X74_Y11_N18
\d|Add7~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add7~39_combout\ = (\d|presentState.DRAWB2_S~q\ & \b2|xOut\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \d|ALT_INV_presentState.DRAWB2_S~q\,
	datad => \b2|ALT_INV_xOut\(0),
	combout => \d|Add7~39_combout\);

-- Location: FF_X78_Y11_N7
\d|bXcount[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|bXcount~0_combout\,
	ena => \d|bXcount[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|bXcount[3]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y11_N24
\d|Add7~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add7~38_combout\ = ( \p1|xOut\(3) & ( (\d|bXcount[3]~DUPLICATE_q\) # (\d|presentState.DRAWP_S~q\) ) ) # ( !\p1|xOut\(3) & ( (!\d|presentState.DRAWP_S~q\ & \d|bXcount[3]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \d|ALT_INV_presentState.DRAWP_S~q\,
	datad => \d|ALT_INV_bXcount[3]~DUPLICATE_q\,
	dataf => \p1|ALT_INV_xOut\(3),
	combout => \d|Add7~38_combout\);

-- Location: MLABCELL_X78_Y11_N57
\d|Add7~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add7~31_combout\ = ( \d|presentState.DRAWP_S~q\ & ( \d|presentState.DRAWB1_S~q\ & ( (!\d|presentState.SWITCH_S~q\ & (!\d|presentState.DRAWB2_S~q\ & (!\d|presentState.EXIT_S~q\ & \d|presentState.RESET_S~q\))) ) ) ) # ( !\d|presentState.DRAWP_S~q\ & ( 
-- \d|presentState.DRAWB1_S~q\ & ( (!\d|presentState.SWITCH_S~q\ & (!\d|presentState.DRAWB2_S~q\ & (!\d|presentState.EXIT_S~q\ & \d|presentState.RESET_S~q\))) ) ) ) # ( \d|presentState.DRAWP_S~q\ & ( !\d|presentState.DRAWB1_S~q\ & ( 
-- (!\d|presentState.SWITCH_S~q\ & (!\d|presentState.DRAWB2_S~q\ & (!\d|presentState.EXIT_S~q\ & \d|presentState.RESET_S~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_presentState.SWITCH_S~q\,
	datab => \d|ALT_INV_presentState.DRAWB2_S~q\,
	datac => \d|ALT_INV_presentState.EXIT_S~q\,
	datad => \d|ALT_INV_presentState.RESET_S~q\,
	datae => \d|ALT_INV_presentState.DRAWP_S~q\,
	dataf => \d|ALT_INV_presentState.DRAWB1_S~q\,
	combout => \d|Add7~31_combout\);

-- Location: LABCELL_X71_Y11_N36
\d|Add7~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add7~30_combout\ = ( !\d|presentState.SWITCH_S~q\ & ( !\d|presentState.CLEAR_S~q\ & ( (\d|presentState.RESET_S~q\ & (!\d|presentState.EXIT_S~q\ & ((\d|presentState.DRAWB2_S~q\) # (\d|presentState.DRAWP_S~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_presentState.RESET_S~q\,
	datab => \d|ALT_INV_presentState.EXIT_S~q\,
	datac => \d|ALT_INV_presentState.DRAWP_S~q\,
	datad => \d|ALT_INV_presentState.DRAWB2_S~q\,
	datae => \d|ALT_INV_presentState.SWITCH_S~q\,
	dataf => \d|ALT_INV_presentState.CLEAR_S~q\,
	combout => \d|Add7~30_combout\);

-- Location: LABCELL_X73_Y11_N30
\d|Add7~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add7~36_combout\ = ( \p1|xOut\(2) & ( (!\d|Add7~31_combout\ & (\d|Add7~30_combout\ & ((\b2|xOut\(2))))) # (\d|Add7~31_combout\ & (((\b1|xOut\(2))) # (\d|Add7~30_combout\))) ) ) # ( !\p1|xOut\(2) & ( (!\d|Add7~31_combout\ & (\d|Add7~30_combout\ & 
-- ((\b2|xOut\(2))))) # (\d|Add7~31_combout\ & (!\d|Add7~30_combout\ & (\b1|xOut\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011000010101001101110001010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_Add7~31_combout\,
	datab => \d|ALT_INV_Add7~30_combout\,
	datac => \b1|ALT_INV_xOut\(2),
	datad => \b2|ALT_INV_xOut\(2),
	dataf => \p1|ALT_INV_xOut\(2),
	combout => \d|Add7~36_combout\);

-- Location: LABCELL_X73_Y11_N42
\d|Add7~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add7~34_combout\ = ( \b1|xOut\(1) & ( (!\d|Add7~31_combout\ & (\b2|xOut\(1) & (\d|Add7~30_combout\))) # (\d|Add7~31_combout\ & (((!\d|Add7~30_combout\) # (\p1|xOut\(1))))) ) ) # ( !\b1|xOut\(1) & ( (\d|Add7~30_combout\ & ((!\d|Add7~31_combout\ & 
-- (\b2|xOut\(1))) # (\d|Add7~31_combout\ & ((\p1|xOut\(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111000000100000011101010010010101110101001001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_Add7~31_combout\,
	datab => \b2|ALT_INV_xOut\(1),
	datac => \d|ALT_INV_Add7~30_combout\,
	datad => \p1|ALT_INV_xOut\(1),
	dataf => \b1|ALT_INV_xOut\(1),
	combout => \d|Add7~34_combout\);

-- Location: FF_X74_Y12_N37
\d|pXcount[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \d|pXcount~2_combout\,
	ena => \d|pXcount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|pXcount[1]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y11_N0
\d|Add7~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add7~35_combout\ = ( \d|pXcount[1]~DUPLICATE_q\ & ( (\d|bXcount\(1)) # (\d|presentState.DRAWP_S~q\) ) ) # ( !\d|pXcount[1]~DUPLICATE_q\ & ( (!\d|presentState.DRAWP_S~q\ & \d|bXcount\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \d|ALT_INV_presentState.DRAWP_S~q\,
	datac => \d|ALT_INV_bXcount\(1),
	dataf => \d|ALT_INV_pXcount[1]~DUPLICATE_q\,
	combout => \d|Add7~35_combout\);

-- Location: LABCELL_X73_Y11_N33
\d|Add7~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add7~32_combout\ = ( \p1|xOut\(0) & ( (!\d|Add7~31_combout\ & (\d|Add7~30_combout\ & (\b2|xOut\(0)))) # (\d|Add7~31_combout\ & (((\b1|xOut\(0))) # (\d|Add7~30_combout\))) ) ) # ( !\p1|xOut\(0) & ( (!\d|Add7~31_combout\ & (\d|Add7~30_combout\ & 
-- (\b2|xOut\(0)))) # (\d|Add7~31_combout\ & (!\d|Add7~30_combout\ & ((\b1|xOut\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011000010011010101110001001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_Add7~31_combout\,
	datab => \d|ALT_INV_Add7~30_combout\,
	datac => \b2|ALT_INV_xOut\(0),
	datad => \b1|ALT_INV_xOut\(0),
	dataf => \p1|ALT_INV_xOut\(0),
	combout => \d|Add7~32_combout\);

-- Location: MLABCELL_X78_Y11_N3
\d|Add7~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add7~33_combout\ = ( \d|bXcount\(0) & ( (!\d|presentState.DRAWP_S~q\) # (\d|pXcount[0]~DUPLICATE_q\) ) ) # ( !\d|bXcount\(0) & ( (\d|presentState.DRAWP_S~q\ & \d|pXcount[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_presentState.DRAWP_S~q\,
	datad => \d|ALT_INV_pXcount[0]~DUPLICATE_q\,
	dataf => \d|ALT_INV_bXcount\(0),
	combout => \d|Add7~33_combout\);

-- Location: LABCELL_X74_Y11_N30
\d|Add7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add7~9_sumout\ = SUM(( \d|Add7~32_combout\ ) + ( (!\d|presentState.LOAD_S~q\ & (!\d|presentState.CLEAR_S~q\ & (\d|WideNor0~0_combout\ & \d|Add7~33_combout\))) ) + ( !VCC ))
-- \d|Add7~10\ = CARRY(( \d|Add7~32_combout\ ) + ( (!\d|presentState.LOAD_S~q\ & (!\d|presentState.CLEAR_S~q\ & (\d|WideNor0~0_combout\ & \d|Add7~33_combout\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_presentState.LOAD_S~q\,
	datab => \d|ALT_INV_presentState.CLEAR_S~q\,
	datac => \d|ALT_INV_WideNor0~0_combout\,
	datad => \d|ALT_INV_Add7~32_combout\,
	dataf => \d|ALT_INV_Add7~33_combout\,
	cin => GND,
	sumout => \d|Add7~9_sumout\,
	cout => \d|Add7~10\);

-- Location: LABCELL_X74_Y11_N33
\d|Add7~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add7~14_sumout\ = SUM(( \d|Add7~34_combout\ ) + ( (!\d|presentState.LOAD_S~q\ & (!\d|presentState.CLEAR_S~q\ & (\d|WideNor0~0_combout\ & \d|Add7~35_combout\))) ) + ( \d|Add7~10\ ))
-- \d|Add7~15\ = CARRY(( \d|Add7~34_combout\ ) + ( (!\d|presentState.LOAD_S~q\ & (!\d|presentState.CLEAR_S~q\ & (\d|WideNor0~0_combout\ & \d|Add7~35_combout\))) ) + ( \d|Add7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_presentState.LOAD_S~q\,
	datab => \d|ALT_INV_presentState.CLEAR_S~q\,
	datac => \d|ALT_INV_WideNor0~0_combout\,
	datad => \d|ALT_INV_Add7~34_combout\,
	dataf => \d|ALT_INV_Add7~35_combout\,
	cin => \d|Add7~10\,
	sumout => \d|Add7~14_sumout\,
	cout => \d|Add7~15\);

-- Location: LABCELL_X74_Y11_N36
\d|Add7~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add7~18_sumout\ = SUM(( (\d|WideNor0~0_combout\ & (!\d|Add7~12_combout\ & (!\d|presentState.DRAWP_S~q\ & \d|bXcount\(2)))) ) + ( \d|Add7~36_combout\ ) + ( \d|Add7~15\ ))
-- \d|Add7~19\ = CARRY(( (\d|WideNor0~0_combout\ & (!\d|Add7~12_combout\ & (!\d|presentState.DRAWP_S~q\ & \d|bXcount\(2)))) ) + ( \d|Add7~36_combout\ ) + ( \d|Add7~15\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_WideNor0~0_combout\,
	datab => \d|ALT_INV_Add7~12_combout\,
	datac => \d|ALT_INV_presentState.DRAWP_S~q\,
	datad => \d|ALT_INV_bXcount\(2),
	dataf => \d|ALT_INV_Add7~36_combout\,
	cin => \d|Add7~15\,
	sumout => \d|Add7~18_sumout\,
	cout => \d|Add7~19\);

-- Location: LABCELL_X74_Y11_N39
\d|Add7~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add7~22_sumout\ = SUM(( (\d|Add7~39_combout\) # (\d|Add7~37_combout\) ) + ( (\d|WideNor0~0_combout\ & (!\d|Add7~12_combout\ & \d|Add7~38_combout\)) ) + ( \d|Add7~19\ ))
-- \d|Add7~23\ = CARRY(( (\d|Add7~39_combout\) # (\d|Add7~37_combout\) ) + ( (\d|WideNor0~0_combout\ & (!\d|Add7~12_combout\ & \d|Add7~38_combout\)) ) + ( \d|Add7~19\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011101100000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_WideNor0~0_combout\,
	datab => \d|ALT_INV_Add7~12_combout\,
	datac => \d|ALT_INV_Add7~37_combout\,
	datad => \d|ALT_INV_Add7~39_combout\,
	dataf => \d|ALT_INV_Add7~38_combout\,
	cin => \d|Add7~19\,
	sumout => \d|Add7~22_sumout\,
	cout => \d|Add7~23\);

-- Location: LABCELL_X74_Y11_N42
\d|Add7~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add7~26_sumout\ = SUM(( (!\b1|xOut\(1) & (\d|presentState.DRAWB2_S~q\ & ((\b2|xOut\(1))))) # (\b1|xOut\(1) & (((\d|presentState.DRAWB2_S~q\ & \b2|xOut\(1))) # (\d|presentState.DRAWB1_S~q\))) ) + ( GND ) + ( \d|Add7~23\ ))
-- \d|Add7~27\ = CARRY(( (!\b1|xOut\(1) & (\d|presentState.DRAWB2_S~q\ & ((\b2|xOut\(1))))) # (\b1|xOut\(1) & (((\d|presentState.DRAWB2_S~q\ & \b2|xOut\(1))) # (\d|presentState.DRAWB1_S~q\))) ) + ( GND ) + ( \d|Add7~23\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b1|ALT_INV_xOut\(1),
	datab => \d|ALT_INV_presentState.DRAWB2_S~q\,
	datac => \d|ALT_INV_presentState.DRAWB1_S~q\,
	datad => \b2|ALT_INV_xOut\(1),
	cin => \d|Add7~23\,
	sumout => \d|Add7~26_sumout\,
	cout => \d|Add7~27\);

-- Location: LABCELL_X74_Y11_N45
\d|Add7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add7~5_sumout\ = SUM(( \d|Add7~29_combout\ ) + ( GND ) + ( \d|Add7~27\ ))
-- \d|Add7~6\ = CARRY(( \d|Add7~29_combout\ ) + ( GND ) + ( \d|Add7~27\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \d|ALT_INV_Add7~29_combout\,
	cin => \d|Add7~27\,
	sumout => \d|Add7~5_sumout\,
	cout => \d|Add7~6\);

-- Location: LABCELL_X75_Y11_N0
\d|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Selector9~0_combout\ = ( \d|Add7~5_sumout\ & ( (\d|WideNor0~0_combout\ & (((!\d|presentState.CLEAR_S~q\) # (\d|clearXcount\(5))) # (\d|presentState.LOAD_S~q\))) ) ) # ( !\d|Add7~5_sumout\ & ( (\d|WideNor0~0_combout\ & (((\d|clearXcount\(5) & 
-- \d|presentState.CLEAR_S~q\)) # (\d|presentState.LOAD_S~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010011000100010001001100110011000100110011001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_presentState.LOAD_S~q\,
	datab => \d|ALT_INV_WideNor0~0_combout\,
	datac => \d|ALT_INV_clearXcount\(5),
	datad => \d|ALT_INV_presentState.CLEAR_S~q\,
	dataf => \d|ALT_INV_Add7~5_sumout\,
	combout => \d|Selector9~0_combout\);

-- Location: LABCELL_X75_Y11_N6
\VGA|writeEn~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|writeEn~3_combout\ = ( \d|Selector9~0_combout\ & ( (!\VGA|writeEn~1_combout\ & ((!\VGA|writeEn~2_combout\) # (\d|clearXcount\(7)))) ) ) # ( !\d|Selector9~0_combout\ & ( (!\VGA|writeEn~1_combout\ & ((!\VGA|writeEn~2_combout\) # ((\d|clearXcount\(7) & 
-- \d|Selector8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011010000110000001101000011010000110100001101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_clearXcount\(7),
	datab => \VGA|ALT_INV_writeEn~2_combout\,
	datac => \VGA|ALT_INV_writeEn~1_combout\,
	datad => \d|ALT_INV_Selector8~0_combout\,
	dataf => \d|ALT_INV_Selector9~0_combout\,
	combout => \VGA|writeEn~3_combout\);

-- Location: LABCELL_X75_Y11_N24
\d|Selector17~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Selector17~3_combout\ = ( \d|Selector17~1_combout\ & ( \d|Selector17~0_combout\ ) ) # ( !\d|Selector17~1_combout\ & ( \d|Selector17~0_combout\ ) ) # ( \d|Selector17~1_combout\ & ( !\d|Selector17~0_combout\ & ( (!\d|Add10~1_sumout\ & (\d|Add12~1_sumout\ 
-- & (\d|presentState.DRAWP_S~q\))) # (\d|Add10~1_sumout\ & (((\d|Add12~1_sumout\ & \d|presentState.DRAWP_S~q\)) # (\d|presentState.DRAWB2_S~q\))) ) ) ) # ( !\d|Selector17~1_combout\ & ( !\d|Selector17~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000110101011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_Add10~1_sumout\,
	datab => \d|ALT_INV_Add12~1_sumout\,
	datac => \d|ALT_INV_presentState.DRAWP_S~q\,
	datad => \d|ALT_INV_presentState.DRAWB2_S~q\,
	datae => \d|ALT_INV_Selector17~1_combout\,
	dataf => \d|ALT_INV_Selector17~0_combout\,
	combout => \d|Selector17~3_combout\);

-- Location: LABCELL_X75_Y11_N18
\d|Selector18~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Selector18~3_combout\ = ( \d|Selector18~0_combout\ & ( \d|Selector18~1_combout\ ) ) # ( !\d|Selector18~0_combout\ & ( \d|Selector18~1_combout\ ) ) # ( \d|Selector18~0_combout\ & ( !\d|Selector18~1_combout\ ) ) # ( !\d|Selector18~0_combout\ & ( 
-- !\d|Selector18~1_combout\ & ( (!\d|Add12~5_sumout\ & (\d|Add10~5_sumout\ & ((\d|presentState.DRAWB2_S~q\)))) # (\d|Add12~5_sumout\ & (((\d|Add10~5_sumout\ & \d|presentState.DRAWB2_S~q\)) # (\d|presentState.DRAWP_S~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_Add12~5_sumout\,
	datab => \d|ALT_INV_Add10~5_sumout\,
	datac => \d|ALT_INV_presentState.DRAWP_S~q\,
	datad => \d|ALT_INV_presentState.DRAWB2_S~q\,
	datae => \d|ALT_INV_Selector18~0_combout\,
	dataf => \d|ALT_INV_Selector18~1_combout\,
	combout => \d|Selector18~3_combout\);

-- Location: LABCELL_X71_Y11_N33
\d|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Selector16~0_combout\ = ( \d|presentState.CLEAR_S~q\ & ( \d|clearYcount\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \d|ALT_INV_clearYcount\(5),
	datae => \d|ALT_INV_presentState.CLEAR_S~q\,
	combout => \d|Selector16~0_combout\);

-- Location: MLABCELL_X72_Y11_N30
\d|Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Selector19~0_combout\ = ( !\d|presentState.DRAWP_S~q\ & ( \d|Add12~13_sumout\ & ( (!\d|clearYcount\(2) & ((!\d|presentState.LOAD_S~q\) # ((!\p1|xOut\(2))))) # (\d|clearYcount\(2) & (!\d|presentState.CLEAR_S~q\ & ((!\d|presentState.LOAD_S~q\) # 
-- (!\p1|xOut\(2))))) ) ) ) # ( \d|presentState.DRAWP_S~q\ & ( !\d|Add12~13_sumout\ & ( (!\d|clearYcount\(2) & ((!\d|presentState.LOAD_S~q\) # ((!\p1|xOut\(2))))) # (\d|clearYcount\(2) & (!\d|presentState.CLEAR_S~q\ & ((!\d|presentState.LOAD_S~q\) # 
-- (!\p1|xOut\(2))))) ) ) ) # ( !\d|presentState.DRAWP_S~q\ & ( !\d|Add12~13_sumout\ & ( (!\d|clearYcount\(2) & ((!\d|presentState.LOAD_S~q\) # ((!\p1|xOut\(2))))) # (\d|clearYcount\(2) & (!\d|presentState.CLEAR_S~q\ & ((!\d|presentState.LOAD_S~q\) # 
-- (!\p1|xOut\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110010101000111111001010100011111100101010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_clearYcount\(2),
	datab => \d|ALT_INV_presentState.LOAD_S~q\,
	datac => \p1|ALT_INV_xOut\(2),
	datad => \d|ALT_INV_presentState.CLEAR_S~q\,
	datae => \d|ALT_INV_presentState.DRAWP_S~q\,
	dataf => \d|ALT_INV_Add12~13_sumout\,
	combout => \d|Selector19~0_combout\);

-- Location: LABCELL_X73_Y11_N27
\d|Selector19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Selector19~1_combout\ = ( \d|Selector19~0_combout\ & ( (!\d|Add10~9_sumout\ & (\d|presentState.DRAWB1_S~q\ & (\d|Add8~9_sumout\))) # (\d|Add10~9_sumout\ & (((\d|presentState.DRAWB1_S~q\ & \d|Add8~9_sumout\)) # (\d|presentState.DRAWB2_S~q\))) ) ) # ( 
-- !\d|Selector19~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_Add10~9_sumout\,
	datab => \d|ALT_INV_presentState.DRAWB1_S~q\,
	datac => \d|ALT_INV_Add8~9_sumout\,
	datad => \d|ALT_INV_presentState.DRAWB2_S~q\,
	dataf => \d|ALT_INV_Selector19~0_combout\,
	combout => \d|Selector19~1_combout\);

-- Location: MLABCELL_X72_Y11_N54
\d|Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Selector20~0_combout\ = ( \d|presentState.LOAD_S~q\ & ( \d|Add12~21_sumout\ & ( (!\d|presentState.DRAWP_S~q\ & (!\p1|xOut\(1) & ((!\d|clearYcount\(1)) # (!\d|presentState.CLEAR_S~q\)))) ) ) ) # ( !\d|presentState.LOAD_S~q\ & ( \d|Add12~21_sumout\ & ( 
-- (!\d|presentState.DRAWP_S~q\ & ((!\d|clearYcount\(1)) # (!\d|presentState.CLEAR_S~q\))) ) ) ) # ( \d|presentState.LOAD_S~q\ & ( !\d|Add12~21_sumout\ & ( (!\p1|xOut\(1) & ((!\d|clearYcount\(1)) # (!\d|presentState.CLEAR_S~q\))) ) ) ) # ( 
-- !\d|presentState.LOAD_S~q\ & ( !\d|Add12~21_sumout\ & ( (!\d|clearYcount\(1)) # (!\d|presentState.CLEAR_S~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000110011001100000010101010101000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_presentState.DRAWP_S~q\,
	datab => \p1|ALT_INV_xOut\(1),
	datac => \d|ALT_INV_clearYcount\(1),
	datad => \d|ALT_INV_presentState.CLEAR_S~q\,
	datae => \d|ALT_INV_presentState.LOAD_S~q\,
	dataf => \d|ALT_INV_Add12~21_sumout\,
	combout => \d|Selector20~0_combout\);

-- Location: LABCELL_X75_Y11_N15
\d|Selector20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Selector20~1_combout\ = ( \d|Add8~17_sumout\ & ( (!\d|Selector20~0_combout\) # (((\d|Add10~17_sumout\ & \d|presentState.DRAWB2_S~q\)) # (\d|presentState.DRAWB1_S~q\)) ) ) # ( !\d|Add8~17_sumout\ & ( (!\d|Selector20~0_combout\) # ((\d|Add10~17_sumout\ & 
-- \d|presentState.DRAWB2_S~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000111110001111100011111000111110001111111111111000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_Add10~17_sumout\,
	datab => \d|ALT_INV_presentState.DRAWB2_S~q\,
	datac => \d|ALT_INV_Selector20~0_combout\,
	datad => \d|ALT_INV_presentState.DRAWB1_S~q\,
	dataf => \d|ALT_INV_Add8~17_sumout\,
	combout => \d|Selector20~1_combout\);

-- Location: MLABCELL_X72_Y11_N24
\d|Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Selector21~0_combout\ = ( \d|presentState.LOAD_S~q\ & ( \d|presentState.DRAWP_S~q\ & ( (!\p1|xOut\(0) & (!\d|Add12~17_sumout\ & ((!\d|presentState.CLEAR_S~q\) # (!\d|clearYcount\(0))))) ) ) ) # ( !\d|presentState.LOAD_S~q\ & ( 
-- \d|presentState.DRAWP_S~q\ & ( (!\d|Add12~17_sumout\ & ((!\d|presentState.CLEAR_S~q\) # (!\d|clearYcount\(0)))) ) ) ) # ( \d|presentState.LOAD_S~q\ & ( !\d|presentState.DRAWP_S~q\ & ( (!\p1|xOut\(0) & ((!\d|presentState.CLEAR_S~q\) # 
-- (!\d|clearYcount\(0)))) ) ) ) # ( !\d|presentState.LOAD_S~q\ & ( !\d|presentState.DRAWP_S~q\ & ( (!\d|presentState.CLEAR_S~q\) # (!\d|clearYcount\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100101010101000100011110000110000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ALT_INV_xOut\(0),
	datab => \d|ALT_INV_presentState.CLEAR_S~q\,
	datac => \d|ALT_INV_Add12~17_sumout\,
	datad => \d|ALT_INV_clearYcount\(0),
	datae => \d|ALT_INV_presentState.LOAD_S~q\,
	dataf => \d|ALT_INV_presentState.DRAWP_S~q\,
	combout => \d|Selector21~0_combout\);

-- Location: LABCELL_X73_Y11_N21
\d|Selector21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Selector21~1_combout\ = ( \d|presentState.DRAWB1_S~q\ & ( \d|Selector21~0_combout\ & ( ((\d|Add10~13_sumout\ & \d|presentState.DRAWB2_S~q\)) # (\d|Add8~13_sumout\) ) ) ) # ( !\d|presentState.DRAWB1_S~q\ & ( \d|Selector21~0_combout\ & ( 
-- (\d|Add10~13_sumout\ & \d|presentState.DRAWB2_S~q\) ) ) ) # ( \d|presentState.DRAWB1_S~q\ & ( !\d|Selector21~0_combout\ ) ) # ( !\d|presentState.DRAWB1_S~q\ & ( !\d|Selector21~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000001100110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_Add8~13_sumout\,
	datab => \d|ALT_INV_Add10~13_sumout\,
	datad => \d|ALT_INV_presentState.DRAWB2_S~q\,
	datae => \d|ALT_INV_presentState.DRAWB1_S~q\,
	dataf => \d|ALT_INV_Selector21~0_combout\,
	combout => \d|Selector21~1_combout\);

-- Location: LABCELL_X74_Y11_N48
\d|Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Add7~1_sumout\ = SUM(( \d|presentState.DRAWP_S~q\ ) + ( GND ) + ( \d|Add7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \d|ALT_INV_presentState.DRAWP_S~q\,
	cin => \d|Add7~6\,
	sumout => \d|Add7~1_sumout\);

-- Location: LABCELL_X74_Y11_N21
\d|Selector8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Selector8~1_combout\ = ( \d|Add7~1_sumout\ & ( (\d|Selector8~0_combout\) # (\VGA|writeEn~1_combout\) ) ) # ( !\d|Add7~1_sumout\ & ( \d|Selector8~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|ALT_INV_writeEn~1_combout\,
	datac => \d|ALT_INV_Selector8~0_combout\,
	dataf => \d|ALT_INV_Add7~1_sumout\,
	combout => \d|Selector8~1_combout\);

-- Location: LABCELL_X75_Y11_N30
\VGA|user_input_translator|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add1~9_sumout\ = SUM(( !\d|Selector21~1_combout\ $ (!\d|Selector9~0_combout\) ) + ( !VCC ) + ( !VCC ))
-- \VGA|user_input_translator|Add1~10\ = CARRY(( !\d|Selector21~1_combout\ $ (!\d|Selector9~0_combout\) ) + ( !VCC ) + ( !VCC ))
-- \VGA|user_input_translator|Add1~11\ = SHARE((\d|Selector21~1_combout\ & \d|Selector9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \d|ALT_INV_Selector21~1_combout\,
	datad => \d|ALT_INV_Selector9~0_combout\,
	cin => GND,
	sharein => GND,
	sumout => \VGA|user_input_translator|Add1~9_sumout\,
	cout => \VGA|user_input_translator|Add1~10\,
	shareout => \VGA|user_input_translator|Add1~11\);

-- Location: LABCELL_X75_Y11_N33
\VGA|user_input_translator|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add1~13_sumout\ = SUM(( !\d|Selector20~1_combout\ $ (!\d|Selector8~1_combout\) ) + ( \VGA|user_input_translator|Add1~11\ ) + ( \VGA|user_input_translator|Add1~10\ ))
-- \VGA|user_input_translator|Add1~14\ = CARRY(( !\d|Selector20~1_combout\ $ (!\d|Selector8~1_combout\) ) + ( \VGA|user_input_translator|Add1~11\ ) + ( \VGA|user_input_translator|Add1~10\ ))
-- \VGA|user_input_translator|Add1~15\ = SHARE((\d|Selector20~1_combout\ & \d|Selector8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \d|ALT_INV_Selector20~1_combout\,
	datad => \d|ALT_INV_Selector8~1_combout\,
	cin => \VGA|user_input_translator|Add1~10\,
	sharein => \VGA|user_input_translator|Add1~11\,
	sumout => \VGA|user_input_translator|Add1~13_sumout\,
	cout => \VGA|user_input_translator|Add1~14\,
	shareout => \VGA|user_input_translator|Add1~15\);

-- Location: LABCELL_X75_Y11_N36
\VGA|user_input_translator|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add1~17_sumout\ = SUM(( !\d|Selector21~1_combout\ $ (!\d|Selector19~1_combout\ $ (((\d|clearXcount\(7) & \d|presentState.CLEAR_S~q\)))) ) + ( \VGA|user_input_translator|Add1~15\ ) + ( \VGA|user_input_translator|Add1~14\ ))
-- \VGA|user_input_translator|Add1~18\ = CARRY(( !\d|Selector21~1_combout\ $ (!\d|Selector19~1_combout\ $ (((\d|clearXcount\(7) & \d|presentState.CLEAR_S~q\)))) ) + ( \VGA|user_input_translator|Add1~15\ ) + ( \VGA|user_input_translator|Add1~14\ ))
-- \VGA|user_input_translator|Add1~19\ = SHARE((!\d|Selector21~1_combout\ & (\d|Selector19~1_combout\ & (\d|clearXcount\(7) & \d|presentState.CLEAR_S~q\))) # (\d|Selector21~1_combout\ & (((\d|clearXcount\(7) & \d|presentState.CLEAR_S~q\)) # 
-- (\d|Selector19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010001011100000000000000000110011001101001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_Selector21~1_combout\,
	datab => \d|ALT_INV_Selector19~1_combout\,
	datac => \d|ALT_INV_clearXcount\(7),
	datad => \d|ALT_INV_presentState.CLEAR_S~q\,
	cin => \VGA|user_input_translator|Add1~14\,
	sharein => \VGA|user_input_translator|Add1~15\,
	sumout => \VGA|user_input_translator|Add1~17_sumout\,
	cout => \VGA|user_input_translator|Add1~18\,
	shareout => \VGA|user_input_translator|Add1~19\);

-- Location: LABCELL_X75_Y11_N39
\VGA|user_input_translator|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add1~21_sumout\ = SUM(( !\d|Selector18~3_combout\ $ (!\d|Selector20~1_combout\) ) + ( \VGA|user_input_translator|Add1~19\ ) + ( \VGA|user_input_translator|Add1~18\ ))
-- \VGA|user_input_translator|Add1~22\ = CARRY(( !\d|Selector18~3_combout\ $ (!\d|Selector20~1_combout\) ) + ( \VGA|user_input_translator|Add1~19\ ) + ( \VGA|user_input_translator|Add1~18\ ))
-- \VGA|user_input_translator|Add1~23\ = SHARE((\d|Selector18~3_combout\ & \d|Selector20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \d|ALT_INV_Selector18~3_combout\,
	datad => \d|ALT_INV_Selector20~1_combout\,
	cin => \VGA|user_input_translator|Add1~18\,
	sharein => \VGA|user_input_translator|Add1~19\,
	sumout => \VGA|user_input_translator|Add1~21_sumout\,
	cout => \VGA|user_input_translator|Add1~22\,
	shareout => \VGA|user_input_translator|Add1~23\);

-- Location: LABCELL_X75_Y11_N42
\VGA|user_input_translator|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add1~25_sumout\ = SUM(( !\d|Selector19~1_combout\ $ (!\d|Selector17~3_combout\) ) + ( \VGA|user_input_translator|Add1~23\ ) + ( \VGA|user_input_translator|Add1~22\ ))
-- \VGA|user_input_translator|Add1~26\ = CARRY(( !\d|Selector19~1_combout\ $ (!\d|Selector17~3_combout\) ) + ( \VGA|user_input_translator|Add1~23\ ) + ( \VGA|user_input_translator|Add1~22\ ))
-- \VGA|user_input_translator|Add1~27\ = SHARE((\d|Selector19~1_combout\ & \d|Selector17~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \d|ALT_INV_Selector19~1_combout\,
	datad => \d|ALT_INV_Selector17~3_combout\,
	cin => \VGA|user_input_translator|Add1~22\,
	sharein => \VGA|user_input_translator|Add1~23\,
	sumout => \VGA|user_input_translator|Add1~25_sumout\,
	cout => \VGA|user_input_translator|Add1~26\,
	shareout => \VGA|user_input_translator|Add1~27\);

-- Location: LABCELL_X75_Y11_N45
\VGA|user_input_translator|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add1~29_sumout\ = SUM(( !\d|Selector18~3_combout\ $ (((!\d|Selector16~0_combout\ & ((!\d|presentState.DRAWP_S~q\) # (!\d|Add12~9_sumout\))))) ) + ( \VGA|user_input_translator|Add1~27\ ) + ( \VGA|user_input_translator|Add1~26\ ))
-- \VGA|user_input_translator|Add1~30\ = CARRY(( !\d|Selector18~3_combout\ $ (((!\d|Selector16~0_combout\ & ((!\d|presentState.DRAWP_S~q\) # (!\d|Add12~9_sumout\))))) ) + ( \VGA|user_input_translator|Add1~27\ ) + ( \VGA|user_input_translator|Add1~26\ ))
-- \VGA|user_input_translator|Add1~31\ = SHARE((\d|Selector18~3_combout\ & (((\d|presentState.DRAWP_S~q\ & \d|Add12~9_sumout\)) # (\d|Selector16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110001001100000000000000000011110001101100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_presentState.DRAWP_S~q\,
	datab => \d|ALT_INV_Selector18~3_combout\,
	datac => \d|ALT_INV_Selector16~0_combout\,
	datad => \d|ALT_INV_Add12~9_sumout\,
	cin => \VGA|user_input_translator|Add1~26\,
	sharein => \VGA|user_input_translator|Add1~27\,
	sumout => \VGA|user_input_translator|Add1~29_sumout\,
	cout => \VGA|user_input_translator|Add1~30\,
	shareout => \VGA|user_input_translator|Add1~31\);

-- Location: LABCELL_X75_Y11_N48
\VGA|user_input_translator|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add1~33_sumout\ = SUM(( !\d|Selector17~3_combout\ $ (((!\d|presentState.CLEAR_S~q\) # (!\d|clearYcount\(6)))) ) + ( \VGA|user_input_translator|Add1~31\ ) + ( \VGA|user_input_translator|Add1~30\ ))
-- \VGA|user_input_translator|Add1~34\ = CARRY(( !\d|Selector17~3_combout\ $ (((!\d|presentState.CLEAR_S~q\) # (!\d|clearYcount\(6)))) ) + ( \VGA|user_input_translator|Add1~31\ ) + ( \VGA|user_input_translator|Add1~30\ ))
-- \VGA|user_input_translator|Add1~35\ = SHARE((\d|presentState.CLEAR_S~q\ & (\d|clearYcount\(6) & \d|Selector17~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001100000000000000000000001111111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \d|ALT_INV_presentState.CLEAR_S~q\,
	datac => \d|ALT_INV_clearYcount\(6),
	datad => \d|ALT_INV_Selector17~3_combout\,
	cin => \VGA|user_input_translator|Add1~30\,
	sharein => \VGA|user_input_translator|Add1~31\,
	sumout => \VGA|user_input_translator|Add1~33_sumout\,
	cout => \VGA|user_input_translator|Add1~34\,
	shareout => \VGA|user_input_translator|Add1~35\);

-- Location: LABCELL_X75_Y11_N51
\VGA|user_input_translator|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add1~37_sumout\ = SUM(( (!\d|presentState.DRAWP_S~q\ & (\d|presentState.CLEAR_S~q\ & ((\d|clearYcount\(5))))) # (\d|presentState.DRAWP_S~q\ & (((\d|presentState.CLEAR_S~q\ & \d|clearYcount\(5))) # (\d|Add12~9_sumout\))) ) + ( 
-- \VGA|user_input_translator|Add1~35\ ) + ( \VGA|user_input_translator|Add1~34\ ))
-- \VGA|user_input_translator|Add1~38\ = CARRY(( (!\d|presentState.DRAWP_S~q\ & (\d|presentState.CLEAR_S~q\ & ((\d|clearYcount\(5))))) # (\d|presentState.DRAWP_S~q\ & (((\d|presentState.CLEAR_S~q\ & \d|clearYcount\(5))) # (\d|Add12~9_sumout\))) ) + ( 
-- \VGA|user_input_translator|Add1~35\ ) + ( \VGA|user_input_translator|Add1~34\ ))
-- \VGA|user_input_translator|Add1~39\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100110111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_presentState.DRAWP_S~q\,
	datab => \d|ALT_INV_presentState.CLEAR_S~q\,
	datac => \d|ALT_INV_Add12~9_sumout\,
	datad => \d|ALT_INV_clearYcount\(5),
	cin => \VGA|user_input_translator|Add1~34\,
	sharein => \VGA|user_input_translator|Add1~35\,
	sumout => \VGA|user_input_translator|Add1~37_sumout\,
	cout => \VGA|user_input_translator|Add1~38\,
	shareout => \VGA|user_input_translator|Add1~39\);

-- Location: LABCELL_X75_Y11_N54
\VGA|user_input_translator|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add1~5_sumout\ = SUM(( (\d|presentState.CLEAR_S~q\ & \d|clearYcount\(6)) ) + ( \VGA|user_input_translator|Add1~39\ ) + ( \VGA|user_input_translator|Add1~38\ ))
-- \VGA|user_input_translator|Add1~6\ = CARRY(( (\d|presentState.CLEAR_S~q\ & \d|clearYcount\(6)) ) + ( \VGA|user_input_translator|Add1~39\ ) + ( \VGA|user_input_translator|Add1~38\ ))
-- \VGA|user_input_translator|Add1~7\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \d|ALT_INV_presentState.CLEAR_S~q\,
	datac => \d|ALT_INV_clearYcount\(6),
	cin => \VGA|user_input_translator|Add1~38\,
	sharein => \VGA|user_input_translator|Add1~39\,
	sumout => \VGA|user_input_translator|Add1~5_sumout\,
	cout => \VGA|user_input_translator|Add1~6\,
	shareout => \VGA|user_input_translator|Add1~7\);

-- Location: LABCELL_X75_Y11_N57
\VGA|user_input_translator|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add1~1_sumout\ = SUM(( GND ) + ( \VGA|user_input_translator|Add1~7\ ) + ( \VGA|user_input_translator|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \VGA|user_input_translator|Add1~6\,
	sharein => \VGA|user_input_translator|Add1~7\,
	sumout => \VGA|user_input_translator|Add1~1_sumout\);

-- Location: LABCELL_X75_Y11_N3
\VGA|VideoMemory|auto_generated|decode2|w_anode118w[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|decode2|w_anode118w\(2) = ( !\VGA|user_input_translator|Add1~1_sumout\ & ( (!\VGA|writeEn~3_combout\ & \VGA|user_input_translator|Add1~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA|ALT_INV_writeEn~3_combout\,
	datad => \VGA|user_input_translator|ALT_INV_Add1~5_sumout\,
	dataf => \VGA|user_input_translator|ALT_INV_Add1~1_sumout\,
	combout => \VGA|VideoMemory|auto_generated|decode2|w_anode118w\(2));

-- Location: MLABCELL_X72_Y12_N0
\VGA|controller|controller_translator|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~9_sumout\ = SUM(( !\VGA|controller|yCounter\(2) $ (!\VGA|controller|xCounter[7]~DUPLICATE_q\) ) + ( !VCC ) + ( !VCC ))
-- \VGA|controller|controller_translator|Add1~10\ = CARRY(( !\VGA|controller|yCounter\(2) $ (!\VGA|controller|xCounter[7]~DUPLICATE_q\) ) + ( !VCC ) + ( !VCC ))
-- \VGA|controller|controller_translator|Add1~11\ = SHARE((\VGA|controller|yCounter\(2) & \VGA|controller|xCounter[7]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_yCounter\(2),
	datac => \VGA|controller|ALT_INV_xCounter[7]~DUPLICATE_q\,
	cin => GND,
	sharein => GND,
	sumout => \VGA|controller|controller_translator|Add1~9_sumout\,
	cout => \VGA|controller|controller_translator|Add1~10\,
	shareout => \VGA|controller|controller_translator|Add1~11\);

-- Location: MLABCELL_X72_Y12_N3
\VGA|controller|controller_translator|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~13_sumout\ = SUM(( !\VGA|controller|yCounter\(3) $ (!\VGA|controller|xCounter\(8)) ) + ( \VGA|controller|controller_translator|Add1~11\ ) + ( \VGA|controller|controller_translator|Add1~10\ ))
-- \VGA|controller|controller_translator|Add1~14\ = CARRY(( !\VGA|controller|yCounter\(3) $ (!\VGA|controller|xCounter\(8)) ) + ( \VGA|controller|controller_translator|Add1~11\ ) + ( \VGA|controller|controller_translator|Add1~10\ ))
-- \VGA|controller|controller_translator|Add1~15\ = SHARE((\VGA|controller|yCounter\(3) & \VGA|controller|xCounter\(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|ALT_INV_yCounter\(3),
	datac => \VGA|controller|ALT_INV_xCounter\(8),
	cin => \VGA|controller|controller_translator|Add1~10\,
	sharein => \VGA|controller|controller_translator|Add1~11\,
	sumout => \VGA|controller|controller_translator|Add1~13_sumout\,
	cout => \VGA|controller|controller_translator|Add1~14\,
	shareout => \VGA|controller|controller_translator|Add1~15\);

-- Location: MLABCELL_X72_Y12_N6
\VGA|controller|controller_translator|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~17_sumout\ = SUM(( !\VGA|controller|yCounter\(4) $ (!\VGA|controller|yCounter\(2) $ (\VGA|controller|xCounter\(9))) ) + ( \VGA|controller|controller_translator|Add1~15\ ) + ( 
-- \VGA|controller|controller_translator|Add1~14\ ))
-- \VGA|controller|controller_translator|Add1~18\ = CARRY(( !\VGA|controller|yCounter\(4) $ (!\VGA|controller|yCounter\(2) $ (\VGA|controller|xCounter\(9))) ) + ( \VGA|controller|controller_translator|Add1~15\ ) + ( 
-- \VGA|controller|controller_translator|Add1~14\ ))
-- \VGA|controller|controller_translator|Add1~19\ = SHARE((!\VGA|controller|yCounter\(4) & (\VGA|controller|yCounter\(2) & \VGA|controller|xCounter\(9))) # (\VGA|controller|yCounter\(4) & ((\VGA|controller|xCounter\(9)) # (\VGA|controller|yCounter\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|ALT_INV_yCounter\(4),
	datac => \VGA|controller|ALT_INV_yCounter\(2),
	datad => \VGA|controller|ALT_INV_xCounter\(9),
	cin => \VGA|controller|controller_translator|Add1~14\,
	sharein => \VGA|controller|controller_translator|Add1~15\,
	sumout => \VGA|controller|controller_translator|Add1~17_sumout\,
	cout => \VGA|controller|controller_translator|Add1~18\,
	shareout => \VGA|controller|controller_translator|Add1~19\);

-- Location: MLABCELL_X72_Y12_N9
\VGA|controller|controller_translator|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~21_sumout\ = SUM(( !\VGA|controller|yCounter\(5) $ (!\VGA|controller|yCounter\(3)) ) + ( \VGA|controller|controller_translator|Add1~19\ ) + ( \VGA|controller|controller_translator|Add1~18\ ))
-- \VGA|controller|controller_translator|Add1~22\ = CARRY(( !\VGA|controller|yCounter\(5) $ (!\VGA|controller|yCounter\(3)) ) + ( \VGA|controller|controller_translator|Add1~19\ ) + ( \VGA|controller|controller_translator|Add1~18\ ))
-- \VGA|controller|controller_translator|Add1~23\ = SHARE((\VGA|controller|yCounter\(5) & \VGA|controller|yCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_yCounter\(5),
	datac => \VGA|controller|ALT_INV_yCounter\(3),
	cin => \VGA|controller|controller_translator|Add1~18\,
	sharein => \VGA|controller|controller_translator|Add1~19\,
	sumout => \VGA|controller|controller_translator|Add1~21_sumout\,
	cout => \VGA|controller|controller_translator|Add1~22\,
	shareout => \VGA|controller|controller_translator|Add1~23\);

-- Location: MLABCELL_X72_Y12_N12
\VGA|controller|controller_translator|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~25_sumout\ = SUM(( !\VGA|controller|yCounter\(6) $ (!\VGA|controller|yCounter\(4)) ) + ( \VGA|controller|controller_translator|Add1~23\ ) + ( \VGA|controller|controller_translator|Add1~22\ ))
-- \VGA|controller|controller_translator|Add1~26\ = CARRY(( !\VGA|controller|yCounter\(6) $ (!\VGA|controller|yCounter\(4)) ) + ( \VGA|controller|controller_translator|Add1~23\ ) + ( \VGA|controller|controller_translator|Add1~22\ ))
-- \VGA|controller|controller_translator|Add1~27\ = SHARE((\VGA|controller|yCounter\(6) & \VGA|controller|yCounter\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|ALT_INV_yCounter\(6),
	datad => \VGA|controller|ALT_INV_yCounter\(4),
	cin => \VGA|controller|controller_translator|Add1~22\,
	sharein => \VGA|controller|controller_translator|Add1~23\,
	sumout => \VGA|controller|controller_translator|Add1~25_sumout\,
	cout => \VGA|controller|controller_translator|Add1~26\,
	shareout => \VGA|controller|controller_translator|Add1~27\);

-- Location: MLABCELL_X72_Y12_N15
\VGA|controller|controller_translator|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~29_sumout\ = SUM(( !\VGA|controller|yCounter\(5) $ (!\VGA|controller|yCounter\(7)) ) + ( \VGA|controller|controller_translator|Add1~27\ ) + ( \VGA|controller|controller_translator|Add1~26\ ))
-- \VGA|controller|controller_translator|Add1~30\ = CARRY(( !\VGA|controller|yCounter\(5) $ (!\VGA|controller|yCounter\(7)) ) + ( \VGA|controller|controller_translator|Add1~27\ ) + ( \VGA|controller|controller_translator|Add1~26\ ))
-- \VGA|controller|controller_translator|Add1~31\ = SHARE((\VGA|controller|yCounter\(5) & \VGA|controller|yCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_yCounter\(5),
	datad => \VGA|controller|ALT_INV_yCounter\(7),
	cin => \VGA|controller|controller_translator|Add1~26\,
	sharein => \VGA|controller|controller_translator|Add1~27\,
	sumout => \VGA|controller|controller_translator|Add1~29_sumout\,
	cout => \VGA|controller|controller_translator|Add1~30\,
	shareout => \VGA|controller|controller_translator|Add1~31\);

-- Location: MLABCELL_X72_Y12_N18
\VGA|controller|controller_translator|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~33_sumout\ = SUM(( !\VGA|controller|yCounter\(6) $ (!\VGA|controller|yCounter\(8)) ) + ( \VGA|controller|controller_translator|Add1~31\ ) + ( \VGA|controller|controller_translator|Add1~30\ ))
-- \VGA|controller|controller_translator|Add1~34\ = CARRY(( !\VGA|controller|yCounter\(6) $ (!\VGA|controller|yCounter\(8)) ) + ( \VGA|controller|controller_translator|Add1~31\ ) + ( \VGA|controller|controller_translator|Add1~30\ ))
-- \VGA|controller|controller_translator|Add1~35\ = SHARE((\VGA|controller|yCounter\(6) & \VGA|controller|yCounter\(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|ALT_INV_yCounter\(6),
	datac => \VGA|controller|ALT_INV_yCounter\(8),
	cin => \VGA|controller|controller_translator|Add1~30\,
	sharein => \VGA|controller|controller_translator|Add1~31\,
	sumout => \VGA|controller|controller_translator|Add1~33_sumout\,
	cout => \VGA|controller|controller_translator|Add1~34\,
	shareout => \VGA|controller|controller_translator|Add1~35\);

-- Location: MLABCELL_X72_Y12_N21
\VGA|controller|controller_translator|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~37_sumout\ = SUM(( \VGA|controller|yCounter\(7) ) + ( \VGA|controller|controller_translator|Add1~35\ ) + ( \VGA|controller|controller_translator|Add1~34\ ))
-- \VGA|controller|controller_translator|Add1~38\ = CARRY(( \VGA|controller|yCounter\(7) ) + ( \VGA|controller|controller_translator|Add1~35\ ) + ( \VGA|controller|controller_translator|Add1~34\ ))
-- \VGA|controller|controller_translator|Add1~39\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_yCounter\(7),
	cin => \VGA|controller|controller_translator|Add1~34\,
	sharein => \VGA|controller|controller_translator|Add1~35\,
	sumout => \VGA|controller|controller_translator|Add1~37_sumout\,
	cout => \VGA|controller|controller_translator|Add1~38\,
	shareout => \VGA|controller|controller_translator|Add1~39\);

-- Location: MLABCELL_X72_Y12_N24
\VGA|controller|controller_translator|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~1_sumout\ = SUM(( \VGA|controller|yCounter\(8) ) + ( \VGA|controller|controller_translator|Add1~39\ ) + ( \VGA|controller|controller_translator|Add1~38\ ))
-- \VGA|controller|controller_translator|Add1~2\ = CARRY(( \VGA|controller|yCounter\(8) ) + ( \VGA|controller|controller_translator|Add1~39\ ) + ( \VGA|controller|controller_translator|Add1~38\ ))
-- \VGA|controller|controller_translator|Add1~3\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \VGA|controller|ALT_INV_yCounter\(8),
	cin => \VGA|controller|controller_translator|Add1~38\,
	sharein => \VGA|controller|controller_translator|Add1~39\,
	sumout => \VGA|controller|controller_translator|Add1~1_sumout\,
	cout => \VGA|controller|controller_translator|Add1~2\,
	shareout => \VGA|controller|controller_translator|Add1~3\);

-- Location: MLABCELL_X72_Y12_N27
\VGA|controller|controller_translator|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~5_sumout\ = SUM(( GND ) + ( \VGA|controller|controller_translator|Add1~3\ ) + ( \VGA|controller|controller_translator|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \VGA|controller|controller_translator|Add1~2\,
	sharein => \VGA|controller|controller_translator|Add1~3\,
	sumout => \VGA|controller|controller_translator|Add1~5_sumout\);

-- Location: MLABCELL_X72_Y12_N51
\VGA|VideoMemory|auto_generated|rden_decode_b|w_anode157w[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode157w\(2) = ( \VGA|controller|controller_translator|Add1~1_sumout\ & ( !\VGA|controller|controller_translator|Add1~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|controller_translator|ALT_INV_Add1~5_sumout\,
	dataf => \VGA|controller|controller_translator|ALT_INV_Add1~1_sumout\,
	combout => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode157w\(2));

-- Location: MLABCELL_X78_Y15_N24
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LABCELL_X73_Y11_N36
\d|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Selector11~0_combout\ = (\d|Add7~12_combout\ & \d|WideNor0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \d|ALT_INV_Add7~12_combout\,
	datac => \d|ALT_INV_WideNor0~0_combout\,
	combout => \d|Selector11~0_combout\);

-- Location: LABCELL_X77_Y11_N42
\d|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Selector14~0_combout\ = ( \VGA|writeEn~0_combout\ & ( (!\d|Selector11~0_combout\ & (\d|Add7~9_sumout\)) # (\d|Selector11~0_combout\ & ((\d|clearXcount\(0)))) ) ) # ( !\VGA|writeEn~0_combout\ & ( (\p1|xOut\(0) & \d|Selector11~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_Add7~9_sumout\,
	datab => \p1|ALT_INV_xOut\(0),
	datac => \d|ALT_INV_clearXcount\(0),
	datad => \d|ALT_INV_Selector11~0_combout\,
	dataf => \VGA|ALT_INV_writeEn~0_combout\,
	combout => \d|Selector14~0_combout\);

-- Location: MLABCELL_X72_Y11_N21
\d|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Selector13~0_combout\ = ( \d|Add7~14_sumout\ & ( \p1|xOut\(1) & ( (!\VGA|writeEn~0_combout\ & ((\d|Selector11~0_combout\))) # (\VGA|writeEn~0_combout\ & ((!\d|Selector11~0_combout\) # (\d|clearXcount\(1)))) ) ) ) # ( !\d|Add7~14_sumout\ & ( 
-- \p1|xOut\(1) & ( (\d|Selector11~0_combout\ & ((!\VGA|writeEn~0_combout\) # (\d|clearXcount\(1)))) ) ) ) # ( \d|Add7~14_sumout\ & ( !\p1|xOut\(1) & ( (\VGA|writeEn~0_combout\ & ((!\d|Selector11~0_combout\) # (\d|clearXcount\(1)))) ) ) ) # ( 
-- !\d|Add7~14_sumout\ & ( !\p1|xOut\(1) & ( (\d|clearXcount\(1) & (\VGA|writeEn~0_combout\ & \d|Selector11~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001001100110001000100000000110111010011001111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_clearXcount\(1),
	datab => \VGA|ALT_INV_writeEn~0_combout\,
	datad => \d|ALT_INV_Selector11~0_combout\,
	datae => \d|ALT_INV_Add7~14_sumout\,
	dataf => \p1|ALT_INV_xOut\(1),
	combout => \d|Selector13~0_combout\);

-- Location: MLABCELL_X72_Y11_N51
\d|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Selector12~0_combout\ = ( \p1|xOut\(2) & ( (!\VGA|writeEn~0_combout\ & (((\d|Selector11~0_combout\)))) # (\VGA|writeEn~0_combout\ & ((!\d|Selector11~0_combout\ & (\d|Add7~18_sumout\)) # (\d|Selector11~0_combout\ & ((\d|clearXcount\(2)))))) ) ) # ( 
-- !\p1|xOut\(2) & ( (\VGA|writeEn~0_combout\ & ((!\d|Selector11~0_combout\ & (\d|Add7~18_sumout\)) # (\d|Selector11~0_combout\ & ((\d|clearXcount\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100010000010100010001101011110001000110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|ALT_INV_writeEn~0_combout\,
	datab => \d|ALT_INV_Add7~18_sumout\,
	datac => \d|ALT_INV_clearXcount\(2),
	datad => \d|ALT_INV_Selector11~0_combout\,
	dataf => \p1|ALT_INV_xOut\(2),
	combout => \d|Selector12~0_combout\);

-- Location: LABCELL_X77_Y11_N48
\d|Selector11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Selector11~1_combout\ = ( \d|Selector11~0_combout\ & ( \VGA|writeEn~0_combout\ & ( \d|clearXcount\(3) ) ) ) # ( !\d|Selector11~0_combout\ & ( \VGA|writeEn~0_combout\ & ( \d|Add7~22_sumout\ ) ) ) # ( \d|Selector11~0_combout\ & ( !\VGA|writeEn~0_combout\ 
-- & ( \p1|xOut\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ALT_INV_xOut\(3),
	datab => \d|ALT_INV_Add7~22_sumout\,
	datad => \d|ALT_INV_clearXcount\(3),
	datae => \d|ALT_INV_Selector11~0_combout\,
	dataf => \VGA|ALT_INV_writeEn~0_combout\,
	combout => \d|Selector11~1_combout\);

-- Location: LABCELL_X77_Y11_N24
\d|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d|Selector10~0_combout\ = ( \VGA|writeEn~0_combout\ & ( (!\d|presentState.CLEAR_S~q\ & ((\d|Add7~26_sumout\))) # (\d|presentState.CLEAR_S~q\ & (\d|clearXcount\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d|ALT_INV_presentState.CLEAR_S~q\,
	datab => \d|ALT_INV_clearXcount\(4),
	datac => \d|ALT_INV_Add7~26_sumout\,
	dataf => \VGA|ALT_INV_writeEn~0_combout\,
	combout => \d|Selector10~0_combout\);

-- Location: FF_X73_Y12_N43
\VGA|controller|xCounter[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~9_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter[4]~DUPLICATE_q\);

-- Location: FF_X73_Y12_N49
\VGA|controller|xCounter[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~17_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter[6]~DUPLICATE_q\);

-- Location: M10K_X76_Y12_N0
\VGA|VideoMemory|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "black.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_m6m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode118w\(2),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode118w\(2),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode157w\(2),
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

-- Location: FF_X72_Y12_N25
\VGA|VideoMemory|auto_generated|address_reg_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	asdata => \VGA|controller|controller_translator|Add1~5_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|VideoMemory|auto_generated|address_reg_b\(1));

-- Location: FF_X72_Y12_N32
\VGA|VideoMemory|auto_generated|out_address_reg_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	asdata => \VGA|VideoMemory|auto_generated|address_reg_b\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|VideoMemory|auto_generated|out_address_reg_b\(1));

-- Location: LABCELL_X75_Y11_N12
\VGA|VideoMemory|auto_generated|decode2|w_anode105w[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|decode2|w_anode105w\(2) = ( !\VGA|user_input_translator|Add1~1_sumout\ & ( (!\VGA|user_input_translator|Add1~5_sumout\ & !\VGA|writeEn~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA|user_input_translator|ALT_INV_Add1~5_sumout\,
	datad => \VGA|ALT_INV_writeEn~3_combout\,
	dataf => \VGA|user_input_translator|ALT_INV_Add1~1_sumout\,
	combout => \VGA|VideoMemory|auto_generated|decode2|w_anode105w\(2));

-- Location: MLABCELL_X72_Y12_N33
\VGA|VideoMemory|auto_generated|rden_decode_b|w_anode143w[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode143w\(2) = ( !\VGA|controller|controller_translator|Add1~1_sumout\ & ( !\VGA|controller|controller_translator|Add1~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|controller_translator|ALT_INV_Add1~5_sumout\,
	dataf => \VGA|controller|controller_translator|ALT_INV_Add1~1_sumout\,
	combout => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode143w\(2));

-- Location: M10K_X76_Y15_N0
\VGA|VideoMemory|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "10101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010",
	mem_init2 => "10101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010",
	mem_init1 => "10101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010",
	mem_init0 => "10101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "black.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_m6m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode105w\(2),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode105w\(2),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode143w\(2),
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: LABCELL_X75_Y11_N9
\VGA|VideoMemory|auto_generated|decode2|w_anode126w[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|decode2|w_anode126w\(2) = ( \VGA|user_input_translator|Add1~1_sumout\ & ( (!\VGA|writeEn~3_combout\ & !\VGA|user_input_translator|Add1~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA|ALT_INV_writeEn~3_combout\,
	datad => \VGA|user_input_translator|ALT_INV_Add1~5_sumout\,
	dataf => \VGA|user_input_translator|ALT_INV_Add1~1_sumout\,
	combout => \VGA|VideoMemory|auto_generated|decode2|w_anode126w\(2));

-- Location: MLABCELL_X72_Y12_N45
\VGA|VideoMemory|auto_generated|rden_decode_b|w_anode166w[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode166w\(2) = ( !\VGA|controller|controller_translator|Add1~1_sumout\ & ( \VGA|controller|controller_translator|Add1~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|controller_translator|ALT_INV_Add1~5_sumout\,
	dataf => \VGA|controller|controller_translator|ALT_INV_Add1~1_sumout\,
	combout => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode166w\(2));

-- Location: M10K_X76_Y10_N0
\VGA|VideoMemory|auto_generated|ram_block1a7\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "black.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_m6m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode126w\(2),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode126w\(2),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode166w\(2),
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

-- Location: LABCELL_X71_Y12_N27
\VGA|VideoMemory|auto_generated|address_reg_b[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|address_reg_b[0]~feeder_combout\ = ( \VGA|controller|controller_translator|Add1~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \VGA|controller|controller_translator|ALT_INV_Add1~1_sumout\,
	combout => \VGA|VideoMemory|auto_generated|address_reg_b[0]~feeder_combout\);

-- Location: FF_X71_Y12_N29
\VGA|VideoMemory|auto_generated|address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|VideoMemory|auto_generated|address_reg_b[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|VideoMemory|auto_generated|address_reg_b\(0));

-- Location: FF_X71_Y12_N25
\VGA|VideoMemory|auto_generated|out_address_reg_b[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	asdata => \VGA|VideoMemory|auto_generated|address_reg_b\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|VideoMemory|auto_generated|out_address_reg_b[0]~DUPLICATE_q\);

-- Location: MLABCELL_X72_Y12_N48
\VGA|VideoMemory|auto_generated|mux3|result_node[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|mux3|result_node[2]~0_combout\ = ( \VGA|VideoMemory|auto_generated|out_address_reg_b[0]~DUPLICATE_q\ & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & 
-- (\VGA|VideoMemory|auto_generated|ram_block1a5~portbdataout\)) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ((\VGA|VideoMemory|auto_generated|ram_block1a8\))) ) ) # ( !\VGA|VideoMemory|auto_generated|out_address_reg_b[0]~DUPLICATE_q\ & ( 
-- (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & (\VGA|VideoMemory|auto_generated|ram_block1a2~portbdataout\)) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ((\VGA|VideoMemory|auto_generated|ram_block1a8\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a5~portbdataout\,
	datab => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(1),
	datac => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a2~portbdataout\,
	datad => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a8\,
	dataf => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b[0]~DUPLICATE_q\,
	combout => \VGA|VideoMemory|auto_generated|mux3|result_node[2]~0_combout\);

-- Location: M10K_X76_Y14_N0
\VGA|VideoMemory|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "10101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010",
	mem_init2 => "10101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010",
	mem_init1 => "10101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010",
	mem_init0 => "10101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "black.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_m6m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode105w\(2),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode105w\(2),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode143w\(2),
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: M10K_X76_Y13_N0
\VGA|VideoMemory|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "black.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_m6m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode118w\(2),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode118w\(2),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode157w\(2),
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: MLABCELL_X72_Y12_N30
\VGA|VideoMemory|auto_generated|mux3|result_node[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|mux3|result_node[1]~1_combout\ = ( \VGA|VideoMemory|auto_generated|ram_block1a4~portbdataout\ & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & (((\VGA|VideoMemory|auto_generated|ram_block1a1~portbdataout\) # 
-- (\VGA|VideoMemory|auto_generated|out_address_reg_b[0]~DUPLICATE_q\)))) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & (\VGA|VideoMemory|auto_generated|ram_block1a7~portbdataout\)) ) ) # ( 
-- !\VGA|VideoMemory|auto_generated|ram_block1a4~portbdataout\ & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & (((!\VGA|VideoMemory|auto_generated|out_address_reg_b[0]~DUPLICATE_q\ & 
-- \VGA|VideoMemory|auto_generated|ram_block1a1~portbdataout\)))) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & (\VGA|VideoMemory|auto_generated|ram_block1a7~portbdataout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001010101000011000101010100111111010101010011111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a7~portbdataout\,
	datab => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b[0]~DUPLICATE_q\,
	datac => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a1~portbdataout\,
	datad => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(1),
	dataf => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a4~portbdataout\,
	combout => \VGA|VideoMemory|auto_generated|mux3|result_node[1]~1_combout\);

-- Location: M10K_X76_Y9_N0
\VGA|VideoMemory|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "black.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_m6m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode126w\(2),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode126w\(2),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode166w\(2),
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: FF_X71_Y12_N26
\VGA|VideoMemory|auto_generated|out_address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	asdata => \VGA|VideoMemory|auto_generated|address_reg_b\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|VideoMemory|auto_generated|out_address_reg_b\(0));

-- Location: M10K_X69_Y11_N0
\VGA|VideoMemory|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "black.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_m6m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode118w\(2),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode118w\(2),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode157w\(2),
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

-- Location: M10K_X76_Y11_N0
\VGA|VideoMemory|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "10101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010",
	mem_init2 => "10101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010",
	mem_init1 => "10101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010",
	mem_init0 => "10101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "black.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_m6m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode105w\(2),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode105w\(2),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode143w\(2),
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LABCELL_X71_Y12_N21
\VGA|VideoMemory|auto_generated|mux3|result_node[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|mux3|result_node[0]~2_combout\ = ( \VGA|VideoMemory|auto_generated|ram_block1a3~portbdataout\ & ( \VGA|VideoMemory|auto_generated|ram_block1a0~portbdataout\ & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(1)) # 
-- (\VGA|VideoMemory|auto_generated|ram_block1a6~portbdataout\) ) ) ) # ( !\VGA|VideoMemory|auto_generated|ram_block1a3~portbdataout\ & ( \VGA|VideoMemory|auto_generated|ram_block1a0~portbdataout\ & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & 
-- ((!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0)))) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & (\VGA|VideoMemory|auto_generated|ram_block1a6~portbdataout\)) ) ) ) # ( \VGA|VideoMemory|auto_generated|ram_block1a3~portbdataout\ & ( 
-- !\VGA|VideoMemory|auto_generated|ram_block1a0~portbdataout\ & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ((\VGA|VideoMemory|auto_generated|out_address_reg_b\(0)))) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & 
-- (\VGA|VideoMemory|auto_generated|ram_block1a6~portbdataout\)) ) ) ) # ( !\VGA|VideoMemory|auto_generated|ram_block1a3~portbdataout\ & ( !\VGA|VideoMemory|auto_generated|ram_block1a0~portbdataout\ & ( 
-- (\VGA|VideoMemory|auto_generated|ram_block1a6~portbdataout\ & \VGA|VideoMemory|auto_generated|out_address_reg_b\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100011101110111011101000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a6~portbdataout\,
	datab => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(1),
	datad => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(0),
	datae => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a3~portbdataout\,
	dataf => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a0~portbdataout\,
	combout => \VGA|VideoMemory|auto_generated|mux3|result_node[0]~2_combout\);


pll_reconfig_inst_tasks : altera_pll_reconfig_tasks
-- pragma translate_off
GENERIC MAP (
      number_of_fplls => 1);
-- pragma translate_on
END structure;


