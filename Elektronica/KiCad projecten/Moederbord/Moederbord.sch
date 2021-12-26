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
TODO\nMoet RFID-lezer aan- en uitgeschakeld kunnen worden via FET om energie te sparen?\nMoet de LED-voeding aan- en uitgeschakeld kunnen worden via FET om energie te sparen? Nee, te hoge stroom om eenvoudig te schakelen\nMoet de audio-versterker aan- en uitgeschakeld kunnen worden via FET om energie te sparen? Nee, te hoge stroom om eenvoudig te schakelen\nMoeten de shift-registers aan- en uitgeschakeld kunnen worden via FET om energie te sparen? Nee, Iq in uA\nMoeten de data- in- en uitgangen beschermd worden? ESD? Serieweerstand?\nSpanningen duidelijk maken; wellicht level shifters nodig\nStromen duidelijk maken\nVermogens duidelijk maken\n\n12 V en 5 V voeding gaan niet via dit bord, want\n- weinig toegevoegde waarde\n- hoge stroom, dus lastig\n- te hoge stroom om ff met een FET te schakelen\n\nWS2812b heeft minimaal 0.7 * VDD (5 V) = 3.5 V nodig voor VIH.\nIn tests werkt dit toch met de (max 3.3 V) signalen die uit de controller komen.\nLevel shifter toevoegen voor LED ringen en LED display? Nee, maar wel mogelijkheid voorzien via pin headers\n\nLEDs losknippen van sensor boards, want die worden gevoed door 3V3\n\n3V3 komt van T-display on-board DC/DC-converter AP2112 die 600 mA kan leveren
$Sheet
S 2950 1150 500  150 
U 61AEA73C
F0 "Toetsmodules" 50
F1 "Toetsmodules.sch" 50
$EndSheet
$Sheet
S 3900 1150 500  150 
U 61C61687
F0 "Shift registers" 50
F1 "Shift_registers.sch" 50
$EndSheet
Text Notes 10450 1600 0    63   ~ 0
BCK\nDATA\nLRCK\nGND\nGND\nVCC 5 V
$Comp
L Connector:Conn_01x06_Female J2
U 1 1 61A7BB18
P 10250 1250
F 0 "J2" H 10200 1550 50  0000 L CNN
F 1 "I2S_DAC" H 9950 1600 50  0001 L CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x06_Pitch2.54mm" H 10250 1250 50  0001 C CNN
F 3 "~" H 10250 1250 50  0001 C CNN
	1    10250 1250
	1    0    0    -1  
$EndComp
Text Notes 10400 2950 0    63   ~ 0
SDA==CS\nSCK==SCLK\nMOSI\nMISO\nGND\n3.3 V
$Comp
L Connector:Screw_Terminal_01x02 J9
U 1 1 61BACFCC
P 10200 3650
F 0 "J9" H 10150 3800 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 9800 3800 50  0001 L CNN
F 2 "Moederbord:TerminalBlock_2_P5.08mm" H 10200 3650 50  0001 C CNN
F 3 "~" H 10200 3650 50  0001 C CNN
	1    10200 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Female J6
U 1 1 61BAE503
P 10300 2600
F 0 "J6" H 10250 2900 50  0000 L CNN
F 1 "Conn_01x06_Female" H 10328 2485 50  0001 L CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 10300 2600 50  0001 C CNN
F 3 "~" H 10300 2600 50  0001 C CNN
	1    10300 2600
	1    0    0    -1  
$EndComp
Text Notes 7200 4100 0    63   ~ 0
3V	RFID	3V3\n36	Shift	DIN\n37	Menu	DIN\n38	RFID	MISO\n39	BatMon	ADC\n32	I2S DAC	DOUT\n33	I2S DAC	BCLK\n25	I2S DAC	LRCLK\n26	LED rings	DOUT\n27	LED display	DOUT\nG		GND\n5V		5V0
$Comp
L Connector:Conn_01x12_Female J7
U 1 1 61BB04FD
P 4800 3450
F 0 "J7" H 4750 4100 50  0000 L CNN
F 1 "Conn_01x12_Female" H 4828 3335 50  0001 L CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x12_Pitch2.54mm" H 4800 3450 50  0001 C CNN
F 3 "~" H 4800 3450 50  0001 C CNN
	1    4800 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 2400 10100 2400
Wire Wire Line
	10100 2500 9900 2500
Wire Wire Line
	9900 2600 10100 2600
Wire Wire Line
	10100 2700 9900 2700
Wire Wire Line
	9900 2800 10100 2800
Wire Wire Line
	10100 2900 9900 2900
Wire Wire Line
	9950 1050 10050 1050
Wire Wire Line
	10050 1150 9950 1150
Wire Wire Line
	9950 1250 10050 1250
Wire Wire Line
	10050 1350 9950 1350
Wire Wire Line
	9950 1450 10050 1450
Wire Wire Line
	10050 1550 9950 1550
Text Notes 7750 2150 0    50   ~ 0
Main controller
Text GLabel 9200 2400 0    50   Input ~ 0
RFID_CS
Text GLabel 9200 2500 0    50   Input ~ 0
RFID_SCLK
Text GLabel 9200 2600 0    50   Input ~ 0
RFID_MOSI
Text GLabel 9200 2700 0    50   Output ~ 0
RFID_MISO
$Comp
L power:GND #PWR07
U 1 1 61C048B2
P 8650 3000
F 0 "#PWR07" H 8650 2750 50  0001 C CNN
F 1 "GND" H 8655 2827 50  0000 C CNN
F 2 "" H 8650 3000 50  0001 C CNN
F 3 "" H 8650 3000 50  0001 C CNN
	1    8650 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR06
U 1 1 61C0559E
P 8550 2700
F 0 "#PWR06" H 8550 2550 50  0001 C CNN
F 1 "+3V3" H 8565 2873 50  0000 C CNN
F 2 "" H 8550 2700 50  0001 C CNN
F 3 "" H 8550 2700 50  0001 C CNN
	1    8550 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 2800 8650 3000
Wire Wire Line
	8550 2700 8550 2900
Text GLabel 9350 1050 0    50   Input ~ 0
DAC_BCK
Wire Wire Line
	9350 1050 9450 1050
Text GLabel 9350 1150 0    50   Input ~ 0
DAC_DATA
Wire Wire Line
	9350 1150 9450 1150
Text GLabel 9350 1250 0    50   Input ~ 0
DAC_LRCK
Wire Wire Line
	9350 1250 9450 1250
$Comp
L power:GND #PWR03
U 1 1 61C0A40D
P 8800 1650
F 0 "#PWR03" H 8800 1400 50  0001 C CNN
F 1 "GND" H 8805 1477 50  0000 C CNN
F 2 "" H 8800 1650 50  0001 C CNN
F 3 "" H 8800 1650 50  0001 C CNN
	1    8800 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 1450 8800 1650
Wire Wire Line
	8800 1450 9450 1450
Text Notes 2950 4100 2    63   ~ 0
GND		G\nGND		G\nCLK	Shift	21\nSH/LDn1	Shift	22\nSH/LDn2	Shift	17\nSH/LDn3	Shift	2\nCS	RFID	15\nMOSI	RFID	13\nSCLK	RFID	12\nGND		G\nGND		G\n3V3		3V
Text GLabel 3950 3150 0    50   Output ~ 0
Shift_CLK
Wire Wire Line
	3950 3150 4000 3150
Text GLabel 3950 3250 0    50   Output ~ 0
Shift_SH_LDn1
Text GLabel 3950 3350 0    50   Output ~ 0
Shift_SH_LDn2
Text GLabel 3950 3450 0    50   Output ~ 0
Shift_SH_LDn3
Wire Wire Line
	3950 3450 4000 3450
Wire Wire Line
	4000 3350 3950 3350
Wire Wire Line
	3950 3250 4000 3250
Text GLabel 3950 3550 0    50   Output ~ 0
RFID_CS
Wire Wire Line
	3950 3550 4000 3550
Text GLabel 3950 3650 0    50   Output ~ 0
RFID_MOSI
Text GLabel 3950 3750 0    50   Output ~ 0
RFID_SCLK
Wire Wire Line
	4000 3750 3950 3750
Wire Wire Line
	3950 3650 4000 3650
$Comp
L power:GND #PWR010
U 1 1 61C6AEC4
P 3250 4150
F 0 "#PWR010" H 3250 3900 50  0001 C CNN
F 1 "GND" H 3255 3977 50  0000 C CNN
F 2 "" H 3250 4150 50  0001 C CNN
F 3 "" H 3250 4150 50  0001 C CNN
	1    3250 4150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR08
U 1 1 61C6AECA
P 3100 3850
F 0 "#PWR08" H 3100 3700 50  0001 C CNN
F 1 "+3V3" H 3115 4023 50  0000 C CNN
F 2 "" H 3100 3850 50  0001 C CNN
F 3 "" H 3100 3850 50  0001 C CNN
	1    3100 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3950 3250 4150
Wire Wire Line
	3100 3850 3100 4050
Wire Wire Line
	3250 3850 3250 3950
Connection ~ 3250 3950
Wire Wire Line
	3250 3850 3250 3050
Connection ~ 3250 3850
Wire Wire Line
	3250 2950 3250 3050
Connection ~ 3250 3050
$Comp
L Connector:Conn_01x12_Female J8
U 1 1 61BAFAD7
P 5300 3450
F 0 "J8" H 5250 4100 50  0000 L CNN
F 1 "Conn_01x12_Female" H 5328 3335 50  0001 L CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x12_Pitch2.54mm" H 5300 3450 50  0001 C CNN
F 3 "~" H 5300 3450 50  0001 C CNN
	1    5300 3450
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 61C76B44
P 6950 4150
F 0 "#PWR011" H 6950 3900 50  0001 C CNN
F 1 "GND" H 6955 3977 50  0000 C CNN
F 2 "" H 6950 4150 50  0001 C CNN
F 3 "" H 6950 4150 50  0001 C CNN
	1    6950 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 4150 6950 3950
$Comp
L power:+5V #PWR09
U 1 1 61C78C71
P 7100 3850
F 0 "#PWR09" H 7100 3700 50  0001 C CNN
F 1 "+5V" H 7115 4023 50  0000 C CNN
F 2 "" H 7100 3850 50  0001 C CNN
F 3 "" H 7100 3850 50  0001 C CNN
	1    7100 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3850 7100 4050
$Comp
L power:+3V3 #PWR05
U 1 1 61C7B49E
P 7100 2800
F 0 "#PWR05" H 7100 2650 50  0001 C CNN
F 1 "+3V3" H 7115 2973 50  0000 C CNN
F 2 "" H 7100 2800 50  0001 C CNN
F 3 "" H 7100 2800 50  0001 C CNN
	1    7100 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2800 7100 2950
Text GLabel 6150 3050 2    50   Input ~ 0
Shift_data
Wire Wire Line
	6150 3050 6100 3050
Text GLabel 6150 3150 2    50   Input ~ 0
Touch_menu
Wire Wire Line
	6150 3150 6100 3150
Text GLabel 6150 3250 2    50   Input ~ 0
RFID_MISO
Wire Wire Line
	6150 3250 6100 3250
Text GLabel 6150 3350 2    50   Input ~ 0
BatMon
Wire Wire Line
	6150 3350 6100 3350
Text GLabel 6150 3450 2    50   Output ~ 0
DAC_DATA
Wire Wire Line
	6150 3450 6100 3450
Text GLabel 6150 3550 2    50   Output ~ 0
DAC_BCK
Wire Wire Line
	6150 3550 6100 3550
Text GLabel 6150 3650 2    50   Output ~ 0
DAC_LRCK
Wire Wire Line
	6150 3650 6100 3650
Text GLabel 6150 3750 2    50   Output ~ 0
LED_rings_data
Wire Wire Line
	6150 3750 6100 3750
Text GLabel 6150 3850 2    50   Output ~ 0
LED_display_data
Wire Wire Line
	6150 3850 6100 3850
Wire Wire Line
	9050 4200 9050 4100
Connection ~ 9050 4200
Wire Wire Line
	9050 4200 9500 4200
Wire Wire Line
	9050 4750 9050 4600
$Comp
L power:GND #PWR012
U 1 1 61BF2AA5
P 9050 4750
F 0 "#PWR012" H 9050 4500 50  0001 C CNN
F 1 "GND" H 9055 4577 50  0000 C CNN
F 2 "" H 9050 4750 50  0001 C CNN
F 3 "" H 9050 4750 50  0001 C CNN
	1    9050 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 3650 10000 3650
Wire Wire Line
	9050 3800 9050 3650
Wire Wire Line
	9050 4300 9050 4200
$Comp
L Device:R R2
U 1 1 61BF20BC
P 9050 4450
F 0 "R2" H 9120 4496 50  0000 L CNN
F 1 "2k7" H 9120 4405 50  0000 L CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" V 8980 4450 50  0001 C CNN
F 3 "~" H 9050 4450 50  0001 C CNN
	1    9050 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 61BF1A16
P 9050 3950
F 0 "R1" H 9120 3996 50  0000 L CNN
F 1 "10k" H 9120 3905 50  0000 L CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" V 8980 3950 50  0001 C CNN
F 3 "~" H 9050 3950 50  0001 C CNN
	1    9050 3950
	1    0    0    -1  
$EndComp
Text GLabel 9500 4200 2    50   Output ~ 0
BatMon
Text Notes 10300 3800 0    63   ~ 0
12 V bat mon\nLED disp dat
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 61C9FECA
P 7850 1250
F 0 "J4" H 7800 1400 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 7930 1151 50  0001 L CNN
F 2 "Moederbord:TerminalBlock_2_P5.08mm" H 7850 1250 50  0001 C CNN
F 3 "~" H 7850 1250 50  0001 C CNN
	1    7850 1250
	1    0    0    -1  
$EndComp
Text Notes 8000 1350 0    50   ~ 0
5 V in\nGND
$Comp
L power:+5V #PWR01
U 1 1 61CA0A54
P 6500 1000
F 0 "#PWR01" H 6500 850 50  0001 C CNN
F 1 "+5V" H 6515 1173 50  0000 C CNN
F 2 "" H 6500 1000 50  0001 C CNN
F 3 "" H 6500 1000 50  0001 C CNN
	1    6500 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 61CA3128
P 6500 1600
F 0 "#PWR04" H 6500 1350 50  0001 C CNN
F 1 "GND" H 6505 1427 50  0000 C CNN
F 2 "" H 6500 1600 50  0001 C CNN
F 3 "" H 6500 1600 50  0001 C CNN
	1    6500 1600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 61BD35D5
P 8650 1500
F 0 "#PWR02" H 8650 1350 50  0001 C CNN
F 1 "+5V" H 8665 1673 50  0000 C CNN
F 2 "" H 8650 1500 50  0001 C CNN
F 3 "" H 8650 1500 50  0001 C CNN
	1    8650 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 1350 9450 1350
Wire Wire Line
	8650 1500 8650 1550
Wire Wire Line
	8650 1550 9450 1550
Wire Wire Line
	8800 1350 8800 1450
Connection ~ 8800 1450
Text Notes 4950 3150 0    50   ~ 0
TTGO\ntext\nside
Text Notes 4900 4100 0    50   ~ 0
USB\nconnector\nside
Text Notes 9300 4650 0    50   ~ 0
21.26% of 12 V = 2.55 V\n21.26% of 15 V = 3.19 V\nMaximum input voltage to ADC: 3.3 V\nMaximum input before divider: 15.5 V
Text GLabel 9950 3750 0    50   Input ~ 0
LED_display_data
Wire Wire Line
	9950 3750 10000 3750
$Comp
L Connector_Generic:Conn_02x02_Top_Bottom J3
U 1 1 61D403C7
P 6750 1250
F 0 "J3" H 6800 1375 50  0000 C CNN
F 1 "Conn_02x02_Top_Bottom" H 6800 1376 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x02_Pitch2.54mm" H 6750 1250 50  0001 C CNN
F 3 "~" H 6750 1250 50  0001 C CNN
	1    6750 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 61DA6136
P 5050 2600
F 0 "C2" V 4798 2600 50  0000 C CNN
F 1 "100 uF" V 4889 2600 50  0000 C CNN
F 2 "Capacitors_SMD:C_1210_HandSoldering" H 5088 2450 50  0001 C CNN
F 3 "~" H 5050 2600 50  0001 C CNN
	1    5050 2600
	0    1    1    0   
$EndComp
Text Notes 5200 2450 0    50   ~ 0
Place close to uC
$Comp
L Device:C C3
U 1 1 61DAB354
P 5050 4450
F 0 "C3" V 4798 4450 50  0000 C CNN
F 1 "100 uF" V 4889 4450 50  0000 C CNN
F 2 "Capacitors_SMD:C_1210_HandSoldering" H 5088 4300 50  0001 C CNN
F 3 "~" H 5050 4450 50  0001 C CNN
	1    5050 4450
	0    1    1    0   
$EndComp
Text Notes 4850 4650 0    50   ~ 0
Place close to uC
$Comp
L Device:C C1
U 1 1 61DB3498
P 7200 1300
F 0 "C1" H 7085 1254 50  0000 R CNN
F 1 "100 uF" H 7085 1345 50  0000 R CNN
F 2 "Capacitors_SMD:C_1210_HandSoldering" H 7238 1150 50  0001 C CNN
F 3 "~" H 7200 1300 50  0001 C CNN
	1    7200 1300
	-1   0    0    1   
$EndComp
Text Notes 5900 1300 0    50   ~ 0
Place close to\nconnector
$Comp
L Connector_Generic:Conn_01x03 J38
U 1 1 61CDCF6B
P 10450 5750
F 0 "J38" H 10530 5792 50  0000 L CNN
F 1 "Conn_01x03" H 10530 5701 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 10450 5750 50  0001 C CNN
F 3 "~" H 10450 5750 50  0001 C CNN
	1    10450 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 61CDEF7F
P 10150 5950
F 0 "#PWR0102" H 10150 5700 50  0001 C CNN
F 1 "GND" H 10155 5777 50  0000 C CNN
F 2 "" H 10150 5950 50  0001 C CNN
F 3 "" H 10150 5950 50  0001 C CNN
	1    10150 5950
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0101
U 1 1 61CDF300
P 10250 5450
F 0 "#PWR0101" H 10250 5300 50  0001 C CNN
F 1 "+3V3" H 10265 5623 50  0000 C CNN
F 2 "" H 10250 5450 50  0001 C CNN
F 3 "" H 10250 5450 50  0001 C CNN
	1    10250 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 5950 10150 5850
Wire Wire Line
	10150 5850 10250 5850
Wire Wire Line
	10250 5750 10100 5750
Wire Wire Line
	10100 5750 10100 5650
$Comp
L power:+5V #PWR0100
U 1 1 61CE6425
P 10100 5650
F 0 "#PWR0100" H 10100 5500 50  0001 C CNN
F 1 "+5V" H 10115 5823 50  0000 C CNN
F 2 "" H 10100 5650 50  0001 C CNN
F 3 "" H 10100 5650 50  0001 C CNN
	1    10100 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 5450 10250 5650
$Comp
L Connector_Generic:Conn_01x03 J39
U 1 1 61CEC9B5
P 9450 5750
F 0 "J39" H 9530 5792 50  0000 L CNN
F 1 "Conn_01x03" H 9530 5701 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 9450 5750 50  0001 C CNN
F 3 "~" H 9450 5750 50  0001 C CNN
	1    9450 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 61CEC9BB
P 9150 5950
F 0 "#PWR0105" H 9150 5700 50  0001 C CNN
F 1 "GND" H 9155 5777 50  0000 C CNN
F 2 "" H 9150 5950 50  0001 C CNN
F 3 "" H 9150 5950 50  0001 C CNN
	1    9150 5950
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0104
U 1 1 61CEC9C1
P 9250 5450
F 0 "#PWR0104" H 9250 5300 50  0001 C CNN
F 1 "+3V3" H 9265 5623 50  0000 C CNN
F 2 "" H 9250 5450 50  0001 C CNN
F 3 "" H 9250 5450 50  0001 C CNN
	1    9250 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 5950 9150 5850
Wire Wire Line
	9150 5850 9250 5850
Wire Wire Line
	9250 5750 9100 5750
Wire Wire Line
	9100 5750 9100 5650
$Comp
L power:+5V #PWR0103
U 1 1 61CEC9CB
P 9100 5650
F 0 "#PWR0103" H 9100 5500 50  0001 C CNN
F 1 "+5V" H 9115 5823 50  0000 C CNN
F 2 "" H 9100 5650 50  0001 C CNN
F 3 "" H 9100 5650 50  0001 C CNN
	1    9100 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 5450 9250 5650
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J1
U 1 1 61D087E1
P 9650 1250
F 0 "J1" H 9700 1667 50  0000 C CNN
F 1 "Conn_02x06_Odd_Even" H 9700 1576 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x06_Pitch2.54mm" H 9650 1250 50  0001 C CNN
F 3 "~" H 9650 1250 50  0001 C CNN
	1    9650 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 2700 9400 2700
Wire Wire Line
	9200 2600 9400 2600
Wire Wire Line
	9200 2500 9400 2500
Wire Wire Line
	9200 2400 9400 2400
Wire Wire Line
	8550 2900 9400 2900
Wire Wire Line
	8650 2800 9400 2800
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J5
U 1 1 61D0F6BE
P 9700 2600
F 0 "J5" H 9750 3017 50  0000 C CNN
F 1 "Conn_02x06_Odd_Even" H 9750 2926 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x06_Pitch2.54mm" H 9700 2600 50  0001 C CNN
F 3 "~" H 9700 2600 50  0001 C CNN
	1    9700 2600
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x12_Odd_Even J40
U 1 1 61D37F03
P 4200 3450
F 0 "J40" H 4250 4167 50  0000 C CNN
F 1 "Conn_02x12_Odd_Even" H 4250 4076 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x12_Pitch2.54mm" H 4200 3450 50  0001 C CNN
F 3 "~" H 4200 3450 50  0001 C CNN
	1    4200 3450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x12_Odd_Even J41
U 1 1 61D3EB3D
P 5800 3450
F 0 "J41" H 5850 4167 50  0000 C CNN
F 1 "Conn_02x12_Odd_Even" H 5850 4076 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x12_Pitch2.54mm" H 5800 3450 50  0001 C CNN
F 3 "~" H 5800 3450 50  0001 C CNN
	1    5800 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3850 4000 3850
Wire Wire Line
	3250 3050 4000 3050
Wire Wire Line
	3250 2950 4000 2950
Wire Wire Line
	3100 4050 4000 4050
Wire Wire Line
	3250 3950 4000 3950
Wire Notes Line
	8300 1900 5850 1900
Wire Notes Line
	5850 1900 5850 650 
Wire Notes Line
	5850 650  8300 650 
Wire Notes Line
	8300 650  8300 1900
Text Notes 7150 750  0    50   ~ 0
5 V power supply connection
Wire Wire Line
	6100 2950 7100 2950
Wire Wire Line
	6100 4050 7100 4050
Wire Wire Line
	6100 3950 6950 3950
Wire Wire Line
	4500 2950 4550 2950
Wire Wire Line
	4500 3050 4600 3050
Wire Wire Line
	4500 3150 4600 3150
Wire Wire Line
	4500 3250 4600 3250
Wire Wire Line
	4500 3350 4600 3350
Wire Wire Line
	4500 3450 4600 3450
Wire Wire Line
	4500 3550 4600 3550
Wire Wire Line
	4500 3650 4600 3650
Wire Wire Line
	4500 3750 4600 3750
Wire Wire Line
	4500 3850 4600 3850
Wire Wire Line
	4500 3950 4550 3950
Wire Wire Line
	4500 4050 4600 4050
Wire Wire Line
	5500 2950 5550 2950
Wire Wire Line
	5500 3050 5600 3050
Wire Wire Line
	5500 3150 5600 3150
Wire Wire Line
	5500 3250 5600 3250
Wire Wire Line
	5500 3350 5600 3350
Wire Wire Line
	5500 3450 5600 3450
Wire Wire Line
	5500 3550 5600 3550
Wire Wire Line
	5500 3650 5600 3650
Wire Wire Line
	5500 3750 5600 3750
Wire Wire Line
	5500 3850 5600 3850
Wire Wire Line
	5500 3950 5600 3950
Wire Wire Line
	5500 4050 5550 4050
Connection ~ 5550 2950
Wire Wire Line
	5550 2950 5600 2950
Wire Wire Line
	4550 2950 4550 2600
Connection ~ 4550 2950
Wire Wire Line
	4550 2950 4600 2950
Wire Wire Line
	5200 2600 5550 2600
Wire Wire Line
	5550 2600 5550 2950
Wire Wire Line
	4550 2600 4900 2600
Wire Wire Line
	5550 4450 5550 4050
Connection ~ 5550 4050
Wire Wire Line
	5550 4050 5600 4050
Wire Wire Line
	5200 4450 5550 4450
Wire Wire Line
	4550 4450 4550 3950
Connection ~ 4550 3950
Wire Wire Line
	4550 3950 4600 3950
Wire Wire Line
	4550 4450 4900 4450
Wire Notes Line
	8400 1950 8400 650 
Wire Notes Line
	8400 650  11050 650 
Wire Notes Line
	11050 650  11050 1950
Wire Notes Line
	11050 1950 8400 1950
Text Notes 10700 750  0    50   ~ 0
I2S DAC
Wire Notes Line
	8450 3250 8450 2050
Wire Notes Line
	8450 2050 11050 2050
Wire Notes Line
	11050 2050 11050 3250
Wire Notes Line
	11050 3250 8450 3250
Text Notes 10550 2150 0    50   ~ 0
RFID reader
Wire Notes Line
	8900 3350 11050 3350
Wire Notes Line
	11050 3350 11050 5000
Wire Notes Line
	11050 5000 8900 5000
Wire Notes Line
	8900 3350 8900 5000
Text Notes 10200 3450 0    50   ~ 0
12 V bat + LED disp
Wire Notes Line
	9000 6200 9000 5100
Wire Notes Line
	9000 5100 11050 5100
Wire Notes Line
	11050 5100 11050 6200
Wire Notes Line
	11050 6200 9000 6200
Text Notes 9900 5200 0    50   ~ 0
Additional power connections
Wire Notes Line
	2000 4750 2000 2050
Wire Notes Line
	2000 2050 8350 2050
Wire Notes Line
	8350 2050 8350 4750
Wire Notes Line
	8350 4750 2000 4750
Wire Wire Line
	6500 1250 6550 1250
Wire Wire Line
	6500 1350 6550 1350
Wire Wire Line
	6500 1000 6500 1250
Wire Wire Line
	6500 1350 6500 1600
Wire Wire Line
	7050 1250 7050 1100
Wire Wire Line
	7050 1100 7200 1100
Wire Wire Line
	7650 1100 7650 1250
Wire Wire Line
	7050 1350 7050 1500
Wire Wire Line
	7050 1500 7200 1500
Wire Wire Line
	7650 1500 7650 1350
Wire Wire Line
	7200 1150 7200 1100
Connection ~ 7200 1100
Wire Wire Line
	7200 1100 7650 1100
Wire Wire Line
	7200 1450 7200 1500
Connection ~ 7200 1500
Wire Wire Line
	7200 1500 7650 1500
Text Label 7250 1100 0    50   ~ 0
Conn_5V
Text Label 7250 1500 0    50   ~ 0
Conn_GND
$EndSCHEMATC
