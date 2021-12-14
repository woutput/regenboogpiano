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
S 1100 1150 500  150 
U 61AEA73C
F0 "Toetsmodules" 50
F1 "Toetsmodules.sch" 50
$EndSheet
$Sheet
S 2600 1150 500  150 
U 61C61687
F0 "Shift registers" 50
F1 "Shift_registers.sch" 50
$EndSheet
Text Notes 8650 2850 0    50   ~ 0
RFID reader\nOnly used pins\nBoard will be mounted\n on another location
Text Notes 8900 1100 0    50   ~ 0
I2S DAC\nAll pins\nBoard will be mounted\n on motherboard
Text Notes 8900 1900 0    63   ~ 0
BCK\nDATA\nLRCK\nGND\nGND\nVCC
$Comp
L Connector:Conn_01x06_Female J4
U 1 1 61A7BB18
P 8800 1550
F 0 "J4" H 8750 2000 50  0000 L CNN
F 1 "I2S_DAC" H 8500 1900 50  0000 L CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x06_Pitch2.54mm" H 8800 1550 50  0001 C CNN
F 3 "~" H 8800 1550 50  0001 C CNN
	1    8800 1550
	1    0    0    -1  
$EndComp
Text Notes 8900 3600 0    63   ~ 0
SDA==CS <-- can not be removed???\nSCK==SCLK\nMOSI\nMISO\nGND\n3.3V
$Comp
L Connector:Screw_Terminal_01x02 J17
U 1 1 61BACFCC
P 8850 4500
F 0 "J17" H 8930 4492 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 8930 4401 50  0000 L CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 8850 4500 50  0001 C CNN
F 3 "~" H 8850 4500 50  0001 C CNN
	1    8850 4500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Female J11
U 1 1 61BAE503
P 8800 3250
F 0 "J11" H 8828 3226 50  0000 L CNN
F 1 "Conn_01x06_Female" H 8828 3135 50  0000 L CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 8800 3250 50  0001 C CNN
F 3 "~" H 8800 3250 50  0001 C CNN
	1    8800 3250
	1    0    0    -1  
$EndComp
Text Notes 5150 4650 0    63   ~ 0
3V	RFID	3V3\n36	Shift	DIN\n37	Menu	DIN\n38	RFID	MISO\n39	BatMon	ADC\n32	I2S DAC	DOUT\n33	I2S DAC	BCLK\n25	I2S DAC	LRCLK\n26	LED rings	DOUT\n27	LED display	DOUT\nG		GND\n5V		5V0
$Comp
L Connector:Conn_01x12_Female J15
U 1 1 61BB04FD
P 3350 4000
F 0 "J15" H 3378 3976 50  0000 L CNN
F 1 "Conn_01x12_Female" H 3378 3885 50  0000 L CNN
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
	8400 1350 8600 1350
Wire Wire Line
	8600 1450 8400 1450
Wire Wire Line
	8400 1550 8600 1550
Wire Wire Line
	8600 1650 8400 1650
Wire Wire Line
	8400 1750 8600 1750
Wire Wire Line
	8600 1850 8400 1850
$Comp
L Connector_Generic:Conn_02x01 J1
U 1 1 61BB8D1F
P 8100 1350
F 0 "J1" H 8150 1567 50  0000 C CNN
F 1 "Conn_02x01" H 8150 1476 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 8100 1350 50  0001 C CNN
F 3 "~" H 8100 1350 50  0001 C CNN
	1    8100 1350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J2
U 1 1 61BB8D25
P 8100 1450
F 0 "J2" H 8150 1667 50  0000 C CNN
F 1 "Conn_02x01" H 8150 1576 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 8100 1450 50  0001 C CNN
F 3 "~" H 8100 1450 50  0001 C CNN
	1    8100 1450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J3
U 1 1 61BB8D2B
P 8100 1550
F 0 "J3" H 8150 1767 50  0000 C CNN
F 1 "Conn_02x01" H 8150 1676 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 8100 1550 50  0001 C CNN
F 3 "~" H 8100 1550 50  0001 C CNN
	1    8100 1550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J5
U 1 1 61BB8D31
P 8100 1650
F 0 "J5" H 8150 1867 50  0000 C CNN
F 1 "Conn_02x01" H 8150 1776 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 8100 1650 50  0001 C CNN
F 3 "~" H 8100 1650 50  0001 C CNN
	1    8100 1650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J6
U 1 1 61BB8D37
P 8100 1750
F 0 "J6" H 8150 1967 50  0000 C CNN
F 1 "Conn_02x01" H 8150 1876 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 8100 1750 50  0001 C CNN
F 3 "~" H 8100 1750 50  0001 C CNN
	1    8100 1750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J7
U 1 1 61BB8D3D
P 8100 1850
F 0 "J7" H 8150 2067 50  0000 C CNN
F 1 "Conn_02x01" H 8150 1976 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 8100 1850 50  0001 C CNN
F 3 "~" H 8100 1850 50  0001 C CNN
	1    8100 1850
	1    0    0    -1  
$EndComp
Text Notes 7900 1050 0    50   ~ 0
Wire connections\nas backup
Text Notes 3450 3300 0    50   ~ 0
Main controller
Text GLabel 7600 3050 0    50   Input ~ 0
RFID_CS
Wire Wire Line
	7600 3050 7800 3050
Text GLabel 7600 3150 0    50   Input ~ 0
RFID_SCLK
Wire Wire Line
	7600 3150 7800 3150
Text GLabel 7600 3250 0    50   Input ~ 0
RFID_MOSI
Wire Wire Line
	7600 3250 7800 3250
Text GLabel 7600 3350 0    50   Output ~ 0
RFID_MISO
Wire Wire Line
	7600 3350 7800 3350
$Comp
L power:GND #PWR04
U 1 1 61C048B2
P 7050 3650
F 0 "#PWR04" H 7050 3400 50  0001 C CNN
F 1 "GND" H 7055 3477 50  0000 C CNN
F 2 "" H 7050 3650 50  0001 C CNN
F 3 "" H 7050 3650 50  0001 C CNN
	1    7050 3650
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR03
U 1 1 61C0559E
P 6950 3350
F 0 "#PWR03" H 6950 3200 50  0001 C CNN
F 1 "+3V3" H 6965 3523 50  0000 C CNN
F 2 "" H 6950 3350 50  0001 C CNN
F 3 "" H 6950 3350 50  0001 C CNN
	1    6950 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3450 7050 3650
Wire Wire Line
	7050 3450 7800 3450
Wire Wire Line
	6950 3350 6950 3550
Wire Wire Line
	6950 3550 7800 3550
Text GLabel 7700 1350 0    50   Input ~ 0
DAC_BCK
Wire Wire Line
	7700 1350 7900 1350
Text GLabel 7700 1450 0    50   Input ~ 0
DAC_DATA
Wire Wire Line
	7700 1450 7900 1450
Text GLabel 7700 1550 0    50   Input ~ 0
DAC_LRCK
Wire Wire Line
	7700 1550 7900 1550
$Comp
L power:GND #PWR02
U 1 1 61C0A40D
P 7150 1950
F 0 "#PWR02" H 7150 1700 50  0001 C CNN
F 1 "GND" H 7155 1777 50  0000 C CNN
F 2 "" H 7150 1950 50  0001 C CNN
F 3 "" H 7150 1950 50  0001 C CNN
	1    7150 1950
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR01
U 1 1 61C0A413
P 7050 1650
F 0 "#PWR01" H 7050 1500 50  0001 C CNN
F 1 "+3V3" H 7065 1823 50  0000 C CNN
F 2 "" H 7050 1650 50  0001 C CNN
F 3 "" H 7050 1650 50  0001 C CNN
	1    7050 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1750 7150 1950
Wire Wire Line
	7050 1650 7050 1850
Wire Wire Line
	7050 1850 7900 1850
Wire Wire Line
	7150 1750 7900 1750
Wire Wire Line
	7150 1650 7150 1750
Wire Wire Line
	7150 1650 7900 1650
Connection ~ 7150 1750
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
L power:GND #PWR0101
U 1 1 61C6AEC4
P 2400 4700
F 0 "#PWR0101" H 2400 4450 50  0001 C CNN
F 1 "GND" H 2405 4527 50  0000 C CNN
F 2 "" H 2400 4700 50  0001 C CNN
F 3 "" H 2400 4700 50  0001 C CNN
	1    2400 4700
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0102
U 1 1 61C6AECA
P 2250 4400
F 0 "#PWR0102" H 2250 4250 50  0001 C CNN
F 1 "+3V3" H 2265 4573 50  0000 C CNN
F 2 "" H 2250 4400 50  0001 C CNN
F 3 "" H 2250 4400 50  0001 C CNN
	1    2250 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4500 2400 4700
Wire Wire Line
	2400 4500 3150 4500
Wire Wire Line
	2250 4400 2250 4600
Wire Wire Line
	2250 4600 3150 4600
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
L Connector:Conn_01x12_Female J16
U 1 1 61BAFAD7
P 3850 4000
F 0 "J16" H 3878 3976 50  0000 L CNN
F 1 "Conn_01x12_Female" H 3878 3885 50  0000 L CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x12_Pitch2.54mm" H 3850 4000 50  0001 C CNN
F 3 "~" H 3850 4000 50  0001 C CNN
	1    3850 4000
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 61C76B44
P 4900 4700
F 0 "#PWR0103" H 4900 4450 50  0001 C CNN
F 1 "GND" H 4905 4527 50  0000 C CNN
F 2 "" H 4900 4700 50  0001 C CNN
F 3 "" H 4900 4700 50  0001 C CNN
	1    4900 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 4700 4900 4500
Wire Wire Line
	4900 4500 4050 4500
$Comp
L power:+5V #PWR0104
U 1 1 61C78C71
P 5050 4400
F 0 "#PWR0104" H 5050 4250 50  0001 C CNN
F 1 "+5V" H 5065 4573 50  0000 C CNN
F 2 "" H 5050 4400 50  0001 C CNN
F 3 "" H 5050 4400 50  0001 C CNN
	1    5050 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4400 5050 4600
Wire Wire Line
	5050 4600 4050 4600
$Comp
L power:+3V3 #PWR0105
U 1 1 61C7B49E
P 5050 3350
F 0 "#PWR0105" H 5050 3200 50  0001 C CNN
F 1 "+3V3" H 5065 3523 50  0000 C CNN
F 2 "" H 5050 3350 50  0001 C CNN
F 3 "" H 5050 3350 50  0001 C CNN
	1    5050 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3350 5050 3500
Wire Wire Line
	5050 3500 4050 3500
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
L power:GND #PWR05
U 1 1 61BF2AA5
P 8400 5600
F 0 "#PWR05" H 8400 5350 50  0001 C CNN
F 1 "GND" H 8405 5427 50  0000 C CNN
F 2 "" H 8400 5600 50  0001 C CNN
F 3 "" H 8400 5600 50  0001 C CNN
	1    8400 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 4500 8650 4500
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
NoConn ~ 8650 4600
Text GLabel 8850 5050 2    50   Output ~ 0
BatMon
Text Notes 9050 4600 0    50   ~ 0
Vbatt monitor\nNC
$Comp
L Connector:Screw_Terminal_01x02 J68
U 1 1 61C9FECA
P 5050 1650
F 0 "J68" H 5130 1642 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 5130 1551 50  0000 L CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 5050 1650 50  0001 C CNN
F 3 "~" H 5050 1650 50  0001 C CNN
	1    5050 1650
	1    0    0    -1  
$EndComp
Text Notes 5200 1750 0    50   ~ 0
5 V in\nGND
$Comp
L power:+5V #PWR0106
U 1 1 61CA0A54
P 4200 1550
F 0 "#PWR0106" H 4200 1400 50  0001 C CNN
F 1 "+5V" H 4215 1723 50  0000 C CNN
F 2 "" H 4200 1550 50  0001 C CNN
F 3 "" H 4200 1550 50  0001 C CNN
	1    4200 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 1550 4200 1650
Wire Wire Line
	4200 1650 4300 1650
$Comp
L power:GND #PWR0107
U 1 1 61CA3128
P 4200 1850
F 0 "#PWR0107" H 4200 1600 50  0001 C CNN
F 1 "GND" H 4205 1677 50  0000 C CNN
F 2 "" H 4200 1850 50  0001 C CNN
F 3 "" H 4200 1850 50  0001 C CNN
	1    4200 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 1850 4200 1750
Wire Wire Line
	4200 1750 4300 1750
$Comp
L Connector_Generic:Conn_02x01 J67
U 1 1 61CAC637
P 4500 1650
F 0 "J67" H 4550 1867 50  0000 C CNN
F 1 "Conn_02x01" H 4550 1776 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 4500 1650 50  0001 C CNN
F 3 "~" H 4500 1650 50  0001 C CNN
	1    4500 1650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J69
U 1 1 61CACEE0
P 4500 1750
F 0 "J69" H 4550 1967 50  0000 C CNN
F 1 "Conn_02x01" H 4550 1876 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 4500 1750 50  0001 C CNN
F 3 "~" H 4500 1750 50  0001 C CNN
	1    4500 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 1650 4850 1650
Wire Wire Line
	4850 1750 4800 1750
$Comp
L Device:Jumper JP1
U 1 1 61D06C13
P 8100 3050
F 0 "JP1" H 8100 3314 50  0000 C CNN
F 1 "Jumper" H 8100 3223 50  0000 C CNN
F 2 "" H 8100 3050 50  0001 C CNN
F 3 "~" H 8100 3050 50  0001 C CNN
	1    8100 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP2
U 1 1 61D09B8E
P 8100 3150
F 0 "JP2" H 8100 3414 50  0000 C CNN
F 1 "Jumper" H 8100 3323 50  0000 C CNN
F 2 "" H 8100 3150 50  0001 C CNN
F 3 "~" H 8100 3150 50  0001 C CNN
	1    8100 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP3
U 1 1 61D09D7A
P 8100 3250
F 0 "JP3" H 8100 3514 50  0000 C CNN
F 1 "Jumper" H 8100 3423 50  0000 C CNN
F 2 "" H 8100 3250 50  0001 C CNN
F 3 "~" H 8100 3250 50  0001 C CNN
	1    8100 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP4
U 1 1 61D09F21
P 8100 3350
F 0 "JP4" H 8100 3614 50  0000 C CNN
F 1 "Jumper" H 8100 3523 50  0000 C CNN
F 2 "" H 8100 3350 50  0001 C CNN
F 3 "~" H 8100 3350 50  0001 C CNN
	1    8100 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP5
U 1 1 61D0A277
P 8100 3450
F 0 "JP5" H 8100 3714 50  0000 C CNN
F 1 "Jumper" H 8100 3623 50  0000 C CNN
F 2 "" H 8100 3450 50  0001 C CNN
F 3 "~" H 8100 3450 50  0001 C CNN
	1    8100 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP6
U 1 1 61D0A422
P 8100 3550
F 0 "JP6" H 8100 3814 50  0000 C CNN
F 1 "Jumper" H 8100 3723 50  0000 C CNN
F 2 "" H 8100 3550 50  0001 C CNN
F 3 "~" H 8100 3550 50  0001 C CNN
	1    8100 3550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
