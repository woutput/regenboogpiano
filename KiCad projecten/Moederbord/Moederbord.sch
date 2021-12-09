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
Text Notes 9300 900  0    50   ~ 0
Vbatt monitor\n12 V in
Text Notes 7050 6450 0    50   ~ 0
TODO\nMoet RFID-lezer aan- en uitgeschakeld kunnen worden via FET om energie te sparen?\nMoet de LED-voeding aan- en uitgeschakeld kunnen worden via FET om energie te sparen?\nMoet de audio-versterker aan- en uitgeschakeld kunnen worden via FET om energie te sparen?\nMoeten de shift-registers aan- en uitgeschakeld kunnen worden via FET om energie te sparen?\nMoeten de data- in- en uitgangen beschermd worden? ESD? Serieweerstand?\nSpanningen duidelijk maken; wellicht level shifters nodig\nStromen duidelijk maken\nVermogens duidelijk maken
Text Notes 9300 1200 0    50   ~ 0
12 V uit naar versterker\n\n
$Sheet
S 2650 1900 500  150 
U 61AEA73C
F0 "Toetsmodules" 50
F1 "Toetsmodules.sch" 50
$EndSheet
$Sheet
S 2650 2300 500  150 
U 61C61687
F0 "Shift registers" 50
F1 "Shift_registers.sch" 50
$EndSheet
Text Notes 6200 3150 0    50   ~ 0
RFID reader\nOnly used pins\nBoard will be mounted on another location
Text Notes 6600 900  0    50   ~ 0
I2S DAC\nAll pins\nBoard will be mounted on motherboard
Text Notes 7150 1750 0    63   ~ 0
BCK\nDATA\nLRCK\nGND\nGND\nVCC
$Comp
L Connector:Conn_01x06_Female J1
U 1 1 61A7BB18
P 7050 1400
F 0 "J1" H 7000 1850 50  0000 L CNN
F 1 "I2S_DAC" H 6750 1750 50  0000 L CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x06_Pitch2.54mm" H 7050 1400 50  0001 C CNN
F 3 "~" H 7050 1400 50  0001 C CNN
	1    7050 1400
	1    0    0    -1  
$EndComp
Text Notes 6650 3900 0    63   ~ 0
SDA==CS <-- can not be removed???\nSCK==SCLK\nMOSI\nMISO\nGND\n3.3V
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 61BABD68
P 9100 1400
F 0 "J?" H 9180 1392 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 9180 1301 50  0000 L CNN
F 2 "" H 9100 1400 50  0001 C CNN
F 3 "~" H 9100 1400 50  0001 C CNN
	1    9100 1400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 61BACBDF
P 9100 1100
F 0 "J?" H 9180 1092 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 9180 1001 50  0000 L CNN
F 2 "" H 9100 1100 50  0001 C CNN
F 3 "~" H 9100 1100 50  0001 C CNN
	1    9100 1100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 61BACFCC
P 9100 800
F 0 "J?" H 9180 792 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 9180 701 50  0000 L CNN
F 2 "" H 9100 800 50  0001 C CNN
F 3 "~" H 9100 800 50  0001 C CNN
	1    9100 800 
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Female J?
U 1 1 61BAE503
P 6550 3550
F 0 "J?" H 6578 3526 50  0000 L CNN
F 1 "Conn_01x06_Female" H 6578 3435 50  0000 L CNN
F 2 "" H 6550 3550 50  0001 C CNN
F 3 "~" H 6550 3550 50  0001 C CNN
	1    6550 3550
	1    0    0    -1  
$EndComp
Text Notes 3750 4450 0    63   ~ 0
3V	RFID	3V3\n36	Shift	DIN\n37	Menu	DIN\n38		\n39		\n32	DOUT	I2S DAC\n33	BCLK	I2S DAC\n25	LRCLK	I2S DAC\n26	LED rings	DOUT\n27	LED display	DOUT\nG		GND\n5V		5V0\n
$Comp
L Connector:Conn_01x12_Female J?
U 1 1 61BAFAD7
P 3700 3800
F 0 "J?" H 3728 3776 50  0000 L CNN
F 1 "Conn_01x12_Female" H 3728 3685 50  0000 L CNN
F 2 "" H 3700 3800 50  0001 C CNN
F 3 "~" H 3700 3800 50  0001 C CNN
	1    3700 3800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x12_Female J?
U 1 1 61BB04FD
P 2850 3800
F 0 "J?" H 2878 3776 50  0000 L CNN
F 1 "Conn_01x12_Female" H 2878 3685 50  0000 L CNN
F 2 "" H 2850 3800 50  0001 C CNN
F 3 "~" H 2850 3800 50  0001 C CNN
	1    2850 3800
	1    0    0    -1  
$EndComp
Text Notes 2550 4450 2    63   ~ 0
GND		G\nGND		G\nCLK	Shift	21\nSH/LDn	Shift	22\n		17\nCS???	RFID	2\nMOSI	RFID	15\nMISO	RFID	13\nSCLK	RFID	12\nGND		G\nGND		G\n3V3		3V\n
Text Notes 9300 1500 0    50   ~ 0
5 V LED display\nGND
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 61BB27A0
P 9100 1700
F 0 "J?" H 9180 1692 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 9180 1601 50  0000 L CNN
F 2 "" H 9100 1700 50  0001 C CNN
F 3 "~" H 9100 1700 50  0001 C CNN
	1    9100 1700
	1    0    0    -1  
$EndComp
Text Notes 9300 1800 0    50   ~ 0
5 V LED display\nGND
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 61BB2F15
P 9100 2000
F 0 "J?" H 9180 1992 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 9180 1901 50  0000 L CNN
F 2 "" H 9100 2000 50  0001 C CNN
F 3 "~" H 9100 2000 50  0001 C CNN
	1    9100 2000
	1    0    0    -1  
$EndComp
Text Notes 9300 2100 0    50   ~ 0
5 V LED display\nGND
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 61BB3526
P 9100 2300
F 0 "J?" H 9180 2292 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 9180 2201 50  0000 L CNN
F 2 "" H 9100 2300 50  0001 C CNN
F 3 "~" H 9100 2300 50  0001 C CNN
	1    9100 2300
	1    0    0    -1  
$EndComp
Text Notes 9300 2400 0    50   ~ 0
5 V LED display\nGND
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 61BB3B23
P 9100 2600
F 0 "J?" H 9180 2592 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 9180 2501 50  0000 L CNN
F 2 "" H 9100 2600 50  0001 C CNN
F 3 "~" H 9100 2600 50  0001 C CNN
	1    9100 2600
	1    0    0    -1  
$EndComp
Text Notes 9300 2700 0    50   ~ 0
5 V LED display\nGND
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 61BB429E
P 9100 2900
F 0 "J?" H 9180 2892 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 9180 2801 50  0000 L CNN
F 2 "" H 9100 2900 50  0001 C CNN
F 3 "~" H 9100 2900 50  0001 C CNN
	1    9100 2900
	1    0    0    -1  
$EndComp
Text Notes 9300 3000 0    50   ~ 0
5 V LED display\nGND
$EndSCHEMATC
