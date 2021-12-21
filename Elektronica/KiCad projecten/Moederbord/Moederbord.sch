EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 850  7500 0    50   ~ 0
TODO\nMoet RFID-lezer aan- en uitgeschakeld kunnen worden via FET om energie te sparen?\nMoet de LED-voeding aan- en uitgeschakeld kunnen worden via FET om energie te sparen? Nee, te hoge stroom om eenvoudig te schakelen\nMoet de audio-versterker aan- en uitgeschakeld kunnen worden via FET om energie te sparen? Nee, te hoge stroom om eenvoudig te schakelen\nMoeten de shift-registers aan- en uitgeschakeld kunnen worden via FET om energie te sparen? Nee, Iq in uA\nMoeten de data- in- en uitgangen beschermd worden? ESD? Serieweerstand?\nSpanningen duidelijk maken; wellicht level shifters nodig\nStromen duidelijk maken\nVermogens duidelijk maken\n\n12 V en 5 V voeding gaan niet via dit bord, want\n- weinig toegevoegde waarde\n- hoge stroom, dus lastig\n- te hoge stroom om ff met een FET te schakelen
$Sheet
S 1750 1150 500  150 
U 61AEA73C
F0 "Toetsmodules" 50
F1 "Toetsmodules.sch" 50
$EndSheet
$Sheet
S 1750 1900 500  150 
U 61C61687
F0 "Shift registers" 50
F1 "Shift_registers.sch" 50
$EndSheet
Text Notes 8650 2850 0    50   ~ 0
RFID reader\nOnly used pins\nBoard will be mounted\n on another location
Text Notes 8900 1200 0    50   ~ 0
I2S DAC\nAll pins\nBoard will be mounted\n on motherboard???
Text Notes 9000 1900 0    63   ~ 0
BCK\nDATA\nLRCK\nGND\nGND\nVCC = 5V
$Comp
L Connector:Conn_01x06_Female J2
U 1 1 61A7BB18
P 8900 1550
F 0 "J2" H 8850 1850 50  0000 L CNN
F 1 "I2S_DAC" H 8600 1900 50  0001 L CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x06_Pitch2.54mm" H 8900 1550 50  0001 C CNN
F 3 "~" H 8900 1550 50  0001 C CNN
	1    8900 1550
	1    0    0    -1  
$EndComp
Text Notes 8900 3600 0    63   ~ 0
SDA==CS <-- can not be removed???\nSCK==SCLK\nMOSI\nMISO\nGND\n3.3V
$Comp
L Connector:Screw_Terminal_01x02 J9
U 1 1 61BACFCC
P 9550 4500
F 0 "J9" H 9500 4650 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 9150 4650 50  0001 L CNN
F 2 "Moederbord:TerminalBlock_2_P5.08mm" H 9550 4500 50  0001 C CNN
F 3 "~" H 9550 4500 50  0001 C CNN
	1    9550 4500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Female J6
U 1 1 61BAE503
P 8800 3250
F 0 "J6" H 8750 3550 50  0000 L CNN
F 1 "Conn_01x06_Female" H 8828 3135 50  0001 L CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 8800 3250 50  0001 C CNN
F 3 "~" H 8800 3250 50  0001 C CNN
	1    8800 3250
	1    0    0    -1  
$EndComp
Text Notes 5150 4650 0    63   ~ 0
3V	RFID	3V3\n36	Shift	DIN\n37	Menu	DIN\n38	RFID	MISO\n39	BatMon	ADC\n32	I2S DAC	DOUT\n33	I2S DAC	BCLK\n25	I2S DAC	LRCLK\n26	LED rings	DOUT\n27	LED display	DOUT\nG		GND\n5V		5V0
$Comp
L Connector:Conn_01x12_Female J7
U 1 1 61BB04FD
P 3350 4000
F 0 "J7" H 3300 4650 50  0000 L CNN
F 1 "Conn_01x12_Female" H 3378 3885 50  0001 L CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x12_Pitch2.54mm" H 3350 4000 50  0001 C CNN
F 3 "~" H 3350 4000 50  0001 C CNN
	1    3350 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 3050 8600 3050
Wire Wire Line
	8600 3150 8400 3150
Wire Wire Line
	8400 3250 8600 3250
Wire Wire Line
	8600 3350 8400 3350
Wire Wire Line
	8400 3450 8600 3450
Wire Wire Line
	8600 3550 8400 3550
Text Notes 7900 2750 0    50   ~ 0
Wire connections\nas backup
Wire Wire Line
	8500 1350 8700 1350
Wire Wire Line
	8700 1450 8500 1450
Wire Wire Line
	8500 1550 8700 1550
Wire Wire Line
	8700 1650 8500 1650
Wire Wire Line
	8500 1750 8700 1750
Wire Wire Line
	8700 1850 8500 1850
Text Notes 8000 1150 0    50   ~ 0
Wire connections\nas backup
Text Notes 3300 3100 0    50   ~ 0
Main controller
Text GLabel 7700 3050 0    50   Input ~ 0
RFID_CS
Wire Wire Line
	7700 3050 7900 3050
Text GLabel 7700 3150 0    50   Input ~ 0
RFID_SCLK
Wire Wire Line
	7700 3150 7900 3150
Text GLabel 7700 3250 0    50   Input ~ 0
RFID_MOSI
Wire Wire Line
	7700 3250 7900 3250
Text GLabel 7700 3350 0    50   Output ~ 0
RFID_MISO
Wire Wire Line
	7700 3350 7900 3350
$Comp
L power:GND #PWR07
U 1 1 61C048B2
P 7150 3650
F 0 "#PWR07" H 7150 3400 50  0001 C CNN
F 1 "GND" H 7155 3477 50  0000 C CNN
F 2 "" H 7150 3650 50  0001 C CNN
F 3 "" H 7150 3650 50  0001 C CNN
	1    7150 3650
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR06
U 1 1 61C0559E
P 7050 3350
F 0 "#PWR06" H 7050 3200 50  0001 C CNN
F 1 "+3V3" H 7065 3523 50  0000 C CNN
F 2 "" H 7050 3350 50  0001 C CNN
F 3 "" H 7050 3350 50  0001 C CNN
	1    7050 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 3450 7150 3650
Wire Wire Line
	7150 3450 7900 3450
Wire Wire Line
	7050 3350 7050 3550
Wire Wire Line
	7050 3550 7900 3550
Text GLabel 7800 1350 0    50   Input ~ 0
DAC_BCK
Wire Wire Line
	7800 1350 8000 1350
Text GLabel 7800 1450 0    50   Input ~ 0
DAC_DATA
Wire Wire Line
	7800 1450 8000 1450
Text GLabel 7800 1550 0    50   Input ~ 0
DAC_LRCK
Wire Wire Line
	7800 1550 8000 1550
$Comp
L power:GND #PWR03
U 1 1 61C0A40D
P 7250 1950
F 0 "#PWR03" H 7250 1700 50  0001 C CNN
F 1 "GND" H 7255 1777 50  0000 C CNN
F 2 "" H 7250 1950 50  0001 C CNN
F 3 "" H 7250 1950 50  0001 C CNN
	1    7250 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1750 7250 1950
Wire Wire Line
	7250 1750 8000 1750
Text Notes 2100 4650 2    63   ~ 0
GND		G\nGND		G\nCLK	Shift	21\nSH/LDn1	Shift	22\nSH/LDn2	Shift	17\nSH/LDn3	Shift	2\nCS	RFID	15\nMOSI	RFID	13\nSCLK	RFID	12\nGND		G\nGND		G\n3V3		3V
Text GLabel 3100 3700 0    50   Output ~ 0
Shift_CLK
Wire Wire Line
	3100 3700 3150 3700
Text GLabel 3100 3800 0    50   Output ~ 0
Shift_SH_LDn1
Text GLabel 3100 3900 0    50   Output ~ 0
Shift_SH_LDn2
Text GLabel 3100 4000 0    50   Output ~ 0
Shift_SH_LDn3
Wire Wire Line
	3100 4000 3150 4000
Wire Wire Line
	3150 3900 3100 3900
Wire Wire Line
	3100 3800 3150 3800
Text GLabel 3100 4100 0    50   Output ~ 0
RFID_CS
Wire Wire Line
	3100 4100 3150 4100
Text GLabel 3100 4200 0    50   Output ~ 0
RFID_MOSI
Text GLabel 3100 4300 0    50   Output ~ 0
RFID_SCLK
Wire Wire Line
	3150 4300 3100 4300
Wire Wire Line
	3100 4200 3150 4200
$Comp
L power:GND #PWR010
U 1 1 61C6AEC4
P 2400 4700
F 0 "#PWR010" H 2400 4450 50  0001 C CNN
F 1 "GND" H 2405 4527 50  0000 C CNN
F 2 "" H 2400 4700 50  0001 C CNN
F 3 "" H 2400 4700 50  0001 C CNN
	1    2400 4700
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR08
U 1 1 61C6AECA
P 2250 4400
F 0 "#PWR08" H 2250 4250 50  0001 C CNN
F 1 "+3V3" H 2265 4573 50  0000 C CNN
F 2 "" H 2250 4400 50  0001 C CNN
F 3 "" H 2250 4400 50  0001 C CNN
	1    2250 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4500 2400 4700
Wire Wire Line
	2400 4500 2600 4500
Wire Wire Line
	2250 4400 2250 4600
Wire Wire Line
	2250 4600 3000 4600
Wire Wire Line
	3150 4400 2400 4400
Wire Wire Line
	2400 4400 2400 4500
Connection ~ 2400 4500
Wire Wire Line
	2400 4400 2400 3600
Wire Wire Line
	2400 3600 3150 3600
Connection ~ 2400 4400
Wire Wire Line
	3150 3500 2400 3500
Wire Wire Line
	2400 3500 2400 3600
Connection ~ 2400 3600
$Comp
L Connector:Conn_01x12_Female J8
U 1 1 61BAFAD7
P 3850 4000
F 0 "J8" H 3800 4650 50  0000 L CNN
F 1 "Conn_01x12_Female" H 3878 3885 50  0001 L CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x12_Pitch2.54mm" H 3850 4000 50  0001 C CNN
F 3 "~" H 3850 4000 50  0001 C CNN
	1    3850 4000
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 61C76B44
P 4900 4700
F 0 "#PWR011" H 4900 4450 50  0001 C CNN
F 1 "GND" H 4905 4527 50  0000 C CNN
F 2 "" H 4900 4700 50  0001 C CNN
F 3 "" H 4900 4700 50  0001 C CNN
	1    4900 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 4700 4900 4500
$Comp
L power:+5V #PWR09
U 1 1 61C78C71
P 5050 4400
F 0 "#PWR09" H 5050 4250 50  0001 C CNN
F 1 "+5V" H 5065 4573 50  0000 C CNN
F 2 "" H 5050 4400 50  0001 C CNN
F 3 "" H 5050 4400 50  0001 C CNN
	1    5050 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4400 5050 4600
Wire Wire Line
	5050 4600 4600 4600
$Comp
L power:+3V3 #PWR05
U 1 1 61C7B49E
P 5050 3350
F 0 "#PWR05" H 5050 3200 50  0001 C CNN
F 1 "+3V3" H 5065 3523 50  0000 C CNN
F 2 "" H 5050 3350 50  0001 C CNN
F 3 "" H 5050 3350 50  0001 C CNN
	1    5050 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3350 5050 3500
Text GLabel 4100 3600 2    50   Input ~ 0
Shift_data
Wire Wire Line
	4100 3600 4050 3600
Text GLabel 4100 3700 2    50   Input ~ 0
Touch_menu
Wire Wire Line
	4100 3700 4050 3700
Text GLabel 4100 3800 2    50   Input ~ 0
RFID_MISO
Wire Wire Line
	4100 3800 4050 3800
Text GLabel 4100 3900 2    50   Input ~ 0
BatMon
Wire Wire Line
	4100 3900 4050 3900
Text GLabel 4100 4000 2    50   Input ~ 0
DAC_DATA
Wire Wire Line
	4100 4000 4050 4000
Text GLabel 4100 4100 2    50   Input ~ 0
DAC_BCK
Wire Wire Line
	4100 4100 4050 4100
Text GLabel 4100 4200 2    50   Input ~ 0
DAC_LRCK
Wire Wire Line
	4100 4200 4050 4200
Text GLabel 4100 4300 2    50   Input ~ 0
LED_rings_data
Wire Wire Line
	4100 4300 4050 4300
Text GLabel 4100 4400 2    50   Input ~ 0
LED_display_data
Wire Wire Line
	4100 4400 4050 4400
Wire Wire Line
	8400 5050 8400 4950
Connection ~ 8400 5050
Wire Wire Line
	8400 5050 8850 5050
Wire Wire Line
	8400 5600 8400 5450
$Comp
L power:GND #PWR012
U 1 1 61BF2AA5
P 8400 5600
F 0 "#PWR012" H 8400 5350 50  0001 C CNN
F 1 "GND" H 8405 5427 50  0000 C CNN
F 2 "" H 8400 5600 50  0001 C CNN
F 3 "" H 8400 5600 50  0001 C CNN
	1    8400 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 4500 9350 4500
Wire Wire Line
	8400 4650 8400 4500
Wire Wire Line
	8400 5150 8400 5050
$Comp
L Device:R R2
U 1 1 61BF20BC
P 8400 5300
F 0 "R2" H 8470 5346 50  0000 L CNN
F 1 "2k7" H 8470 5255 50  0000 L CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" V 8330 5300 50  0001 C CNN
F 3 "~" H 8400 5300 50  0001 C CNN
	1    8400 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 61BF1A16
P 8400 4800
F 0 "R1" H 8470 4846 50  0000 L CNN
F 1 "10k" H 8470 4755 50  0000 L CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" V 8330 4800 50  0001 C CNN
F 3 "~" H 8400 4800 50  0001 C CNN
	1    8400 4800
	1    0    0    -1  
$EndComp
Text GLabel 8850 5050 2    50   Output ~ 0
BatMon
Text Notes 9650 4650 0    63   ~ 0
12Vbatt monitor\nLED display data
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 61C9FECA
P 5150 1650
F 0 "J4" H 5100 1800 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 5230 1551 50  0001 L CNN
F 2 "Moederbord:TerminalBlock_2_P5.08mm" H 5150 1650 50  0001 C CNN
F 3 "~" H 5150 1650 50  0001 C CNN
	1    5150 1650
	1    0    0    -1  
$EndComp
Text Notes 5300 1750 0    50   ~ 0
5 V in\nGND
$Comp
L power:+5V #PWR01
U 1 1 61CA0A54
P 3950 1400
F 0 "#PWR01" H 3950 1250 50  0001 C CNN
F 1 "+5V" H 3965 1573 50  0000 C CNN
F 2 "" H 3950 1400 50  0001 C CNN
F 3 "" H 3950 1400 50  0001 C CNN
	1    3950 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1400 3950 1500
$Comp
L power:GND #PWR04
U 1 1 61CA3128
P 3950 2000
F 0 "#PWR04" H 3950 1750 50  0001 C CNN
F 1 "GND" H 3955 1827 50  0000 C CNN
F 2 "" H 3950 2000 50  0001 C CNN
F 3 "" H 3950 2000 50  0001 C CNN
	1    3950 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2000 3950 1900
Wire Wire Line
	4900 1650 4950 1650
Wire Wire Line
	4950 1750 4900 1750
$Comp
L power:+5V #PWR02
U 1 1 61BD35D5
P 7100 1800
F 0 "#PWR02" H 7100 1650 50  0001 C CNN
F 1 "+5V" H 7115 1973 50  0000 C CNN
F 2 "" H 7100 1800 50  0001 C CNN
F 3 "" H 7100 1800 50  0001 C CNN
	1    7100 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1650 8000 1650
Wire Wire Line
	7100 1800 7100 1850
Wire Wire Line
	7100 1850 8000 1850
Wire Wire Line
	7250 1650 7250 1750
Connection ~ 7250 1750
Text Notes 3500 3500 0    50   ~ 0
TTGO\ntext\nside
Text Notes 3450 4850 0    50   ~ 0
USB\nconnector\nside
Text Notes 8650 5500 0    50   ~ 0
21.26% of 12 V = 2.55 V\n21.26% of 15 V = 3.19 V\nMaximum input voltage to ADC: 3.3 V\nMaximum input before divider: 15.5 V
Text GLabel 9300 4600 0    50   Output ~ 0
LED_display_data
Wire Wire Line
	9300 4600 9350 4600
$Comp
L Connector_Generic:Conn_02x06_Top_Bottom J5
U 1 1 61D336F0
P 8100 3250
F 0 "J5" H 8150 3575 50  0000 C CNN
F 1 "Conn_02x06_Top_Bottom" H 8150 3576 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x06_Pitch2.54mm" H 8100 3250 50  0001 C CNN
F 3 "~" H 8100 3250 50  0001 C CNN
	1    8100 3250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x06_Top_Bottom J1
U 1 1 61D3AF96
P 8200 1550
F 0 "J1" H 8250 1875 50  0000 C CNN
F 1 "Conn_02x06_Top_Bottom" H 8250 1876 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x06_Pitch2.54mm" H 8200 1550 50  0001 C CNN
F 3 "~" H 8200 1550 50  0001 C CNN
	1    8200 1550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Top_Bottom J3
U 1 1 61D403C7
P 4600 1650
F 0 "J3" H 4650 1775 50  0000 C CNN
F 1 "Conn_02x02_Top_Bottom" H 4650 1776 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x02_Pitch2.54mm" H 4600 1650 50  0001 C CNN
F 3 "~" H 4600 1650 50  0001 C CNN
	1    4600 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 61DA6136
P 2800 4900
F 0 "C2" V 2548 4900 50  0000 C CNN
F 1 "100 uF" V 2639 4900 50  0000 C CNN
F 2 "Capacitors_SMD:C_1210_HandSoldering" H 2838 4750 50  0001 C CNN
F 3 "~" H 2800 4900 50  0001 C CNN
	1    2800 4900
	0    1    1    0   
$EndComp
Text Notes 2500 5100 0    50   ~ 0
Place close to uC
$Comp
L Device:C C3
U 1 1 61DAB354
P 4400 4900
F 0 "C3" V 4148 4900 50  0000 C CNN
F 1 "100 uF" V 4239 4900 50  0000 C CNN
F 2 "Capacitors_SMD:C_1210_HandSoldering" H 4438 4750 50  0001 C CNN
F 3 "~" H 4400 4900 50  0001 C CNN
	1    4400 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 4900 4600 4600
Wire Wire Line
	4200 4900 4200 4500
Text Notes 4100 5100 0    50   ~ 0
Place close to uC
$Comp
L Device:C C1
U 1 1 61DB3498
P 3950 1700
F 0 "C1" H 3835 1654 50  0000 R CNN
F 1 "100 uF" H 3835 1745 50  0000 R CNN
F 2 "Capacitors_SMD:C_1210_HandSoldering" H 3988 1550 50  0001 C CNN
F 3 "~" H 3950 1700 50  0001 C CNN
	1    3950 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4400 1650 4350 1650
Wire Wire Line
	4350 1650 4350 1500
Wire Wire Line
	4350 1500 3950 1500
Wire Wire Line
	3950 1500 3950 1550
Wire Wire Line
	4400 1750 4350 1750
Wire Wire Line
	4350 1750 4350 1900
Wire Wire Line
	4350 1900 3950 1900
Wire Wire Line
	3950 1900 3950 1850
Connection ~ 3950 1500
Connection ~ 3950 1900
Text Notes 3350 1700 0    50   ~ 0
Place close to\nconnector
Wire Wire Line
	4050 3500 5050 3500
Connection ~ 4200 4500
Wire Wire Line
	4200 4500 4050 4500
Wire Wire Line
	4200 4500 4900 4500
Wire Wire Line
	4250 4900 4200 4900
Connection ~ 4600 4600
Wire Wire Line
	4050 4600 4600 4600
Wire Wire Line
	4600 4900 4550 4900
Wire Wire Line
	2950 4900 3000 4900
Wire Wire Line
	3000 4900 3000 4600
Connection ~ 3000 4600
Wire Wire Line
	3000 4600 3150 4600
Wire Wire Line
	2650 4900 2600 4900
Wire Wire Line
	2600 4900 2600 4500
Connection ~ 2600 4500
Wire Wire Line
	2600 4500 3150 4500
$EndSCHEMATC
