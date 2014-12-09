-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "12/09/2014 17:19:33"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	serial IS
    PORT (
	\232_out\ : OUT std_logic;
	clk : IN std_logic;
	\232_in\ : IN std_logic;
	LEDR : OUT std_logic_vector(17 DOWNTO 0)
	);
END serial;

-- Design Ports Information
-- 232_out	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[17]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[16]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[15]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[14]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[13]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[12]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- 232_in	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF serial IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_232_out\ : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \ww_232_in\ : std_logic;
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|tickgen|Acc[0]~22_combout\ : std_logic;
SIGNAL \inst1|tickgen|Acc[1]~24_combout\ : std_logic;
SIGNAL \inst1|tickgen|Acc[3]~28_combout\ : std_logic;
SIGNAL \inst1|tickgen|Acc[5]~32_combout\ : std_logic;
SIGNAL \inst1|tickgen|Acc[7]~36_combout\ : std_logic;
SIGNAL \inst1|tickgen|Acc[14]~50_combout\ : std_logic;
SIGNAL \inst1|tickgen|Acc[16]~54_combout\ : std_logic;
SIGNAL \inst1|tickgen|Acc[17]~56_combout\ : std_logic;
SIGNAL \inst1|tickgen|Acc[19]~60_combout\ : std_logic;
SIGNAL \inst2|ioCount[10]~52_combout\ : std_logic;
SIGNAL \inst2|ioCount[21]~74_combout\ : std_logic;
SIGNAL \inst2|ioCount[22]~76_combout\ : std_logic;
SIGNAL \inst2|ioCount[24]~80_combout\ : std_logic;
SIGNAL \inst2|ioCount[26]~84_combout\ : std_logic;
SIGNAL \inst|tickgen|Acc[2]~20_combout\ : std_logic;
SIGNAL \inst|tickgen|Acc[4]~24_combout\ : std_logic;
SIGNAL \inst|tickgen|Acc[6]~28_combout\ : std_logic;
SIGNAL \inst|tickgen|Acc[8]~32_combout\ : std_logic;
SIGNAL \inst|tickgen|Acc[15]~46_combout\ : std_logic;
SIGNAL \inst|tickgen|Acc[17]~50_combout\ : std_logic;
SIGNAL \inst|tickgen|Acc[18]~52_combout\ : std_logic;
SIGNAL \inst|tickgen|Acc[20]~56_combout\ : std_logic;
SIGNAL \inst2|Mux6~59_combout\ : std_logic;
SIGNAL \inst2|Mux2~16_combout\ : std_logic;
SIGNAL \inst2|Mux6~64_combout\ : std_logic;
SIGNAL \inst2|Mux6~65_combout\ : std_logic;
SIGNAL \inst2|Equal2~4_combout\ : std_logic;
SIGNAL \inst2|Equal2~6_combout\ : std_logic;
SIGNAL \inst2|Equal2~9_combout\ : std_logic;
SIGNAL \inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|Mux6~84_combout\ : std_logic;
SIGNAL \inst2|Mux6~92_combout\ : std_logic;
SIGNAL \inst2|LessThan0~2_combout\ : std_logic;
SIGNAL \inst2|Selector0~1_combout\ : std_logic;
SIGNAL \inst2|Selector5~1_combout\ : std_logic;
SIGNAL \inst2|Mux6~94_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|Mux3~2_combout\ : std_logic;
SIGNAL \inst2|Mux2~24_combout\ : std_logic;
SIGNAL \inst2|Mux2~25_combout\ : std_logic;
SIGNAL \inst2|Mux1~15_combout\ : std_logic;
SIGNAL \inst2|Mux0~8_combout\ : std_logic;
SIGNAL \inst2|Mux0~15_combout\ : std_logic;
SIGNAL \inst2|txData~7_combout\ : std_logic;
SIGNAL \inst2|Mux4~30_combout\ : std_logic;
SIGNAL \inst2|Mux5~4_combout\ : std_logic;
SIGNAL \inst2|Mux5~5_combout\ : std_logic;
SIGNAL \inst2|Mux5~3_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|verbose[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|verbose[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|verbose[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|tickgen|Acc[0]~23\ : std_logic;
SIGNAL \inst1|tickgen|Acc[1]~25\ : std_logic;
SIGNAL \inst1|tickgen|Acc[2]~26_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst1|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|Mux1~6_combout\ : std_logic;
SIGNAL \inst1|Mux1~2_combout\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|tickgen|Acc[2]~27\ : std_logic;
SIGNAL \inst1|tickgen|Acc[3]~29\ : std_logic;
SIGNAL \inst1|tickgen|Acc[4]~30_combout\ : std_logic;
SIGNAL \inst1|tickgen|Acc[4]~31\ : std_logic;
SIGNAL \inst1|tickgen|Acc[5]~33\ : std_logic;
SIGNAL \inst1|tickgen|Acc[6]~34_combout\ : std_logic;
SIGNAL \inst1|tickgen|Acc[6]~35\ : std_logic;
SIGNAL \inst1|tickgen|Acc[7]~37\ : std_logic;
SIGNAL \inst1|tickgen|Acc[8]~38_combout\ : std_logic;
SIGNAL \inst1|tickgen|Acc[8]~39\ : std_logic;
SIGNAL \inst1|tickgen|Acc[9]~40_combout\ : std_logic;
SIGNAL \inst1|tickgen|Acc[9]~41\ : std_logic;
SIGNAL \inst1|tickgen|Acc[10]~42_combout\ : std_logic;
SIGNAL \inst1|tickgen|Acc[10]~43\ : std_logic;
SIGNAL \inst1|tickgen|Acc[11]~44_combout\ : std_logic;
SIGNAL \inst1|tickgen|Acc[11]~45\ : std_logic;
SIGNAL \inst1|tickgen|Acc[12]~46_combout\ : std_logic;
SIGNAL \inst1|tickgen|Acc[12]~47\ : std_logic;
SIGNAL \inst1|tickgen|Acc[13]~48_combout\ : std_logic;
SIGNAL \inst1|tickgen|Acc[13]~49\ : std_logic;
SIGNAL \inst1|tickgen|Acc[14]~51\ : std_logic;
SIGNAL \inst1|tickgen|Acc[15]~52_combout\ : std_logic;
SIGNAL \inst1|tickgen|Acc[15]~53\ : std_logic;
SIGNAL \inst1|tickgen|Acc[16]~55\ : std_logic;
SIGNAL \inst1|tickgen|Acc[17]~57\ : std_logic;
SIGNAL \inst1|tickgen|Acc[18]~58_combout\ : std_logic;
SIGNAL \inst1|tickgen|Acc[18]~59\ : std_logic;
SIGNAL \inst1|tickgen|Acc[19]~61\ : std_logic;
SIGNAL \inst1|tickgen|Acc[20]~62_combout\ : std_logic;
SIGNAL \inst1|tickgen|Acc[20]~63\ : std_logic;
SIGNAL \inst1|tickgen|Acc[21]~64_combout\ : std_logic;
SIGNAL \inst1|always0~0_combout\ : std_logic;
SIGNAL \inst1|Mux1~3_combout\ : std_logic;
SIGNAL \inst2|Selector6~0_combout\ : std_logic;
SIGNAL \inst2|state.w2_state~regout\ : std_logic;
SIGNAL \inst2|ioCount[0]~32_combout\ : std_logic;
SIGNAL \inst2|ioCount[0]~33\ : std_logic;
SIGNAL \inst2|ioCount[1]~34_combout\ : std_logic;
SIGNAL \inst2|ioCount[1]~35\ : std_logic;
SIGNAL \inst2|ioCount[2]~36_combout\ : std_logic;
SIGNAL \inst2|ioCount[2]~37\ : std_logic;
SIGNAL \inst2|ioCount[3]~39\ : std_logic;
SIGNAL \inst2|ioCount[4]~40_combout\ : std_logic;
SIGNAL \inst2|ioCount[4]~41\ : std_logic;
SIGNAL \inst2|ioCount[5]~43\ : std_logic;
SIGNAL \inst2|ioCount[6]~45\ : std_logic;
SIGNAL \inst2|ioCount[7]~46_combout\ : std_logic;
SIGNAL \inst2|ioCount[7]~47\ : std_logic;
SIGNAL \inst2|ioCount[8]~49\ : std_logic;
SIGNAL \inst2|ioCount[9]~50_combout\ : std_logic;
SIGNAL \inst2|ioCount[9]~51\ : std_logic;
SIGNAL \inst2|ioCount[10]~53\ : std_logic;
SIGNAL \inst2|ioCount[11]~54_combout\ : std_logic;
SIGNAL \inst2|ioCount[11]~55\ : std_logic;
SIGNAL \inst2|ioCount[12]~57\ : std_logic;
SIGNAL \inst2|ioCount[13]~58_combout\ : std_logic;
SIGNAL \inst2|ioCount[13]~59\ : std_logic;
SIGNAL \inst2|ioCount[14]~60_combout\ : std_logic;
SIGNAL \inst2|ioCount[14]~61\ : std_logic;
SIGNAL \inst2|ioCount[15]~62_combout\ : std_logic;
SIGNAL \inst2|ioCount[15]~63\ : std_logic;
SIGNAL \inst2|ioCount[16]~64_combout\ : std_logic;
SIGNAL \inst2|ioCount[16]~65\ : std_logic;
SIGNAL \inst2|ioCount[17]~66_combout\ : std_logic;
SIGNAL \inst2|ioCount[17]~67\ : std_logic;
SIGNAL \inst2|ioCount[18]~68_combout\ : std_logic;
SIGNAL \inst2|ioCount[18]~69\ : std_logic;
SIGNAL \inst2|ioCount[19]~71\ : std_logic;
SIGNAL \inst2|ioCount[20]~72_combout\ : std_logic;
SIGNAL \inst2|ioCount[20]~73\ : std_logic;
SIGNAL \inst2|ioCount[21]~75\ : std_logic;
SIGNAL \inst2|ioCount[22]~77\ : std_logic;
SIGNAL \inst2|ioCount[23]~78_combout\ : std_logic;
SIGNAL \inst2|ioCount[23]~79\ : std_logic;
SIGNAL \inst2|ioCount[24]~81\ : std_logic;
SIGNAL \inst2|ioCount[25]~82_combout\ : std_logic;
SIGNAL \inst2|ioCount[25]~83\ : std_logic;
SIGNAL \inst2|ioCount[26]~85\ : std_logic;
SIGNAL \inst2|ioCount[27]~86_combout\ : std_logic;
SIGNAL \inst2|ioCount[27]~87\ : std_logic;
SIGNAL \inst2|ioCount[28]~88_combout\ : std_logic;
SIGNAL \inst2|ioCount[28]~89\ : std_logic;
SIGNAL \inst2|ioCount[29]~90_combout\ : std_logic;
SIGNAL \inst2|ioCount[29]~91\ : std_logic;
SIGNAL \inst2|ioCount[30]~92_combout\ : std_logic;
SIGNAL \inst2|Equal2~7_combout\ : std_logic;
SIGNAL \inst2|ioCount[19]~70_combout\ : std_logic;
SIGNAL \inst2|Equal2~3_combout\ : std_logic;
SIGNAL \inst2|ioCount[8]~48_combout\ : std_logic;
SIGNAL \inst2|Equal2~1_combout\ : std_logic;
SIGNAL \inst2|ioCount[12]~56_combout\ : std_logic;
SIGNAL \inst2|Equal2~2_combout\ : std_logic;
SIGNAL \inst2|Equal2~5_combout\ : std_logic;
SIGNAL \inst2|Equal2~8_combout\ : std_logic;
SIGNAL \inst2|ioCount[30]~93\ : std_logic;
SIGNAL \inst2|ioCount[31]~94_combout\ : std_logic;
SIGNAL \inst2|ioCount[6]~44_combout\ : std_logic;
SIGNAL \232_in~combout\ : std_logic;
SIGNAL \inst|RxD_sync[0]~0_combout\ : std_logic;
SIGNAL \inst|tickgen|Acc[1]~60_combout\ : std_logic;
SIGNAL \inst|tickgen|Acc[2]~21\ : std_logic;
SIGNAL \inst|tickgen|Acc[3]~22_combout\ : std_logic;
SIGNAL \inst|tickgen|Acc[3]~23\ : std_logic;
SIGNAL \inst|tickgen|Acc[4]~25\ : std_logic;
SIGNAL \inst|tickgen|Acc[5]~26_combout\ : std_logic;
SIGNAL \inst|tickgen|Acc[5]~27\ : std_logic;
SIGNAL \inst|tickgen|Acc[6]~29\ : std_logic;
SIGNAL \inst|tickgen|Acc[7]~30_combout\ : std_logic;
SIGNAL \inst|tickgen|Acc[7]~31\ : std_logic;
SIGNAL \inst|tickgen|Acc[8]~33\ : std_logic;
SIGNAL \inst|tickgen|Acc[9]~34_combout\ : std_logic;
SIGNAL \inst|tickgen|Acc[9]~35\ : std_logic;
SIGNAL \inst|tickgen|Acc[10]~36_combout\ : std_logic;
SIGNAL \inst|tickgen|Acc[10]~37\ : std_logic;
SIGNAL \inst|tickgen|Acc[11]~38_combout\ : std_logic;
SIGNAL \inst|tickgen|Acc[11]~39\ : std_logic;
SIGNAL \inst|tickgen|Acc[12]~40_combout\ : std_logic;
SIGNAL \inst|tickgen|Acc[12]~41\ : std_logic;
SIGNAL \inst|tickgen|Acc[13]~42_combout\ : std_logic;
SIGNAL \inst|tickgen|Acc[13]~43\ : std_logic;
SIGNAL \inst|tickgen|Acc[14]~44_combout\ : std_logic;
SIGNAL \inst|tickgen|Acc[14]~45\ : std_logic;
SIGNAL \inst|tickgen|Acc[15]~47\ : std_logic;
SIGNAL \inst|tickgen|Acc[16]~48_combout\ : std_logic;
SIGNAL \inst|tickgen|Acc[16]~49\ : std_logic;
SIGNAL \inst|tickgen|Acc[17]~51\ : std_logic;
SIGNAL \inst|tickgen|Acc[18]~53\ : std_logic;
SIGNAL \inst|tickgen|Acc[19]~54_combout\ : std_logic;
SIGNAL \inst|tickgen|Acc[19]~55\ : std_logic;
SIGNAL \inst|tickgen|Acc[20]~57\ : std_logic;
SIGNAL \inst|tickgen|Acc[21]~58_combout\ : std_logic;
SIGNAL \inst|RxD_sync[1]~feeder_combout\ : std_logic;
SIGNAL \inst|Filter_cnt[1]~1_combout\ : std_logic;
SIGNAL \inst|Filter_cnt[0]~0_combout\ : std_logic;
SIGNAL \inst|RxD_bit~0_combout\ : std_logic;
SIGNAL \inst|RxD_bit~regout\ : std_logic;
SIGNAL \inst|RxD_data[7]~0_combout\ : std_logic;
SIGNAL \inst|Equal4~0_combout\ : std_logic;
SIGNAL \inst|OversamplingCnt~1_combout\ : std_logic;
SIGNAL \inst|OversamplingCnt~2_combout\ : std_logic;
SIGNAL \inst|OversamplingCnt~0_combout\ : std_logic;
SIGNAL \inst|sampleNow~0_combout\ : std_logic;
SIGNAL \inst|OversamplingCnt~3_combout\ : std_logic;
SIGNAL \inst|sampleNow~combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|Mux2~1_combout\ : std_logic;
SIGNAL \inst|Mux1~1_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst|always4~0_combout\ : std_logic;
SIGNAL \inst|RxD_data[6]~feeder_combout\ : std_logic;
SIGNAL \inst|RxD_data[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|message~8_combout\ : std_logic;
SIGNAL \inst2|state.begin_state~feeder_combout\ : std_logic;
SIGNAL \inst2|state.begin_state~regout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|Mux3~1_combout\ : std_logic;
SIGNAL \inst|Mux3~3_combout\ : std_logic;
SIGNAL \inst|RxD_data_ready~0_combout\ : std_logic;
SIGNAL \inst|RxD_data_ready~1_combout\ : std_logic;
SIGNAL \inst|RxD_data_ready~regout\ : std_logic;
SIGNAL \inst2|Selector4~0_combout\ : std_logic;
SIGNAL \inst2|Selector4~1_combout\ : std_logic;
SIGNAL \inst2|state.r_state~regout\ : std_logic;
SIGNAL \inst2|Selector1~0_combout\ : std_logic;
SIGNAL \inst2|Selector1~1_combout\ : std_logic;
SIGNAL \inst2|message.MSG_BEGIN~regout\ : std_logic;
SIGNAL \inst2|Mux6~61_combout\ : std_logic;
SIGNAL \inst2|ioCount[3]~38_combout\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|LessThan0~1_combout\ : std_logic;
SIGNAL \inst2|LessThan0~3_combout\ : std_logic;
SIGNAL \inst2|LessThan0~4_combout\ : std_logic;
SIGNAL \inst2|Selector5~2_combout\ : std_logic;
SIGNAL \inst2|state.w1_state~regout\ : std_logic;
SIGNAL \inst2|Selector7~0_combout\ : std_logic;
SIGNAL \inst2|Selector7~1_combout\ : std_logic;
SIGNAL \inst2|txStart~regout\ : std_logic;
SIGNAL \inst1|Mux1~4_combout\ : std_logic;
SIGNAL \inst1|Mux1~5_combout\ : std_logic;
SIGNAL \inst2|Selector5~0_combout\ : std_logic;
SIGNAL \inst2|Equal2~10_combout\ : std_logic;
SIGNAL \inst2|Equal2~11_combout\ : std_logic;
SIGNAL \inst2|Mux6~82_combout\ : std_logic;
SIGNAL \inst2|Mux6~99_combout\ : std_logic;
SIGNAL \inst2|ioCount[5]~42_combout\ : std_logic;
SIGNAL \inst2|Mux6~83_combout\ : std_logic;
SIGNAL \inst2|Mux5~16_combout\ : std_logic;
SIGNAL \inst2|Mux6~62_combout\ : std_logic;
SIGNAL \inst2|Mux6~66_combout\ : std_logic;
SIGNAL \inst2|Mux6~85_combout\ : std_logic;
SIGNAL \inst2|Mux5~17_combout\ : std_logic;
SIGNAL \inst2|Mux6~68_combout\ : std_logic;
SIGNAL \inst2|Mux6~100_combout\ : std_logic;
SIGNAL \inst2|Selector0~0_combout\ : std_logic;
SIGNAL \inst2|Selector0~2_combout\ : std_logic;
SIGNAL \inst2|message.MSG_NONE~regout\ : std_logic;
SIGNAL \inst2|Mux6~89_combout\ : std_logic;
SIGNAL \inst2|Equal2~0_combout\ : std_logic;
SIGNAL \inst2|Mux6~90_combout\ : std_logic;
SIGNAL \inst2|Mux6~91_combout\ : std_logic;
SIGNAL \inst2|Mux6~86_combout\ : std_logic;
SIGNAL \inst2|Mux6~73_combout\ : std_logic;
SIGNAL \inst2|Mux6~87_combout\ : std_logic;
SIGNAL \inst2|Mux6~88_combout\ : std_logic;
SIGNAL \inst2|Mux5~18_combout\ : std_logic;
SIGNAL \inst2|Mux5~19_combout\ : std_logic;
SIGNAL \inst2|Mux5~20_combout\ : std_logic;
SIGNAL \inst2|Mux5~23_combout\ : std_logic;
SIGNAL \inst2|Mux5~24_combout\ : std_logic;
SIGNAL \inst2|Mux5~21_combout\ : std_logic;
SIGNAL \inst2|Mux5~22_combout\ : std_logic;
SIGNAL \inst2|txData~1_combout\ : std_logic;
SIGNAL \inst1|always0~1_combout\ : std_logic;
SIGNAL \inst1|TxD_shift~9_combout\ : std_logic;
SIGNAL \inst2|verbose[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|Mux0~5_combout\ : std_logic;
SIGNAL \inst2|Mux0~6_combout\ : std_logic;
SIGNAL \inst2|Mux0~4_combout\ : std_logic;
SIGNAL \inst2|Mux0~7_combout\ : std_logic;
SIGNAL \inst2|Mux0~20_combout\ : std_logic;
SIGNAL \inst2|Mux0~16_combout\ : std_logic;
SIGNAL \inst2|Mux0~17_combout\ : std_logic;
SIGNAL \inst2|Mux6~98_combout\ : std_logic;
SIGNAL \inst2|Mux2~36_combout\ : std_logic;
SIGNAL \inst2|Mux0~9_combout\ : std_logic;
SIGNAL \inst2|Mux0~11_combout\ : std_logic;
SIGNAL \inst2|Mux0~12_combout\ : std_logic;
SIGNAL \inst2|Mux6~72_combout\ : std_logic;
SIGNAL \inst2|Mux0~10_combout\ : std_logic;
SIGNAL \inst2|Mux0~19_combout\ : std_logic;
SIGNAL \inst2|Mux0~13_combout\ : std_logic;
SIGNAL \inst2|Mux0~14_combout\ : std_logic;
SIGNAL \inst2|Mux0~18_combout\ : std_logic;
SIGNAL \inst2|txData~6_combout\ : std_logic;
SIGNAL \inst1|TxD_shift~8_combout\ : std_logic;
SIGNAL \inst1|TxD_shift[0]~10_combout\ : std_logic;
SIGNAL \inst2|Mux1~20_combout\ : std_logic;
SIGNAL \inst2|Mux1~23_combout\ : std_logic;
SIGNAL \inst2|Mux1~8_combout\ : std_logic;
SIGNAL \inst2|Mux1~24_combout\ : std_logic;
SIGNAL \inst2|Mux1~16_combout\ : std_logic;
SIGNAL \inst2|Mux1~17_combout\ : std_logic;
SIGNAL \inst2|Mux1~18_combout\ : std_logic;
SIGNAL \inst2|Mux1~19_combout\ : std_logic;
SIGNAL \inst2|Mux1~13_combout\ : std_logic;
SIGNAL \inst2|Mux1~14_combout\ : std_logic;
SIGNAL \inst2|Mux1~22_combout\ : std_logic;
SIGNAL \inst2|Mux1~21_combout\ : std_logic;
SIGNAL \inst2|verbose[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|txData~5_combout\ : std_logic;
SIGNAL \inst1|TxD_shift~7_combout\ : std_logic;
SIGNAL \inst2|Mux2~5_combout\ : std_logic;
SIGNAL \inst2|Mux2~4_combout\ : std_logic;
SIGNAL \inst2|Mux2~3_combout\ : std_logic;
SIGNAL \inst2|Mux2~41_combout\ : std_logic;
SIGNAL \inst2|Mux2~42_combout\ : std_logic;
SIGNAL \inst2|Mux2~18_combout\ : std_logic;
SIGNAL \inst2|Mux2~19_combout\ : std_logic;
SIGNAL \inst2|Mux2~20_combout\ : std_logic;
SIGNAL \inst2|Mux2~21_combout\ : std_logic;
SIGNAL \inst2|Mux2~22_combout\ : std_logic;
SIGNAL \inst2|Mux2~23_combout\ : std_logic;
SIGNAL \inst2|Mux2~17_combout\ : std_logic;
SIGNAL \inst2|Mux2~26_combout\ : std_logic;
SIGNAL \inst2|Mux2~31_combout\ : std_logic;
SIGNAL \inst2|Mux2~32_combout\ : std_logic;
SIGNAL \inst2|Mux2~33_combout\ : std_logic;
SIGNAL \inst2|Mux2~29_combout\ : std_logic;
SIGNAL \inst2|Mux2~28_combout\ : std_logic;
SIGNAL \inst2|Mux2~27_combout\ : std_logic;
SIGNAL \inst2|Mux2~30_combout\ : std_logic;
SIGNAL \inst2|Mux2~34_combout\ : std_logic;
SIGNAL \inst2|Mux2~39_combout\ : std_logic;
SIGNAL \inst2|Mux2~40_combout\ : std_logic;
SIGNAL \inst2|Mux2~35_combout\ : std_logic;
SIGNAL \inst2|Mux2~37_combout\ : std_logic;
SIGNAL \inst2|Mux2~38_combout\ : std_logic;
SIGNAL \inst2|txData~4_combout\ : std_logic;
SIGNAL \inst1|TxD_shift~6_combout\ : std_logic;
SIGNAL \inst2|Mux3~12_combout\ : std_logic;
SIGNAL \inst2|Mux3~13_combout\ : std_logic;
SIGNAL \inst2|Mux3~11_combout\ : std_logic;
SIGNAL \inst2|Mux3~28_combout\ : std_logic;
SIGNAL \inst2|Mux3~16_combout\ : std_logic;
SIGNAL \inst2|Mux3~17_combout\ : std_logic;
SIGNAL \inst2|Mux3~18_combout\ : std_logic;
SIGNAL \inst2|Mux6~96_combout\ : std_logic;
SIGNAL \inst2|Mux3~19_combout\ : std_logic;
SIGNAL \inst2|Mux3~5_combout\ : std_logic;
SIGNAL \inst2|Mux3~4_combout\ : std_logic;
SIGNAL \inst2|Mux3~3_combout\ : std_logic;
SIGNAL \inst2|Mux3~27_combout\ : std_logic;
SIGNAL \inst2|Selector2~0_combout\ : std_logic;
SIGNAL \inst2|Selector2~1_combout\ : std_logic;
SIGNAL \inst2|message.MSG_ERROR~regout\ : std_logic;
SIGNAL \inst2|Mux6~95_combout\ : std_logic;
SIGNAL \inst2|Mux6~97_combout\ : std_logic;
SIGNAL \inst2|Mux6~101_combout\ : std_logic;
SIGNAL \inst2|Mux6~58_combout\ : std_logic;
SIGNAL \inst2|Mux6~60_combout\ : std_logic;
SIGNAL \inst2|Mux3~20_combout\ : std_logic;
SIGNAL \inst2|Mux3~21_combout\ : std_logic;
SIGNAL \inst2|Mux3~22_combout\ : std_logic;
SIGNAL \inst2|Mux3~23_combout\ : std_logic;
SIGNAL \inst2|Mux3~24_combout\ : std_logic;
SIGNAL \inst2|Mux3~25_combout\ : std_logic;
SIGNAL \inst2|Mux3~26_combout\ : std_logic;
SIGNAL \inst2|txData~3_combout\ : std_logic;
SIGNAL \inst1|TxD_shift~5_combout\ : std_logic;
SIGNAL \inst2|Mux4~8_combout\ : std_logic;
SIGNAL \inst2|Mux4~9_combout\ : std_logic;
SIGNAL \inst2|Mux4~7_combout\ : std_logic;
SIGNAL \inst2|Mux4~17_combout\ : std_logic;
SIGNAL \inst2|Mux4~16_combout\ : std_logic;
SIGNAL \inst2|Mux4~15_combout\ : std_logic;
SIGNAL \inst2|Mux6~93_combout\ : std_logic;
SIGNAL \inst2|Mux4~24_combout\ : std_logic;
SIGNAL \inst2|Mux4~25_combout\ : std_logic;
SIGNAL \inst2|Mux4~26_combout\ : std_logic;
SIGNAL \inst2|Mux6~81_combout\ : std_logic;
SIGNAL \inst2|Mux4~23_combout\ : std_logic;
SIGNAL \inst2|Mux4~27_combout\ : std_logic;
SIGNAL \inst2|Mux4~33_combout\ : std_logic;
SIGNAL \inst2|Mux4~34_combout\ : std_logic;
SIGNAL \inst2|Mux4~22_combout\ : std_logic;
SIGNAL \inst2|Mux6~67_combout\ : std_logic;
SIGNAL \inst2|Mux6~69_combout\ : std_logic;
SIGNAL \inst2|Mux4~35_combout\ : std_logic;
SIGNAL \inst2|Mux4~20_combout\ : std_logic;
SIGNAL \inst2|Mux4~29_combout\ : std_logic;
SIGNAL \inst2|Mux4~21_combout\ : std_logic;
SIGNAL \inst2|Mux4~36_combout\ : std_logic;
SIGNAL \inst2|Mux4~28_combout\ : std_logic;
SIGNAL \inst2|Mux4~31_combout\ : std_logic;
SIGNAL \inst2|Mux4~32_combout\ : std_logic;
SIGNAL \inst2|txData~2_combout\ : std_logic;
SIGNAL \inst1|TxD_shift~4_combout\ : std_logic;
SIGNAL \inst1|TxD_shift~3_combout\ : std_logic;
SIGNAL \inst2|Mux6~55_combout\ : std_logic;
SIGNAL \inst2|Mux6~54_combout\ : std_logic;
SIGNAL \inst2|Mux6~53_combout\ : std_logic;
SIGNAL \inst2|Mux6~63_combout\ : std_logic;
SIGNAL \inst2|Mux6~106_combout\ : std_logic;
SIGNAL \inst2|Mux6~107_combout\ : std_logic;
SIGNAL \inst2|Mux6~70_combout\ : std_logic;
SIGNAL \inst2|Mux6~71_combout\ : std_logic;
SIGNAL \inst2|Mux6~77_combout\ : std_logic;
SIGNAL \inst2|Mux6~76_combout\ : std_logic;
SIGNAL \inst2|Mux6~78_combout\ : std_logic;
SIGNAL \inst2|Mux6~74_combout\ : std_logic;
SIGNAL \inst2|Mux6~75_combout\ : std_logic;
SIGNAL \inst2|Mux6~79_combout\ : std_logic;
SIGNAL \inst2|Mux6~104_combout\ : std_logic;
SIGNAL \inst2|Mux6~105_combout\ : std_logic;
SIGNAL \inst2|Mux6~80_combout\ : std_logic;
SIGNAL \inst2|Mux6~46_combout\ : std_logic;
SIGNAL \inst2|Mux6~47_combout\ : std_logic;
SIGNAL \inst2|Mux6~45_combout\ : std_logic;
SIGNAL \inst2|Mux6~102_combout\ : std_logic;
SIGNAL \inst2|Mux6~103_combout\ : std_logic;
SIGNAL \inst2|txData~0_combout\ : std_logic;
SIGNAL \inst1|TxD_shift~2_combout\ : std_logic;
SIGNAL \inst1|TxD~0_combout\ : std_logic;
SIGNAL \inst1|TxD_state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|TxD_shift\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|tickgen|Acc\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \inst2|verbose\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|txData\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|ioCount\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|RxD_sync\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|RxD_state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|RxD_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|OversamplingCnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Filter_cnt\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|tickgen|Acc\ : std_logic_vector(21 DOWNTO 0);

BEGIN

\232_out\ <= \ww_232_out\;
ww_clk <= clk;
\ww_232_in\ <= \232_in\;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCFF_X36_Y24_N21
\inst2|ioCount[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|ioCount[10]~52_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	ena => \inst2|state.w2_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|ioCount\(10));

-- Location: LCFF_X36_Y23_N11
\inst2|ioCount[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|ioCount[21]~74_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	ena => \inst2|state.w2_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|ioCount\(21));

-- Location: LCFF_X36_Y23_N13
\inst2|ioCount[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|ioCount[22]~76_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	ena => \inst2|state.w2_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|ioCount\(22));

-- Location: LCFF_X36_Y23_N17
\inst2|ioCount[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|ioCount[24]~80_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	ena => \inst2|state.w2_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|ioCount\(24));

-- Location: LCFF_X36_Y23_N21
\inst2|ioCount[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|ioCount[26]~84_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	ena => \inst2|state.w2_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|ioCount\(26));

-- Location: LCFF_X38_Y22_N17
\inst1|tickgen|Acc[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|tickgen|Acc[19]~60_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|tickgen|Acc\(19));

-- Location: LCFF_X38_Y22_N13
\inst1|tickgen|Acc[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|tickgen|Acc[17]~56_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|tickgen|Acc\(17));

-- Location: LCFF_X38_Y22_N11
\inst1|tickgen|Acc[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|tickgen|Acc[16]~54_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|tickgen|Acc\(16));

-- Location: LCFF_X38_Y22_N7
\inst1|tickgen|Acc[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|tickgen|Acc[14]~50_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|tickgen|Acc\(14));

-- Location: LCFF_X38_Y23_N25
\inst1|tickgen|Acc[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|tickgen|Acc[7]~36_combout\,
	sdata => VCC,
	sload => \inst1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|tickgen|Acc\(7));

-- Location: LCFF_X38_Y23_N21
\inst1|tickgen|Acc[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|tickgen|Acc[5]~32_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|tickgen|Acc\(5));

-- Location: LCFF_X38_Y23_N17
\inst1|tickgen|Acc[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|tickgen|Acc[3]~28_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|tickgen|Acc\(3));

-- Location: LCFF_X38_Y23_N13
\inst1|tickgen|Acc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|tickgen|Acc[1]~24_combout\,
	sdata => VCC,
	sload => \inst1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|tickgen|Acc\(1));

-- Location: LCFF_X38_Y23_N11
\inst1|tickgen|Acc[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|tickgen|Acc[0]~22_combout\,
	sdata => VCC,
	sload => \inst1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|tickgen|Acc\(0));

-- Location: LCCOMB_X38_Y23_N10
\inst1|tickgen|Acc[0]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|tickgen|Acc[0]~22_combout\ = \inst1|tickgen|Acc\(0) $ (VCC)
-- \inst1|tickgen|Acc[0]~23\ = CARRY(\inst1|tickgen|Acc\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tickgen|Acc\(0),
	datad => VCC,
	combout => \inst1|tickgen|Acc[0]~22_combout\,
	cout => \inst1|tickgen|Acc[0]~23\);

-- Location: LCCOMB_X38_Y23_N12
\inst1|tickgen|Acc[1]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|tickgen|Acc[1]~24_combout\ = (\inst1|tickgen|Acc\(1) & (\inst1|tickgen|Acc[0]~23\ & VCC)) # (!\inst1|tickgen|Acc\(1) & (!\inst1|tickgen|Acc[0]~23\))
-- \inst1|tickgen|Acc[1]~25\ = CARRY((!\inst1|tickgen|Acc\(1) & !\inst1|tickgen|Acc[0]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tickgen|Acc\(1),
	datad => VCC,
	cin => \inst1|tickgen|Acc[0]~23\,
	combout => \inst1|tickgen|Acc[1]~24_combout\,
	cout => \inst1|tickgen|Acc[1]~25\);

-- Location: LCCOMB_X38_Y23_N16
\inst1|tickgen|Acc[3]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|tickgen|Acc[3]~28_combout\ = (\inst1|tickgen|Acc\(3) & (!\inst1|tickgen|Acc[2]~27\)) # (!\inst1|tickgen|Acc\(3) & ((\inst1|tickgen|Acc[2]~27\) # (GND)))
-- \inst1|tickgen|Acc[3]~29\ = CARRY((!\inst1|tickgen|Acc[2]~27\) # (!\inst1|tickgen|Acc\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tickgen|Acc\(3),
	datad => VCC,
	cin => \inst1|tickgen|Acc[2]~27\,
	combout => \inst1|tickgen|Acc[3]~28_combout\,
	cout => \inst1|tickgen|Acc[3]~29\);

-- Location: LCCOMB_X38_Y23_N20
\inst1|tickgen|Acc[5]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|tickgen|Acc[5]~32_combout\ = (\inst1|tickgen|Acc\(5) & (!\inst1|tickgen|Acc[4]~31\)) # (!\inst1|tickgen|Acc\(5) & ((\inst1|tickgen|Acc[4]~31\) # (GND)))
-- \inst1|tickgen|Acc[5]~33\ = CARRY((!\inst1|tickgen|Acc[4]~31\) # (!\inst1|tickgen|Acc\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tickgen|Acc\(5),
	datad => VCC,
	cin => \inst1|tickgen|Acc[4]~31\,
	combout => \inst1|tickgen|Acc[5]~32_combout\,
	cout => \inst1|tickgen|Acc[5]~33\);

-- Location: LCCOMB_X38_Y23_N24
\inst1|tickgen|Acc[7]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|tickgen|Acc[7]~36_combout\ = (\inst1|tickgen|Acc\(7) & (\inst1|tickgen|Acc[6]~35\ & VCC)) # (!\inst1|tickgen|Acc\(7) & (!\inst1|tickgen|Acc[6]~35\))
-- \inst1|tickgen|Acc[7]~37\ = CARRY((!\inst1|tickgen|Acc\(7) & !\inst1|tickgen|Acc[6]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tickgen|Acc\(7),
	datad => VCC,
	cin => \inst1|tickgen|Acc[6]~35\,
	combout => \inst1|tickgen|Acc[7]~36_combout\,
	cout => \inst1|tickgen|Acc[7]~37\);

-- Location: LCCOMB_X38_Y22_N6
\inst1|tickgen|Acc[14]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|tickgen|Acc[14]~50_combout\ = (\inst1|tickgen|Acc\(14) & (\inst1|tickgen|Acc[13]~49\ $ (GND))) # (!\inst1|tickgen|Acc\(14) & (!\inst1|tickgen|Acc[13]~49\ & VCC))
-- \inst1|tickgen|Acc[14]~51\ = CARRY((\inst1|tickgen|Acc\(14) & !\inst1|tickgen|Acc[13]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tickgen|Acc\(14),
	datad => VCC,
	cin => \inst1|tickgen|Acc[13]~49\,
	combout => \inst1|tickgen|Acc[14]~50_combout\,
	cout => \inst1|tickgen|Acc[14]~51\);

-- Location: LCCOMB_X38_Y22_N10
\inst1|tickgen|Acc[16]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|tickgen|Acc[16]~54_combout\ = (\inst1|tickgen|Acc\(16) & (\inst1|tickgen|Acc[15]~53\ $ (GND))) # (!\inst1|tickgen|Acc\(16) & (!\inst1|tickgen|Acc[15]~53\ & VCC))
-- \inst1|tickgen|Acc[16]~55\ = CARRY((\inst1|tickgen|Acc\(16) & !\inst1|tickgen|Acc[15]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tickgen|Acc\(16),
	datad => VCC,
	cin => \inst1|tickgen|Acc[15]~53\,
	combout => \inst1|tickgen|Acc[16]~54_combout\,
	cout => \inst1|tickgen|Acc[16]~55\);

-- Location: LCCOMB_X38_Y22_N12
\inst1|tickgen|Acc[17]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|tickgen|Acc[17]~56_combout\ = (\inst1|tickgen|Acc\(17) & (!\inst1|tickgen|Acc[16]~55\)) # (!\inst1|tickgen|Acc\(17) & ((\inst1|tickgen|Acc[16]~55\) # (GND)))
-- \inst1|tickgen|Acc[17]~57\ = CARRY((!\inst1|tickgen|Acc[16]~55\) # (!\inst1|tickgen|Acc\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tickgen|Acc\(17),
	datad => VCC,
	cin => \inst1|tickgen|Acc[16]~55\,
	combout => \inst1|tickgen|Acc[17]~56_combout\,
	cout => \inst1|tickgen|Acc[17]~57\);

-- Location: LCCOMB_X38_Y22_N16
\inst1|tickgen|Acc[19]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|tickgen|Acc[19]~60_combout\ = (\inst1|tickgen|Acc\(19) & (!\inst1|tickgen|Acc[18]~59\)) # (!\inst1|tickgen|Acc\(19) & ((\inst1|tickgen|Acc[18]~59\) # (GND)))
-- \inst1|tickgen|Acc[19]~61\ = CARRY((!\inst1|tickgen|Acc[18]~59\) # (!\inst1|tickgen|Acc\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tickgen|Acc\(19),
	datad => VCC,
	cin => \inst1|tickgen|Acc[18]~59\,
	combout => \inst1|tickgen|Acc[19]~60_combout\,
	cout => \inst1|tickgen|Acc[19]~61\);

-- Location: LCCOMB_X36_Y24_N20
\inst2|ioCount[10]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ioCount[10]~52_combout\ = (\inst2|ioCount\(10) & (\inst2|ioCount[9]~51\ $ (GND))) # (!\inst2|ioCount\(10) & (!\inst2|ioCount[9]~51\ & VCC))
-- \inst2|ioCount[10]~53\ = CARRY((\inst2|ioCount\(10) & !\inst2|ioCount[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(10),
	datad => VCC,
	cin => \inst2|ioCount[9]~51\,
	combout => \inst2|ioCount[10]~52_combout\,
	cout => \inst2|ioCount[10]~53\);

-- Location: LCCOMB_X36_Y23_N10
\inst2|ioCount[21]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ioCount[21]~74_combout\ = (\inst2|ioCount\(21) & (!\inst2|ioCount[20]~73\)) # (!\inst2|ioCount\(21) & ((\inst2|ioCount[20]~73\) # (GND)))
-- \inst2|ioCount[21]~75\ = CARRY((!\inst2|ioCount[20]~73\) # (!\inst2|ioCount\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(21),
	datad => VCC,
	cin => \inst2|ioCount[20]~73\,
	combout => \inst2|ioCount[21]~74_combout\,
	cout => \inst2|ioCount[21]~75\);

-- Location: LCCOMB_X36_Y23_N12
\inst2|ioCount[22]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ioCount[22]~76_combout\ = (\inst2|ioCount\(22) & (\inst2|ioCount[21]~75\ $ (GND))) # (!\inst2|ioCount\(22) & (!\inst2|ioCount[21]~75\ & VCC))
-- \inst2|ioCount[22]~77\ = CARRY((\inst2|ioCount\(22) & !\inst2|ioCount[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(22),
	datad => VCC,
	cin => \inst2|ioCount[21]~75\,
	combout => \inst2|ioCount[22]~76_combout\,
	cout => \inst2|ioCount[22]~77\);

-- Location: LCCOMB_X36_Y23_N16
\inst2|ioCount[24]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ioCount[24]~80_combout\ = (\inst2|ioCount\(24) & (\inst2|ioCount[23]~79\ $ (GND))) # (!\inst2|ioCount\(24) & (!\inst2|ioCount[23]~79\ & VCC))
-- \inst2|ioCount[24]~81\ = CARRY((\inst2|ioCount\(24) & !\inst2|ioCount[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(24),
	datad => VCC,
	cin => \inst2|ioCount[23]~79\,
	combout => \inst2|ioCount[24]~80_combout\,
	cout => \inst2|ioCount[24]~81\);

-- Location: LCCOMB_X36_Y23_N20
\inst2|ioCount[26]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ioCount[26]~84_combout\ = (\inst2|ioCount\(26) & (\inst2|ioCount[25]~83\ $ (GND))) # (!\inst2|ioCount\(26) & (!\inst2|ioCount[25]~83\ & VCC))
-- \inst2|ioCount[26]~85\ = CARRY((\inst2|ioCount\(26) & !\inst2|ioCount[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(26),
	datad => VCC,
	cin => \inst2|ioCount[25]~83\,
	combout => \inst2|ioCount[26]~84_combout\,
	cout => \inst2|ioCount[26]~85\);

-- Location: LCFF_X33_Y21_N17
\inst|tickgen|Acc[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|tickgen|Acc[20]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(20));

-- Location: LCFF_X33_Y21_N13
\inst|tickgen|Acc[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|tickgen|Acc[18]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(18));

-- Location: LCFF_X33_Y21_N11
\inst|tickgen|Acc[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|tickgen|Acc[17]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(17));

-- Location: LCFF_X33_Y21_N7
\inst|tickgen|Acc[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|tickgen|Acc[15]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(15));

-- Location: LCFF_X33_Y22_N25
\inst|tickgen|Acc[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|tickgen|Acc[8]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(8));

-- Location: LCFF_X33_Y22_N21
\inst|tickgen|Acc[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|tickgen|Acc[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(6));

-- Location: LCFF_X33_Y22_N17
\inst|tickgen|Acc[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|tickgen|Acc[4]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(4));

-- Location: LCFF_X33_Y22_N13
\inst|tickgen|Acc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|tickgen|Acc[2]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(2));

-- Location: LCCOMB_X33_Y22_N12
\inst|tickgen|Acc[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|tickgen|Acc[2]~20_combout\ = (\inst|tickgen|Acc\(2) & (\inst|tickgen|Acc\(1) $ (VCC))) # (!\inst|tickgen|Acc\(2) & (\inst|tickgen|Acc\(1) & VCC))
-- \inst|tickgen|Acc[2]~21\ = CARRY((\inst|tickgen|Acc\(2) & \inst|tickgen|Acc\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tickgen|Acc\(2),
	datab => \inst|tickgen|Acc\(1),
	datad => VCC,
	combout => \inst|tickgen|Acc[2]~20_combout\,
	cout => \inst|tickgen|Acc[2]~21\);

-- Location: LCCOMB_X33_Y22_N16
\inst|tickgen|Acc[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|tickgen|Acc[4]~24_combout\ = (\inst|tickgen|Acc\(4) & (\inst|tickgen|Acc[3]~23\ $ (GND))) # (!\inst|tickgen|Acc\(4) & (!\inst|tickgen|Acc[3]~23\ & VCC))
-- \inst|tickgen|Acc[4]~25\ = CARRY((\inst|tickgen|Acc\(4) & !\inst|tickgen|Acc[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tickgen|Acc\(4),
	datad => VCC,
	cin => \inst|tickgen|Acc[3]~23\,
	combout => \inst|tickgen|Acc[4]~24_combout\,
	cout => \inst|tickgen|Acc[4]~25\);

-- Location: LCCOMB_X33_Y22_N20
\inst|tickgen|Acc[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|tickgen|Acc[6]~28_combout\ = (\inst|tickgen|Acc\(6) & (\inst|tickgen|Acc[5]~27\ $ (GND))) # (!\inst|tickgen|Acc\(6) & (!\inst|tickgen|Acc[5]~27\ & VCC))
-- \inst|tickgen|Acc[6]~29\ = CARRY((\inst|tickgen|Acc\(6) & !\inst|tickgen|Acc[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tickgen|Acc\(6),
	datad => VCC,
	cin => \inst|tickgen|Acc[5]~27\,
	combout => \inst|tickgen|Acc[6]~28_combout\,
	cout => \inst|tickgen|Acc[6]~29\);

-- Location: LCCOMB_X33_Y22_N24
\inst|tickgen|Acc[8]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|tickgen|Acc[8]~32_combout\ = (\inst|tickgen|Acc\(8) & ((GND) # (!\inst|tickgen|Acc[7]~31\))) # (!\inst|tickgen|Acc\(8) & (\inst|tickgen|Acc[7]~31\ $ (GND)))
-- \inst|tickgen|Acc[8]~33\ = CARRY((\inst|tickgen|Acc\(8)) # (!\inst|tickgen|Acc[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tickgen|Acc\(8),
	datad => VCC,
	cin => \inst|tickgen|Acc[7]~31\,
	combout => \inst|tickgen|Acc[8]~32_combout\,
	cout => \inst|tickgen|Acc[8]~33\);

-- Location: LCCOMB_X33_Y21_N6
\inst|tickgen|Acc[15]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|tickgen|Acc[15]~46_combout\ = (\inst|tickgen|Acc\(15) & (!\inst|tickgen|Acc[14]~45\)) # (!\inst|tickgen|Acc\(15) & ((\inst|tickgen|Acc[14]~45\) # (GND)))
-- \inst|tickgen|Acc[15]~47\ = CARRY((!\inst|tickgen|Acc[14]~45\) # (!\inst|tickgen|Acc\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tickgen|Acc\(15),
	datad => VCC,
	cin => \inst|tickgen|Acc[14]~45\,
	combout => \inst|tickgen|Acc[15]~46_combout\,
	cout => \inst|tickgen|Acc[15]~47\);

-- Location: LCCOMB_X33_Y21_N10
\inst|tickgen|Acc[17]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|tickgen|Acc[17]~50_combout\ = (\inst|tickgen|Acc\(17) & (!\inst|tickgen|Acc[16]~49\)) # (!\inst|tickgen|Acc\(17) & ((\inst|tickgen|Acc[16]~49\) # (GND)))
-- \inst|tickgen|Acc[17]~51\ = CARRY((!\inst|tickgen|Acc[16]~49\) # (!\inst|tickgen|Acc\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tickgen|Acc\(17),
	datad => VCC,
	cin => \inst|tickgen|Acc[16]~49\,
	combout => \inst|tickgen|Acc[17]~50_combout\,
	cout => \inst|tickgen|Acc[17]~51\);

-- Location: LCCOMB_X33_Y21_N12
\inst|tickgen|Acc[18]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|tickgen|Acc[18]~52_combout\ = (\inst|tickgen|Acc\(18) & (\inst|tickgen|Acc[17]~51\ $ (GND))) # (!\inst|tickgen|Acc\(18) & (!\inst|tickgen|Acc[17]~51\ & VCC))
-- \inst|tickgen|Acc[18]~53\ = CARRY((\inst|tickgen|Acc\(18) & !\inst|tickgen|Acc[17]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tickgen|Acc\(18),
	datad => VCC,
	cin => \inst|tickgen|Acc[17]~51\,
	combout => \inst|tickgen|Acc[18]~52_combout\,
	cout => \inst|tickgen|Acc[18]~53\);

-- Location: LCCOMB_X33_Y21_N16
\inst|tickgen|Acc[20]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|tickgen|Acc[20]~56_combout\ = (\inst|tickgen|Acc\(20) & (\inst|tickgen|Acc[19]~55\ $ (GND))) # (!\inst|tickgen|Acc\(20) & (!\inst|tickgen|Acc[19]~55\ & VCC))
-- \inst|tickgen|Acc[20]~57\ = CARRY((\inst|tickgen|Acc\(20) & !\inst|tickgen|Acc[19]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tickgen|Acc\(20),
	datad => VCC,
	cin => \inst|tickgen|Acc[19]~55\,
	combout => \inst|tickgen|Acc[20]~56_combout\,
	cout => \inst|tickgen|Acc[20]~57\);

-- Location: LCCOMB_X38_Y24_N16
\inst2|Mux6~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~59_combout\ = (!\inst2|ioCount\(1) & !\inst2|ioCount\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ioCount\(1),
	datad => \inst2|ioCount\(7),
	combout => \inst2|Mux6~59_combout\);

-- Location: LCCOMB_X37_Y24_N12
\inst2|Mux2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~16_combout\ = (!\inst2|ioCount\(4) & \inst2|ioCount\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(4),
	datad => \inst2|ioCount\(1),
	combout => \inst2|Mux2~16_combout\);

-- Location: LCCOMB_X35_Y25_N16
\inst2|Mux6~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~64_combout\ = (\inst2|ioCount\(7)) # ((\inst2|ioCount\(1) & !\inst2|ioCount\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(7),
	datab => \inst2|ioCount\(1),
	datad => \inst2|ioCount\(4),
	combout => \inst2|Mux6~64_combout\);

-- Location: LCCOMB_X35_Y25_N10
\inst2|Mux6~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~65_combout\ = (\inst2|ioCount\(0) & (!\inst2|Mux6~64_combout\)) # (!\inst2|ioCount\(0) & ((\inst2|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(0),
	datac => \inst2|Mux6~64_combout\,
	datad => \inst2|Equal2~0_combout\,
	combout => \inst2|Mux6~65_combout\);

-- Location: LCCOMB_X37_Y23_N6
\inst2|Equal2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal2~4_combout\ = (!\inst2|ioCount\(22) & (!\inst2|ioCount\(23) & (!\inst2|ioCount\(21) & !\inst2|ioCount\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(22),
	datab => \inst2|ioCount\(23),
	datac => \inst2|ioCount\(21),
	datad => \inst2|ioCount\(20),
	combout => \inst2|Equal2~4_combout\);

-- Location: LCCOMB_X37_Y23_N10
\inst2|Equal2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal2~6_combout\ = (!\inst2|ioCount\(27) & (!\inst2|ioCount\(25) & (!\inst2|ioCount\(26) & !\inst2|ioCount\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(27),
	datab => \inst2|ioCount\(25),
	datac => \inst2|ioCount\(26),
	datad => \inst2|ioCount\(24),
	combout => \inst2|Equal2~6_combout\);

-- Location: LCCOMB_X37_Y23_N12
\inst2|Equal2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal2~9_combout\ = (!\inst2|ioCount\(1) & (!\inst2|ioCount\(7) & (!\inst2|ioCount\(5) & !\inst2|ioCount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(1),
	datab => \inst2|ioCount\(7),
	datac => \inst2|ioCount\(5),
	datad => \inst2|ioCount\(4),
	combout => \inst2|Equal2~9_combout\);

-- Location: LCCOMB_X38_Y25_N16
\inst1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux2~0_combout\ = ((\inst1|TxD_state\(2) & ((\inst1|TxD_state\(3)))) # (!\inst1|TxD_state\(2) & (!\inst1|TxD_state\(0)))) # (!\inst1|tickgen|Acc\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|TxD_state\(2),
	datab => \inst1|TxD_state\(0),
	datac => \inst1|tickgen|Acc\(21),
	datad => \inst1|TxD_state\(3),
	combout => \inst1|Mux2~0_combout\);

-- Location: LCCOMB_X35_Y22_N24
\inst2|Mux6~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~84_combout\ = (\inst2|Mux6~81_combout\ & ((\inst2|ioCount\(1) & (\inst2|ioCount\(4) & !\inst2|ioCount\(7))) # (!\inst2|ioCount\(1) & (!\inst2|ioCount\(4) & \inst2|ioCount\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(1),
	datab => \inst2|ioCount\(4),
	datac => \inst2|Mux6~81_combout\,
	datad => \inst2|ioCount\(7),
	combout => \inst2|Mux6~84_combout\);

-- Location: LCCOMB_X35_Y23_N16
\inst2|Mux6~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~92_combout\ = (\inst2|message.MSG_BEGIN~regout\ & ((\inst2|ioCount\(0) & (\inst2|Mux6~62_combout\)) # (!\inst2|ioCount\(0) & ((\inst2|Mux6~66_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|message.MSG_BEGIN~regout\,
	datab => \inst2|ioCount\(0),
	datac => \inst2|Mux6~62_combout\,
	datad => \inst2|Mux6~66_combout\,
	combout => \inst2|Mux6~92_combout\);

-- Location: LCCOMB_X37_Y22_N20
\inst2|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~2_combout\ = (!\inst2|ioCount\(4) & (!\inst2|ioCount\(5) & (\inst2|message.MSG_BEGIN~regout\ $ (!\inst2|ioCount\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|message.MSG_BEGIN~regout\,
	datab => \inst2|ioCount\(7),
	datac => \inst2|ioCount\(4),
	datad => \inst2|ioCount\(5),
	combout => \inst2|LessThan0~2_combout\);

-- Location: LCCOMB_X34_Y22_N28
\inst2|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector0~1_combout\ = (\inst2|state.w2_state~regout\) # ((\inst2|state.w1_state~regout\) # ((\inst2|state.r_state~regout\ & !\inst|RxD_data_ready~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.r_state~regout\,
	datab => \inst2|state.w2_state~regout\,
	datac => \inst|RxD_data_ready~regout\,
	datad => \inst2|state.w1_state~regout\,
	combout => \inst2|Selector0~1_combout\);

-- Location: LCCOMB_X34_Y22_N6
\inst2|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector5~1_combout\ = (\inst2|state.w1_state~regout\ & (((!\inst1|Equal0~0_combout\)))) # (!\inst2|state.w1_state~regout\ & ((\inst2|Selector5~0_combout\) # ((!\inst2|state.begin_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector5~0_combout\,
	datab => \inst2|state.w1_state~regout\,
	datac => \inst2|state.begin_state~regout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst2|Selector5~1_combout\);

-- Location: LCFF_X34_Y23_N9
\inst2|verbose[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|verbose[2]~feeder_combout\,
	ena => \inst2|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|verbose\(2));

-- Location: LCCOMB_X35_Y25_N2
\inst2|Mux6~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~94_combout\ = (\inst2|message.MSG_BEGIN~regout\ & ((\inst2|ioCount\(0) & ((\inst2|Equal2~0_combout\))) # (!\inst2|ioCount\(0) & (!\inst2|Mux6~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(0),
	datab => \inst2|message.MSG_BEGIN~regout\,
	datac => \inst2|Mux6~64_combout\,
	datad => \inst2|Equal2~0_combout\,
	combout => \inst2|Mux6~94_combout\);

-- Location: LCFF_X34_Y23_N29
\inst2|verbose[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|RxD_data\(3),
	sload => VCC,
	ena => \inst2|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|verbose\(3));

-- Location: LCCOMB_X34_Y21_N10
\inst|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (\inst|RxD_state\(0) & (\inst|tickgen|Acc\(21) & (!\inst|OversamplingCnt\(3) & \inst|sampleNow~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RxD_state\(0),
	datab => \inst|tickgen|Acc\(21),
	datac => \inst|OversamplingCnt\(3),
	datad => \inst|sampleNow~0_combout\,
	combout => \inst|Mux1~0_combout\);

-- Location: LCCOMB_X34_Y21_N6
\inst|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux3~2_combout\ = (\inst|RxD_bit~regout\ & (!\inst|RxD_state\(1) & (!\inst|RxD_state\(3) & !\inst|RxD_state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RxD_bit~regout\,
	datab => \inst|RxD_state\(1),
	datac => \inst|RxD_state\(3),
	datad => \inst|RxD_state\(2),
	combout => \inst|Mux3~2_combout\);

-- Location: LCFF_X34_Y23_N7
\inst2|verbose[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|verbose[4]~feeder_combout\,
	ena => \inst2|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|verbose\(4));

-- Location: LCCOMB_X34_Y24_N30
\inst2|Mux2~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~24_combout\ = (\inst2|ioCount\(4) & (\inst2|ioCount\(1) $ (!\inst2|ioCount\(3)))) # (!\inst2|ioCount\(4) & (\inst2|ioCount\(1) & !\inst2|ioCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(4),
	datab => \inst2|ioCount\(1),
	datac => \inst2|ioCount\(3),
	combout => \inst2|Mux2~24_combout\);

-- Location: LCCOMB_X34_Y24_N24
\inst2|Mux2~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~25_combout\ = (\inst2|ioCount\(7)) # ((\inst2|Mux2~24_combout\) # (!\inst2|message.MSG_BEGIN~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(7),
	datab => \inst2|Mux2~24_combout\,
	datad => \inst2|message.MSG_BEGIN~regout\,
	combout => \inst2|Mux2~25_combout\);

-- Location: LCCOMB_X36_Y22_N12
\inst2|Mux1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux1~15_combout\ = (\inst2|message.MSG_BEGIN~regout\ & (\inst2|ioCount\(6) & ((\inst2|ioCount\(4)) # (\inst2|ioCount\(1))))) # (!\inst2|message.MSG_BEGIN~regout\ & ((\inst2|ioCount\(4)) # ((\inst2|ioCount\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|message.MSG_BEGIN~regout\,
	datab => \inst2|ioCount\(4),
	datac => \inst2|ioCount\(1),
	datad => \inst2|ioCount\(6),
	combout => \inst2|Mux1~15_combout\);

-- Location: LCFF_X37_Y23_N17
\inst2|txData[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|txData~7_combout\,
	ena => \inst2|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|txData\(7));

-- Location: LCCOMB_X34_Y25_N6
\inst2|Mux0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux0~8_combout\ = (\inst2|ioCount\(4) & ((\inst2|ioCount\(0) & (\inst2|ioCount\(1) & !\inst2|ioCount\(6))) # (!\inst2|ioCount\(0) & ((\inst2|ioCount\(1)) # (!\inst2|ioCount\(6)))))) # (!\inst2|ioCount\(4) & ((\inst2|ioCount\(0)) # 
-- ((\inst2|ioCount\(6)) # (!\inst2|ioCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(4),
	datab => \inst2|ioCount\(0),
	datac => \inst2|ioCount\(1),
	datad => \inst2|ioCount\(6),
	combout => \inst2|Mux0~8_combout\);

-- Location: LCCOMB_X34_Y25_N24
\inst2|Mux0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux0~15_combout\ = (\inst2|ioCount\(6) & (((\inst2|ioCount\(1)) # (!\inst2|ioCount\(4))) # (!\inst2|ioCount\(2)))) # (!\inst2|ioCount\(6) & ((\inst2|ioCount\(2)) # (\inst2|ioCount\(1) $ (\inst2|ioCount\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(6),
	datab => \inst2|ioCount\(2),
	datac => \inst2|ioCount\(1),
	datad => \inst2|ioCount\(4),
	combout => \inst2|Mux0~15_combout\);

-- Location: LCFF_X34_Y23_N25
\inst2|verbose[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|verbose[7]~feeder_combout\,
	ena => \inst2|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|verbose\(7));

-- Location: LCCOMB_X37_Y23_N16
\inst2|txData~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|txData~7_combout\ = (\inst2|verbose\(7) & \inst2|Equal2~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|verbose\(7),
	datad => \inst2|Equal2~11_combout\,
	combout => \inst2|txData~7_combout\);

-- Location: LCCOMB_X36_Y25_N24
\inst2|Mux4~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux4~30_combout\ = ((\inst2|message.MSG_BEGIN~regout\ & !\inst2|ioCount\(7))) # (!\inst2|ioCount\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(4),
	datac => \inst2|message.MSG_BEGIN~regout\,
	datad => \inst2|ioCount\(7),
	combout => \inst2|Mux4~30_combout\);

-- Location: LCCOMB_X34_Y22_N22
\inst2|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux5~4_combout\ = (\inst2|ioCount\(1) & (\inst2|ioCount\(4) $ (((!\inst2|ioCount\(2) & !\inst2|ioCount\(0)))))) # (!\inst2|ioCount\(1) & ((\inst2|ioCount\(4) & ((!\inst2|ioCount\(0)))) # (!\inst2|ioCount\(4) & (\inst2|ioCount\(2) & 
-- \inst2|ioCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(4),
	datab => \inst2|ioCount\(1),
	datac => \inst2|ioCount\(2),
	datad => \inst2|ioCount\(0),
	combout => \inst2|Mux5~4_combout\);

-- Location: LCCOMB_X34_Y22_N16
\inst2|Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux5~5_combout\ = (\inst2|ioCount\(2) & ((\inst2|ioCount\(1) & ((\inst2|ioCount\(0)))) # (!\inst2|ioCount\(1) & (\inst2|ioCount\(4))))) # (!\inst2|ioCount\(2) & (!\inst2|ioCount\(4) & (\inst2|ioCount\(1) $ (!\inst2|ioCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(4),
	datab => \inst2|ioCount\(1),
	datac => \inst2|ioCount\(2),
	datad => \inst2|ioCount\(0),
	combout => \inst2|Mux5~5_combout\);

-- Location: LCCOMB_X34_Y22_N2
\inst2|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux5~3_combout\ = (\inst2|ioCount\(5) & (\inst2|Mux5~5_combout\)) # (!\inst2|ioCount\(5) & ((\inst2|Mux5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ioCount\(5),
	datac => \inst2|Mux5~5_combout\,
	datad => \inst2|Mux5~4_combout\,
	combout => \inst2|Mux5~3_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X34_Y23_N6
\inst2|verbose[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|verbose[4]~feeder_combout\ = \inst|RxD_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|RxD_data\(4),
	combout => \inst2|verbose[4]~feeder_combout\);

-- Location: LCCOMB_X34_Y23_N8
\inst2|verbose[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|verbose[2]~feeder_combout\ = \inst|RxD_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|RxD_data\(2),
	combout => \inst2|verbose[2]~feeder_combout\);

-- Location: LCCOMB_X34_Y23_N24
\inst2|verbose[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|verbose[7]~feeder_combout\ = \inst|RxD_data\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|RxD_data\(7),
	combout => \inst2|verbose[7]~feeder_combout\);

-- Location: LCCOMB_X38_Y23_N14
\inst1|tickgen|Acc[2]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|tickgen|Acc[2]~26_combout\ = (\inst1|tickgen|Acc\(2) & (\inst1|tickgen|Acc[1]~25\ $ (GND))) # (!\inst1|tickgen|Acc\(2) & (!\inst1|tickgen|Acc[1]~25\ & VCC))
-- \inst1|tickgen|Acc[2]~27\ = CARRY((\inst1|tickgen|Acc\(2) & !\inst1|tickgen|Acc[1]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tickgen|Acc\(2),
	datad => VCC,
	cin => \inst1|tickgen|Acc[1]~25\,
	combout => \inst1|tickgen|Acc[2]~26_combout\,
	cout => \inst1|tickgen|Acc[2]~27\);

-- Location: LCCOMB_X38_Y22_N22
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X38_Y25_N20
\inst1|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux2~1_combout\ = (\inst1|TxD_state\(1) & (\inst1|Mux2~0_combout\)) # (!\inst1|TxD_state\(1) & (((\inst1|always0~0_combout\ & \inst1|TxD_state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux2~0_combout\,
	datab => \inst1|always0~0_combout\,
	datac => \inst1|TxD_state\(1),
	datad => \inst1|TxD_state\(0),
	combout => \inst1|Mux2~1_combout\);

-- Location: LCFF_X38_Y25_N21
\inst1|TxD_state[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|TxD_state\(1));

-- Location: LCCOMB_X38_Y25_N26
\inst1|Mux1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux1~6_combout\ = (\inst1|TxD_state\(1) & !\inst1|TxD_state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|TxD_state\(1),
	datad => \inst1|TxD_state\(2),
	combout => \inst1|Mux1~6_combout\);

-- Location: LCCOMB_X38_Y25_N14
\inst1|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux1~2_combout\ = (!\inst1|TxD_state\(1) & !\inst1|TxD_state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|TxD_state\(1),
	datad => \inst1|TxD_state\(0),
	combout => \inst1|Mux1~2_combout\);

-- Location: LCCOMB_X38_Y25_N4
\inst1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = (\inst1|TxD_state\(2) & (\inst1|Mux1~2_combout\ & (\inst1|tickgen|Acc\(21) & !\inst1|TxD_state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|TxD_state\(2),
	datab => \inst1|Mux1~2_combout\,
	datac => \inst1|tickgen|Acc\(21),
	datad => \inst1|TxD_state\(3),
	combout => \inst1|Mux0~0_combout\);

-- Location: LCCOMB_X38_Y25_N22
\inst1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux1~0_combout\ = (\inst1|TxD_state\(2) & \inst1|TxD_state\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|TxD_state\(2),
	datad => \inst1|TxD_state\(3),
	combout => \inst1|Mux1~0_combout\);

-- Location: LCCOMB_X38_Y25_N0
\inst1|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux1~1_combout\ = (\inst1|Mux1~0_combout\ & (((!\inst1|TxD_state\(0)) # (!\inst1|tickgen|Acc\(21))) # (!\inst1|TxD_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|TxD_state\(1),
	datab => \inst1|Mux1~0_combout\,
	datac => \inst1|tickgen|Acc\(21),
	datad => \inst1|TxD_state\(0),
	combout => \inst1|Mux1~1_combout\);

-- Location: LCCOMB_X38_Y25_N12
\inst1|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux0~1_combout\ = (\inst1|Mux0~0_combout\) # ((\inst1|Mux1~1_combout\) # ((!\inst1|TxD_state\(2) & \inst1|TxD_state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|TxD_state\(2),
	datab => \inst1|Mux0~0_combout\,
	datac => \inst1|TxD_state\(3),
	datad => \inst1|Mux1~1_combout\,
	combout => \inst1|Mux0~1_combout\);

-- Location: LCFF_X38_Y25_N13
\inst1|TxD_state[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|TxD_state\(3));

-- Location: LCCOMB_X38_Y25_N10
\inst1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = (\inst1|tickgen|Acc\(21) & (!\inst1|TxD_state\(0) & ((\inst1|Mux1~6_combout\) # (\inst1|TxD_state\(3))))) # (!\inst1|tickgen|Acc\(21) & (((\inst1|TxD_state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tickgen|Acc\(21),
	datab => \inst1|Mux1~6_combout\,
	datac => \inst1|TxD_state\(0),
	datad => \inst1|TxD_state\(3),
	combout => \inst1|Mux3~0_combout\);

-- Location: LCFF_X38_Y25_N11
\inst1|TxD_state[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|TxD_state\(0));

-- Location: LCCOMB_X38_Y25_N30
\inst1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (!\inst1|TxD_state\(2) & (!\inst1|TxD_state\(0) & (!\inst1|TxD_state\(1) & !\inst1|TxD_state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|TxD_state\(2),
	datab => \inst1|TxD_state\(0),
	datac => \inst1|TxD_state\(1),
	datad => \inst1|TxD_state\(3),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCFF_X38_Y23_N15
\inst1|tickgen|Acc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|tickgen|Acc[2]~26_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|tickgen|Acc\(2));

-- Location: LCCOMB_X38_Y23_N18
\inst1|tickgen|Acc[4]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|tickgen|Acc[4]~30_combout\ = (\inst1|tickgen|Acc\(4) & ((GND) # (!\inst1|tickgen|Acc[3]~29\))) # (!\inst1|tickgen|Acc\(4) & (\inst1|tickgen|Acc[3]~29\ $ (GND)))
-- \inst1|tickgen|Acc[4]~31\ = CARRY((\inst1|tickgen|Acc\(4)) # (!\inst1|tickgen|Acc[3]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tickgen|Acc\(4),
	datad => VCC,
	cin => \inst1|tickgen|Acc[3]~29\,
	combout => \inst1|tickgen|Acc[4]~30_combout\,
	cout => \inst1|tickgen|Acc[4]~31\);

-- Location: LCFF_X38_Y23_N19
\inst1|tickgen|Acc[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|tickgen|Acc[4]~30_combout\,
	sdata => VCC,
	sload => \inst1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|tickgen|Acc\(4));

-- Location: LCCOMB_X38_Y23_N22
\inst1|tickgen|Acc[6]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|tickgen|Acc[6]~34_combout\ = (\inst1|tickgen|Acc\(6) & (\inst1|tickgen|Acc[5]~33\ $ (GND))) # (!\inst1|tickgen|Acc\(6) & (!\inst1|tickgen|Acc[5]~33\ & VCC))
-- \inst1|tickgen|Acc[6]~35\ = CARRY((\inst1|tickgen|Acc\(6) & !\inst1|tickgen|Acc[5]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tickgen|Acc\(6),
	datad => VCC,
	cin => \inst1|tickgen|Acc[5]~33\,
	combout => \inst1|tickgen|Acc[6]~34_combout\,
	cout => \inst1|tickgen|Acc[6]~35\);

-- Location: LCFF_X38_Y23_N23
\inst1|tickgen|Acc[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|tickgen|Acc[6]~34_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|tickgen|Acc\(6));

-- Location: LCCOMB_X38_Y23_N26
\inst1|tickgen|Acc[8]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|tickgen|Acc[8]~38_combout\ = (\inst1|tickgen|Acc\(8) & ((GND) # (!\inst1|tickgen|Acc[7]~37\))) # (!\inst1|tickgen|Acc\(8) & (\inst1|tickgen|Acc[7]~37\ $ (GND)))
-- \inst1|tickgen|Acc[8]~39\ = CARRY((\inst1|tickgen|Acc\(8)) # (!\inst1|tickgen|Acc[7]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tickgen|Acc\(8),
	datad => VCC,
	cin => \inst1|tickgen|Acc[7]~37\,
	combout => \inst1|tickgen|Acc[8]~38_combout\,
	cout => \inst1|tickgen|Acc[8]~39\);

-- Location: LCFF_X38_Y23_N27
\inst1|tickgen|Acc[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|tickgen|Acc[8]~38_combout\,
	sdata => VCC,
	sload => \inst1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|tickgen|Acc\(8));

-- Location: LCCOMB_X38_Y23_N28
\inst1|tickgen|Acc[9]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|tickgen|Acc[9]~40_combout\ = (\inst1|tickgen|Acc\(9) & (!\inst1|tickgen|Acc[8]~39\)) # (!\inst1|tickgen|Acc\(9) & ((\inst1|tickgen|Acc[8]~39\) # (GND)))
-- \inst1|tickgen|Acc[9]~41\ = CARRY((!\inst1|tickgen|Acc[8]~39\) # (!\inst1|tickgen|Acc\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tickgen|Acc\(9),
	datad => VCC,
	cin => \inst1|tickgen|Acc[8]~39\,
	combout => \inst1|tickgen|Acc[9]~40_combout\,
	cout => \inst1|tickgen|Acc[9]~41\);

-- Location: LCFF_X38_Y23_N29
\inst1|tickgen|Acc[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|tickgen|Acc[9]~40_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|tickgen|Acc\(9));

-- Location: LCCOMB_X38_Y23_N30
\inst1|tickgen|Acc[10]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|tickgen|Acc[10]~42_combout\ = (\inst1|tickgen|Acc\(10) & (\inst1|tickgen|Acc[9]~41\ $ (GND))) # (!\inst1|tickgen|Acc\(10) & (!\inst1|tickgen|Acc[9]~41\ & VCC))
-- \inst1|tickgen|Acc[10]~43\ = CARRY((\inst1|tickgen|Acc\(10) & !\inst1|tickgen|Acc[9]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tickgen|Acc\(10),
	datad => VCC,
	cin => \inst1|tickgen|Acc[9]~41\,
	combout => \inst1|tickgen|Acc[10]~42_combout\,
	cout => \inst1|tickgen|Acc[10]~43\);

-- Location: LCFF_X38_Y23_N31
\inst1|tickgen|Acc[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|tickgen|Acc[10]~42_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|tickgen|Acc\(10));

-- Location: LCCOMB_X38_Y22_N0
\inst1|tickgen|Acc[11]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|tickgen|Acc[11]~44_combout\ = (\inst1|tickgen|Acc\(11) & (!\inst1|tickgen|Acc[10]~43\)) # (!\inst1|tickgen|Acc\(11) & ((\inst1|tickgen|Acc[10]~43\) # (GND)))
-- \inst1|tickgen|Acc[11]~45\ = CARRY((!\inst1|tickgen|Acc[10]~43\) # (!\inst1|tickgen|Acc\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tickgen|Acc\(11),
	datad => VCC,
	cin => \inst1|tickgen|Acc[10]~43\,
	combout => \inst1|tickgen|Acc[11]~44_combout\,
	cout => \inst1|tickgen|Acc[11]~45\);

-- Location: LCFF_X38_Y22_N1
\inst1|tickgen|Acc[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|tickgen|Acc[11]~44_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|tickgen|Acc\(11));

-- Location: LCCOMB_X38_Y22_N2
\inst1|tickgen|Acc[12]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|tickgen|Acc[12]~46_combout\ = (\inst1|tickgen|Acc\(12) & (\inst1|tickgen|Acc[11]~45\ $ (GND))) # (!\inst1|tickgen|Acc\(12) & (!\inst1|tickgen|Acc[11]~45\ & VCC))
-- \inst1|tickgen|Acc[12]~47\ = CARRY((\inst1|tickgen|Acc\(12) & !\inst1|tickgen|Acc[11]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tickgen|Acc\(12),
	datad => VCC,
	cin => \inst1|tickgen|Acc[11]~45\,
	combout => \inst1|tickgen|Acc[12]~46_combout\,
	cout => \inst1|tickgen|Acc[12]~47\);

-- Location: LCFF_X38_Y22_N3
\inst1|tickgen|Acc[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|tickgen|Acc[12]~46_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|tickgen|Acc\(12));

-- Location: LCCOMB_X38_Y22_N4
\inst1|tickgen|Acc[13]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|tickgen|Acc[13]~48_combout\ = (\inst1|tickgen|Acc\(13) & (!\inst1|tickgen|Acc[12]~47\)) # (!\inst1|tickgen|Acc\(13) & ((\inst1|tickgen|Acc[12]~47\) # (GND)))
-- \inst1|tickgen|Acc[13]~49\ = CARRY((!\inst1|tickgen|Acc[12]~47\) # (!\inst1|tickgen|Acc\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tickgen|Acc\(13),
	datad => VCC,
	cin => \inst1|tickgen|Acc[12]~47\,
	combout => \inst1|tickgen|Acc[13]~48_combout\,
	cout => \inst1|tickgen|Acc[13]~49\);

-- Location: LCFF_X38_Y22_N5
\inst1|tickgen|Acc[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|tickgen|Acc[13]~48_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|tickgen|Acc\(13));

-- Location: LCCOMB_X38_Y22_N8
\inst1|tickgen|Acc[15]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|tickgen|Acc[15]~52_combout\ = (\inst1|tickgen|Acc\(15) & (!\inst1|tickgen|Acc[14]~51\)) # (!\inst1|tickgen|Acc\(15) & ((\inst1|tickgen|Acc[14]~51\) # (GND)))
-- \inst1|tickgen|Acc[15]~53\ = CARRY((!\inst1|tickgen|Acc[14]~51\) # (!\inst1|tickgen|Acc\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tickgen|Acc\(15),
	datad => VCC,
	cin => \inst1|tickgen|Acc[14]~51\,
	combout => \inst1|tickgen|Acc[15]~52_combout\,
	cout => \inst1|tickgen|Acc[15]~53\);

-- Location: LCFF_X38_Y22_N9
\inst1|tickgen|Acc[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|tickgen|Acc[15]~52_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|tickgen|Acc\(15));

-- Location: LCCOMB_X38_Y22_N14
\inst1|tickgen|Acc[18]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|tickgen|Acc[18]~58_combout\ = (\inst1|tickgen|Acc\(18) & (\inst1|tickgen|Acc[17]~57\ $ (GND))) # (!\inst1|tickgen|Acc\(18) & (!\inst1|tickgen|Acc[17]~57\ & VCC))
-- \inst1|tickgen|Acc[18]~59\ = CARRY((\inst1|tickgen|Acc\(18) & !\inst1|tickgen|Acc[17]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tickgen|Acc\(18),
	datad => VCC,
	cin => \inst1|tickgen|Acc[17]~57\,
	combout => \inst1|tickgen|Acc[18]~58_combout\,
	cout => \inst1|tickgen|Acc[18]~59\);

-- Location: LCFF_X38_Y22_N15
\inst1|tickgen|Acc[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|tickgen|Acc[18]~58_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|tickgen|Acc\(18));

-- Location: LCCOMB_X38_Y22_N18
\inst1|tickgen|Acc[20]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|tickgen|Acc[20]~62_combout\ = (\inst1|tickgen|Acc\(20) & (\inst1|tickgen|Acc[19]~61\ $ (GND))) # (!\inst1|tickgen|Acc\(20) & (!\inst1|tickgen|Acc[19]~61\ & VCC))
-- \inst1|tickgen|Acc[20]~63\ = CARRY((\inst1|tickgen|Acc\(20) & !\inst1|tickgen|Acc[19]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tickgen|Acc\(20),
	datad => VCC,
	cin => \inst1|tickgen|Acc[19]~61\,
	combout => \inst1|tickgen|Acc[20]~62_combout\,
	cout => \inst1|tickgen|Acc[20]~63\);

-- Location: LCFF_X38_Y22_N19
\inst1|tickgen|Acc[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|tickgen|Acc[20]~62_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|tickgen|Acc\(20));

-- Location: LCCOMB_X38_Y22_N20
\inst1|tickgen|Acc[21]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|tickgen|Acc[21]~64_combout\ = \inst1|tickgen|Acc[20]~63\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|tickgen|Acc[20]~63\,
	combout => \inst1|tickgen|Acc[21]~64_combout\);

-- Location: LCFF_X38_Y22_N21
\inst1|tickgen|Acc[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|tickgen|Acc[21]~64_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|tickgen|Acc\(21));

-- Location: LCCOMB_X38_Y25_N28
\inst1|always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|always0~0_combout\ = (\inst1|tickgen|Acc\(21) & \inst1|TxD_state\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|tickgen|Acc\(21),
	datad => \inst1|TxD_state\(3),
	combout => \inst1|always0~0_combout\);

-- Location: LCCOMB_X38_Y25_N18
\inst1|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux1~3_combout\ = (!\inst1|TxD_state\(2) & (\inst1|always0~0_combout\ & (\inst1|TxD_state\(1) & \inst1|TxD_state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|TxD_state\(2),
	datab => \inst1|always0~0_combout\,
	datac => \inst1|TxD_state\(1),
	datad => \inst1|TxD_state\(0),
	combout => \inst1|Mux1~3_combout\);

-- Location: LCCOMB_X34_Y22_N24
\inst2|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector6~0_combout\ = (\inst2|state.w1_state~regout\ & \inst1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|state.w1_state~regout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst2|Selector6~0_combout\);

-- Location: LCFF_X36_Y22_N25
\inst2|state.w2_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst2|Selector6~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|state.w2_state~regout\);

-- Location: LCCOMB_X36_Y24_N0
\inst2|ioCount[0]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ioCount[0]~32_combout\ = \inst2|ioCount\(0) $ (VCC)
-- \inst2|ioCount[0]~33\ = CARRY(\inst2|ioCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ioCount\(0),
	datad => VCC,
	combout => \inst2|ioCount[0]~32_combout\,
	cout => \inst2|ioCount[0]~33\);

-- Location: LCFF_X36_Y24_N1
\inst2|ioCount[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|ioCount[0]~32_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	ena => \inst2|state.w2_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|ioCount\(0));

-- Location: LCCOMB_X36_Y24_N2
\inst2|ioCount[1]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ioCount[1]~34_combout\ = (\inst2|ioCount\(1) & (!\inst2|ioCount[0]~33\)) # (!\inst2|ioCount\(1) & ((\inst2|ioCount[0]~33\) # (GND)))
-- \inst2|ioCount[1]~35\ = CARRY((!\inst2|ioCount[0]~33\) # (!\inst2|ioCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ioCount\(1),
	datad => VCC,
	cin => \inst2|ioCount[0]~33\,
	combout => \inst2|ioCount[1]~34_combout\,
	cout => \inst2|ioCount[1]~35\);

-- Location: LCFF_X36_Y24_N3
\inst2|ioCount[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|ioCount[1]~34_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	ena => \inst2|state.w2_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|ioCount\(1));

-- Location: LCCOMB_X36_Y24_N4
\inst2|ioCount[2]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ioCount[2]~36_combout\ = (\inst2|ioCount\(2) & (\inst2|ioCount[1]~35\ $ (GND))) # (!\inst2|ioCount\(2) & (!\inst2|ioCount[1]~35\ & VCC))
-- \inst2|ioCount[2]~37\ = CARRY((\inst2|ioCount\(2) & !\inst2|ioCount[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ioCount\(2),
	datad => VCC,
	cin => \inst2|ioCount[1]~35\,
	combout => \inst2|ioCount[2]~36_combout\,
	cout => \inst2|ioCount[2]~37\);

-- Location: LCFF_X36_Y24_N5
\inst2|ioCount[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|ioCount[2]~36_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	ena => \inst2|state.w2_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|ioCount\(2));

-- Location: LCCOMB_X36_Y24_N6
\inst2|ioCount[3]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ioCount[3]~38_combout\ = (\inst2|ioCount\(3) & (!\inst2|ioCount[2]~37\)) # (!\inst2|ioCount\(3) & ((\inst2|ioCount[2]~37\) # (GND)))
-- \inst2|ioCount[3]~39\ = CARRY((!\inst2|ioCount[2]~37\) # (!\inst2|ioCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(3),
	datad => VCC,
	cin => \inst2|ioCount[2]~37\,
	combout => \inst2|ioCount[3]~38_combout\,
	cout => \inst2|ioCount[3]~39\);

-- Location: LCCOMB_X36_Y24_N8
\inst2|ioCount[4]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ioCount[4]~40_combout\ = (\inst2|ioCount\(4) & (\inst2|ioCount[3]~39\ $ (GND))) # (!\inst2|ioCount\(4) & (!\inst2|ioCount[3]~39\ & VCC))
-- \inst2|ioCount[4]~41\ = CARRY((\inst2|ioCount\(4) & !\inst2|ioCount[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ioCount\(4),
	datad => VCC,
	cin => \inst2|ioCount[3]~39\,
	combout => \inst2|ioCount[4]~40_combout\,
	cout => \inst2|ioCount[4]~41\);

-- Location: LCFF_X36_Y24_N9
\inst2|ioCount[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|ioCount[4]~40_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	ena => \inst2|state.w2_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|ioCount\(4));

-- Location: LCCOMB_X36_Y24_N10
\inst2|ioCount[5]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ioCount[5]~42_combout\ = (\inst2|ioCount\(5) & (!\inst2|ioCount[4]~41\)) # (!\inst2|ioCount\(5) & ((\inst2|ioCount[4]~41\) # (GND)))
-- \inst2|ioCount[5]~43\ = CARRY((!\inst2|ioCount[4]~41\) # (!\inst2|ioCount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(5),
	datad => VCC,
	cin => \inst2|ioCount[4]~41\,
	combout => \inst2|ioCount[5]~42_combout\,
	cout => \inst2|ioCount[5]~43\);

-- Location: LCCOMB_X36_Y24_N12
\inst2|ioCount[6]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ioCount[6]~44_combout\ = (\inst2|ioCount\(6) & (\inst2|ioCount[5]~43\ $ (GND))) # (!\inst2|ioCount\(6) & (!\inst2|ioCount[5]~43\ & VCC))
-- \inst2|ioCount[6]~45\ = CARRY((\inst2|ioCount\(6) & !\inst2|ioCount[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(6),
	datad => VCC,
	cin => \inst2|ioCount[5]~43\,
	combout => \inst2|ioCount[6]~44_combout\,
	cout => \inst2|ioCount[6]~45\);

-- Location: LCCOMB_X36_Y24_N14
\inst2|ioCount[7]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ioCount[7]~46_combout\ = (\inst2|ioCount\(7) & (!\inst2|ioCount[6]~45\)) # (!\inst2|ioCount\(7) & ((\inst2|ioCount[6]~45\) # (GND)))
-- \inst2|ioCount[7]~47\ = CARRY((!\inst2|ioCount[6]~45\) # (!\inst2|ioCount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ioCount\(7),
	datad => VCC,
	cin => \inst2|ioCount[6]~45\,
	combout => \inst2|ioCount[7]~46_combout\,
	cout => \inst2|ioCount[7]~47\);

-- Location: LCFF_X36_Y24_N15
\inst2|ioCount[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|ioCount[7]~46_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	ena => \inst2|state.w2_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|ioCount\(7));

-- Location: LCCOMB_X36_Y24_N16
\inst2|ioCount[8]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ioCount[8]~48_combout\ = (\inst2|ioCount\(8) & (\inst2|ioCount[7]~47\ $ (GND))) # (!\inst2|ioCount\(8) & (!\inst2|ioCount[7]~47\ & VCC))
-- \inst2|ioCount[8]~49\ = CARRY((\inst2|ioCount\(8) & !\inst2|ioCount[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(8),
	datad => VCC,
	cin => \inst2|ioCount[7]~47\,
	combout => \inst2|ioCount[8]~48_combout\,
	cout => \inst2|ioCount[8]~49\);

-- Location: LCCOMB_X36_Y24_N18
\inst2|ioCount[9]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ioCount[9]~50_combout\ = (\inst2|ioCount\(9) & (!\inst2|ioCount[8]~49\)) # (!\inst2|ioCount\(9) & ((\inst2|ioCount[8]~49\) # (GND)))
-- \inst2|ioCount[9]~51\ = CARRY((!\inst2|ioCount[8]~49\) # (!\inst2|ioCount\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ioCount\(9),
	datad => VCC,
	cin => \inst2|ioCount[8]~49\,
	combout => \inst2|ioCount[9]~50_combout\,
	cout => \inst2|ioCount[9]~51\);

-- Location: LCFF_X36_Y24_N19
\inst2|ioCount[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|ioCount[9]~50_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	ena => \inst2|state.w2_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|ioCount\(9));

-- Location: LCCOMB_X36_Y24_N22
\inst2|ioCount[11]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ioCount[11]~54_combout\ = (\inst2|ioCount\(11) & (!\inst2|ioCount[10]~53\)) # (!\inst2|ioCount\(11) & ((\inst2|ioCount[10]~53\) # (GND)))
-- \inst2|ioCount[11]~55\ = CARRY((!\inst2|ioCount[10]~53\) # (!\inst2|ioCount\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ioCount\(11),
	datad => VCC,
	cin => \inst2|ioCount[10]~53\,
	combout => \inst2|ioCount[11]~54_combout\,
	cout => \inst2|ioCount[11]~55\);

-- Location: LCFF_X36_Y24_N23
\inst2|ioCount[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|ioCount[11]~54_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	ena => \inst2|state.w2_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|ioCount\(11));

-- Location: LCCOMB_X36_Y24_N24
\inst2|ioCount[12]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ioCount[12]~56_combout\ = (\inst2|ioCount\(12) & (\inst2|ioCount[11]~55\ $ (GND))) # (!\inst2|ioCount\(12) & (!\inst2|ioCount[11]~55\ & VCC))
-- \inst2|ioCount[12]~57\ = CARRY((\inst2|ioCount\(12) & !\inst2|ioCount[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(12),
	datad => VCC,
	cin => \inst2|ioCount[11]~55\,
	combout => \inst2|ioCount[12]~56_combout\,
	cout => \inst2|ioCount[12]~57\);

-- Location: LCCOMB_X36_Y24_N26
\inst2|ioCount[13]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ioCount[13]~58_combout\ = (\inst2|ioCount\(13) & (!\inst2|ioCount[12]~57\)) # (!\inst2|ioCount\(13) & ((\inst2|ioCount[12]~57\) # (GND)))
-- \inst2|ioCount[13]~59\ = CARRY((!\inst2|ioCount[12]~57\) # (!\inst2|ioCount\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ioCount\(13),
	datad => VCC,
	cin => \inst2|ioCount[12]~57\,
	combout => \inst2|ioCount[13]~58_combout\,
	cout => \inst2|ioCount[13]~59\);

-- Location: LCFF_X36_Y24_N27
\inst2|ioCount[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|ioCount[13]~58_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	ena => \inst2|state.w2_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|ioCount\(13));

-- Location: LCCOMB_X36_Y24_N28
\inst2|ioCount[14]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ioCount[14]~60_combout\ = (\inst2|ioCount\(14) & (\inst2|ioCount[13]~59\ $ (GND))) # (!\inst2|ioCount\(14) & (!\inst2|ioCount[13]~59\ & VCC))
-- \inst2|ioCount[14]~61\ = CARRY((\inst2|ioCount\(14) & !\inst2|ioCount[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ioCount\(14),
	datad => VCC,
	cin => \inst2|ioCount[13]~59\,
	combout => \inst2|ioCount[14]~60_combout\,
	cout => \inst2|ioCount[14]~61\);

-- Location: LCFF_X36_Y24_N29
\inst2|ioCount[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|ioCount[14]~60_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	ena => \inst2|state.w2_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|ioCount\(14));

-- Location: LCCOMB_X36_Y24_N30
\inst2|ioCount[15]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ioCount[15]~62_combout\ = (\inst2|ioCount\(15) & (!\inst2|ioCount[14]~61\)) # (!\inst2|ioCount\(15) & ((\inst2|ioCount[14]~61\) # (GND)))
-- \inst2|ioCount[15]~63\ = CARRY((!\inst2|ioCount[14]~61\) # (!\inst2|ioCount\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ioCount\(15),
	datad => VCC,
	cin => \inst2|ioCount[14]~61\,
	combout => \inst2|ioCount[15]~62_combout\,
	cout => \inst2|ioCount[15]~63\);

-- Location: LCFF_X36_Y24_N31
\inst2|ioCount[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|ioCount[15]~62_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	ena => \inst2|state.w2_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|ioCount\(15));

-- Location: LCCOMB_X36_Y23_N0
\inst2|ioCount[16]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ioCount[16]~64_combout\ = (\inst2|ioCount\(16) & (\inst2|ioCount[15]~63\ $ (GND))) # (!\inst2|ioCount\(16) & (!\inst2|ioCount[15]~63\ & VCC))
-- \inst2|ioCount[16]~65\ = CARRY((\inst2|ioCount\(16) & !\inst2|ioCount[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ioCount\(16),
	datad => VCC,
	cin => \inst2|ioCount[15]~63\,
	combout => \inst2|ioCount[16]~64_combout\,
	cout => \inst2|ioCount[16]~65\);

-- Location: LCFF_X36_Y23_N1
\inst2|ioCount[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|ioCount[16]~64_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	ena => \inst2|state.w2_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|ioCount\(16));

-- Location: LCCOMB_X36_Y23_N2
\inst2|ioCount[17]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ioCount[17]~66_combout\ = (\inst2|ioCount\(17) & (!\inst2|ioCount[16]~65\)) # (!\inst2|ioCount\(17) & ((\inst2|ioCount[16]~65\) # (GND)))
-- \inst2|ioCount[17]~67\ = CARRY((!\inst2|ioCount[16]~65\) # (!\inst2|ioCount\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ioCount\(17),
	datad => VCC,
	cin => \inst2|ioCount[16]~65\,
	combout => \inst2|ioCount[17]~66_combout\,
	cout => \inst2|ioCount[17]~67\);

-- Location: LCFF_X36_Y23_N3
\inst2|ioCount[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|ioCount[17]~66_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	ena => \inst2|state.w2_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|ioCount\(17));

-- Location: LCCOMB_X36_Y23_N4
\inst2|ioCount[18]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ioCount[18]~68_combout\ = (\inst2|ioCount\(18) & (\inst2|ioCount[17]~67\ $ (GND))) # (!\inst2|ioCount\(18) & (!\inst2|ioCount[17]~67\ & VCC))
-- \inst2|ioCount[18]~69\ = CARRY((\inst2|ioCount\(18) & !\inst2|ioCount[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ioCount\(18),
	datad => VCC,
	cin => \inst2|ioCount[17]~67\,
	combout => \inst2|ioCount[18]~68_combout\,
	cout => \inst2|ioCount[18]~69\);

-- Location: LCFF_X36_Y23_N5
\inst2|ioCount[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|ioCount[18]~68_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	ena => \inst2|state.w2_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|ioCount\(18));

-- Location: LCCOMB_X36_Y23_N6
\inst2|ioCount[19]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ioCount[19]~70_combout\ = (\inst2|ioCount\(19) & (!\inst2|ioCount[18]~69\)) # (!\inst2|ioCount\(19) & ((\inst2|ioCount[18]~69\) # (GND)))
-- \inst2|ioCount[19]~71\ = CARRY((!\inst2|ioCount[18]~69\) # (!\inst2|ioCount\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(19),
	datad => VCC,
	cin => \inst2|ioCount[18]~69\,
	combout => \inst2|ioCount[19]~70_combout\,
	cout => \inst2|ioCount[19]~71\);

-- Location: LCCOMB_X36_Y23_N8
\inst2|ioCount[20]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ioCount[20]~72_combout\ = (\inst2|ioCount\(20) & (\inst2|ioCount[19]~71\ $ (GND))) # (!\inst2|ioCount\(20) & (!\inst2|ioCount[19]~71\ & VCC))
-- \inst2|ioCount[20]~73\ = CARRY((\inst2|ioCount\(20) & !\inst2|ioCount[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ioCount\(20),
	datad => VCC,
	cin => \inst2|ioCount[19]~71\,
	combout => \inst2|ioCount[20]~72_combout\,
	cout => \inst2|ioCount[20]~73\);

-- Location: LCFF_X36_Y23_N9
\inst2|ioCount[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|ioCount[20]~72_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	ena => \inst2|state.w2_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|ioCount\(20));

-- Location: LCCOMB_X36_Y23_N14
\inst2|ioCount[23]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ioCount[23]~78_combout\ = (\inst2|ioCount\(23) & (!\inst2|ioCount[22]~77\)) # (!\inst2|ioCount\(23) & ((\inst2|ioCount[22]~77\) # (GND)))
-- \inst2|ioCount[23]~79\ = CARRY((!\inst2|ioCount[22]~77\) # (!\inst2|ioCount\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ioCount\(23),
	datad => VCC,
	cin => \inst2|ioCount[22]~77\,
	combout => \inst2|ioCount[23]~78_combout\,
	cout => \inst2|ioCount[23]~79\);

-- Location: LCFF_X36_Y23_N15
\inst2|ioCount[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|ioCount[23]~78_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	ena => \inst2|state.w2_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|ioCount\(23));

-- Location: LCCOMB_X36_Y23_N18
\inst2|ioCount[25]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ioCount[25]~82_combout\ = (\inst2|ioCount\(25) & (!\inst2|ioCount[24]~81\)) # (!\inst2|ioCount\(25) & ((\inst2|ioCount[24]~81\) # (GND)))
-- \inst2|ioCount[25]~83\ = CARRY((!\inst2|ioCount[24]~81\) # (!\inst2|ioCount\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ioCount\(25),
	datad => VCC,
	cin => \inst2|ioCount[24]~81\,
	combout => \inst2|ioCount[25]~82_combout\,
	cout => \inst2|ioCount[25]~83\);

-- Location: LCFF_X36_Y23_N19
\inst2|ioCount[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|ioCount[25]~82_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	ena => \inst2|state.w2_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|ioCount\(25));

-- Location: LCCOMB_X36_Y23_N22
\inst2|ioCount[27]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ioCount[27]~86_combout\ = (\inst2|ioCount\(27) & (!\inst2|ioCount[26]~85\)) # (!\inst2|ioCount\(27) & ((\inst2|ioCount[26]~85\) # (GND)))
-- \inst2|ioCount[27]~87\ = CARRY((!\inst2|ioCount[26]~85\) # (!\inst2|ioCount\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ioCount\(27),
	datad => VCC,
	cin => \inst2|ioCount[26]~85\,
	combout => \inst2|ioCount[27]~86_combout\,
	cout => \inst2|ioCount[27]~87\);

-- Location: LCFF_X36_Y23_N23
\inst2|ioCount[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|ioCount[27]~86_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	ena => \inst2|state.w2_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|ioCount\(27));

-- Location: LCCOMB_X36_Y23_N24
\inst2|ioCount[28]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ioCount[28]~88_combout\ = (\inst2|ioCount\(28) & (\inst2|ioCount[27]~87\ $ (GND))) # (!\inst2|ioCount\(28) & (!\inst2|ioCount[27]~87\ & VCC))
-- \inst2|ioCount[28]~89\ = CARRY((\inst2|ioCount\(28) & !\inst2|ioCount[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(28),
	datad => VCC,
	cin => \inst2|ioCount[27]~87\,
	combout => \inst2|ioCount[28]~88_combout\,
	cout => \inst2|ioCount[28]~89\);

-- Location: LCFF_X36_Y23_N25
\inst2|ioCount[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|ioCount[28]~88_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	ena => \inst2|state.w2_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|ioCount\(28));

-- Location: LCCOMB_X36_Y23_N26
\inst2|ioCount[29]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ioCount[29]~90_combout\ = (\inst2|ioCount\(29) & (!\inst2|ioCount[28]~89\)) # (!\inst2|ioCount\(29) & ((\inst2|ioCount[28]~89\) # (GND)))
-- \inst2|ioCount[29]~91\ = CARRY((!\inst2|ioCount[28]~89\) # (!\inst2|ioCount\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ioCount\(29),
	datad => VCC,
	cin => \inst2|ioCount[28]~89\,
	combout => \inst2|ioCount[29]~90_combout\,
	cout => \inst2|ioCount[29]~91\);

-- Location: LCFF_X36_Y23_N27
\inst2|ioCount[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|ioCount[29]~90_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	ena => \inst2|state.w2_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|ioCount\(29));

-- Location: LCCOMB_X36_Y23_N28
\inst2|ioCount[30]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ioCount[30]~92_combout\ = (\inst2|ioCount\(30) & (\inst2|ioCount[29]~91\ $ (GND))) # (!\inst2|ioCount\(30) & (!\inst2|ioCount[29]~91\ & VCC))
-- \inst2|ioCount[30]~93\ = CARRY((\inst2|ioCount\(30) & !\inst2|ioCount[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ioCount\(30),
	datad => VCC,
	cin => \inst2|ioCount[29]~91\,
	combout => \inst2|ioCount[30]~92_combout\,
	cout => \inst2|ioCount[30]~93\);

-- Location: LCFF_X36_Y23_N29
\inst2|ioCount[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|ioCount[30]~92_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	ena => \inst2|state.w2_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|ioCount\(30));

-- Location: LCCOMB_X37_Y23_N20
\inst2|Equal2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal2~7_combout\ = (!\inst2|ioCount\(28) & (!\inst2|ioCount\(29) & !\inst2|ioCount\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ioCount\(28),
	datac => \inst2|ioCount\(29),
	datad => \inst2|ioCount\(30),
	combout => \inst2|Equal2~7_combout\);

-- Location: LCFF_X36_Y23_N7
\inst2|ioCount[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|ioCount[19]~70_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	ena => \inst2|state.w2_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|ioCount\(19));

-- Location: LCCOMB_X37_Y23_N4
\inst2|Equal2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal2~3_combout\ = (!\inst2|ioCount\(16) & (!\inst2|ioCount\(19) & (!\inst2|ioCount\(18) & !\inst2|ioCount\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(16),
	datab => \inst2|ioCount\(19),
	datac => \inst2|ioCount\(18),
	datad => \inst2|ioCount\(17),
	combout => \inst2|Equal2~3_combout\);

-- Location: LCFF_X36_Y24_N17
\inst2|ioCount[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|ioCount[8]~48_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	ena => \inst2|state.w2_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|ioCount\(8));

-- Location: LCCOMB_X37_Y24_N24
\inst2|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal2~1_combout\ = (!\inst2|ioCount\(10) & (!\inst2|ioCount\(8) & (!\inst2|ioCount\(11) & !\inst2|ioCount\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(10),
	datab => \inst2|ioCount\(8),
	datac => \inst2|ioCount\(11),
	datad => \inst2|ioCount\(9),
	combout => \inst2|Equal2~1_combout\);

-- Location: LCFF_X36_Y24_N25
\inst2|ioCount[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|ioCount[12]~56_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	ena => \inst2|state.w2_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|ioCount\(12));

-- Location: LCCOMB_X37_Y24_N26
\inst2|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal2~2_combout\ = (!\inst2|ioCount\(15) & (!\inst2|ioCount\(13) & (!\inst2|ioCount\(14) & !\inst2|ioCount\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(15),
	datab => \inst2|ioCount\(13),
	datac => \inst2|ioCount\(14),
	datad => \inst2|ioCount\(12),
	combout => \inst2|Equal2~2_combout\);

-- Location: LCCOMB_X37_Y23_N28
\inst2|Equal2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal2~5_combout\ = (\inst2|Equal2~4_combout\ & (\inst2|Equal2~3_combout\ & (\inst2|Equal2~1_combout\ & \inst2|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal2~4_combout\,
	datab => \inst2|Equal2~3_combout\,
	datac => \inst2|Equal2~1_combout\,
	datad => \inst2|Equal2~2_combout\,
	combout => \inst2|Equal2~5_combout\);

-- Location: LCCOMB_X37_Y23_N26
\inst2|Equal2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal2~8_combout\ = (\inst2|Equal2~6_combout\ & (\inst2|Equal2~7_combout\ & \inst2|Equal2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal2~6_combout\,
	datac => \inst2|Equal2~7_combout\,
	datad => \inst2|Equal2~5_combout\,
	combout => \inst2|Equal2~8_combout\);

-- Location: LCCOMB_X36_Y23_N30
\inst2|ioCount[31]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ioCount[31]~94_combout\ = \inst2|ioCount[30]~93\ $ (\inst2|ioCount\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ioCount\(31),
	cin => \inst2|ioCount[30]~93\,
	combout => \inst2|ioCount[31]~94_combout\);

-- Location: LCFF_X36_Y23_N31
\inst2|ioCount[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|ioCount[31]~94_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	ena => \inst2|state.w2_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|ioCount\(31));

-- Location: LCFF_X36_Y24_N13
\inst2|ioCount[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|ioCount[6]~44_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	ena => \inst2|state.w2_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|ioCount\(6));

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\232_in~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => \ww_232_in\,
	combout => \232_in~combout\);

-- Location: LCCOMB_X35_Y21_N2
\inst|RxD_sync[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|RxD_sync[0]~0_combout\ = !\232_in~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \232_in~combout\,
	combout => \inst|RxD_sync[0]~0_combout\);

-- Location: LCCOMB_X33_Y22_N0
\inst|tickgen|Acc[1]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|tickgen|Acc[1]~60_combout\ = !\inst|tickgen|Acc\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|tickgen|Acc\(1),
	combout => \inst|tickgen|Acc[1]~60_combout\);

-- Location: LCFF_X33_Y22_N1
\inst|tickgen|Acc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|tickgen|Acc[1]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(1));

-- Location: LCCOMB_X33_Y22_N14
\inst|tickgen|Acc[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|tickgen|Acc[3]~22_combout\ = (\inst|tickgen|Acc\(3) & (\inst|tickgen|Acc[2]~21\ & VCC)) # (!\inst|tickgen|Acc\(3) & (!\inst|tickgen|Acc[2]~21\))
-- \inst|tickgen|Acc[3]~23\ = CARRY((!\inst|tickgen|Acc\(3) & !\inst|tickgen|Acc[2]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|tickgen|Acc\(3),
	datad => VCC,
	cin => \inst|tickgen|Acc[2]~21\,
	combout => \inst|tickgen|Acc[3]~22_combout\,
	cout => \inst|tickgen|Acc[3]~23\);

-- Location: LCFF_X33_Y22_N15
\inst|tickgen|Acc[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|tickgen|Acc[3]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(3));

-- Location: LCCOMB_X33_Y22_N18
\inst|tickgen|Acc[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|tickgen|Acc[5]~26_combout\ = (\inst|tickgen|Acc\(5) & (\inst|tickgen|Acc[4]~25\ & VCC)) # (!\inst|tickgen|Acc\(5) & (!\inst|tickgen|Acc[4]~25\))
-- \inst|tickgen|Acc[5]~27\ = CARRY((!\inst|tickgen|Acc\(5) & !\inst|tickgen|Acc[4]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|tickgen|Acc\(5),
	datad => VCC,
	cin => \inst|tickgen|Acc[4]~25\,
	combout => \inst|tickgen|Acc[5]~26_combout\,
	cout => \inst|tickgen|Acc[5]~27\);

-- Location: LCFF_X33_Y22_N19
\inst|tickgen|Acc[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|tickgen|Acc[5]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(5));

-- Location: LCCOMB_X33_Y22_N22
\inst|tickgen|Acc[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|tickgen|Acc[7]~30_combout\ = (\inst|tickgen|Acc\(7) & (!\inst|tickgen|Acc[6]~29\)) # (!\inst|tickgen|Acc\(7) & ((\inst|tickgen|Acc[6]~29\) # (GND)))
-- \inst|tickgen|Acc[7]~31\ = CARRY((!\inst|tickgen|Acc[6]~29\) # (!\inst|tickgen|Acc\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|tickgen|Acc\(7),
	datad => VCC,
	cin => \inst|tickgen|Acc[6]~29\,
	combout => \inst|tickgen|Acc[7]~30_combout\,
	cout => \inst|tickgen|Acc[7]~31\);

-- Location: LCFF_X33_Y22_N23
\inst|tickgen|Acc[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|tickgen|Acc[7]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(7));

-- Location: LCCOMB_X33_Y22_N26
\inst|tickgen|Acc[9]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|tickgen|Acc[9]~34_combout\ = (\inst|tickgen|Acc\(9) & (!\inst|tickgen|Acc[8]~33\)) # (!\inst|tickgen|Acc\(9) & ((\inst|tickgen|Acc[8]~33\) # (GND)))
-- \inst|tickgen|Acc[9]~35\ = CARRY((!\inst|tickgen|Acc[8]~33\) # (!\inst|tickgen|Acc\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|tickgen|Acc\(9),
	datad => VCC,
	cin => \inst|tickgen|Acc[8]~33\,
	combout => \inst|tickgen|Acc[9]~34_combout\,
	cout => \inst|tickgen|Acc[9]~35\);

-- Location: LCFF_X33_Y22_N27
\inst|tickgen|Acc[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|tickgen|Acc[9]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(9));

-- Location: LCCOMB_X33_Y22_N28
\inst|tickgen|Acc[10]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|tickgen|Acc[10]~36_combout\ = (\inst|tickgen|Acc\(10) & (\inst|tickgen|Acc[9]~35\ $ (GND))) # (!\inst|tickgen|Acc\(10) & (!\inst|tickgen|Acc[9]~35\ & VCC))
-- \inst|tickgen|Acc[10]~37\ = CARRY((\inst|tickgen|Acc\(10) & !\inst|tickgen|Acc[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|tickgen|Acc\(10),
	datad => VCC,
	cin => \inst|tickgen|Acc[9]~35\,
	combout => \inst|tickgen|Acc[10]~36_combout\,
	cout => \inst|tickgen|Acc[10]~37\);

-- Location: LCFF_X33_Y22_N29
\inst|tickgen|Acc[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|tickgen|Acc[10]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(10));

-- Location: LCCOMB_X33_Y22_N30
\inst|tickgen|Acc[11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|tickgen|Acc[11]~38_combout\ = (\inst|tickgen|Acc\(11) & (\inst|tickgen|Acc[10]~37\ & VCC)) # (!\inst|tickgen|Acc\(11) & (!\inst|tickgen|Acc[10]~37\))
-- \inst|tickgen|Acc[11]~39\ = CARRY((!\inst|tickgen|Acc\(11) & !\inst|tickgen|Acc[10]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|tickgen|Acc\(11),
	datad => VCC,
	cin => \inst|tickgen|Acc[10]~37\,
	combout => \inst|tickgen|Acc[11]~38_combout\,
	cout => \inst|tickgen|Acc[11]~39\);

-- Location: LCFF_X33_Y22_N31
\inst|tickgen|Acc[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|tickgen|Acc[11]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(11));

-- Location: LCCOMB_X33_Y21_N0
\inst|tickgen|Acc[12]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|tickgen|Acc[12]~40_combout\ = (\inst|tickgen|Acc\(12) & ((GND) # (!\inst|tickgen|Acc[11]~39\))) # (!\inst|tickgen|Acc\(12) & (\inst|tickgen|Acc[11]~39\ $ (GND)))
-- \inst|tickgen|Acc[12]~41\ = CARRY((\inst|tickgen|Acc\(12)) # (!\inst|tickgen|Acc[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|tickgen|Acc\(12),
	datad => VCC,
	cin => \inst|tickgen|Acc[11]~39\,
	combout => \inst|tickgen|Acc[12]~40_combout\,
	cout => \inst|tickgen|Acc[12]~41\);

-- Location: LCFF_X33_Y21_N1
\inst|tickgen|Acc[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|tickgen|Acc[12]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(12));

-- Location: LCCOMB_X33_Y21_N2
\inst|tickgen|Acc[13]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|tickgen|Acc[13]~42_combout\ = (\inst|tickgen|Acc\(13) & (!\inst|tickgen|Acc[12]~41\)) # (!\inst|tickgen|Acc\(13) & ((\inst|tickgen|Acc[12]~41\) # (GND)))
-- \inst|tickgen|Acc[13]~43\ = CARRY((!\inst|tickgen|Acc[12]~41\) # (!\inst|tickgen|Acc\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|tickgen|Acc\(13),
	datad => VCC,
	cin => \inst|tickgen|Acc[12]~41\,
	combout => \inst|tickgen|Acc[13]~42_combout\,
	cout => \inst|tickgen|Acc[13]~43\);

-- Location: LCFF_X33_Y21_N3
\inst|tickgen|Acc[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|tickgen|Acc[13]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(13));

-- Location: LCCOMB_X33_Y21_N4
\inst|tickgen|Acc[14]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|tickgen|Acc[14]~44_combout\ = (\inst|tickgen|Acc\(14) & (\inst|tickgen|Acc[13]~43\ $ (GND))) # (!\inst|tickgen|Acc\(14) & (!\inst|tickgen|Acc[13]~43\ & VCC))
-- \inst|tickgen|Acc[14]~45\ = CARRY((\inst|tickgen|Acc\(14) & !\inst|tickgen|Acc[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|tickgen|Acc\(14),
	datad => VCC,
	cin => \inst|tickgen|Acc[13]~43\,
	combout => \inst|tickgen|Acc[14]~44_combout\,
	cout => \inst|tickgen|Acc[14]~45\);

-- Location: LCFF_X33_Y21_N5
\inst|tickgen|Acc[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|tickgen|Acc[14]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(14));

-- Location: LCCOMB_X33_Y21_N8
\inst|tickgen|Acc[16]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|tickgen|Acc[16]~48_combout\ = (\inst|tickgen|Acc\(16) & (\inst|tickgen|Acc[15]~47\ $ (GND))) # (!\inst|tickgen|Acc\(16) & (!\inst|tickgen|Acc[15]~47\ & VCC))
-- \inst|tickgen|Acc[16]~49\ = CARRY((\inst|tickgen|Acc\(16) & !\inst|tickgen|Acc[15]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|tickgen|Acc\(16),
	datad => VCC,
	cin => \inst|tickgen|Acc[15]~47\,
	combout => \inst|tickgen|Acc[16]~48_combout\,
	cout => \inst|tickgen|Acc[16]~49\);

-- Location: LCFF_X33_Y21_N9
\inst|tickgen|Acc[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|tickgen|Acc[16]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(16));

-- Location: LCCOMB_X33_Y21_N14
\inst|tickgen|Acc[19]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|tickgen|Acc[19]~54_combout\ = (\inst|tickgen|Acc\(19) & (!\inst|tickgen|Acc[18]~53\)) # (!\inst|tickgen|Acc\(19) & ((\inst|tickgen|Acc[18]~53\) # (GND)))
-- \inst|tickgen|Acc[19]~55\ = CARRY((!\inst|tickgen|Acc[18]~53\) # (!\inst|tickgen|Acc\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|tickgen|Acc\(19),
	datad => VCC,
	cin => \inst|tickgen|Acc[18]~53\,
	combout => \inst|tickgen|Acc[19]~54_combout\,
	cout => \inst|tickgen|Acc[19]~55\);

-- Location: LCFF_X33_Y21_N15
\inst|tickgen|Acc[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|tickgen|Acc[19]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(19));

-- Location: LCCOMB_X33_Y21_N18
\inst|tickgen|Acc[21]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|tickgen|Acc[21]~58_combout\ = \inst|tickgen|Acc[20]~57\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|tickgen|Acc[20]~57\,
	combout => \inst|tickgen|Acc[21]~58_combout\);

-- Location: LCFF_X33_Y21_N19
\inst|tickgen|Acc[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|tickgen|Acc[21]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(21));

-- Location: LCFF_X35_Y21_N3
\inst|RxD_sync[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|RxD_sync[0]~0_combout\,
	ena => \inst|tickgen|Acc\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|RxD_sync\(0));

-- Location: LCCOMB_X35_Y21_N28
\inst|RxD_sync[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|RxD_sync[1]~feeder_combout\ = \inst|RxD_sync\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|RxD_sync\(0),
	combout => \inst|RxD_sync[1]~feeder_combout\);

-- Location: LCFF_X35_Y21_N29
\inst|RxD_sync[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|RxD_sync[1]~feeder_combout\,
	ena => \inst|tickgen|Acc\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|RxD_sync\(1));

-- Location: LCCOMB_X35_Y21_N26
\inst|Filter_cnt[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Filter_cnt[1]~1_combout\ = (\inst|tickgen|Acc\(21) & ((\inst|RxD_sync\(1) & ((\inst|Filter_cnt\(1)) # (\inst|Filter_cnt\(0)))) # (!\inst|RxD_sync\(1) & (\inst|Filter_cnt\(1) & \inst|Filter_cnt\(0))))) # (!\inst|tickgen|Acc\(21) & 
-- (((\inst|Filter_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tickgen|Acc\(21),
	datab => \inst|RxD_sync\(1),
	datac => \inst|Filter_cnt\(1),
	datad => \inst|Filter_cnt\(0),
	combout => \inst|Filter_cnt[1]~1_combout\);

-- Location: LCFF_X35_Y21_N27
\inst|Filter_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Filter_cnt[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Filter_cnt\(1));

-- Location: LCCOMB_X35_Y21_N24
\inst|Filter_cnt[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Filter_cnt[0]~0_combout\ = (\inst|tickgen|Acc\(21) & ((\inst|RxD_sync\(1) & ((\inst|Filter_cnt\(1)) # (!\inst|Filter_cnt\(0)))) # (!\inst|RxD_sync\(1) & (!\inst|Filter_cnt\(0) & \inst|Filter_cnt\(1))))) # (!\inst|tickgen|Acc\(21) & 
-- (((\inst|Filter_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tickgen|Acc\(21),
	datab => \inst|RxD_sync\(1),
	datac => \inst|Filter_cnt\(0),
	datad => \inst|Filter_cnt\(1),
	combout => \inst|Filter_cnt[0]~0_combout\);

-- Location: LCFF_X35_Y21_N25
\inst|Filter_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Filter_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Filter_cnt\(0));

-- Location: LCCOMB_X34_Y21_N28
\inst|RxD_bit~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|RxD_bit~0_combout\ = (\inst|Filter_cnt\(1) & ((\inst|RxD_bit~regout\) # (\inst|Filter_cnt\(0)))) # (!\inst|Filter_cnt\(1) & (\inst|RxD_bit~regout\ & \inst|Filter_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Filter_cnt\(1),
	datac => \inst|RxD_bit~regout\,
	datad => \inst|Filter_cnt\(0),
	combout => \inst|RxD_bit~0_combout\);

-- Location: LCFF_X34_Y21_N29
\inst|RxD_bit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|RxD_bit~0_combout\,
	ena => \inst|tickgen|Acc\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|RxD_bit~regout\);

-- Location: LCCOMB_X34_Y23_N30
\inst|RxD_data[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|RxD_data[7]~0_combout\ = !\inst|RxD_bit~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|RxD_bit~regout\,
	combout => \inst|RxD_data[7]~0_combout\);

-- Location: LCCOMB_X34_Y21_N16
\inst|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal4~0_combout\ = (!\inst|RxD_state\(0) & (!\inst|RxD_state\(2) & (!\inst|RxD_state\(3) & !\inst|RxD_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RxD_state\(0),
	datab => \inst|RxD_state\(2),
	datac => \inst|RxD_state\(3),
	datad => \inst|RxD_state\(1),
	combout => \inst|Equal4~0_combout\);

-- Location: LCCOMB_X35_Y21_N18
\inst|OversamplingCnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|OversamplingCnt~1_combout\ = (!\inst|OversamplingCnt\(0) & !\inst|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|OversamplingCnt\(0),
	datad => \inst|Equal4~0_combout\,
	combout => \inst|OversamplingCnt~1_combout\);

-- Location: LCFF_X35_Y21_N19
\inst|OversamplingCnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|OversamplingCnt~1_combout\,
	ena => \inst|tickgen|Acc\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|OversamplingCnt\(0));

-- Location: LCCOMB_X35_Y21_N0
\inst|OversamplingCnt~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|OversamplingCnt~2_combout\ = (!\inst|Equal4~0_combout\ & (\inst|OversamplingCnt\(1) $ (\inst|OversamplingCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal4~0_combout\,
	datac => \inst|OversamplingCnt\(1),
	datad => \inst|OversamplingCnt\(0),
	combout => \inst|OversamplingCnt~2_combout\);

-- Location: LCFF_X35_Y21_N1
\inst|OversamplingCnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|OversamplingCnt~2_combout\,
	ena => \inst|tickgen|Acc\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|OversamplingCnt\(1));

-- Location: LCCOMB_X35_Y21_N16
\inst|OversamplingCnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|OversamplingCnt~0_combout\ = (!\inst|Equal4~0_combout\ & (\inst|OversamplingCnt\(2) $ (((\inst|OversamplingCnt\(1) & \inst|OversamplingCnt\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal4~0_combout\,
	datab => \inst|OversamplingCnt\(1),
	datac => \inst|OversamplingCnt\(2),
	datad => \inst|OversamplingCnt\(0),
	combout => \inst|OversamplingCnt~0_combout\);

-- Location: LCFF_X35_Y21_N17
\inst|OversamplingCnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|OversamplingCnt~0_combout\,
	ena => \inst|tickgen|Acc\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|OversamplingCnt\(2));

-- Location: LCCOMB_X35_Y21_N30
\inst|sampleNow~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sampleNow~0_combout\ = (\inst|OversamplingCnt\(1) & (\inst|OversamplingCnt\(2) & \inst|OversamplingCnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|OversamplingCnt\(1),
	datac => \inst|OversamplingCnt\(2),
	datad => \inst|OversamplingCnt\(0),
	combout => \inst|sampleNow~0_combout\);

-- Location: LCCOMB_X34_Y21_N24
\inst|OversamplingCnt~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|OversamplingCnt~3_combout\ = (!\inst|Equal4~0_combout\ & (\inst|OversamplingCnt\(3) $ (\inst|sampleNow~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal4~0_combout\,
	datac => \inst|OversamplingCnt\(3),
	datad => \inst|sampleNow~0_combout\,
	combout => \inst|OversamplingCnt~3_combout\);

-- Location: LCFF_X34_Y21_N25
\inst|OversamplingCnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|OversamplingCnt~3_combout\,
	ena => \inst|tickgen|Acc\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|OversamplingCnt\(3));

-- Location: LCCOMB_X34_Y21_N8
\inst|sampleNow\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sampleNow~combout\ = (\inst|tickgen|Acc\(21) & (!\inst|OversamplingCnt\(3) & \inst|sampleNow~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|tickgen|Acc\(21),
	datac => \inst|OversamplingCnt\(3),
	datad => \inst|sampleNow~0_combout\,
	combout => \inst|sampleNow~combout\);

-- Location: LCCOMB_X34_Y21_N12
\inst|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = (\inst|RxD_state\(0) & (\inst|RxD_state\(3) & ((\inst|RxD_state\(2)) # (!\inst|sampleNow~combout\)))) # (!\inst|RxD_state\(0) & ((\inst|RxD_state\(3)) # ((!\inst|sampleNow~combout\ & !\inst|RxD_state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RxD_state\(0),
	datab => \inst|sampleNow~combout\,
	datac => \inst|RxD_state\(3),
	datad => \inst|RxD_state\(2),
	combout => \inst|Mux2~0_combout\);

-- Location: LCCOMB_X34_Y21_N26
\inst|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux2~1_combout\ = (\inst|RxD_state\(1) & (((\inst|Mux2~0_combout\)))) # (!\inst|RxD_state\(1) & (\inst|Mux1~0_combout\ & (\inst|RxD_state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~0_combout\,
	datab => \inst|RxD_state\(3),
	datac => \inst|RxD_state\(1),
	datad => \inst|Mux2~0_combout\,
	combout => \inst|Mux2~1_combout\);

-- Location: LCFF_X34_Y21_N27
\inst|RxD_state[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|RxD_state\(1));

-- Location: LCCOMB_X34_Y21_N18
\inst|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux1~1_combout\ = (\inst|RxD_state\(3) & (\inst|RxD_state\(2) $ (((\inst|Mux1~0_combout\ & \inst|RxD_state\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~0_combout\,
	datab => \inst|RxD_state\(3),
	datac => \inst|RxD_state\(2),
	datad => \inst|RxD_state\(1),
	combout => \inst|Mux1~1_combout\);

-- Location: LCFF_X34_Y21_N19
\inst|RxD_state[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|RxD_state\(2));

-- Location: LCCOMB_X34_Y21_N14
\inst|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (\inst|Mux1~0_combout\ & ((\inst|RxD_state\(2) & (\inst|RxD_state\(3) & !\inst|RxD_state\(1))) # (!\inst|RxD_state\(2) & ((\inst|RxD_state\(3)) # (!\inst|RxD_state\(1)))))) # (!\inst|Mux1~0_combout\ & (((\inst|RxD_state\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~0_combout\,
	datab => \inst|RxD_state\(2),
	datac => \inst|RxD_state\(3),
	datad => \inst|RxD_state\(1),
	combout => \inst|Mux0~0_combout\);

-- Location: LCFF_X34_Y21_N15
\inst|RxD_state[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|RxD_state\(3));

-- Location: LCCOMB_X34_Y21_N2
\inst|always4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|always4~0_combout\ = (!\inst|OversamplingCnt\(3) & (\inst|tickgen|Acc\(21) & (\inst|RxD_state\(3) & \inst|sampleNow~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OversamplingCnt\(3),
	datab => \inst|tickgen|Acc\(21),
	datac => \inst|RxD_state\(3),
	datad => \inst|sampleNow~0_combout\,
	combout => \inst|always4~0_combout\);

-- Location: LCFF_X34_Y23_N31
\inst|RxD_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|RxD_data[7]~0_combout\,
	ena => \inst|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|RxD_data\(7));

-- Location: LCCOMB_X34_Y23_N2
\inst|RxD_data[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|RxD_data[6]~feeder_combout\ = \inst|RxD_data\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|RxD_data\(7),
	combout => \inst|RxD_data[6]~feeder_combout\);

-- Location: LCFF_X34_Y23_N3
\inst|RxD_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|RxD_data[6]~feeder_combout\,
	ena => \inst|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|RxD_data\(6));

-- Location: LCFF_X34_Y23_N1
\inst|RxD_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|RxD_data\(6),
	sload => VCC,
	ena => \inst|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|RxD_data\(5));

-- Location: LCCOMB_X34_Y23_N22
\inst|RxD_data[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|RxD_data[4]~feeder_combout\ = \inst|RxD_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|RxD_data\(5),
	combout => \inst|RxD_data[4]~feeder_combout\);

-- Location: LCFF_X34_Y23_N23
\inst|RxD_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|RxD_data[4]~feeder_combout\,
	ena => \inst|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|RxD_data\(4));

-- Location: LCFF_X34_Y23_N21
\inst|RxD_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|RxD_data\(4),
	sload => VCC,
	ena => \inst|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|RxD_data\(3));

-- Location: LCCOMB_X34_Y23_N20
\inst2|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (!\inst|RxD_data\(2) & (\inst|RxD_data\(4) & (!\inst|RxD_data\(3) & \inst|RxD_data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RxD_data\(2),
	datab => \inst|RxD_data\(4),
	datac => \inst|RxD_data\(3),
	datad => \inst|RxD_data\(5),
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X34_Y23_N28
\inst2|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (!\inst|RxD_data\(6) & (!\inst|RxD_data\(7) & \inst2|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RxD_data\(6),
	datab => \inst|RxD_data\(7),
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|Equal0~1_combout\);

-- Location: LCFF_X34_Y23_N13
\inst|RxD_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|RxD_data\(3),
	sload => VCC,
	ena => \inst|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|RxD_data\(2));

-- Location: LCFF_X34_Y23_N17
\inst|RxD_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|RxD_data\(2),
	sload => VCC,
	ena => \inst|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|RxD_data\(1));

-- Location: LCFF_X34_Y23_N11
\inst|RxD_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|RxD_data\(1),
	sload => VCC,
	ena => \inst|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|RxD_data\(0));

-- Location: LCCOMB_X34_Y23_N16
\inst2|message~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|message~8_combout\ = (\inst|RxD_data_ready~regout\ & (\inst2|Equal0~1_combout\ & (!\inst|RxD_data\(1) & \inst|RxD_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RxD_data_ready~regout\,
	datab => \inst2|Equal0~1_combout\,
	datac => \inst|RxD_data\(1),
	datad => \inst|RxD_data\(0),
	combout => \inst2|message~8_combout\);

-- Location: LCCOMB_X34_Y22_N8
\inst2|state.begin_state~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|state.begin_state~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst2|state.begin_state~feeder_combout\);

-- Location: LCFF_X34_Y22_N9
\inst2|state.begin_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|state.begin_state~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|state.begin_state~regout\);

-- Location: LCCOMB_X34_Y21_N22
\inst|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = (\inst|RxD_state\(0) & ((\inst|RxD_state\(3)) # ((!\inst|RxD_state\(2) & !\inst|RxD_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RxD_state\(0),
	datab => \inst|RxD_state\(2),
	datac => \inst|RxD_state\(3),
	datad => \inst|RxD_state\(1),
	combout => \inst|Mux3~0_combout\);

-- Location: LCCOMB_X34_Y21_N4
\inst|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux3~1_combout\ = (\inst|Mux3~0_combout\ & (((\inst|OversamplingCnt\(3)) # (!\inst|sampleNow~0_combout\)) # (!\inst|tickgen|Acc\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tickgen|Acc\(21),
	datab => \inst|Mux3~0_combout\,
	datac => \inst|OversamplingCnt\(3),
	datad => \inst|sampleNow~0_combout\,
	combout => \inst|Mux3~1_combout\);

-- Location: LCCOMB_X34_Y21_N20
\inst|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux3~3_combout\ = (\inst|Mux3~1_combout\) # ((!\inst|RxD_state\(0) & ((\inst|Mux3~2_combout\) # (\inst|always4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~2_combout\,
	datab => \inst|Mux3~1_combout\,
	datac => \inst|RxD_state\(0),
	datad => \inst|always4~0_combout\,
	combout => \inst|Mux3~3_combout\);

-- Location: LCFF_X34_Y21_N21
\inst|RxD_state[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|RxD_state\(0));

-- Location: LCCOMB_X34_Y21_N30
\inst|RxD_data_ready~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|RxD_data_ready~0_combout\ = (!\inst|RxD_bit~regout\ & (\inst|RxD_state\(1) & (!\inst|RxD_state\(0) & !\inst|RxD_state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RxD_bit~regout\,
	datab => \inst|RxD_state\(1),
	datac => \inst|RxD_state\(0),
	datad => \inst|RxD_state\(2),
	combout => \inst|RxD_data_ready~0_combout\);

-- Location: LCCOMB_X34_Y21_N0
\inst|RxD_data_ready~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|RxD_data_ready~1_combout\ = (!\inst|RxD_state\(3) & (\inst|sampleNow~combout\ & \inst|RxD_data_ready~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|RxD_state\(3),
	datac => \inst|sampleNow~combout\,
	datad => \inst|RxD_data_ready~0_combout\,
	combout => \inst|RxD_data_ready~1_combout\);

-- Location: LCFF_X34_Y21_N1
\inst|RxD_data_ready\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|RxD_data_ready~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|RxD_data_ready~regout\);

-- Location: LCCOMB_X34_Y22_N4
\inst2|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector4~0_combout\ = (\inst2|state.r_state~regout\ & (\inst2|state.begin_state~regout\ & (!\inst|RxD_data_ready~regout\ & !\inst2|state.w2_state~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.r_state~regout\,
	datab => \inst2|state.begin_state~regout\,
	datac => \inst|RxD_data_ready~regout\,
	datad => \inst2|state.w2_state~regout\,
	combout => \inst2|Selector4~0_combout\);

-- Location: LCCOMB_X34_Y22_N10
\inst2|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector4~1_combout\ = (\inst2|Selector4~0_combout\) # ((\inst2|state.w2_state~regout\ & \inst2|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|state.w2_state~regout\,
	datac => \inst2|Selector4~0_combout\,
	datad => \inst2|LessThan0~4_combout\,
	combout => \inst2|Selector4~1_combout\);

-- Location: LCFF_X34_Y22_N11
\inst2|state.r_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|state.r_state~regout\);

-- Location: LCCOMB_X34_Y22_N26
\inst2|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector1~0_combout\ = (\inst2|message~8_combout\) # (((!\inst|RxD_data_ready~regout\ & \inst2|message.MSG_BEGIN~regout\)) # (!\inst2|state.r_state~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RxD_data_ready~regout\,
	datab => \inst2|message.MSG_BEGIN~regout\,
	datac => \inst2|message~8_combout\,
	datad => \inst2|state.r_state~regout\,
	combout => \inst2|Selector1~0_combout\);

-- Location: LCCOMB_X36_Y22_N0
\inst2|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector1~1_combout\ = (\inst2|Selector1~0_combout\ & ((\inst2|message.MSG_BEGIN~regout\) # ((!\inst2|state.w2_state~regout\ & !\inst2|state.w1_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.w2_state~regout\,
	datab => \inst2|state.w1_state~regout\,
	datac => \inst2|message.MSG_BEGIN~regout\,
	datad => \inst2|Selector1~0_combout\,
	combout => \inst2|Selector1~1_combout\);

-- Location: LCFF_X36_Y22_N1
\inst2|message.MSG_BEGIN\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|message.MSG_BEGIN~regout\);

-- Location: LCCOMB_X35_Y24_N16
\inst2|Mux6~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~61_combout\ = (!\inst2|ioCount\(7) & \inst2|message.MSG_BEGIN~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ioCount\(7),
	datad => \inst2|message.MSG_BEGIN~regout\,
	combout => \inst2|Mux6~61_combout\);

-- Location: LCFF_X36_Y24_N7
\inst2|ioCount[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|ioCount[3]~38_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	ena => \inst2|state.w2_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|ioCount\(3));

-- Location: LCCOMB_X37_Y22_N12
\inst2|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~0_combout\ = (\inst2|message.MSG_BEGIN~regout\ & (!\inst2|ioCount\(1) & (!\inst2|ioCount\(0) & \inst2|ioCount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|message.MSG_BEGIN~regout\,
	datab => \inst2|ioCount\(1),
	datac => \inst2|ioCount\(0),
	datad => \inst2|ioCount\(3),
	combout => \inst2|LessThan0~0_combout\);

-- Location: LCCOMB_X37_Y22_N26
\inst2|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~1_combout\ = (\inst2|message.MSG_NONE~regout\ & (((!\inst2|ioCount\(2) & \inst2|LessThan0~0_combout\)) # (!\inst2|ioCount\(3)))) # (!\inst2|message.MSG_NONE~regout\ & (((!\inst2|ioCount\(2) & \inst2|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|message.MSG_NONE~regout\,
	datab => \inst2|ioCount\(3),
	datac => \inst2|ioCount\(2),
	datad => \inst2|LessThan0~0_combout\,
	combout => \inst2|LessThan0~1_combout\);

-- Location: LCCOMB_X37_Y22_N2
\inst2|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~3_combout\ = (\inst2|Mux6~61_combout\) # ((\inst2|LessThan0~2_combout\ & (!\inst2|ioCount\(6) & \inst2|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan0~2_combout\,
	datab => \inst2|ioCount\(6),
	datac => \inst2|Mux6~61_combout\,
	datad => \inst2|LessThan0~1_combout\,
	combout => \inst2|LessThan0~3_combout\);

-- Location: LCCOMB_X37_Y23_N30
\inst2|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~4_combout\ = (!\inst2|ioCount\(31) & ((!\inst2|LessThan0~3_combout\) # (!\inst2|Equal2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal2~8_combout\,
	datac => \inst2|ioCount\(31),
	datad => \inst2|LessThan0~3_combout\,
	combout => \inst2|LessThan0~4_combout\);

-- Location: LCCOMB_X34_Y22_N18
\inst2|Selector5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector5~2_combout\ = (\inst2|state.w2_state~regout\ & ((!\inst2|LessThan0~4_combout\))) # (!\inst2|state.w2_state~regout\ & (\inst2|Selector5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector5~1_combout\,
	datab => \inst2|state.w2_state~regout\,
	datad => \inst2|LessThan0~4_combout\,
	combout => \inst2|Selector5~2_combout\);

-- Location: LCFF_X34_Y22_N19
\inst2|state.w1_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|Selector5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|state.w1_state~regout\);

-- Location: LCCOMB_X34_Y22_N14
\inst2|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector7~0_combout\ = (\inst2|txStart~regout\ & ((\inst2|state.r_state~regout\) # ((\inst2|state.w1_state~regout\) # (!\inst2|state.begin_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.r_state~regout\,
	datab => \inst2|txStart~regout\,
	datac => \inst2|state.begin_state~regout\,
	datad => \inst2|state.w1_state~regout\,
	combout => \inst2|Selector7~0_combout\);

-- Location: LCCOMB_X34_Y22_N12
\inst2|Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector7~1_combout\ = (\inst2|Selector7~0_combout\) # ((\inst2|state.w1_state~regout\ & \inst1|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|state.w1_state~regout\,
	datac => \inst2|Selector7~0_combout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst2|Selector7~1_combout\);

-- Location: LCFF_X34_Y22_N13
\inst2|txStart\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|Selector7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|txStart~regout\);

-- Location: LCCOMB_X38_Y25_N8
\inst1|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux1~4_combout\ = (\inst1|TxD_state\(2) & (!\inst1|tickgen|Acc\(21))) # (!\inst1|TxD_state\(2) & (((\inst2|txStart~regout\ & \inst1|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tickgen|Acc\(21),
	datab => \inst2|txStart~regout\,
	datac => \inst1|Mux1~2_combout\,
	datad => \inst1|TxD_state\(2),
	combout => \inst1|Mux1~4_combout\);

-- Location: LCCOMB_X38_Y25_N6
\inst1|Mux1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux1~5_combout\ = (\inst1|Mux1~3_combout\) # ((\inst1|Mux1~1_combout\) # ((!\inst1|TxD_state\(3) & \inst1|Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|TxD_state\(3),
	datab => \inst1|Mux1~3_combout\,
	datac => \inst1|Mux1~4_combout\,
	datad => \inst1|Mux1~1_combout\,
	combout => \inst1|Mux1~5_combout\);

-- Location: LCFF_X38_Y25_N7
\inst1|TxD_state[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Mux1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|TxD_state\(2));

-- Location: LCCOMB_X34_Y22_N0
\inst2|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector5~0_combout\ = (\inst|RxD_data_ready~regout\ & \inst2|state.r_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|RxD_data_ready~regout\,
	datad => \inst2|state.r_state~regout\,
	combout => \inst2|Selector5~0_combout\);

-- Location: LCFF_X34_Y23_N5
\inst2|verbose[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|RxD_data\(1),
	sload => VCC,
	ena => \inst2|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|verbose\(1));

-- Location: LCCOMB_X37_Y23_N22
\inst2|Equal2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal2~10_combout\ = (!\inst2|ioCount\(6) & (!\inst2|ioCount\(3) & (!\inst2|ioCount\(0) & !\inst2|ioCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(6),
	datab => \inst2|ioCount\(3),
	datac => \inst2|ioCount\(0),
	datad => \inst2|ioCount\(2),
	combout => \inst2|Equal2~10_combout\);

-- Location: LCCOMB_X37_Y23_N0
\inst2|Equal2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal2~11_combout\ = (\inst2|Equal2~9_combout\ & (\inst2|Equal2~10_combout\ & (!\inst2|ioCount\(31) & \inst2|Equal2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal2~9_combout\,
	datab => \inst2|Equal2~10_combout\,
	datac => \inst2|ioCount\(31),
	datad => \inst2|Equal2~8_combout\,
	combout => \inst2|Equal2~11_combout\);

-- Location: LCCOMB_X36_Y22_N18
\inst2|Mux6~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~82_combout\ = (\inst2|ioCount\(1) & !\inst2|ioCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ioCount\(1),
	datad => \inst2|ioCount\(0),
	combout => \inst2|Mux6~82_combout\);

-- Location: LCCOMB_X36_Y22_N2
\inst2|Mux6~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~99_combout\ = (\inst2|message.MSG_BEGIN~regout\ & (!\inst2|ioCount\(7) & ((\inst2|ioCount\(4)) # (\inst2|Mux6~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|message.MSG_BEGIN~regout\,
	datab => \inst2|ioCount\(4),
	datac => \inst2|ioCount\(7),
	datad => \inst2|Mux6~82_combout\,
	combout => \inst2|Mux6~99_combout\);

-- Location: LCFF_X36_Y24_N11
\inst2|ioCount[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|ioCount[5]~42_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	ena => \inst2|state.w2_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|ioCount\(5));

-- Location: LCCOMB_X35_Y22_N6
\inst2|Mux6~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~83_combout\ = (\inst2|Mux6~61_combout\ & ((\inst2|ioCount\(0) & (\inst2|ioCount\(4))) # (!\inst2|ioCount\(0) & ((\inst2|ioCount\(1)) # (!\inst2|ioCount\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(0),
	datab => \inst2|ioCount\(4),
	datac => \inst2|ioCount\(1),
	datad => \inst2|Mux6~61_combout\,
	combout => \inst2|Mux6~83_combout\);

-- Location: LCCOMB_X35_Y22_N14
\inst2|Mux5~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux5~16_combout\ = (\inst2|ioCount\(5) & (((\inst2|ioCount\(2))))) # (!\inst2|ioCount\(5) & ((\inst2|ioCount\(2) & ((\inst2|Mux6~83_combout\))) # (!\inst2|ioCount\(2) & (\inst2|Mux6~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~84_combout\,
	datab => \inst2|ioCount\(5),
	datac => \inst2|ioCount\(2),
	datad => \inst2|Mux6~83_combout\,
	combout => \inst2|Mux5~16_combout\);

-- Location: LCCOMB_X35_Y23_N24
\inst2|Mux6~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~62_combout\ = (!\inst2|ioCount\(7) & (\inst2|ioCount\(1) & !\inst2|ioCount\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(7),
	datac => \inst2|ioCount\(1),
	datad => \inst2|ioCount\(4),
	combout => \inst2|Mux6~62_combout\);

-- Location: LCCOMB_X35_Y23_N26
\inst2|Mux6~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~66_combout\ = (!\inst2|ioCount\(1) & (!\inst2|ioCount\(7) & \inst2|ioCount\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(1),
	datac => \inst2|ioCount\(7),
	datad => \inst2|ioCount\(4),
	combout => \inst2|Mux6~66_combout\);

-- Location: LCCOMB_X35_Y23_N22
\inst2|Mux6~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~85_combout\ = (\inst2|message.MSG_BEGIN~regout\ & ((\inst2|ioCount\(0) & ((\inst2|Mux6~66_combout\))) # (!\inst2|ioCount\(0) & (\inst2|Mux6~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|message.MSG_BEGIN~regout\,
	datab => \inst2|ioCount\(0),
	datac => \inst2|Mux6~62_combout\,
	datad => \inst2|Mux6~66_combout\,
	combout => \inst2|Mux6~85_combout\);

-- Location: LCCOMB_X35_Y22_N8
\inst2|Mux5~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux5~17_combout\ = (\inst2|ioCount\(5) & ((\inst2|Mux5~16_combout\ & ((\inst2|Mux6~85_combout\))) # (!\inst2|Mux5~16_combout\ & (\inst2|Mux6~99_combout\)))) # (!\inst2|ioCount\(5) & (((\inst2|Mux5~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(5),
	datab => \inst2|Mux6~99_combout\,
	datac => \inst2|Mux5~16_combout\,
	datad => \inst2|Mux6~85_combout\,
	combout => \inst2|Mux5~17_combout\);

-- Location: LCCOMB_X35_Y23_N10
\inst2|Mux6~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~68_combout\ = (!\inst2|ioCount\(0) & (\inst2|ioCount\(4) $ (!\inst2|ioCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ioCount\(4),
	datac => \inst2|ioCount\(1),
	datad => \inst2|ioCount\(0),
	combout => \inst2|Mux6~68_combout\);

-- Location: LCCOMB_X35_Y23_N14
\inst2|Mux6~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~100_combout\ = (\inst2|message.MSG_BEGIN~regout\ & (!\inst2|ioCount\(7) & \inst2|Mux6~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|message.MSG_BEGIN~regout\,
	datac => \inst2|ioCount\(7),
	datad => \inst2|Mux6~68_combout\,
	combout => \inst2|Mux6~100_combout\);

-- Location: LCCOMB_X34_Y23_N26
\inst2|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector0~0_combout\ = (\inst2|Selector5~0_combout\ & ((\inst|RxD_data\(1) $ (!\inst|RxD_data\(0))) # (!\inst2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RxD_data\(1),
	datab => \inst2|Selector5~0_combout\,
	datac => \inst|RxD_data\(0),
	datad => \inst2|Equal0~1_combout\,
	combout => \inst2|Selector0~0_combout\);

-- Location: LCCOMB_X34_Y23_N0
\inst2|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector0~2_combout\ = (!\inst2|Selector0~0_combout\ & ((\inst2|message.MSG_NONE~regout\) # (!\inst2|Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector0~1_combout\,
	datab => \inst2|message.MSG_NONE~regout\,
	datad => \inst2|Selector0~0_combout\,
	combout => \inst2|Selector0~2_combout\);

-- Location: LCFF_X35_Y24_N23
\inst2|message.MSG_NONE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst2|Selector0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|message.MSG_NONE~regout\);

-- Location: LCCOMB_X35_Y25_N8
\inst2|Mux6~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~89_combout\ = (\inst2|message.MSG_BEGIN~regout\ & ((!\inst2|ioCount\(7)) # (!\inst2|ioCount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|message.MSG_BEGIN~regout\,
	datac => \inst2|ioCount\(4),
	datad => \inst2|ioCount\(7),
	combout => \inst2|Mux6~89_combout\);

-- Location: LCCOMB_X35_Y25_N26
\inst2|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal2~0_combout\ = (!\inst2|ioCount\(1) & (!\inst2|ioCount\(4) & !\inst2|ioCount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ioCount\(1),
	datac => \inst2|ioCount\(4),
	datad => \inst2|ioCount\(7),
	combout => \inst2|Equal2~0_combout\);

-- Location: LCCOMB_X35_Y25_N22
\inst2|Mux6~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~90_combout\ = (\inst2|ioCount\(1) & ((\inst2|Mux6~89_combout\) # ((\inst2|message.MSG_NONE~regout\ & \inst2|Equal2~0_combout\)))) # (!\inst2|ioCount\(1) & (\inst2|message.MSG_NONE~regout\ & ((\inst2|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(1),
	datab => \inst2|message.MSG_NONE~regout\,
	datac => \inst2|Mux6~89_combout\,
	datad => \inst2|Equal2~0_combout\,
	combout => \inst2|Mux6~90_combout\);

-- Location: LCCOMB_X35_Y25_N4
\inst2|Mux6~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~91_combout\ = (\inst2|ioCount\(0) & (((\inst2|Mux6~90_combout\)))) # (!\inst2|ioCount\(0) & (\inst2|ioCount\(4) & (\inst2|Mux6~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(4),
	datab => \inst2|ioCount\(0),
	datac => \inst2|Mux6~61_combout\,
	datad => \inst2|Mux6~90_combout\,
	combout => \inst2|Mux6~91_combout\);

-- Location: LCCOMB_X35_Y22_N30
\inst2|Mux6~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~86_combout\ = (\inst2|ioCount\(4) & (\inst2|message.MSG_BEGIN~regout\ & ((!\inst2|ioCount\(7))))) # (!\inst2|ioCount\(4) & ((\inst2|ioCount\(7) & (\inst2|message.MSG_BEGIN~regout\)) # (!\inst2|ioCount\(7) & 
-- ((\inst2|message.MSG_NONE~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|message.MSG_BEGIN~regout\,
	datab => \inst2|ioCount\(4),
	datac => \inst2|message.MSG_NONE~regout\,
	datad => \inst2|ioCount\(7),
	combout => \inst2|Mux6~86_combout\);

-- Location: LCCOMB_X35_Y24_N10
\inst2|Mux6~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~73_combout\ = (!\inst2|ioCount\(4) & ((\inst2|ioCount\(7) & ((\inst2|message.MSG_BEGIN~regout\))) # (!\inst2|ioCount\(7) & (\inst2|message.MSG_NONE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|message.MSG_NONE~regout\,
	datab => \inst2|ioCount\(4),
	datac => \inst2|ioCount\(7),
	datad => \inst2|message.MSG_BEGIN~regout\,
	combout => \inst2|Mux6~73_combout\);

-- Location: LCCOMB_X35_Y22_N20
\inst2|Mux6~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~87_combout\ = (\inst2|ioCount\(1) & ((\inst2|ioCount\(0) & ((\inst2|Mux6~73_combout\))) # (!\inst2|ioCount\(0) & (\inst2|Mux6~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(1),
	datab => \inst2|Mux6~86_combout\,
	datac => \inst2|ioCount\(0),
	datad => \inst2|Mux6~73_combout\,
	combout => \inst2|Mux6~87_combout\);

-- Location: LCCOMB_X35_Y22_N18
\inst2|Mux6~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~88_combout\ = (\inst2|Mux6~87_combout\) # ((\inst2|message.MSG_ERROR~regout\ & \inst2|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|message.MSG_ERROR~regout\,
	datac => \inst2|Mux6~87_combout\,
	datad => \inst2|Equal2~0_combout\,
	combout => \inst2|Mux6~88_combout\);

-- Location: LCCOMB_X35_Y22_N12
\inst2|Mux5~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux5~18_combout\ = (\inst2|ioCount\(2) & ((\inst2|ioCount\(5)) # ((\inst2|Mux6~88_combout\)))) # (!\inst2|ioCount\(2) & (!\inst2|ioCount\(5) & (\inst2|Mux6~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(2),
	datab => \inst2|ioCount\(5),
	datac => \inst2|Mux6~91_combout\,
	datad => \inst2|Mux6~88_combout\,
	combout => \inst2|Mux5~18_combout\);

-- Location: LCCOMB_X35_Y22_N2
\inst2|Mux5~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux5~19_combout\ = (\inst2|ioCount\(5) & ((\inst2|Mux5~18_combout\ & (\inst2|Mux6~92_combout\)) # (!\inst2|Mux5~18_combout\ & ((\inst2|Mux6~100_combout\))))) # (!\inst2|ioCount\(5) & (((\inst2|Mux5~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~92_combout\,
	datab => \inst2|ioCount\(5),
	datac => \inst2|Mux6~100_combout\,
	datad => \inst2|Mux5~18_combout\,
	combout => \inst2|Mux5~19_combout\);

-- Location: LCCOMB_X35_Y22_N0
\inst2|Mux5~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux5~20_combout\ = (\inst2|ioCount\(6) & (\inst2|ioCount\(3))) # (!\inst2|ioCount\(6) & ((\inst2|ioCount\(3) & (\inst2|Mux5~17_combout\)) # (!\inst2|ioCount\(3) & ((\inst2|Mux5~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(6),
	datab => \inst2|ioCount\(3),
	datac => \inst2|Mux5~17_combout\,
	datad => \inst2|Mux5~19_combout\,
	combout => \inst2|Mux5~20_combout\);

-- Location: LCCOMB_X34_Y22_N20
\inst2|Mux5~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux5~23_combout\ = (\inst2|ioCount\(4) & ((\inst2|ioCount\(0) & ((\inst2|ioCount\(2)))) # (!\inst2|ioCount\(0) & (\inst2|ioCount\(5))))) # (!\inst2|ioCount\(4) & (\inst2|ioCount\(5) $ (\inst2|ioCount\(2) $ (!\inst2|ioCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(4),
	datab => \inst2|ioCount\(5),
	datac => \inst2|ioCount\(2),
	datad => \inst2|ioCount\(0),
	combout => \inst2|Mux5~23_combout\);

-- Location: LCCOMB_X34_Y22_N30
\inst2|Mux5~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux5~24_combout\ = (\inst2|Mux5~23_combout\ & (\inst2|ioCount\(1) $ (((\inst2|ioCount\(2) & \inst2|ioCount\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(2),
	datab => \inst2|ioCount\(1),
	datac => \inst2|Mux5~23_combout\,
	datad => \inst2|ioCount\(4),
	combout => \inst2|Mux5~24_combout\);

-- Location: LCCOMB_X35_Y22_N28
\inst2|Mux5~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux5~21_combout\ = (!\inst2|ioCount\(7) & (\inst2|message.MSG_BEGIN~regout\ & ((\inst2|Mux5~24_combout\) # (\inst2|Mux5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(7),
	datab => \inst2|message.MSG_BEGIN~regout\,
	datac => \inst2|Mux5~24_combout\,
	datad => \inst2|Mux5~20_combout\,
	combout => \inst2|Mux5~21_combout\);

-- Location: LCCOMB_X35_Y22_N10
\inst2|Mux5~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux5~22_combout\ = (\inst2|ioCount\(6) & (\inst2|Mux5~21_combout\ & ((\inst2|Mux5~3_combout\) # (!\inst2|Mux5~20_combout\)))) # (!\inst2|ioCount\(6) & (((\inst2|Mux5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux5~3_combout\,
	datab => \inst2|Mux5~20_combout\,
	datac => \inst2|ioCount\(6),
	datad => \inst2|Mux5~21_combout\,
	combout => \inst2|Mux5~22_combout\);

-- Location: LCCOMB_X35_Y22_N4
\inst2|txData~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|txData~1_combout\ = (\inst2|Equal2~11_combout\ & (\inst2|verbose\(1))) # (!\inst2|Equal2~11_combout\ & ((\inst2|Mux5~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|verbose\(1),
	datac => \inst2|Equal2~11_combout\,
	datad => \inst2|Mux5~22_combout\,
	combout => \inst2|txData~1_combout\);

-- Location: LCFF_X35_Y22_N5
\inst2|txData[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|txData~1_combout\,
	ena => \inst2|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|txData\(1));

-- Location: LCCOMB_X37_Y25_N0
\inst1|always0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|always0~1_combout\ = (\inst2|txStart~regout\ & \inst1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|txStart~regout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|always0~1_combout\);

-- Location: LCCOMB_X37_Y25_N2
\inst1|TxD_shift~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|TxD_shift~9_combout\ = (\inst1|always0~1_combout\ & (\inst2|txData\(7))) # (!\inst1|always0~1_combout\ & (((\inst1|TxD_shift\(7) & !\inst1|always0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|txData\(7),
	datab => \inst1|always0~1_combout\,
	datac => \inst1|TxD_shift\(7),
	datad => \inst1|always0~0_combout\,
	combout => \inst1|TxD_shift~9_combout\);

-- Location: LCFF_X37_Y25_N3
\inst1|TxD_shift[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|TxD_shift~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|TxD_shift\(7));

-- Location: LCCOMB_X34_Y23_N18
\inst2|verbose[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|verbose[6]~feeder_combout\ = \inst|RxD_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|RxD_data\(6),
	combout => \inst2|verbose[6]~feeder_combout\);

-- Location: LCFF_X34_Y23_N19
\inst2|verbose[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|verbose[6]~feeder_combout\,
	ena => \inst2|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|verbose\(6));

-- Location: LCCOMB_X34_Y25_N26
\inst2|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux0~5_combout\ = (\inst2|ioCount\(4) & (\inst2|ioCount\(1) $ (((!\inst2|ioCount\(0) & !\inst2|ioCount\(6)))))) # (!\inst2|ioCount\(4) & ((\inst2|ioCount\(0) & (!\inst2|ioCount\(1))) # (!\inst2|ioCount\(0) & (\inst2|ioCount\(1) & 
-- !\inst2|ioCount\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(4),
	datab => \inst2|ioCount\(0),
	datac => \inst2|ioCount\(1),
	datad => \inst2|ioCount\(6),
	combout => \inst2|Mux0~5_combout\);

-- Location: LCCOMB_X34_Y25_N16
\inst2|Mux0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux0~6_combout\ = (\inst2|ioCount\(2) & (\inst2|ioCount\(6))) # (!\inst2|ioCount\(2) & ((\inst2|Mux0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(6),
	datab => \inst2|Mux0~5_combout\,
	datad => \inst2|ioCount\(2),
	combout => \inst2|Mux0~6_combout\);

-- Location: LCCOMB_X35_Y25_N20
\inst2|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux0~4_combout\ = (\inst2|message.MSG_BEGIN~regout\ & ((\inst2|ioCount\(0) & ((\inst2|Equal2~0_combout\))) # (!\inst2|ioCount\(0) & (!\inst2|ioCount\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|message.MSG_BEGIN~regout\,
	datab => \inst2|ioCount\(7),
	datac => \inst2|Equal2~0_combout\,
	datad => \inst2|ioCount\(0),
	combout => \inst2|Mux0~4_combout\);

-- Location: LCCOMB_X34_Y25_N30
\inst2|Mux0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux0~7_combout\ = (\inst2|Mux0~6_combout\ & (\inst2|ioCount\(2) & ((\inst2|Mux0~4_combout\)))) # (!\inst2|Mux0~6_combout\ & (((\inst2|Mux6~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(2),
	datab => \inst2|Mux6~61_combout\,
	datac => \inst2|Mux0~6_combout\,
	datad => \inst2|Mux0~4_combout\,
	combout => \inst2|Mux0~7_combout\);

-- Location: LCCOMB_X34_Y25_N14
\inst2|Mux0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux0~20_combout\ = (!\inst2|ioCount\(7) & \inst2|message.MSG_BEGIN~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ioCount\(7),
	datad => \inst2|message.MSG_BEGIN~regout\,
	combout => \inst2|Mux0~20_combout\);

-- Location: LCCOMB_X34_Y25_N22
\inst2|Mux0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux0~16_combout\ = (\inst2|ioCount\(1) & ((\inst2|ioCount\(6) & (\inst2|ioCount\(2))) # (!\inst2|ioCount\(6) & ((\inst2|ioCount\(4)))))) # (!\inst2|ioCount\(1) & (((\inst2|ioCount\(2) & \inst2|ioCount\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(6),
	datab => \inst2|ioCount\(2),
	datac => \inst2|ioCount\(1),
	datad => \inst2|ioCount\(4),
	combout => \inst2|Mux0~16_combout\);

-- Location: LCCOMB_X34_Y25_N8
\inst2|Mux0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux0~17_combout\ = (\inst2|Mux0~20_combout\ & ((\inst2|ioCount\(0) & (\inst2|Mux0~15_combout\)) # (!\inst2|ioCount\(0) & ((!\inst2|Mux0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux0~15_combout\,
	datab => \inst2|ioCount\(0),
	datac => \inst2|Mux0~20_combout\,
	datad => \inst2|Mux0~16_combout\,
	combout => \inst2|Mux0~17_combout\);

-- Location: LCCOMB_X34_Y25_N4
\inst2|Mux6~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~98_combout\ = (\inst2|ioCount\(4)) # ((\inst2|ioCount\(1)) # (!\inst2|ioCount\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(4),
	datac => \inst2|ioCount\(1),
	datad => \inst2|ioCount\(0),
	combout => \inst2|Mux6~98_combout\);

-- Location: LCCOMB_X33_Y25_N16
\inst2|Mux2~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~36_combout\ = \inst2|ioCount\(2) $ (\inst2|ioCount\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ioCount\(2),
	datad => \inst2|ioCount\(6),
	combout => \inst2|Mux2~36_combout\);

-- Location: LCCOMB_X34_Y25_N0
\inst2|Mux0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux0~9_combout\ = (\inst2|Mux6~61_combout\ & ((\inst2|Mux2~36_combout\ & ((\inst2|Mux6~98_combout\))) # (!\inst2|Mux2~36_combout\ & (\inst2|Mux0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux0~8_combout\,
	datab => \inst2|Mux6~98_combout\,
	datac => \inst2|Mux6~61_combout\,
	datad => \inst2|Mux2~36_combout\,
	combout => \inst2|Mux0~9_combout\);

-- Location: LCCOMB_X37_Y22_N0
\inst2|Mux0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux0~11_combout\ = (\inst2|ioCount\(0) & ((\inst2|ioCount\(6)) # ((!\inst2|ioCount\(7) & \inst2|message.MSG_NONE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(0),
	datab => \inst2|ioCount\(6),
	datac => \inst2|ioCount\(7),
	datad => \inst2|message.MSG_NONE~regout\,
	combout => \inst2|Mux0~11_combout\);

-- Location: LCCOMB_X37_Y22_N6
\inst2|Mux0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux0~12_combout\ = (\inst2|ioCount\(2) & (\inst2|ioCount\(6) & (\inst2|ioCount\(4) $ (!\inst2|Mux0~11_combout\)))) # (!\inst2|ioCount\(2) & ((\inst2|ioCount\(4) & (\inst2|ioCount\(6))) # (!\inst2|ioCount\(4) & ((\inst2|Mux0~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(4),
	datab => \inst2|ioCount\(6),
	datac => \inst2|ioCount\(2),
	datad => \inst2|Mux0~11_combout\,
	combout => \inst2|Mux0~12_combout\);

-- Location: LCCOMB_X35_Y24_N0
\inst2|Mux6~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~72_combout\ = (\inst2|message.MSG_BEGIN~regout\ & (\inst2|ioCount\(4) $ (\inst2|ioCount\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ioCount\(4),
	datac => \inst2|ioCount\(7),
	datad => \inst2|message.MSG_BEGIN~regout\,
	combout => \inst2|Mux6~72_combout\);

-- Location: LCCOMB_X34_Y25_N2
\inst2|Mux0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux0~10_combout\ = (\inst2|ioCount\(2) & ((\inst2|Mux6~86_combout\))) # (!\inst2|ioCount\(2) & (\inst2|Mux6~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ioCount\(2),
	datac => \inst2|Mux6~72_combout\,
	datad => \inst2|Mux6~86_combout\,
	combout => \inst2|Mux0~10_combout\);

-- Location: LCCOMB_X34_Y25_N28
\inst2|Mux0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux0~19_combout\ = (\inst2|ioCount\(6) & (\inst2|message.MSG_BEGIN~regout\ & (!\inst2|ioCount\(7)))) # (!\inst2|ioCount\(6) & (((\inst2|Mux0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(6),
	datab => \inst2|message.MSG_BEGIN~regout\,
	datac => \inst2|ioCount\(7),
	datad => \inst2|Mux0~10_combout\,
	combout => \inst2|Mux0~19_combout\);

-- Location: LCCOMB_X34_Y25_N12
\inst2|Mux0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux0~13_combout\ = (\inst2|ioCount\(6) & (\inst2|Mux0~19_combout\ & ((\inst2|ioCount\(1)) # (\inst2|Mux0~12_combout\)))) # (!\inst2|ioCount\(6) & ((\inst2|Mux0~19_combout\) # ((\inst2|ioCount\(1) & \inst2|Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(6),
	datab => \inst2|ioCount\(1),
	datac => \inst2|Mux0~12_combout\,
	datad => \inst2|Mux0~19_combout\,
	combout => \inst2|Mux0~13_combout\);

-- Location: LCCOMB_X34_Y25_N18
\inst2|Mux0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux0~14_combout\ = (\inst2|ioCount\(5) & (((\inst2|ioCount\(3))))) # (!\inst2|ioCount\(5) & ((\inst2|ioCount\(3) & (\inst2|Mux0~9_combout\)) # (!\inst2|ioCount\(3) & ((\inst2|Mux0~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(5),
	datab => \inst2|Mux0~9_combout\,
	datac => \inst2|ioCount\(3),
	datad => \inst2|Mux0~13_combout\,
	combout => \inst2|Mux0~14_combout\);

-- Location: LCCOMB_X34_Y25_N10
\inst2|Mux0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux0~18_combout\ = (\inst2|ioCount\(5) & ((\inst2|Mux0~14_combout\ & ((\inst2|Mux0~17_combout\))) # (!\inst2|Mux0~14_combout\ & (\inst2|Mux0~7_combout\)))) # (!\inst2|ioCount\(5) & (((\inst2|Mux0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(5),
	datab => \inst2|Mux0~7_combout\,
	datac => \inst2|Mux0~17_combout\,
	datad => \inst2|Mux0~14_combout\,
	combout => \inst2|Mux0~18_combout\);

-- Location: LCCOMB_X34_Y25_N20
\inst2|txData~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|txData~6_combout\ = (\inst2|Equal2~11_combout\ & (\inst2|verbose\(6))) # (!\inst2|Equal2~11_combout\ & ((\inst2|Mux0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|verbose\(6),
	datac => \inst2|Equal2~11_combout\,
	datad => \inst2|Mux0~18_combout\,
	combout => \inst2|txData~6_combout\);

-- Location: LCFF_X34_Y25_N21
\inst2|txData[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|txData~6_combout\,
	ena => \inst2|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|txData\(6));

-- Location: LCCOMB_X37_Y25_N4
\inst1|TxD_shift~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|TxD_shift~8_combout\ = (\inst2|txStart~regout\ & ((\inst1|Equal0~0_combout\ & ((\inst2|txData\(6)))) # (!\inst1|Equal0~0_combout\ & (\inst1|TxD_shift\(7))))) # (!\inst2|txStart~regout\ & (\inst1|TxD_shift\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|txStart~regout\,
	datab => \inst1|TxD_shift\(7),
	datac => \inst2|txData\(6),
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|TxD_shift~8_combout\);

-- Location: LCCOMB_X38_Y25_N2
\inst1|TxD_shift[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|TxD_shift[0]~10_combout\ = (\inst1|TxD_state\(3) & ((\inst1|tickgen|Acc\(21)) # ((\inst2|txStart~regout\ & \inst1|Equal0~0_combout\)))) # (!\inst1|TxD_state\(3) & (\inst2|txStart~regout\ & ((\inst1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|TxD_state\(3),
	datab => \inst2|txStart~regout\,
	datac => \inst1|tickgen|Acc\(21),
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|TxD_shift[0]~10_combout\);

-- Location: LCFF_X37_Y25_N5
\inst1|TxD_shift[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|TxD_shift~8_combout\,
	ena => \inst1|TxD_shift[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|TxD_shift\(6));

-- Location: LCCOMB_X36_Y22_N6
\inst2|Mux1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux1~20_combout\ = (\inst2|ioCount\(0) & (!\inst2|ioCount\(3))) # (!\inst2|ioCount\(0) & (!\inst2|ioCount\(6) & ((\inst2|ioCount\(1)) # (!\inst2|ioCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(3),
	datab => \inst2|ioCount\(0),
	datac => \inst2|ioCount\(1),
	datad => \inst2|ioCount\(6),
	combout => \inst2|Mux1~20_combout\);

-- Location: LCCOMB_X36_Y22_N28
\inst2|Mux1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux1~23_combout\ = (\inst2|ioCount\(7)) # (((\inst2|Mux1~20_combout\) # (!\inst2|message.MSG_BEGIN~regout\)) # (!\inst2|ioCount\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(7),
	datab => \inst2|ioCount\(4),
	datac => \inst2|message.MSG_BEGIN~regout\,
	datad => \inst2|Mux1~20_combout\,
	combout => \inst2|Mux1~23_combout\);

-- Location: LCCOMB_X36_Y22_N22
\inst2|Mux1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux1~8_combout\ = (\inst2|ioCount\(6) & (((\inst2|ioCount\(0) & \inst2|ioCount\(1))) # (!\inst2|ioCount\(4)))) # (!\inst2|ioCount\(6) & (((\inst2|ioCount\(4)) # (!\inst2|ioCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(6),
	datab => \inst2|ioCount\(0),
	datac => \inst2|ioCount\(1),
	datad => \inst2|ioCount\(4),
	combout => \inst2|Mux1~8_combout\);

-- Location: LCCOMB_X36_Y22_N4
\inst2|Mux1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux1~24_combout\ = (((\inst2|ioCount\(7)) # (\inst2|Mux1~8_combout\)) # (!\inst2|message.MSG_BEGIN~regout\)) # (!\inst2|ioCount\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(3),
	datab => \inst2|message.MSG_BEGIN~regout\,
	datac => \inst2|ioCount\(7),
	datad => \inst2|Mux1~8_combout\,
	combout => \inst2|Mux1~24_combout\);

-- Location: LCCOMB_X36_Y22_N30
\inst2|Mux1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux1~16_combout\ = (\inst2|message.MSG_NONE~regout\ & (!\inst2|ioCount\(0) & (!\inst2|ioCount\(1)))) # (!\inst2|message.MSG_NONE~regout\ & (((!\inst2|ioCount\(0) & !\inst2|ioCount\(1))) # (!\inst2|ioCount\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|message.MSG_NONE~regout\,
	datab => \inst2|ioCount\(0),
	datac => \inst2|ioCount\(1),
	datad => \inst2|ioCount\(6),
	combout => \inst2|Mux1~16_combout\);

-- Location: LCCOMB_X36_Y22_N16
\inst2|Mux1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux1~17_combout\ = (\inst2|Mux1~15_combout\) # ((!\inst2|ioCount\(4) & ((\inst2|Mux1~16_combout\) # (\inst2|ioCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux1~15_combout\,
	datab => \inst2|Mux1~16_combout\,
	datac => \inst2|ioCount\(3),
	datad => \inst2|ioCount\(4),
	combout => \inst2|Mux1~17_combout\);

-- Location: LCCOMB_X36_Y22_N26
\inst2|Mux1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux1~18_combout\ = (\inst2|ioCount\(7)) # ((\inst2|Mux1~17_combout\) # ((\inst2|ioCount\(3) & !\inst2|Mux6~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(3),
	datab => \inst2|ioCount\(7),
	datac => \inst2|Mux1~17_combout\,
	datad => \inst2|Mux6~82_combout\,
	combout => \inst2|Mux1~18_combout\);

-- Location: LCCOMB_X36_Y22_N20
\inst2|Mux1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux1~19_combout\ = (\inst2|ioCount\(2) & ((\inst2|ioCount\(5)) # ((\inst2|Mux1~24_combout\)))) # (!\inst2|ioCount\(2) & (!\inst2|ioCount\(5) & ((\inst2|Mux1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(2),
	datab => \inst2|ioCount\(5),
	datac => \inst2|Mux1~24_combout\,
	datad => \inst2|Mux1~18_combout\,
	combout => \inst2|Mux1~19_combout\);

-- Location: LCCOMB_X37_Y23_N24
\inst2|Mux1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux1~13_combout\ = \inst2|ioCount\(3) $ (((\inst2|ioCount\(4) & ((!\inst2|ioCount\(1)) # (!\inst2|ioCount\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(6),
	datab => \inst2|ioCount\(3),
	datac => \inst2|ioCount\(1),
	datad => \inst2|ioCount\(4),
	combout => \inst2|Mux1~13_combout\);

-- Location: LCCOMB_X37_Y23_N2
\inst2|Mux1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux1~14_combout\ = (\inst2|ioCount\(0) & (((\inst2|ioCount\(6) & !\inst2|ioCount\(4))) # (!\inst2|ioCount\(1)))) # (!\inst2|ioCount\(0) & (((!\inst2|ioCount\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(1),
	datab => \inst2|ioCount\(0),
	datac => \inst2|ioCount\(6),
	datad => \inst2|ioCount\(4),
	combout => \inst2|Mux1~14_combout\);

-- Location: LCCOMB_X37_Y23_N18
\inst2|Mux1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux1~22_combout\ = ((\inst2|ioCount\(7)) # ((\inst2|Mux1~13_combout\) # (\inst2|Mux1~14_combout\))) # (!\inst2|message.MSG_BEGIN~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|message.MSG_BEGIN~regout\,
	datab => \inst2|ioCount\(7),
	datac => \inst2|Mux1~13_combout\,
	datad => \inst2|Mux1~14_combout\,
	combout => \inst2|Mux1~22_combout\);

-- Location: LCCOMB_X36_Y22_N8
\inst2|Mux1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux1~21_combout\ = (\inst2|ioCount\(5) & ((\inst2|Mux1~19_combout\ & (\inst2|Mux1~23_combout\)) # (!\inst2|Mux1~19_combout\ & ((\inst2|Mux1~22_combout\))))) # (!\inst2|ioCount\(5) & (((\inst2|Mux1~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(5),
	datab => \inst2|Mux1~23_combout\,
	datac => \inst2|Mux1~19_combout\,
	datad => \inst2|Mux1~22_combout\,
	combout => \inst2|Mux1~21_combout\);

-- Location: LCCOMB_X34_Y23_N14
\inst2|verbose[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|verbose[5]~feeder_combout\ = \inst|RxD_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|RxD_data\(5),
	combout => \inst2|verbose[5]~feeder_combout\);

-- Location: LCFF_X34_Y23_N15
\inst2|verbose[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|verbose[5]~feeder_combout\,
	ena => \inst2|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|verbose\(5));

-- Location: LCCOMB_X36_Y22_N10
\inst2|txData~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|txData~5_combout\ = (\inst2|Equal2~11_combout\ & ((\inst2|verbose\(5)))) # (!\inst2|Equal2~11_combout\ & (\inst2|Mux1~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mux1~21_combout\,
	datac => \inst2|verbose\(5),
	datad => \inst2|Equal2~11_combout\,
	combout => \inst2|txData~5_combout\);

-- Location: LCFF_X36_Y22_N11
\inst2|txData[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|txData~5_combout\,
	ena => \inst2|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|txData\(5));

-- Location: LCCOMB_X37_Y25_N18
\inst1|TxD_shift~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|TxD_shift~7_combout\ = (\inst2|txStart~regout\ & ((\inst1|Equal0~0_combout\ & ((\inst2|txData\(5)))) # (!\inst1|Equal0~0_combout\ & (\inst1|TxD_shift\(6))))) # (!\inst2|txStart~regout\ & (\inst1|TxD_shift\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|txStart~regout\,
	datab => \inst1|TxD_shift\(6),
	datac => \inst2|txData\(5),
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|TxD_shift~7_combout\);

-- Location: LCFF_X37_Y25_N19
\inst1|TxD_shift[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|TxD_shift~7_combout\,
	ena => \inst1|TxD_shift[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|TxD_shift\(5));

-- Location: LCCOMB_X33_Y24_N28
\inst2|Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~5_combout\ = (\inst2|ioCount\(4) & ((\inst2|ioCount\(3) & ((\inst2|ioCount\(1)) # (!\inst2|ioCount\(2)))) # (!\inst2|ioCount\(3) & ((!\inst2|ioCount\(1)))))) # (!\inst2|ioCount\(4) & (!\inst2|ioCount\(2) & ((\inst2|ioCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(4),
	datab => \inst2|ioCount\(2),
	datac => \inst2|ioCount\(3),
	datad => \inst2|ioCount\(1),
	combout => \inst2|Mux2~5_combout\);

-- Location: LCCOMB_X33_Y24_N6
\inst2|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~4_combout\ = (\inst2|ioCount\(1) & ((\inst2|ioCount\(3) & ((\inst2|ioCount\(2)))) # (!\inst2|ioCount\(3) & (!\inst2|ioCount\(4))))) # (!\inst2|ioCount\(1) & (\inst2|ioCount\(4) & (\inst2|ioCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(4),
	datab => \inst2|ioCount\(2),
	datac => \inst2|ioCount\(3),
	datad => \inst2|ioCount\(1),
	combout => \inst2|Mux2~4_combout\);

-- Location: LCCOMB_X33_Y24_N26
\inst2|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~3_combout\ = (\inst2|ioCount\(6) & (\inst2|Mux2~5_combout\)) # (!\inst2|ioCount\(6) & ((\inst2|Mux2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mux2~5_combout\,
	datac => \inst2|ioCount\(6),
	datad => \inst2|Mux2~4_combout\,
	combout => \inst2|Mux2~3_combout\);

-- Location: LCCOMB_X34_Y24_N20
\inst2|Mux2~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~41_combout\ = (\inst2|ioCount\(2) & ((\inst2|ioCount\(6) & (!\inst2|ioCount\(3))) # (!\inst2|ioCount\(6) & ((\inst2|ioCount\(1)))))) # (!\inst2|ioCount\(2) & ((\inst2|ioCount\(3) & (\inst2|ioCount\(1))) # (!\inst2|ioCount\(3) & 
-- ((\inst2|ioCount\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(2),
	datab => \inst2|ioCount\(3),
	datac => \inst2|ioCount\(1),
	datad => \inst2|ioCount\(6),
	combout => \inst2|Mux2~41_combout\);

-- Location: LCCOMB_X34_Y24_N22
\inst2|Mux2~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~42_combout\ = (\inst2|ioCount\(4) & (\inst2|Mux2~41_combout\ $ (((\inst2|ioCount\(6) & !\inst2|ioCount\(2)))))) # (!\inst2|ioCount\(4) & (((\inst2|Mux2~41_combout\ & !\inst2|ioCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(6),
	datab => \inst2|ioCount\(4),
	datac => \inst2|Mux2~41_combout\,
	datad => \inst2|ioCount\(2),
	combout => \inst2|Mux2~42_combout\);

-- Location: LCCOMB_X34_Y24_N8
\inst2|Mux2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~18_combout\ = (\inst2|ioCount\(7) & (((\inst2|ioCount\(3)) # (\inst2|ioCount\(4))))) # (!\inst2|ioCount\(7) & ((\inst2|ioCount\(1) & (\inst2|ioCount\(3))) # (!\inst2|ioCount\(1) & ((\inst2|ioCount\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(7),
	datab => \inst2|ioCount\(1),
	datac => \inst2|ioCount\(3),
	datad => \inst2|ioCount\(4),
	combout => \inst2|Mux2~18_combout\);

-- Location: LCCOMB_X34_Y24_N18
\inst2|Mux2~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~19_combout\ = (\inst2|Mux2~18_combout\) # (!\inst2|message.MSG_BEGIN~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mux2~18_combout\,
	datad => \inst2|message.MSG_BEGIN~regout\,
	combout => \inst2|Mux2~19_combout\);

-- Location: LCCOMB_X35_Y24_N6
\inst2|Mux2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~20_combout\ = (\inst2|ioCount\(1) & (((\inst2|ioCount\(3))) # (!\inst2|message.MSG_ERROR~regout\))) # (!\inst2|ioCount\(1) & (((!\inst2|message.MSG_NONE~regout\ & !\inst2|ioCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|message.MSG_ERROR~regout\,
	datab => \inst2|ioCount\(1),
	datac => \inst2|message.MSG_NONE~regout\,
	datad => \inst2|ioCount\(3),
	combout => \inst2|Mux2~20_combout\);

-- Location: LCCOMB_X35_Y24_N12
\inst2|Mux2~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~21_combout\ = (\inst2|ioCount\(3) & (((\inst2|Mux2~20_combout\)) # (!\inst2|message.MSG_BEGIN~regout\))) # (!\inst2|ioCount\(3) & ((\inst2|ioCount\(7) & (!\inst2|message.MSG_BEGIN~regout\)) # (!\inst2|ioCount\(7) & 
-- ((\inst2|Mux2~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(3),
	datab => \inst2|message.MSG_BEGIN~regout\,
	datac => \inst2|ioCount\(7),
	datad => \inst2|Mux2~20_combout\,
	combout => \inst2|Mux2~21_combout\);

-- Location: LCCOMB_X35_Y24_N18
\inst2|Mux2~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~22_combout\ = (\inst2|ioCount\(4) & ((\inst2|ioCount\(7)) # ((!\inst2|message.MSG_BEGIN~regout\)))) # (!\inst2|ioCount\(4) & (((\inst2|Mux2~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(7),
	datab => \inst2|message.MSG_BEGIN~regout\,
	datac => \inst2|Mux2~21_combout\,
	datad => \inst2|ioCount\(4),
	combout => \inst2|Mux2~22_combout\);

-- Location: LCCOMB_X34_Y24_N16
\inst2|Mux2~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~23_combout\ = (\inst2|ioCount\(6) & (((\inst2|ioCount\(2))))) # (!\inst2|ioCount\(6) & ((\inst2|ioCount\(2) & (\inst2|Mux2~19_combout\)) # (!\inst2|ioCount\(2) & ((\inst2|Mux2~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(6),
	datab => \inst2|Mux2~19_combout\,
	datac => \inst2|ioCount\(2),
	datad => \inst2|Mux2~22_combout\,
	combout => \inst2|Mux2~23_combout\);

-- Location: LCCOMB_X34_Y24_N26
\inst2|Mux2~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~17_combout\ = ((\inst2|ioCount\(4) & (\inst2|ioCount\(3) $ (!\inst2|ioCount\(1))))) # (!\inst2|Mux6~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~61_combout\,
	datab => \inst2|ioCount\(3),
	datac => \inst2|ioCount\(1),
	datad => \inst2|ioCount\(4),
	combout => \inst2|Mux2~17_combout\);

-- Location: LCCOMB_X34_Y24_N14
\inst2|Mux2~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~26_combout\ = (\inst2|ioCount\(6) & ((\inst2|Mux2~23_combout\ & (\inst2|Mux2~25_combout\)) # (!\inst2|Mux2~23_combout\ & ((\inst2|Mux2~17_combout\))))) # (!\inst2|ioCount\(6) & (((\inst2|Mux2~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux2~25_combout\,
	datab => \inst2|ioCount\(6),
	datac => \inst2|Mux2~23_combout\,
	datad => \inst2|Mux2~17_combout\,
	combout => \inst2|Mux2~26_combout\);

-- Location: LCCOMB_X35_Y24_N2
\inst2|Mux2~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~31_combout\ = (\inst2|ioCount\(7)) # ((\inst2|ioCount\(4) & ((!\inst2|message.MSG_BEGIN~regout\))) # (!\inst2|ioCount\(4) & (!\inst2|message.MSG_NONE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|message.MSG_NONE~regout\,
	datab => \inst2|message.MSG_BEGIN~regout\,
	datac => \inst2|ioCount\(7),
	datad => \inst2|ioCount\(4),
	combout => \inst2|Mux2~31_combout\);

-- Location: LCCOMB_X35_Y24_N4
\inst2|Mux2~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~32_combout\ = (\inst2|ioCount\(3) & (((\inst2|ioCount\(1))))) # (!\inst2|ioCount\(3) & ((\inst2|ioCount\(1) & ((!\inst2|Mux6~73_combout\))) # (!\inst2|ioCount\(1) & (!\inst2|Mux6~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(3),
	datab => \inst2|Mux6~72_combout\,
	datac => \inst2|ioCount\(1),
	datad => \inst2|Mux6~73_combout\,
	combout => \inst2|Mux2~32_combout\);

-- Location: LCCOMB_X35_Y24_N14
\inst2|Mux2~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~33_combout\ = (\inst2|ioCount\(3) & ((\inst2|Mux2~32_combout\ & ((!\inst2|Mux6~61_combout\))) # (!\inst2|Mux2~32_combout\ & (\inst2|Mux2~31_combout\)))) # (!\inst2|ioCount\(3) & (((\inst2|Mux2~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(3),
	datab => \inst2|Mux2~31_combout\,
	datac => \inst2|Mux2~32_combout\,
	datad => \inst2|Mux6~61_combout\,
	combout => \inst2|Mux2~33_combout\);

-- Location: LCCOMB_X35_Y24_N22
\inst2|Mux2~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~29_combout\ = (\inst2|ioCount\(1) & ((\inst2|ioCount\(4)) # ((!\inst2|ioCount\(7) & !\inst2|message.MSG_NONE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(7),
	datab => \inst2|ioCount\(1),
	datac => \inst2|message.MSG_NONE~regout\,
	datad => \inst2|ioCount\(4),
	combout => \inst2|Mux2~29_combout\);

-- Location: LCCOMB_X35_Y24_N30
\inst2|Mux2~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~28_combout\ = (\inst2|ioCount\(7) & ((!\inst2|message.MSG_BEGIN~regout\) # (!\inst2|ioCount\(1)))) # (!\inst2|ioCount\(7) & (!\inst2|ioCount\(1) & !\inst2|message.MSG_BEGIN~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ioCount\(7),
	datac => \inst2|ioCount\(1),
	datad => \inst2|message.MSG_BEGIN~regout\,
	combout => \inst2|Mux2~28_combout\);

-- Location: LCCOMB_X35_Y24_N8
\inst2|Mux2~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~27_combout\ = (\inst2|ioCount\(3) & (((\inst2|ioCount\(4) & !\inst2|ioCount\(1))) # (!\inst2|Mux6~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(4),
	datab => \inst2|ioCount\(1),
	datac => \inst2|Mux6~61_combout\,
	datad => \inst2|ioCount\(3),
	combout => \inst2|Mux2~27_combout\);

-- Location: LCCOMB_X35_Y24_N20
\inst2|Mux2~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~30_combout\ = (\inst2|Mux2~28_combout\) # ((\inst2|Mux2~27_combout\) # ((!\inst2|ioCount\(3) & \inst2|Mux2~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(3),
	datab => \inst2|Mux2~29_combout\,
	datac => \inst2|Mux2~28_combout\,
	datad => \inst2|Mux2~27_combout\,
	combout => \inst2|Mux2~30_combout\);

-- Location: LCCOMB_X34_Y24_N28
\inst2|Mux2~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~34_combout\ = (\inst2|ioCount\(2) & ((\inst2|ioCount\(6)) # ((\inst2|Mux2~30_combout\)))) # (!\inst2|ioCount\(2) & (!\inst2|ioCount\(6) & (\inst2|Mux2~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(2),
	datab => \inst2|ioCount\(6),
	datac => \inst2|Mux2~33_combout\,
	datad => \inst2|Mux2~30_combout\,
	combout => \inst2|Mux2~34_combout\);

-- Location: LCCOMB_X34_Y24_N12
\inst2|Mux2~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~39_combout\ = (\inst2|ioCount\(1) & ((\inst2|ioCount\(4) & (\inst2|ioCount\(3))) # (!\inst2|ioCount\(4) & ((\inst2|Mux2~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(4),
	datab => \inst2|ioCount\(1),
	datac => \inst2|ioCount\(3),
	datad => \inst2|Mux2~34_combout\,
	combout => \inst2|Mux2~39_combout\);

-- Location: LCCOMB_X34_Y24_N10
\inst2|Mux2~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~40_combout\ = (\inst2|ioCount\(6) & (((\inst2|Mux2~39_combout\) # (!\inst2|Mux6~61_combout\)))) # (!\inst2|ioCount\(6) & (\inst2|Mux2~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(6),
	datab => \inst2|Mux2~34_combout\,
	datac => \inst2|Mux6~61_combout\,
	datad => \inst2|Mux2~39_combout\,
	combout => \inst2|Mux2~40_combout\);

-- Location: LCCOMB_X34_Y24_N6
\inst2|Mux2~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~35_combout\ = (\inst2|ioCount\(0) & ((\inst2|ioCount\(5)) # ((\inst2|Mux2~26_combout\)))) # (!\inst2|ioCount\(0) & (!\inst2|ioCount\(5) & ((\inst2|Mux2~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(0),
	datab => \inst2|ioCount\(5),
	datac => \inst2|Mux2~26_combout\,
	datad => \inst2|Mux2~40_combout\,
	combout => \inst2|Mux2~35_combout\);

-- Location: LCCOMB_X34_Y24_N0
\inst2|Mux2~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~37_combout\ = ((\inst2|ioCount\(7)) # ((\inst2|Mux2~42_combout\ & !\inst2|Mux2~35_combout\))) # (!\inst2|message.MSG_BEGIN~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|message.MSG_BEGIN~regout\,
	datab => \inst2|Mux2~42_combout\,
	datac => \inst2|ioCount\(7),
	datad => \inst2|Mux2~35_combout\,
	combout => \inst2|Mux2~37_combout\);

-- Location: LCCOMB_X34_Y24_N2
\inst2|Mux2~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~38_combout\ = (\inst2|ioCount\(5) & ((\inst2|Mux2~37_combout\) # ((\inst2|Mux2~35_combout\ & \inst2|Mux2~3_combout\)))) # (!\inst2|ioCount\(5) & (\inst2|Mux2~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux2~35_combout\,
	datab => \inst2|Mux2~3_combout\,
	datac => \inst2|ioCount\(5),
	datad => \inst2|Mux2~37_combout\,
	combout => \inst2|Mux2~38_combout\);

-- Location: LCCOMB_X34_Y24_N4
\inst2|txData~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|txData~4_combout\ = (\inst2|Equal2~11_combout\ & (\inst2|verbose\(4))) # (!\inst2|Equal2~11_combout\ & ((\inst2|Mux2~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|verbose\(4),
	datac => \inst2|Equal2~11_combout\,
	datad => \inst2|Mux2~38_combout\,
	combout => \inst2|txData~4_combout\);

-- Location: LCFF_X34_Y24_N5
\inst2|txData[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|txData~4_combout\,
	ena => \inst2|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|txData\(4));

-- Location: LCCOMB_X37_Y25_N28
\inst1|TxD_shift~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|TxD_shift~6_combout\ = (\inst2|txStart~regout\ & ((\inst1|Equal0~0_combout\ & ((\inst2|txData\(4)))) # (!\inst1|Equal0~0_combout\ & (\inst1|TxD_shift\(5))))) # (!\inst2|txStart~regout\ & (\inst1|TxD_shift\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|txStart~regout\,
	datab => \inst1|TxD_shift\(5),
	datac => \inst2|txData\(4),
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|TxD_shift~6_combout\);

-- Location: LCFF_X37_Y25_N29
\inst1|TxD_shift[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|TxD_shift~6_combout\,
	ena => \inst1|TxD_shift[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|TxD_shift\(4));

-- Location: LCCOMB_X38_Y24_N20
\inst2|Mux3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux3~12_combout\ = (\inst2|ioCount\(0) & (((!\inst2|ioCount\(1) & !\inst2|ioCount\(5))))) # (!\inst2|ioCount\(0) & (\inst2|ioCount\(5) & (\inst2|ioCount\(4) $ (!\inst2|ioCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(4),
	datab => \inst2|ioCount\(0),
	datac => \inst2|ioCount\(1),
	datad => \inst2|ioCount\(5),
	combout => \inst2|Mux3~12_combout\);

-- Location: LCCOMB_X38_Y24_N22
\inst2|Mux3~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux3~13_combout\ = (\inst2|ioCount\(4) & (((!\inst2|ioCount\(1))) # (!\inst2|ioCount\(0)))) # (!\inst2|ioCount\(4) & (\inst2|ioCount\(0) $ (((!\inst2|ioCount\(1) & !\inst2|ioCount\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(4),
	datab => \inst2|ioCount\(0),
	datac => \inst2|ioCount\(1),
	datad => \inst2|ioCount\(5),
	combout => \inst2|Mux3~13_combout\);

-- Location: LCCOMB_X38_Y24_N28
\inst2|Mux3~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux3~11_combout\ = (\inst2|ioCount\(2) & ((\inst2|Mux3~13_combout\))) # (!\inst2|ioCount\(2) & (\inst2|Mux3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(2),
	datac => \inst2|Mux3~12_combout\,
	datad => \inst2|Mux3~13_combout\,
	combout => \inst2|Mux3~11_combout\);

-- Location: LCCOMB_X38_Y24_N26
\inst2|Mux3~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux3~28_combout\ = (!\inst2|ioCount\(7) & (\inst2|message.MSG_BEGIN~regout\ & \inst2|Mux3~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ioCount\(7),
	datac => \inst2|message.MSG_BEGIN~regout\,
	datad => \inst2|Mux3~11_combout\,
	combout => \inst2|Mux3~28_combout\);

-- Location: LCCOMB_X35_Y23_N28
\inst2|Mux3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux3~16_combout\ = (\inst2|message.MSG_BEGIN~regout\ & ((!\inst2|ioCount\(4)) # (!\inst2|ioCount\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|message.MSG_BEGIN~regout\,
	datac => \inst2|ioCount\(7),
	datad => \inst2|ioCount\(4),
	combout => \inst2|Mux3~16_combout\);

-- Location: LCCOMB_X35_Y23_N6
\inst2|Mux3~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux3~17_combout\ = (\inst2|ioCount\(4) & ((\inst2|ioCount\(5)) # ((\inst2|ioCount\(1) & \inst2|ioCount\(0))))) # (!\inst2|ioCount\(4) & (!\inst2|ioCount\(5) & ((\inst2|ioCount\(1)) # (\inst2|ioCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(1),
	datab => \inst2|ioCount\(4),
	datac => \inst2|ioCount\(5),
	datad => \inst2|ioCount\(0),
	combout => \inst2|Mux3~17_combout\);

-- Location: LCCOMB_X35_Y23_N8
\inst2|Mux3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux3~18_combout\ = (\inst2|ioCount\(2) & (\inst2|ioCount\(5))) # (!\inst2|ioCount\(2) & (\inst2|Mux3~16_combout\ & (\inst2|ioCount\(5) $ (!\inst2|Mux3~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(5),
	datab => \inst2|Mux3~16_combout\,
	datac => \inst2|ioCount\(2),
	datad => \inst2|Mux3~17_combout\,
	combout => \inst2|Mux3~18_combout\);

-- Location: LCCOMB_X35_Y23_N30
\inst2|Mux6~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~96_combout\ = (\inst2|Mux6~61_combout\ & ((\inst2|ioCount\(0) & ((\inst2|ioCount\(4)))) # (!\inst2|ioCount\(0) & (!\inst2|ioCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(1),
	datab => \inst2|ioCount\(0),
	datac => \inst2|Mux6~61_combout\,
	datad => \inst2|ioCount\(4),
	combout => \inst2|Mux6~96_combout\);

-- Location: LCCOMB_X35_Y23_N0
\inst2|Mux3~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux3~19_combout\ = (\inst2|ioCount\(2) & ((\inst2|Mux3~18_combout\ & ((\inst2|Mux6~96_combout\))) # (!\inst2|Mux3~18_combout\ & (\inst2|Mux6~100_combout\)))) # (!\inst2|ioCount\(2) & (((\inst2|Mux3~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(2),
	datab => \inst2|Mux6~100_combout\,
	datac => \inst2|Mux3~18_combout\,
	datad => \inst2|Mux6~96_combout\,
	combout => \inst2|Mux3~19_combout\);

-- Location: LCCOMB_X33_Y24_N2
\inst2|Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux3~5_combout\ = (\inst2|ioCount\(2) & (\inst2|ioCount\(0) $ (((\inst2|ioCount\(4)) # (\inst2|ioCount\(1)))))) # (!\inst2|ioCount\(2) & ((\inst2|ioCount\(4) & ((\inst2|ioCount\(1)))) # (!\inst2|ioCount\(4) & (!\inst2|ioCount\(0) & 
-- !\inst2|ioCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101001100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(4),
	datab => \inst2|ioCount\(0),
	datac => \inst2|ioCount\(2),
	datad => \inst2|ioCount\(1),
	combout => \inst2|Mux3~5_combout\);

-- Location: LCCOMB_X37_Y24_N20
\inst2|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux3~4_combout\ = (\inst2|ioCount\(4) & (\inst2|ioCount\(2) & (\inst2|ioCount\(0) & \inst2|ioCount\(1)))) # (!\inst2|ioCount\(4) & (!\inst2|ioCount\(2) & (\inst2|ioCount\(0) $ (\inst2|ioCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(4),
	datab => \inst2|ioCount\(2),
	datac => \inst2|ioCount\(0),
	datad => \inst2|ioCount\(1),
	combout => \inst2|Mux3~4_combout\);

-- Location: LCCOMB_X37_Y24_N14
\inst2|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux3~3_combout\ = (\inst2|ioCount\(5) & (\inst2|Mux3~5_combout\)) # (!\inst2|ioCount\(5) & ((\inst2|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(5),
	datac => \inst2|Mux3~5_combout\,
	datad => \inst2|Mux3~4_combout\,
	combout => \inst2|Mux3~3_combout\);

-- Location: LCCOMB_X38_Y24_N2
\inst2|Mux3~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux3~27_combout\ = (!\inst2|ioCount\(7) & (\inst2|message.MSG_BEGIN~regout\ & \inst2|Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ioCount\(7),
	datac => \inst2|message.MSG_BEGIN~regout\,
	datad => \inst2|Mux3~3_combout\,
	combout => \inst2|Mux3~27_combout\);

-- Location: LCCOMB_X34_Y23_N4
\inst2|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector2~0_combout\ = (!\inst|RxD_data\(0) & (\inst2|Selector5~0_combout\ & (\inst|RxD_data\(1) & \inst2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RxD_data\(0),
	datab => \inst2|Selector5~0_combout\,
	datac => \inst|RxD_data\(1),
	datad => \inst2|Equal0~1_combout\,
	combout => \inst2|Selector2~0_combout\);

-- Location: LCCOMB_X34_Y23_N12
\inst2|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector2~1_combout\ = (\inst2|Selector2~0_combout\) # ((\inst2|Selector0~1_combout\ & \inst2|message.MSG_ERROR~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector0~1_combout\,
	datab => \inst2|Selector2~0_combout\,
	datad => \inst2|message.MSG_ERROR~regout\,
	combout => \inst2|Selector2~1_combout\);

-- Location: LCFF_X35_Y24_N25
\inst2|message.MSG_ERROR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst2|Selector2~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|message.MSG_ERROR~regout\);

-- Location: LCCOMB_X35_Y24_N24
\inst2|Mux6~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~95_combout\ = (!\inst2|ioCount\(4) & ((\inst2|ioCount\(7) & ((\inst2|message.MSG_BEGIN~regout\))) # (!\inst2|ioCount\(7) & (\inst2|message.MSG_ERROR~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(4),
	datab => \inst2|ioCount\(7),
	datac => \inst2|message.MSG_ERROR~regout\,
	datad => \inst2|message.MSG_BEGIN~regout\,
	combout => \inst2|Mux6~95_combout\);

-- Location: LCCOMB_X38_Y24_N12
\inst2|Mux6~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~97_combout\ = (!\inst2|ioCount\(4) & (\inst2|ioCount\(0) & \inst2|message.MSG_BEGIN~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(4),
	datab => \inst2|ioCount\(0),
	datad => \inst2|message.MSG_BEGIN~regout\,
	combout => \inst2|Mux6~97_combout\);

-- Location: LCCOMB_X38_Y24_N30
\inst2|Mux6~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~101_combout\ = (\inst2|Mux6~97_combout\) # ((\inst2|ioCount\(1) & (!\inst2|ioCount\(0) & \inst2|Mux6~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(1),
	datab => \inst2|ioCount\(0),
	datac => \inst2|Mux6~95_combout\,
	datad => \inst2|Mux6~97_combout\,
	combout => \inst2|Mux6~101_combout\);

-- Location: LCCOMB_X35_Y22_N22
\inst2|Mux6~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~58_combout\ = (\inst2|ioCount\(4) & (\inst2|ioCount\(1) & !\inst2|ioCount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ioCount\(4),
	datac => \inst2|ioCount\(1),
	datad => \inst2|ioCount\(7),
	combout => \inst2|Mux6~58_combout\);

-- Location: LCCOMB_X38_Y24_N14
\inst2|Mux6~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~60_combout\ = (\inst2|message.MSG_BEGIN~regout\ & ((\inst2|ioCount\(0) & ((\inst2|Mux6~58_combout\))) # (!\inst2|ioCount\(0) & (\inst2|Mux6~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~59_combout\,
	datab => \inst2|message.MSG_BEGIN~regout\,
	datac => \inst2|ioCount\(0),
	datad => \inst2|Mux6~58_combout\,
	combout => \inst2|Mux6~60_combout\);

-- Location: LCCOMB_X37_Y24_N18
\inst2|Mux3~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux3~20_combout\ = (!\inst2|ioCount\(7) & ((\inst2|ioCount\(4) & ((\inst2|message.MSG_BEGIN~regout\))) # (!\inst2|ioCount\(4) & (\inst2|message.MSG_NONE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(4),
	datab => \inst2|ioCount\(7),
	datac => \inst2|message.MSG_NONE~regout\,
	datad => \inst2|message.MSG_BEGIN~regout\,
	combout => \inst2|Mux3~20_combout\);

-- Location: LCCOMB_X38_Y24_N18
\inst2|Mux3~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux3~21_combout\ = (\inst2|ioCount\(1) & (\inst2|Mux3~20_combout\ & ((\inst2|ioCount\(4)) # (!\inst2|ioCount\(0))))) # (!\inst2|ioCount\(1) & (((\inst2|ioCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(4),
	datab => \inst2|ioCount\(0),
	datac => \inst2|ioCount\(1),
	datad => \inst2|Mux3~20_combout\,
	combout => \inst2|Mux3~21_combout\);

-- Location: LCCOMB_X38_Y24_N8
\inst2|Mux3~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux3~22_combout\ = (\inst2|ioCount\(5) & (((\inst2|ioCount\(2))))) # (!\inst2|ioCount\(5) & (!\inst2|ioCount\(2) & ((\inst2|ioCount\(1)) # (\inst2|Mux6~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(1),
	datab => \inst2|ioCount\(5),
	datac => \inst2|ioCount\(2),
	datad => \inst2|Mux6~73_combout\,
	combout => \inst2|Mux3~22_combout\);

-- Location: LCCOMB_X38_Y24_N10
\inst2|Mux3~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux3~23_combout\ = (\inst2|ioCount\(5) & (((\inst2|Mux3~22_combout\) # (\inst2|Mux6~100_combout\)))) # (!\inst2|ioCount\(5) & (\inst2|Mux3~21_combout\ & (\inst2|Mux3~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(5),
	datab => \inst2|Mux3~21_combout\,
	datac => \inst2|Mux3~22_combout\,
	datad => \inst2|Mux6~100_combout\,
	combout => \inst2|Mux3~23_combout\);

-- Location: LCCOMB_X38_Y24_N0
\inst2|Mux3~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux3~24_combout\ = (\inst2|ioCount\(2) & ((\inst2|Mux3~23_combout\ & ((\inst2|Mux6~60_combout\))) # (!\inst2|Mux3~23_combout\ & (\inst2|Mux6~101_combout\)))) # (!\inst2|ioCount\(2) & (((\inst2|Mux3~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(2),
	datab => \inst2|Mux6~101_combout\,
	datac => \inst2|Mux6~60_combout\,
	datad => \inst2|Mux3~23_combout\,
	combout => \inst2|Mux3~24_combout\);

-- Location: LCCOMB_X38_Y24_N6
\inst2|Mux3~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux3~25_combout\ = (\inst2|ioCount\(3) & (((\inst2|ioCount\(6))))) # (!\inst2|ioCount\(3) & ((\inst2|ioCount\(6) & (\inst2|Mux3~27_combout\)) # (!\inst2|ioCount\(6) & ((\inst2|Mux3~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(3),
	datab => \inst2|Mux3~27_combout\,
	datac => \inst2|ioCount\(6),
	datad => \inst2|Mux3~24_combout\,
	combout => \inst2|Mux3~25_combout\);

-- Location: LCCOMB_X38_Y24_N4
\inst2|Mux3~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux3~26_combout\ = (\inst2|ioCount\(3) & ((\inst2|Mux3~25_combout\ & (\inst2|Mux3~28_combout\)) # (!\inst2|Mux3~25_combout\ & ((\inst2|Mux3~19_combout\))))) # (!\inst2|ioCount\(3) & (((\inst2|Mux3~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(3),
	datab => \inst2|Mux3~28_combout\,
	datac => \inst2|Mux3~19_combout\,
	datad => \inst2|Mux3~25_combout\,
	combout => \inst2|Mux3~26_combout\);

-- Location: LCCOMB_X37_Y24_N10
\inst2|txData~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|txData~3_combout\ = (\inst2|Equal2~11_combout\ & (\inst2|verbose\(3))) # (!\inst2|Equal2~11_combout\ & ((\inst2|Mux3~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|verbose\(3),
	datac => \inst2|Equal2~11_combout\,
	datad => \inst2|Mux3~26_combout\,
	combout => \inst2|txData~3_combout\);

-- Location: LCFF_X37_Y24_N11
\inst2|txData[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|txData~3_combout\,
	ena => \inst2|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|txData\(3));

-- Location: LCCOMB_X37_Y25_N26
\inst1|TxD_shift~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|TxD_shift~5_combout\ = (\inst2|txStart~regout\ & ((\inst1|Equal0~0_combout\ & ((\inst2|txData\(3)))) # (!\inst1|Equal0~0_combout\ & (\inst1|TxD_shift\(4))))) # (!\inst2|txStart~regout\ & (\inst1|TxD_shift\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|txStart~regout\,
	datab => \inst1|TxD_shift\(4),
	datac => \inst2|txData\(3),
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|TxD_shift~5_combout\);

-- Location: LCFF_X37_Y25_N27
\inst1|TxD_shift[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|TxD_shift~5_combout\,
	ena => \inst1|TxD_shift[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|TxD_shift\(3));

-- Location: LCCOMB_X33_Y24_N0
\inst2|Mux4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux4~8_combout\ = (\inst2|ioCount\(4) & ((\inst2|ioCount\(0) & ((!\inst2|ioCount\(1)))) # (!\inst2|ioCount\(0) & (!\inst2|ioCount\(6))))) # (!\inst2|ioCount\(4) & (((\inst2|ioCount\(6) & \inst2|ioCount\(1))) # (!\inst2|ioCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(4),
	datab => \inst2|ioCount\(6),
	datac => \inst2|ioCount\(0),
	datad => \inst2|ioCount\(1),
	combout => \inst2|Mux4~8_combout\);

-- Location: LCCOMB_X33_Y24_N18
\inst2|Mux4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux4~9_combout\ = (\inst2|ioCount\(1) & (\inst2|ioCount\(0) $ (((\inst2|ioCount\(4) & \inst2|ioCount\(6)))))) # (!\inst2|ioCount\(1) & ((\inst2|ioCount\(0) & (!\inst2|ioCount\(4))) # (!\inst2|ioCount\(0) & ((!\inst2|ioCount\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(4),
	datab => \inst2|ioCount\(6),
	datac => \inst2|ioCount\(0),
	datad => \inst2|ioCount\(1),
	combout => \inst2|Mux4~9_combout\);

-- Location: LCCOMB_X33_Y24_N4
\inst2|Mux4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux4~7_combout\ = (\inst2|ioCount\(5) & ((\inst2|Mux4~9_combout\))) # (!\inst2|ioCount\(5) & (\inst2|Mux4~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(5),
	datab => \inst2|Mux4~8_combout\,
	datad => \inst2|Mux4~9_combout\,
	combout => \inst2|Mux4~7_combout\);

-- Location: LCCOMB_X33_Y24_N14
\inst2|Mux4~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux4~17_combout\ = (\inst2|ioCount\(6) & ((\inst2|ioCount\(4) & (\inst2|ioCount\(0))) # (!\inst2|ioCount\(4) & ((!\inst2|ioCount\(1)) # (!\inst2|ioCount\(0)))))) # (!\inst2|ioCount\(6) & (\inst2|ioCount\(1) $ (((\inst2|ioCount\(4)) # 
-- (!\inst2|ioCount\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010011011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(4),
	datab => \inst2|ioCount\(0),
	datac => \inst2|ioCount\(6),
	datad => \inst2|ioCount\(1),
	combout => \inst2|Mux4~17_combout\);

-- Location: LCCOMB_X33_Y24_N12
\inst2|Mux4~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux4~16_combout\ = (\inst2|ioCount\(4) & (((!\inst2|ioCount\(6))) # (!\inst2|ioCount\(0)))) # (!\inst2|ioCount\(4) & (((\inst2|ioCount\(0) & !\inst2|ioCount\(6))) # (!\inst2|ioCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(4),
	datab => \inst2|ioCount\(0),
	datac => \inst2|ioCount\(6),
	datad => \inst2|ioCount\(1),
	combout => \inst2|Mux4~16_combout\);

-- Location: LCCOMB_X33_Y24_N24
\inst2|Mux4~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux4~15_combout\ = (\inst2|ioCount\(5) & (\inst2|Mux4~17_combout\)) # (!\inst2|ioCount\(5) & ((\inst2|Mux4~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(5),
	datac => \inst2|Mux4~17_combout\,
	datad => \inst2|Mux4~16_combout\,
	combout => \inst2|Mux4~15_combout\);

-- Location: LCCOMB_X37_Y24_N28
\inst2|Mux6~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~93_combout\ = (\inst2|ioCount\(0) & !\inst2|ioCount\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ioCount\(0),
	datad => \inst2|ioCount\(1),
	combout => \inst2|Mux6~93_combout\);

-- Location: LCCOMB_X37_Y24_N8
\inst2|Mux4~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux4~24_combout\ = (\inst2|ioCount\(7) & (\inst2|message.MSG_BEGIN~regout\ & ((!\inst2|ioCount\(0)) # (!\inst2|ioCount\(1))))) # (!\inst2|ioCount\(7) & (\inst2|ioCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(1),
	datab => \inst2|ioCount\(0),
	datac => \inst2|message.MSG_BEGIN~regout\,
	datad => \inst2|ioCount\(7),
	combout => \inst2|Mux4~24_combout\);

-- Location: LCCOMB_X37_Y24_N6
\inst2|Mux4~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux4~25_combout\ = (\inst2|message.MSG_NONE~regout\) # (\inst2|ioCount\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|message.MSG_NONE~regout\,
	datad => \inst2|ioCount\(7),
	combout => \inst2|Mux4~25_combout\);

-- Location: LCCOMB_X37_Y24_N0
\inst2|Mux4~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux4~26_combout\ = (\inst2|ioCount\(4) & (!\inst2|Mux6~93_combout\)) # (!\inst2|ioCount\(4) & (((\inst2|Mux4~24_combout\ & \inst2|Mux4~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(4),
	datab => \inst2|Mux6~93_combout\,
	datac => \inst2|Mux4~24_combout\,
	datad => \inst2|Mux4~25_combout\,
	combout => \inst2|Mux4~26_combout\);

-- Location: LCCOMB_X35_Y22_N16
\inst2|Mux6~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~81_combout\ = (!\inst2|ioCount\(0) & \inst2|message.MSG_BEGIN~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ioCount\(0),
	datad => \inst2|message.MSG_BEGIN~regout\,
	combout => \inst2|Mux6~81_combout\);

-- Location: LCCOMB_X35_Y22_N26
\inst2|Mux4~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux4~23_combout\ = (\inst2|ioCount\(6) & (\inst2|ioCount\(5))) # (!\inst2|ioCount\(6) & (((\inst2|Mux6~81_combout\ & \inst2|Mux6~58_combout\)) # (!\inst2|ioCount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(6),
	datab => \inst2|ioCount\(5),
	datac => \inst2|Mux6~81_combout\,
	datad => \inst2|Mux6~58_combout\,
	combout => \inst2|Mux4~23_combout\);

-- Location: LCCOMB_X36_Y25_N4
\inst2|Mux4~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux4~27_combout\ = (\inst2|Mux4~23_combout\ & ((\inst2|ioCount\(5)) # ((\inst2|Mux4~30_combout\ & \inst2|Mux4~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux4~30_combout\,
	datab => \inst2|ioCount\(5),
	datac => \inst2|Mux4~26_combout\,
	datad => \inst2|Mux4~23_combout\,
	combout => \inst2|Mux4~27_combout\);

-- Location: LCCOMB_X36_Y25_N26
\inst2|Mux4~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux4~33_combout\ = (\inst2|ioCount\(4) & ((\inst2|ioCount\(0)) # (\inst2|ioCount\(1) $ (\inst2|Mux4~27_combout\)))) # (!\inst2|ioCount\(4) & (\inst2|ioCount\(0) $ (((\inst2|ioCount\(1)) # (\inst2|Mux4~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(0),
	datab => \inst2|ioCount\(1),
	datac => \inst2|Mux4~27_combout\,
	datad => \inst2|ioCount\(4),
	combout => \inst2|Mux4~33_combout\);

-- Location: LCCOMB_X36_Y25_N20
\inst2|Mux4~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux4~34_combout\ = (\inst2|ioCount\(6) & (\inst2|Mux6~61_combout\ & ((\inst2|Mux4~33_combout\)))) # (!\inst2|ioCount\(6) & (((\inst2|Mux4~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~61_combout\,
	datab => \inst2|ioCount\(6),
	datac => \inst2|Mux4~27_combout\,
	datad => \inst2|Mux4~33_combout\,
	combout => \inst2|Mux4~34_combout\);

-- Location: LCCOMB_X35_Y23_N18
\inst2|Mux4~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux4~22_combout\ = (!\inst2|ioCount\(7) & (\inst2|message.MSG_BEGIN~regout\ & (\inst2|ioCount\(1) & !\inst2|ioCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(7),
	datab => \inst2|message.MSG_BEGIN~regout\,
	datac => \inst2|ioCount\(1),
	datad => \inst2|ioCount\(0),
	combout => \inst2|Mux4~22_combout\);

-- Location: LCCOMB_X35_Y23_N4
\inst2|Mux6~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~67_combout\ = (\inst2|message.MSG_BEGIN~regout\ & \inst2|ioCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|message.MSG_BEGIN~regout\,
	datad => \inst2|ioCount\(0),
	combout => \inst2|Mux6~67_combout\);

-- Location: LCCOMB_X35_Y23_N12
\inst2|Mux6~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~69_combout\ = (\inst2|Mux6~68_combout\ & ((\inst2|Mux6~61_combout\) # ((\inst2|Mux6~67_combout\ & \inst2|Mux6~66_combout\)))) # (!\inst2|Mux6~68_combout\ & (\inst2|Mux6~67_combout\ & ((\inst2|Mux6~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~68_combout\,
	datab => \inst2|Mux6~67_combout\,
	datac => \inst2|Mux6~61_combout\,
	datad => \inst2|Mux6~66_combout\,
	combout => \inst2|Mux6~69_combout\);

-- Location: LCCOMB_X35_Y23_N20
\inst2|Mux4~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux4~35_combout\ = (\inst2|ioCount\(6) & ((\inst2|ioCount\(5) & (\inst2|Mux4~22_combout\)) # (!\inst2|ioCount\(5) & ((\inst2|Mux6~69_combout\))))) # (!\inst2|ioCount\(6) & (((!\inst2|ioCount\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(6),
	datab => \inst2|Mux4~22_combout\,
	datac => \inst2|ioCount\(5),
	datad => \inst2|Mux6~69_combout\,
	combout => \inst2|Mux4~35_combout\);

-- Location: LCCOMB_X35_Y25_N24
\inst2|Mux4~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux4~20_combout\ = (\inst2|ioCount\(1) & ((\inst2|Mux6~95_combout\))) # (!\inst2|ioCount\(1) & (\inst2|Mux6~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ioCount\(1),
	datac => \inst2|Mux6~89_combout\,
	datad => \inst2|Mux6~95_combout\,
	combout => \inst2|Mux4~20_combout\);

-- Location: LCCOMB_X35_Y25_N6
\inst2|Mux4~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux4~29_combout\ = (\inst2|message.MSG_BEGIN~regout\ & ((\inst2|ioCount\(1) & ((!\inst2|ioCount\(4)))) # (!\inst2|ioCount\(1) & (!\inst2|ioCount\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(7),
	datab => \inst2|ioCount\(1),
	datac => \inst2|message.MSG_BEGIN~regout\,
	datad => \inst2|ioCount\(4),
	combout => \inst2|Mux4~29_combout\);

-- Location: LCCOMB_X35_Y25_N18
\inst2|Mux4~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux4~21_combout\ = (\inst2|ioCount\(5)) # ((\inst2|ioCount\(0) & ((\inst2|Mux4~29_combout\))) # (!\inst2|ioCount\(0) & (\inst2|Mux4~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(5),
	datab => \inst2|ioCount\(0),
	datac => \inst2|Mux4~20_combout\,
	datad => \inst2|Mux4~29_combout\,
	combout => \inst2|Mux4~21_combout\);

-- Location: LCCOMB_X36_Y25_N2
\inst2|Mux4~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux4~36_combout\ = (\inst2|ioCount\(6) & (((\inst2|Mux4~35_combout\)))) # (!\inst2|ioCount\(6) & (\inst2|Mux4~21_combout\ & ((\inst2|Mux6~94_combout\) # (\inst2|Mux4~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~94_combout\,
	datab => \inst2|ioCount\(6),
	datac => \inst2|Mux4~35_combout\,
	datad => \inst2|Mux4~21_combout\,
	combout => \inst2|Mux4~36_combout\);

-- Location: LCCOMB_X36_Y25_N6
\inst2|Mux4~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux4~28_combout\ = (\inst2|ioCount\(3) & (\inst2|ioCount\(2))) # (!\inst2|ioCount\(3) & ((\inst2|ioCount\(2) & ((\inst2|Mux4~36_combout\))) # (!\inst2|ioCount\(2) & (\inst2|Mux4~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(3),
	datab => \inst2|ioCount\(2),
	datac => \inst2|Mux4~34_combout\,
	datad => \inst2|Mux4~36_combout\,
	combout => \inst2|Mux4~28_combout\);

-- Location: LCCOMB_X36_Y25_N22
\inst2|Mux4~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux4~31_combout\ = (!\inst2|ioCount\(7) & (\inst2|message.MSG_BEGIN~regout\ & ((\inst2|Mux4~15_combout\) # (\inst2|Mux4~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(7),
	datab => \inst2|Mux4~15_combout\,
	datac => \inst2|message.MSG_BEGIN~regout\,
	datad => \inst2|Mux4~28_combout\,
	combout => \inst2|Mux4~31_combout\);

-- Location: LCCOMB_X36_Y25_N8
\inst2|Mux4~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux4~32_combout\ = (\inst2|ioCount\(3) & (\inst2|Mux4~31_combout\ & ((\inst2|Mux4~7_combout\) # (!\inst2|Mux4~28_combout\)))) # (!\inst2|ioCount\(3) & (\inst2|Mux4~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux4~28_combout\,
	datab => \inst2|ioCount\(3),
	datac => \inst2|Mux4~7_combout\,
	datad => \inst2|Mux4~31_combout\,
	combout => \inst2|Mux4~32_combout\);

-- Location: LCCOMB_X36_Y25_N14
\inst2|txData~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|txData~2_combout\ = (\inst2|Equal2~11_combout\ & (\inst2|verbose\(2))) # (!\inst2|Equal2~11_combout\ & ((\inst2|Mux4~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|verbose\(2),
	datab => \inst2|Equal2~11_combout\,
	datac => \inst2|Mux4~32_combout\,
	combout => \inst2|txData~2_combout\);

-- Location: LCFF_X36_Y25_N15
\inst2|txData[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|txData~2_combout\,
	ena => \inst2|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|txData\(2));

-- Location: LCCOMB_X37_Y25_N12
\inst1|TxD_shift~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|TxD_shift~4_combout\ = (\inst2|txStart~regout\ & ((\inst1|Equal0~0_combout\ & ((\inst2|txData\(2)))) # (!\inst1|Equal0~0_combout\ & (\inst1|TxD_shift\(3))))) # (!\inst2|txStart~regout\ & (\inst1|TxD_shift\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|txStart~regout\,
	datab => \inst1|TxD_shift\(3),
	datac => \inst2|txData\(2),
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|TxD_shift~4_combout\);

-- Location: LCFF_X37_Y25_N13
\inst1|TxD_shift[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|TxD_shift~4_combout\,
	ena => \inst1|TxD_shift[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|TxD_shift\(2));

-- Location: LCCOMB_X37_Y25_N6
\inst1|TxD_shift~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|TxD_shift~3_combout\ = (\inst2|txStart~regout\ & ((\inst1|Equal0~0_combout\ & (\inst2|txData\(1))) # (!\inst1|Equal0~0_combout\ & ((\inst1|TxD_shift\(2)))))) # (!\inst2|txStart~regout\ & (((\inst1|TxD_shift\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|txStart~regout\,
	datab => \inst1|Equal0~0_combout\,
	datac => \inst2|txData\(1),
	datad => \inst1|TxD_shift\(2),
	combout => \inst1|TxD_shift~3_combout\);

-- Location: LCFF_X37_Y25_N7
\inst1|TxD_shift[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|TxD_shift~3_combout\,
	ena => \inst1|TxD_shift[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|TxD_shift\(1));

-- Location: LCFF_X34_Y23_N27
\inst2|verbose[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|RxD_data\(0),
	sload => VCC,
	ena => \inst2|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|verbose\(0));

-- Location: LCCOMB_X37_Y24_N4
\inst2|Mux6~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~55_combout\ = (\inst2|ioCount\(5) & ((\inst2|ioCount\(1) & ((\inst2|ioCount\(4)))) # (!\inst2|ioCount\(1) & (!\inst2|ioCount\(0) & !\inst2|ioCount\(4))))) # (!\inst2|ioCount\(5) & (\inst2|ioCount\(1) $ ((\inst2|ioCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(1),
	datab => \inst2|ioCount\(5),
	datac => \inst2|ioCount\(0),
	datad => \inst2|ioCount\(4),
	combout => \inst2|Mux6~55_combout\);

-- Location: LCCOMB_X38_Y24_N24
\inst2|Mux6~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~54_combout\ = (\inst2|ioCount\(5) & ((\inst2|ioCount\(0) & ((!\inst2|ioCount\(1)))) # (!\inst2|ioCount\(0) & ((\inst2|ioCount\(4)) # (\inst2|ioCount\(1)))))) # (!\inst2|ioCount\(5) & ((\inst2|ioCount\(0) $ (!\inst2|ioCount\(1))) # 
-- (!\inst2|ioCount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(4),
	datab => \inst2|ioCount\(0),
	datac => \inst2|ioCount\(1),
	datad => \inst2|ioCount\(5),
	combout => \inst2|Mux6~54_combout\);

-- Location: LCCOMB_X37_Y24_N30
\inst2|Mux6~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~53_combout\ = (\inst2|ioCount\(2) & (\inst2|Mux6~55_combout\)) # (!\inst2|ioCount\(2) & ((\inst2|Mux6~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mux6~55_combout\,
	datac => \inst2|ioCount\(2),
	datad => \inst2|Mux6~54_combout\,
	combout => \inst2|Mux6~53_combout\);

-- Location: LCCOMB_X35_Y25_N28
\inst2|Mux6~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~63_combout\ = (\inst2|ioCount\(0) & (\inst2|message.MSG_BEGIN~regout\)) # (!\inst2|ioCount\(0) & ((\inst2|message.MSG_NONE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|message.MSG_BEGIN~regout\,
	datab => \inst2|message.MSG_NONE~regout\,
	datac => \inst2|ioCount\(0),
	combout => \inst2|Mux6~63_combout\);

-- Location: LCCOMB_X35_Y25_N12
\inst2|Mux6~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~106_combout\ = (\inst2|ioCount\(2) & ((\inst2|ioCount\(4)) # (\inst2|ioCount\(0) $ (\inst2|ioCount\(1))))) # (!\inst2|ioCount\(2) & ((\inst2|ioCount\(1) & ((!\inst2|ioCount\(4)))) # (!\inst2|ioCount\(1) & (!\inst2|ioCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(0),
	datab => \inst2|ioCount\(2),
	datac => \inst2|ioCount\(4),
	datad => \inst2|ioCount\(1),
	combout => \inst2|Mux6~106_combout\);

-- Location: LCCOMB_X35_Y25_N14
\inst2|Mux6~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~107_combout\ = (\inst2|ioCount\(5) & (((!\inst2|ioCount\(7) & \inst2|Mux6~106_combout\)))) # (!\inst2|ioCount\(5) & (\inst2|ioCount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(5),
	datab => \inst2|ioCount\(2),
	datac => \inst2|ioCount\(7),
	datad => \inst2|Mux6~106_combout\,
	combout => \inst2|Mux6~107_combout\);

-- Location: LCCOMB_X35_Y25_N0
\inst2|Mux6~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~70_combout\ = (\inst2|ioCount\(5) & (((\inst2|message.MSG_BEGIN~regout\)) # (!\inst2|Mux6~107_combout\))) # (!\inst2|ioCount\(5) & (\inst2|Mux6~107_combout\ & ((\inst2|Mux6~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(5),
	datab => \inst2|Mux6~107_combout\,
	datac => \inst2|message.MSG_BEGIN~regout\,
	datad => \inst2|Mux6~69_combout\,
	combout => \inst2|Mux6~70_combout\);

-- Location: LCCOMB_X35_Y25_N30
\inst2|Mux6~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~71_combout\ = (\inst2|Mux6~107_combout\ & (((\inst2|Mux6~70_combout\)))) # (!\inst2|Mux6~107_combout\ & (\inst2|Mux6~65_combout\ & (\inst2|Mux6~63_combout\ & !\inst2|Mux6~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~65_combout\,
	datab => \inst2|Mux6~63_combout\,
	datac => \inst2|Mux6~107_combout\,
	datad => \inst2|Mux6~70_combout\,
	combout => \inst2|Mux6~71_combout\);

-- Location: LCCOMB_X37_Y24_N16
\inst2|Mux6~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~77_combout\ = (\inst2|message.MSG_NONE~regout\ & !\inst2|ioCount\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|message.MSG_NONE~regout\,
	datad => \inst2|ioCount\(7),
	combout => \inst2|Mux6~77_combout\);

-- Location: LCCOMB_X37_Y24_N22
\inst2|Mux6~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~76_combout\ = (\inst2|ioCount\(7) & (!\inst2|ioCount\(4) & ((\inst2|ioCount\(1)) # (!\inst2|ioCount\(0))))) # (!\inst2|ioCount\(7) & (\inst2|ioCount\(4) & ((!\inst2|ioCount\(0)) # (!\inst2|ioCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(7),
	datab => \inst2|ioCount\(1),
	datac => \inst2|ioCount\(0),
	datad => \inst2|ioCount\(4),
	combout => \inst2|Mux6~76_combout\);

-- Location: LCCOMB_X37_Y24_N2
\inst2|Mux6~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~78_combout\ = (\inst2|Mux2~16_combout\ & ((\inst2|Mux6~77_combout\) # ((\inst2|message.MSG_BEGIN~regout\ & \inst2|Mux6~76_combout\)))) # (!\inst2|Mux2~16_combout\ & (\inst2|message.MSG_BEGIN~regout\ & ((\inst2|Mux6~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux2~16_combout\,
	datab => \inst2|message.MSG_BEGIN~regout\,
	datac => \inst2|Mux6~77_combout\,
	datad => \inst2|Mux6~76_combout\,
	combout => \inst2|Mux6~78_combout\);

-- Location: LCCOMB_X35_Y24_N28
\inst2|Mux6~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~74_combout\ = (\inst2|ioCount\(1) & (!\inst2|ioCount\(0) & ((\inst2|Mux6~73_combout\)))) # (!\inst2|ioCount\(1) & (\inst2|ioCount\(0) & (\inst2|Mux6~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(1),
	datab => \inst2|ioCount\(0),
	datac => \inst2|Mux6~72_combout\,
	datad => \inst2|Mux6~73_combout\,
	combout => \inst2|Mux6~74_combout\);

-- Location: LCCOMB_X35_Y24_N26
\inst2|Mux6~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~75_combout\ = (\inst2|Mux6~74_combout\) # ((\inst2|Mux6~61_combout\ & (\inst2|ioCount\(0) $ (!\inst2|ioCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~61_combout\,
	datab => \inst2|ioCount\(0),
	datac => \inst2|ioCount\(1),
	datad => \inst2|Mux6~74_combout\,
	combout => \inst2|Mux6~75_combout\);

-- Location: LCCOMB_X36_Y25_N30
\inst2|Mux6~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~79_combout\ = (\inst2|ioCount\(5) & (\inst2|ioCount\(2))) # (!\inst2|ioCount\(5) & ((\inst2|ioCount\(2) & ((\inst2|Mux6~75_combout\))) # (!\inst2|ioCount\(2) & (\inst2|Mux6~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(5),
	datab => \inst2|ioCount\(2),
	datac => \inst2|Mux6~78_combout\,
	datad => \inst2|Mux6~75_combout\,
	combout => \inst2|Mux6~79_combout\);

-- Location: LCCOMB_X36_Y25_N12
\inst2|Mux6~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~104_combout\ = (\inst2|ioCount\(1) & (\inst2|Mux6~79_combout\ & ((\inst2|ioCount\(0)) # (!\inst2|ioCount\(4))))) # (!\inst2|ioCount\(1) & ((\inst2|ioCount\(4) & (\inst2|ioCount\(0) $ (\inst2|Mux6~79_combout\))) # (!\inst2|ioCount\(4) & 
-- ((\inst2|ioCount\(0)) # (!\inst2|Mux6~79_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(4),
	datab => \inst2|ioCount\(1),
	datac => \inst2|ioCount\(0),
	datad => \inst2|Mux6~79_combout\,
	combout => \inst2|Mux6~104_combout\);

-- Location: LCCOMB_X36_Y25_N10
\inst2|Mux6~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~105_combout\ = (\inst2|ioCount\(5) & (\inst2|Mux6~61_combout\ & ((\inst2|Mux6~104_combout\)))) # (!\inst2|ioCount\(5) & (((\inst2|Mux6~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~61_combout\,
	datab => \inst2|Mux6~79_combout\,
	datac => \inst2|ioCount\(5),
	datad => \inst2|Mux6~104_combout\,
	combout => \inst2|Mux6~105_combout\);

-- Location: LCCOMB_X36_Y25_N0
\inst2|Mux6~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~80_combout\ = (\inst2|ioCount\(3) & ((\inst2|ioCount\(6)) # ((\inst2|Mux6~71_combout\)))) # (!\inst2|ioCount\(3) & (!\inst2|ioCount\(6) & ((\inst2|Mux6~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(3),
	datab => \inst2|ioCount\(6),
	datac => \inst2|Mux6~71_combout\,
	datad => \inst2|Mux6~105_combout\,
	combout => \inst2|Mux6~80_combout\);

-- Location: LCCOMB_X33_Y24_N16
\inst2|Mux6~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~46_combout\ = (\inst2|ioCount\(1) & (\inst2|ioCount\(5) $ (((!\inst2|ioCount\(4)) # (!\inst2|ioCount\(0)))))) # (!\inst2|ioCount\(1) & (!\inst2|ioCount\(0) & ((\inst2|ioCount\(5)) # (\inst2|ioCount\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(1),
	datab => \inst2|ioCount\(5),
	datac => \inst2|ioCount\(0),
	datad => \inst2|ioCount\(4),
	combout => \inst2|Mux6~46_combout\);

-- Location: LCCOMB_X33_Y24_N30
\inst2|Mux6~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~47_combout\ = (\inst2|ioCount\(1) & (\inst2|ioCount\(4) & ((!\inst2|ioCount\(0)) # (!\inst2|ioCount\(5))))) # (!\inst2|ioCount\(1) & ((\inst2|ioCount\(5)) # ((\inst2|ioCount\(0) & \inst2|ioCount\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(1),
	datab => \inst2|ioCount\(5),
	datac => \inst2|ioCount\(0),
	datad => \inst2|ioCount\(4),
	combout => \inst2|Mux6~47_combout\);

-- Location: LCCOMB_X33_Y24_N20
\inst2|Mux6~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~45_combout\ = (\inst2|ioCount\(2) & ((\inst2|Mux6~47_combout\))) # (!\inst2|ioCount\(2) & (\inst2|Mux6~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ioCount\(2),
	datac => \inst2|Mux6~46_combout\,
	datad => \inst2|Mux6~47_combout\,
	combout => \inst2|Mux6~45_combout\);

-- Location: LCCOMB_X36_Y25_N28
\inst2|Mux6~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~102_combout\ = (!\inst2|ioCount\(7) & (\inst2|message.MSG_BEGIN~regout\ & ((\inst2|Mux6~45_combout\) # (\inst2|Mux6~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(7),
	datab => \inst2|Mux6~45_combout\,
	datac => \inst2|message.MSG_BEGIN~regout\,
	datad => \inst2|Mux6~80_combout\,
	combout => \inst2|Mux6~102_combout\);

-- Location: LCCOMB_X36_Y25_N18
\inst2|Mux6~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~103_combout\ = (\inst2|ioCount\(6) & (\inst2|Mux6~102_combout\ & ((\inst2|Mux6~53_combout\) # (!\inst2|Mux6~80_combout\)))) # (!\inst2|ioCount\(6) & (((\inst2|Mux6~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ioCount\(6),
	datab => \inst2|Mux6~53_combout\,
	datac => \inst2|Mux6~80_combout\,
	datad => \inst2|Mux6~102_combout\,
	combout => \inst2|Mux6~103_combout\);

-- Location: LCCOMB_X36_Y25_N16
\inst2|txData~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|txData~0_combout\ = (\inst2|Equal2~11_combout\ & (\inst2|verbose\(0))) # (!\inst2|Equal2~11_combout\ & ((\inst2|Mux6~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal2~11_combout\,
	datac => \inst2|verbose\(0),
	datad => \inst2|Mux6~103_combout\,
	combout => \inst2|txData~0_combout\);

-- Location: LCFF_X36_Y25_N17
\inst2|txData[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|txData~0_combout\,
	ena => \inst2|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|txData\(0));

-- Location: LCCOMB_X37_Y25_N16
\inst1|TxD_shift~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|TxD_shift~2_combout\ = (\inst2|txStart~regout\ & ((\inst1|Equal0~0_combout\ & ((\inst2|txData\(0)))) # (!\inst1|Equal0~0_combout\ & (\inst1|TxD_shift\(1))))) # (!\inst2|txStart~regout\ & (((\inst1|TxD_shift\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|txStart~regout\,
	datab => \inst1|Equal0~0_combout\,
	datac => \inst1|TxD_shift\(1),
	datad => \inst2|txData\(0),
	combout => \inst1|TxD_shift~2_combout\);

-- Location: LCFF_X37_Y25_N17
\inst1|TxD_shift[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|TxD_shift~2_combout\,
	ena => \inst1|TxD_shift[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|TxD_shift\(0));

-- Location: LCCOMB_X38_Y25_N24
\inst1|TxD~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|TxD~0_combout\ = (\inst1|TxD_state\(3) & ((\inst1|TxD_shift\(0)))) # (!\inst1|TxD_state\(3) & (!\inst1|TxD_state\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|TxD_state\(2),
	datab => \inst1|TxD_shift\(0),
	datad => \inst1|TxD_state\(3),
	combout => \inst1|TxD~0_combout\);

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\232_out~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|TxD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_232_out\);

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(17));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(16));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(15));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(14));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(13));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(12));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(11));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(10));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(9));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(8));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(7));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(6));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(5));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(4));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(3));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(2));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));
END structure;


