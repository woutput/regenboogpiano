EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_01x03_Male J3
U 1 1 619D4ACE
P 6300 5150
F 0 "J3" H 6408 5431 50  0000 C CNN
F 1 "Touch module" H 6408 5340 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 6300 5150 50  0001 C CNN
F 3 "~" H 6300 5150 50  0001 C CNN
	1    6300 5150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4300 5150 3450 5150
$Comp
L Connector:Conn_01x06_Male J2
U 1 1 619DA070
P 4100 4950
F 0 "J2" H 4208 5331 50  0000 C CNN
F 1 "Conn_01x06_Male" H 4208 5240 50  0000 C CNN
F 2 "Toetsmodule:IDC_Header_Straight_6pins" H 4100 4950 50  0001 C CNN
F 3 "~" H 4100 4950 50  0001 C CNN
	1    4100 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 619DD830
P 4350 5550
F 0 "#PWR02" H 4350 5300 50  0001 C CNN
F 1 "GND" H 4355 5377 50  0000 C CNN
F 2 "" H 4350 5550 50  0001 C CNN
F 3 "" H 4350 5550 50  0001 C CNN
	1    4350 5550
	1    0    0    -1  
$EndComp
Text Label 5450 4850 0    50   ~ 0
Touch_output
Text Label 3450 4750 0    50   ~ 0
LED_out
Text Label 3250 5050 0    50   ~ 0
LED_in
Wire Wire Line
	3450 5150 3450 5050
$Comp
L power:+3V3 #PWR01
U 1 1 61BDB54A
P 4700 4800
F 0 "#PWR01" H 4700 4650 50  0001 C CNN
F 1 "+3V3" H 4715 4973 50  0000 C CNN
F 2 "" H 4700 4800 50  0001 C CNN
F 3 "" H 4700 4800 50  0001 C CNN
	1    4700 4800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J1
U 1 1 61BE7B1D
P 2600 4850
F 0 "J1" H 2708 5131 50  0000 C CNN
F 1 "Conn_01x04_Male" H 2708 5040 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 2600 4850 50  0001 C CNN
F 3 "~" H 2600 4850 50  0001 C CNN
	1    2600 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 5050 3450 5050
Wire Wire Line
	2800 4850 3750 4850
Wire Wire Line
	2800 4950 3300 4950
Wire Wire Line
	2800 4750 4300 4750
Wire Wire Line
	5450 5150 6100 5150
Wire Wire Line
	5850 5250 6100 5250
Wire Wire Line
	5850 5350 5850 5250
Wire Wire Line
	4700 4800 4700 5050
Wire Wire Line
	4700 5350 5850 5350
Wire Wire Line
	4350 5550 4350 5450
Wire Wire Line
	5000 5050 6100 5050
Wire Wire Line
	5000 5450 4350 5450
Wire Wire Line
	3750 5450 3750 5250
Wire Wire Line
	5000 5450 5000 5050
Connection ~ 4350 5450
Wire Wire Line
	4350 5450 3750 5450
$Comp
L power:+5V #PWR0101
U 1 1 61BF53A9
P 3300 4550
F 0 "#PWR0101" H 3300 4400 50  0001 C CNN
F 1 "+5V" H 3315 4723 50  0000 C CNN
F 2 "" H 3300 4550 50  0001 C CNN
F 3 "" H 3300 4550 50  0001 C CNN
	1    3300 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 4550 3300 4950
Connection ~ 3300 4950
Wire Wire Line
	3300 4950 4300 4950
Wire Wire Line
	4300 5050 4700 5050
Connection ~ 4700 5050
Wire Wire Line
	4700 5050 4700 5350
Wire Wire Line
	3750 5250 4300 5250
Connection ~ 3750 5250
Wire Wire Line
	3750 5250 3750 4850
Wire Wire Line
	4300 4850 5450 4850
Wire Wire Line
	5450 4850 5450 5150
$EndSCHEMATC
