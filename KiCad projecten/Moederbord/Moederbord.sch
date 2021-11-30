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
Text Notes 10100 2700 0    50   ~ 0
Voeding in\nRFID-lezer
Text Notes 10100 1600 0    50   ~ 0
Vbatt monitor\n+12V0 in
Text Notes 7050 6450 0    50   ~ 0
TODO\nMoet RFID-lezer aan- en uitgeschakeld kunnen worden via FET om energie te sparen?\nMoet de LED-voeding aan- en uitgeschakeld kunnen worden via FET om energie te sparen?\nMoet de audio-versterker aan- en uitgeschakeld kunnen worden via FET om energie te sparen?\nMoeten de shift-registers aan- en uitgeschakeld kunnen worden via FET om energie te sparen?\nMoeten de data- in- en uitgangen beschermd worden? ESD? Serieweerstand?\nSpanningen duidelijk maken; wellicht level shifters nodig\nStromen duidelijk maken\nVermogens duidelijk maken
Text Notes 10100 2950 0    50   ~ 0
LED-ringen1\nLED-ringen2
Text Notes 10100 3200 0    50   ~ 0
LED-displays1\nLED-displays2
Text Notes 10100 3450 0    50   ~ 0
Menu-toets\nDAC
Text Notes 10100 1850 0    50   ~ 0
Versterker\nNC
Text Notes 10550 1250 0    50   ~ 0
12 V
Text Notes 10100 4250 0    50   ~ 0
Voeding in\nRFID-lezer
Text Notes 10100 4500 0    50   ~ 0
LED-ringen1\nLED-ringen2
Text Notes 10100 4750 0    50   ~ 0
LED-displays1\nLED-displays2
Text Notes 10100 5000 0    50   ~ 0
Menu-toets\nDAC
Wire Wire Line
	10850 2600 10900 2600
Wire Wire Line
	10900 2600 10900 2700
Wire Wire Line
	10900 3450 10850 3450
Wire Wire Line
	10850 3350 10900 3350
Connection ~ 10900 3350
Wire Wire Line
	10900 3350 10900 3450
Wire Wire Line
	10850 3200 10900 3200
Connection ~ 10900 3200
Wire Wire Line
	10900 3200 10900 3350
Wire Wire Line
	10850 3100 10900 3100
Connection ~ 10900 3100
Wire Wire Line
	10900 3100 10900 3200
Wire Wire Line
	10850 2950 10900 2950
Connection ~ 10900 2950
Wire Wire Line
	10900 2950 10900 3100
Wire Wire Line
	10850 2850 10900 2850
Connection ~ 10900 2850
Wire Wire Line
	10900 2850 10900 2950
Wire Wire Line
	10850 2700 10900 2700
Connection ~ 10900 2700
Wire Wire Line
	10900 2700 10900 2850
Wire Wire Line
	10850 4150 10900 4150
Wire Wire Line
	10900 4150 10900 4250
Wire Wire Line
	10900 5000 10850 5000
Wire Wire Line
	10850 4900 10900 4900
Connection ~ 10900 4900
Wire Wire Line
	10900 4900 10900 5000
Wire Wire Line
	10850 4750 10900 4750
Connection ~ 10900 4750
Wire Wire Line
	10900 4750 10900 4900
Wire Wire Line
	10850 4650 10900 4650
Connection ~ 10900 4650
Wire Wire Line
	10900 4650 10900 4750
Wire Wire Line
	10850 4500 10900 4500
Connection ~ 10900 4500
Wire Wire Line
	10900 4500 10900 4650
Wire Wire Line
	10850 4400 10900 4400
Connection ~ 10900 4400
Wire Wire Line
	10900 4400 10900 4500
Wire Wire Line
	10850 4250 10900 4250
Connection ~ 10900 4250
Wire Wire Line
	10900 4250 10900 4400
NoConn ~ 10850 1850
$Comp
L power:+5V #PWR02
U 1 1 61948323
P 10900 2550
F 0 "#PWR02" H 10900 2400 50  0001 C CNN
F 1 "+5V" H 10915 2723 50  0000 C CNN
F 2 "" H 10900 2550 50  0001 C CNN
F 3 "" H 10900 2550 50  0001 C CNN
	1    10900 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10900 2550 10900 2600
Connection ~ 10900 2600
$Comp
L power:GND #PWR03
U 1 1 6194B75F
P 10900 5050
F 0 "#PWR03" H 10900 4800 50  0001 C CNN
F 1 "GND" H 10905 4877 50  0000 C CNN
F 2 "" H 10900 5050 50  0001 C CNN
F 3 "" H 10900 5050 50  0001 C CNN
	1    10900 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10900 5050 10900 5000
Connection ~ 10900 5000
Wire Wire Line
	10850 1600 10900 1600
Wire Wire Line
	10900 1600 10900 1750
Wire Wire Line
	10900 1750 10850 1750
$Comp
L power:+12V #PWR01
U 1 1 61951D67
P 11000 1600
F 0 "#PWR01" H 11000 1450 50  0001 C CNN
F 1 "+12V" H 11015 1773 50  0000 C CNN
F 2 "" H 11000 1600 50  0001 C CNN
F 3 "" H 11000 1600 50  0001 C CNN
	1    11000 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 1600 10900 1600
Connection ~ 10900 1600
$Comp
L Connector:Conn_01x15_Female J7
U 1 1 6195DB00
P 2750 4000
F 0 "J7" H 2778 4026 50  0000 L CNN
F 1 "Conn_01x15_Female" H 2778 3935 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x15_Pitch2.54mm" H 2750 4000 50  0001 C CNN
F 3 "~" H 2750 4000 50  0001 C CNN
	1    2750 4000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x15_Female J8
U 1 1 6195F2A8
P 3650 4000
F 0 "J8" H 3678 4026 50  0000 L CNN
F 1 "Conn_01x15_Female" H 3678 3935 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x15_Pitch2.54mm" H 3650 4000 50  0001 C CNN
F 3 "~" H 3650 4000 50  0001 C CNN
	1    3650 4000
	1    0    0    -1  
$EndComp
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
$EndSCHEMATC
