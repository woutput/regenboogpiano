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
L Connector:Conn_01x03_Male J1
U 1 1 619D3843
P 2600 3700
F 0 "J1" H 2708 3981 50  0000 C CNN
F 1 "Conn_01x03_Male" H 2708 3890 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 2600 3700 50  0001 C CNN
F 3 "~" H 2600 3700 50  0001 C CNN
	1    2600 3700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 619D43F1
P 6300 3650
F 0 "J4" H 6408 3931 50  0000 C CNN
F 1 "Conn_01x03_Male" H 6408 3840 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 6300 3650 50  0001 C CNN
F 3 "~" H 6300 3650 50  0001 C CNN
	1    6300 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 619D4ACE
P 4400 3600
F 0 "J2" H 4508 3881 50  0000 C CNN
F 1 "Touch module" H 4508 3790 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 4400 3600 50  0001 C CNN
F 3 "~" H 4400 3600 50  0001 C CNN
	1    4400 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 4550 6950 3550
Wire Wire Line
	6950 3550 6500 3550
Wire Wire Line
	3350 4550 3350 3600
Wire Wire Line
	3350 3600 2800 3600
Wire Wire Line
	4300 5150 3050 5150
Wire Wire Line
	3050 3800 2800 3800
Wire Wire Line
	4300 4750 3350 4750
Wire Wire Line
	3350 4750 3350 4550
Connection ~ 3350 4550
Wire Wire Line
	3350 4550 6950 4550
Wire Wire Line
	3050 5600 4700 5600
Wire Wire Line
	6650 5600 6650 4150
Wire Wire Line
	6650 3750 6500 3750
Wire Wire Line
	4300 4850 3200 4850
Wire Wire Line
	3200 4850 3200 3700
Wire Wire Line
	3200 3700 2800 3700
Wire Wire Line
	4300 4950 6800 4950
Wire Wire Line
	6800 4950 6800 3650
Wire Wire Line
	6800 3650 6500 3650
Wire Wire Line
	4700 3250 6950 3250
Wire Wire Line
	6950 3250 6950 3550
Connection ~ 6950 3550
Wire Wire Line
	5850 4150 6650 4150
Connection ~ 6650 4150
Wire Wire Line
	6650 4150 6650 3750
Wire Wire Line
	4600 3600 4950 3600
Wire Wire Line
	4950 3600 4950 5050
Wire Wire Line
	4950 5050 4300 5050
$Comp
L Connector:Conn_01x06_Male J3
U 1 1 619DA070
P 4100 4950
F 0 "J3" H 4208 5331 50  0000 C CNN
F 1 "Conn_01x06_Male" H 4208 5240 50  0000 C CNN
F 2 "Toetsmodule:IDC_Header_Straight_6pins" H 4100 4950 50  0001 C CNN
F 3 "~" H 4100 4950 50  0001 C CNN
	1    4100 4950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 619DCB23
P 4700 3200
F 0 "#PWR0101" H 4700 3050 50  0001 C CNN
F 1 "+5V" H 4715 3373 50  0000 C CNN
F 2 "" H 4700 3200 50  0001 C CNN
F 3 "" H 4700 3200 50  0001 C CNN
	1    4700 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3200 4700 3250
Connection ~ 4700 3250
$Comp
L power:GND #PWR0102
U 1 1 619DD830
P 4700 5650
F 0 "#PWR0102" H 4700 5400 50  0001 C CNN
F 1 "GND" H 4705 5477 50  0000 C CNN
F 2 "" H 4700 5650 50  0001 C CNN
F 3 "" H 4700 5650 50  0001 C CNN
	1    4700 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3700 4600 3700
Wire Wire Line
	4700 3250 4700 3700
Wire Wire Line
	5850 3500 4600 3500
Wire Wire Line
	5850 3500 5850 4150
Text Label 4950 3600 0    50   ~ 0
Touch_output
Text Label 6800 4950 0    50   ~ 0
LED_out
Text Label 3200 3700 0    50   ~ 0
LED_in
Wire Wire Line
	4700 5650 4700 5600
Connection ~ 4700 5600
Wire Wire Line
	4700 5600 6650 5600
Connection ~ 3050 5150
Wire Wire Line
	3050 5150 3050 3800
Wire Wire Line
	3050 5150 3050 5600
$EndSCHEMATC
