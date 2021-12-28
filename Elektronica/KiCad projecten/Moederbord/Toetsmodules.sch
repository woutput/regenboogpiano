EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L Connector:Conn_01x06_Male J?
U 1 1 61AF2AD5
P 2550 2300
AR Path="/61AF2AD5" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61AF2AD5" Ref="J11"  Part="1" 
F 0 "J11" H 2650 2650 50  0000 C CNN
F 1 "T1" H 2650 2750 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 2550 2300 50  0001 C CNN
F 3 "~" H 2550 2300 50  0001 C CNN
	1    2550 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2200 2750 2200
Wire Wire Line
	2750 2600 2850 2600
$Comp
L power:GND #PWR?
U 1 1 61AF2AE6
P 2850 2600
AR Path="/61AF2AE6" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61AF2AE6" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 2850 2350 50  0001 C CNN
F 1 "GND" H 2855 2427 50  0000 C CNN
F 2 "" H 2850 2600 50  0001 C CNN
F 3 "" H 2850 2600 50  0001 C CNN
	1    2850 2600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B3C702
P 1600 2300
AR Path="/61B3C702" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B3C702" Ref="J10"  Part="1" 
F 0 "J10" H 1700 2650 50  0000 C CNN
F 1 "Tmenu" H 1700 2750 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 1600 2300 50  0001 C CNN
F 3 "~" H 1600 2300 50  0001 C CNN
	1    1600 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 2200 1800 2200
Wire Wire Line
	1800 2600 1900 2600
$Comp
L power:GND #PWR?
U 1 1 61B3C70C
P 1900 2600
AR Path="/61B3C70C" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B3C70C" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 1900 2350 50  0001 C CNN
F 1 "GND" H 1905 2427 50  0000 C CNN
F 2 "" H 1900 2600 50  0001 C CNN
F 3 "" H 1900 2600 50  0001 C CNN
	1    1900 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B3C712
P 1850 1950
AR Path="/61B3C712" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B3C712" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 1850 1800 50  0001 C CNN
F 1 "+5V" H 1865 2123 50  0000 C CNN
F 2 "" H 1850 1950 50  0001 C CNN
F 3 "" H 1850 1950 50  0001 C CNN
	1    1850 1950
	1    0    0    -1  
$EndComp
Text Notes 7450 1450 0    63   ~ 0
1: LED out (5 V)\n2: Touch out (3.3 V)\n3: 5V\n4: 3V3\n5: LED in (5 V)\n6: GND\n
Text GLabel 1400 2500 0    50   Input ~ 0
LED_rings_data
Text Notes 1500 1650 0    50   ~ 0
Menu is first in line\nto allow quick updates\nto menu button only\n(for example for\nrainbow animation)\nTo be tested to see if this really works,\notherwise: no harm done
Text GLabel 1900 2200 2    50   Output ~ 0
Touch_menu
Text GLabel 2850 2200 2    50   Output ~ 0
Touch1
Wire Wire Line
	1400 2500 1800 2500
$Comp
L power:+3V3 #PWR022
U 1 1 61BE6B33
P 1950 2400
F 0 "#PWR022" H 1950 2250 50  0001 C CNN
F 1 "+3V3" H 2100 2450 50  0000 C CNN
F 2 "" H 1950 2400 50  0001 C CNN
F 3 "" H 1950 2400 50  0001 C CNN
	1    1950 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2100 2450 2100
Wire Wire Line
	2450 2100 2450 2500
Wire Wire Line
	2450 2500 2750 2500
Wire Wire Line
	1850 1950 1850 2300
Wire Wire Line
	1850 2300 1800 2300
Wire Wire Line
	1950 2400 1800 2400
Wire Wire Line
	2750 2100 3400 2100
Wire Wire Line
	3400 2100 3400 2500
$Comp
L power:+3V3 #PWR023
U 1 1 61C9CD39
P 2900 2400
F 0 "#PWR023" H 2900 2250 50  0001 C CNN
F 1 "+3V3" H 3050 2450 50  0000 C CNN
F 2 "" H 2900 2400 50  0001 C CNN
F 3 "" H 2900 2400 50  0001 C CNN
	1    2900 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2400 2750 2400
$Comp
L power:+5V #PWR?
U 1 1 61C9D891
P 2800 1950
AR Path="/61C9D891" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61C9D891" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 2800 1800 50  0001 C CNN
F 1 "+5V" H 2815 2123 50  0000 C CNN
F 2 "" H 2800 1950 50  0001 C CNN
F 3 "" H 2800 1950 50  0001 C CNN
	1    2800 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1950 2800 2300
Wire Wire Line
	2800 2300 2750 2300
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CA5475
P 3500 2300
AR Path="/61CA5475" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CA5475" Ref="J12"  Part="1" 
F 0 "J12" H 3600 2650 50  0000 C CNN
F 1 "T2" H 3600 2750 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 3500 2300 50  0001 C CNN
F 3 "~" H 3500 2300 50  0001 C CNN
	1    3500 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2200 3700 2200
Wire Wire Line
	3700 2600 3800 2600
$Comp
L power:GND #PWR?
U 1 1 61CA547D
P 3800 2600
AR Path="/61CA547D" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CA547D" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 3800 2350 50  0001 C CNN
F 1 "GND" H 3805 2427 50  0000 C CNN
F 2 "" H 3800 2600 50  0001 C CNN
F 3 "" H 3800 2600 50  0001 C CNN
	1    3800 2600
	1    0    0    -1  
$EndComp
Text GLabel 3800 2200 2    50   Output ~ 0
Touch2
Wire Wire Line
	3700 2100 4350 2100
Wire Wire Line
	4350 2100 4350 2500
$Comp
L power:+3V3 #PWR024
U 1 1 61CA5488
P 3850 2400
F 0 "#PWR024" H 3850 2250 50  0001 C CNN
F 1 "+3V3" H 4000 2450 50  0000 C CNN
F 2 "" H 3850 2400 50  0001 C CNN
F 3 "" H 3850 2400 50  0001 C CNN
	1    3850 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2400 3700 2400
$Comp
L power:+5V #PWR?
U 1 1 61CA548F
P 3750 1950
AR Path="/61CA548F" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CA548F" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 3750 1800 50  0001 C CNN
F 1 "+5V" H 3765 2123 50  0000 C CNN
F 2 "" H 3750 1950 50  0001 C CNN
F 3 "" H 3750 1950 50  0001 C CNN
	1    3750 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 1950 3750 2300
Wire Wire Line
	3750 2300 3700 2300
Wire Wire Line
	4750 2200 4650 2200
Wire Wire Line
	4650 2600 4750 2600
$Comp
L power:GND #PWR?
U 1 1 61CA6CE4
P 4750 2600
AR Path="/61CA6CE4" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CA6CE4" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 4750 2350 50  0001 C CNN
F 1 "GND" H 4755 2427 50  0000 C CNN
F 2 "" H 4750 2600 50  0001 C CNN
F 3 "" H 4750 2600 50  0001 C CNN
	1    4750 2600
	1    0    0    -1  
$EndComp
Text GLabel 4750 2200 2    50   Output ~ 0
Touch3
Wire Wire Line
	4650 2100 5300 2100
Wire Wire Line
	5300 2100 5300 2500
Wire Wire Line
	5300 2500 5600 2500
$Comp
L power:+3V3 #PWR025
U 1 1 61CA6CEF
P 4800 2400
F 0 "#PWR025" H 4800 2250 50  0001 C CNN
F 1 "+3V3" H 4950 2450 50  0000 C CNN
F 2 "" H 4800 2400 50  0001 C CNN
F 3 "" H 4800 2400 50  0001 C CNN
	1    4800 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 2400 4650 2400
$Comp
L power:+5V #PWR?
U 1 1 61CA6CF6
P 4700 1950
AR Path="/61CA6CF6" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CA6CF6" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 4700 1800 50  0001 C CNN
F 1 "+5V" H 4715 2123 50  0000 C CNN
F 2 "" H 4700 1950 50  0001 C CNN
F 3 "" H 4700 1950 50  0001 C CNN
	1    4700 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1950 4700 2300
Wire Wire Line
	4700 2300 4650 2300
Wire Wire Line
	4350 2500 4650 2500
Wire Wire Line
	3400 2500 3700 2500
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CAB997
P 5400 2300
AR Path="/61CAB997" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CAB997" Ref="J14"  Part="1" 
F 0 "J14" H 5500 2650 50  0000 C CNN
F 1 "T4" H 5500 2750 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 5400 2300 50  0001 C CNN
F 3 "~" H 5400 2300 50  0001 C CNN
	1    5400 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2200 5600 2200
Wire Wire Line
	5600 2600 5700 2600
$Comp
L power:GND #PWR?
U 1 1 61CAB99F
P 5700 2600
AR Path="/61CAB99F" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CAB99F" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 5700 2350 50  0001 C CNN
F 1 "GND" H 5705 2427 50  0000 C CNN
F 2 "" H 5700 2600 50  0001 C CNN
F 3 "" H 5700 2600 50  0001 C CNN
	1    5700 2600
	1    0    0    -1  
$EndComp
Text GLabel 5700 2200 2    50   Output ~ 0
Touch4
Wire Wire Line
	5600 2100 6250 2100
Wire Wire Line
	6250 2100 6250 2500
Wire Wire Line
	6250 2500 6550 2500
$Comp
L power:+3V3 #PWR026
U 1 1 61CAB9AA
P 5750 2400
F 0 "#PWR026" H 5750 2250 50  0001 C CNN
F 1 "+3V3" H 5900 2450 50  0000 C CNN
F 2 "" H 5750 2400 50  0001 C CNN
F 3 "" H 5750 2400 50  0001 C CNN
	1    5750 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 2400 5600 2400
$Comp
L power:+5V #PWR?
U 1 1 61CAB9B1
P 5650 1950
AR Path="/61CAB9B1" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CAB9B1" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 5650 1800 50  0001 C CNN
F 1 "+5V" H 5665 2123 50  0000 C CNN
F 2 "" H 5650 1950 50  0001 C CNN
F 3 "" H 5650 1950 50  0001 C CNN
	1    5650 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 1950 5650 2300
Wire Wire Line
	5650 2300 5600 2300
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CAE520
P 6350 2300
AR Path="/61CAE520" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CAE520" Ref="J15"  Part="1" 
F 0 "J15" H 6450 2650 50  0000 C CNN
F 1 "T5" H 6450 2750 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 6350 2300 50  0001 C CNN
F 3 "~" H 6350 2300 50  0001 C CNN
	1    6350 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 2200 6550 2200
Wire Wire Line
	6550 2600 6650 2600
$Comp
L power:GND #PWR?
U 1 1 61CAE528
P 6650 2600
AR Path="/61CAE528" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CAE528" Ref="#PWR036"  Part="1" 
F 0 "#PWR036" H 6650 2350 50  0001 C CNN
F 1 "GND" H 6655 2427 50  0000 C CNN
F 2 "" H 6650 2600 50  0001 C CNN
F 3 "" H 6650 2600 50  0001 C CNN
	1    6650 2600
	1    0    0    -1  
$EndComp
Text GLabel 6650 2200 2    50   Output ~ 0
Touch5
Wire Wire Line
	6550 2100 7200 2100
Wire Wire Line
	7200 2100 7200 2500
Wire Wire Line
	7200 2500 7500 2500
$Comp
L power:+3V3 #PWR027
U 1 1 61CAE533
P 6700 2400
F 0 "#PWR027" H 6700 2250 50  0001 C CNN
F 1 "+3V3" H 6850 2450 50  0000 C CNN
F 2 "" H 6700 2400 50  0001 C CNN
F 3 "" H 6700 2400 50  0001 C CNN
	1    6700 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2400 6550 2400
$Comp
L power:+5V #PWR?
U 1 1 61CAE53A
P 6600 1950
AR Path="/61CAE53A" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CAE53A" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 6600 1800 50  0001 C CNN
F 1 "+5V" H 6615 2123 50  0000 C CNN
F 2 "" H 6600 1950 50  0001 C CNN
F 3 "" H 6600 1950 50  0001 C CNN
	1    6600 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 1950 6600 2300
Wire Wire Line
	6600 2300 6550 2300
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CB0C37
P 7300 2300
AR Path="/61CB0C37" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CB0C37" Ref="J16"  Part="1" 
F 0 "J16" H 7400 2650 50  0000 C CNN
F 1 "T6" H 7400 2750 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 7300 2300 50  0001 C CNN
F 3 "~" H 7300 2300 50  0001 C CNN
	1    7300 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 2200 7500 2200
Wire Wire Line
	7500 2600 7600 2600
$Comp
L power:GND #PWR?
U 1 1 61CB0C3F
P 7600 2600
AR Path="/61CB0C3F" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CB0C3F" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 7600 2350 50  0001 C CNN
F 1 "GND" H 7605 2427 50  0000 C CNN
F 2 "" H 7600 2600 50  0001 C CNN
F 3 "" H 7600 2600 50  0001 C CNN
	1    7600 2600
	1    0    0    -1  
$EndComp
Text GLabel 7600 2200 2    50   Output ~ 0
Touch6
Wire Wire Line
	7500 2100 8150 2100
Wire Wire Line
	8150 2100 8150 2500
Wire Wire Line
	8150 2500 8450 2500
$Comp
L power:+3V3 #PWR028
U 1 1 61CB0C4A
P 7650 2400
F 0 "#PWR028" H 7650 2250 50  0001 C CNN
F 1 "+3V3" H 7800 2450 50  0000 C CNN
F 2 "" H 7650 2400 50  0001 C CNN
F 3 "" H 7650 2400 50  0001 C CNN
	1    7650 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 2400 7500 2400
$Comp
L power:+5V #PWR?
U 1 1 61CB0C51
P 7550 1950
AR Path="/61CB0C51" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CB0C51" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 7550 1800 50  0001 C CNN
F 1 "+5V" H 7565 2123 50  0000 C CNN
F 2 "" H 7550 1950 50  0001 C CNN
F 3 "" H 7550 1950 50  0001 C CNN
	1    7550 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 1950 7550 2300
Wire Wire Line
	7550 2300 7500 2300
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CB37A4
P 8250 2300
AR Path="/61CB37A4" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CB37A4" Ref="J17"  Part="1" 
F 0 "J17" H 8350 2650 50  0000 C CNN
F 1 "T7" H 8350 2750 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 8250 2300 50  0001 C CNN
F 3 "~" H 8250 2300 50  0001 C CNN
	1    8250 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 2200 8450 2200
Wire Wire Line
	8450 2600 8550 2600
$Comp
L power:GND #PWR?
U 1 1 61CB37AC
P 8550 2600
AR Path="/61CB37AC" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CB37AC" Ref="#PWR038"  Part="1" 
F 0 "#PWR038" H 8550 2350 50  0001 C CNN
F 1 "GND" H 8555 2427 50  0000 C CNN
F 2 "" H 8550 2600 50  0001 C CNN
F 3 "" H 8550 2600 50  0001 C CNN
	1    8550 2600
	1    0    0    -1  
$EndComp
Text GLabel 8550 2200 2    50   Output ~ 0
Touch7
Wire Wire Line
	8450 2100 9100 2100
Wire Wire Line
	9100 2100 9100 2500
Wire Wire Line
	9100 2500 9400 2500
$Comp
L power:+3V3 #PWR029
U 1 1 61CB37B7
P 8600 2400
F 0 "#PWR029" H 8600 2250 50  0001 C CNN
F 1 "+3V3" H 8750 2450 50  0000 C CNN
F 2 "" H 8600 2400 50  0001 C CNN
F 3 "" H 8600 2400 50  0001 C CNN
	1    8600 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 2400 8450 2400
$Comp
L power:+5V #PWR?
U 1 1 61CB37BE
P 8500 1950
AR Path="/61CB37BE" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CB37BE" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 8500 1800 50  0001 C CNN
F 1 "+5V" H 8515 2123 50  0000 C CNN
F 2 "" H 8500 1950 50  0001 C CNN
F 3 "" H 8500 1950 50  0001 C CNN
	1    8500 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 1950 8500 2300
Wire Wire Line
	8500 2300 8450 2300
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CB65DD
P 9200 2300
AR Path="/61CB65DD" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CB65DD" Ref="J18"  Part="1" 
F 0 "J18" H 9300 2650 50  0000 C CNN
F 1 "T8" H 9300 2750 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 9200 2300 50  0001 C CNN
F 3 "~" H 9200 2300 50  0001 C CNN
	1    9200 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 2200 9400 2200
Wire Wire Line
	9400 2600 9500 2600
$Comp
L power:GND #PWR?
U 1 1 61CB65E5
P 9500 2600
AR Path="/61CB65E5" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CB65E5" Ref="#PWR039"  Part="1" 
F 0 "#PWR039" H 9500 2350 50  0001 C CNN
F 1 "GND" H 9505 2427 50  0000 C CNN
F 2 "" H 9500 2600 50  0001 C CNN
F 3 "" H 9500 2600 50  0001 C CNN
	1    9500 2600
	1    0    0    -1  
$EndComp
Text GLabel 9500 2200 2    50   Output ~ 0
Touch8
Wire Wire Line
	9400 2100 10050 2100
$Comp
L power:+3V3 #PWR030
U 1 1 61CB65F0
P 9550 2400
F 0 "#PWR030" H 9550 2250 50  0001 C CNN
F 1 "+3V3" H 9700 2450 50  0000 C CNN
F 2 "" H 9550 2400 50  0001 C CNN
F 3 "" H 9550 2400 50  0001 C CNN
	1    9550 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 2400 9400 2400
$Comp
L power:+5V #PWR?
U 1 1 61CB65F7
P 9450 1950
AR Path="/61CB65F7" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CB65F7" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 9450 1800 50  0001 C CNN
F 1 "+5V" H 9465 2123 50  0000 C CNN
F 2 "" H 9450 1950 50  0001 C CNN
F 3 "" H 9450 1950 50  0001 C CNN
	1    9450 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 1950 9450 2300
Wire Wire Line
	9450 2300 9400 2300
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CD7EC2
P 2550 3800
AR Path="/61CD7EC2" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CD7EC2" Ref="J19"  Part="1" 
F 0 "J19" H 2650 4150 50  0000 C CNN
F 1 "T9" H 2650 4250 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 2550 3800 50  0001 C CNN
F 3 "~" H 2550 3800 50  0001 C CNN
	1    2550 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3700 2750 3700
Wire Wire Line
	2750 4100 2850 4100
$Comp
L power:GND #PWR?
U 1 1 61CD7ECA
P 2850 4100
AR Path="/61CD7ECA" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CD7ECA" Ref="#PWR056"  Part="1" 
F 0 "#PWR056" H 2850 3850 50  0001 C CNN
F 1 "GND" H 2855 3927 50  0000 C CNN
F 2 "" H 2850 4100 50  0001 C CNN
F 3 "" H 2850 4100 50  0001 C CNN
	1    2850 4100
	1    0    0    -1  
$EndComp
Text GLabel 2850 3700 2    50   Output ~ 0
Touch9
Wire Wire Line
	2750 3600 3400 3600
Wire Wire Line
	3400 3600 3400 4000
$Comp
L power:+3V3 #PWR048
U 1 1 61CD7ED4
P 2900 3900
F 0 "#PWR048" H 2900 3750 50  0001 C CNN
F 1 "+3V3" H 3050 3950 50  0000 C CNN
F 2 "" H 2900 3900 50  0001 C CNN
F 3 "" H 2900 3900 50  0001 C CNN
	1    2900 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3900 2750 3900
$Comp
L power:+5V #PWR?
U 1 1 61CD7EDB
P 2800 3450
AR Path="/61CD7EDB" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CD7EDB" Ref="#PWR040"  Part="1" 
F 0 "#PWR040" H 2800 3300 50  0001 C CNN
F 1 "+5V" H 2815 3623 50  0000 C CNN
F 2 "" H 2800 3450 50  0001 C CNN
F 3 "" H 2800 3450 50  0001 C CNN
	1    2800 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3450 2800 3800
Wire Wire Line
	2800 3800 2750 3800
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CD7EE3
P 3500 3800
AR Path="/61CD7EE3" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CD7EE3" Ref="J20"  Part="1" 
F 0 "J20" H 3600 4150 50  0000 C CNN
F 1 "T10" H 3600 4250 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 3500 3800 50  0001 C CNN
F 3 "~" H 3500 3800 50  0001 C CNN
	1    3500 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3700 3700 3700
Wire Wire Line
	3700 4100 3800 4100
$Comp
L power:GND #PWR?
U 1 1 61CD7EEB
P 3800 4100
AR Path="/61CD7EEB" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CD7EEB" Ref="#PWR057"  Part="1" 
F 0 "#PWR057" H 3800 3850 50  0001 C CNN
F 1 "GND" H 3805 3927 50  0000 C CNN
F 2 "" H 3800 4100 50  0001 C CNN
F 3 "" H 3800 4100 50  0001 C CNN
	1    3800 4100
	1    0    0    -1  
$EndComp
Text GLabel 3800 3700 2    50   Output ~ 0
Touch10
Wire Wire Line
	3700 3600 4350 3600
Wire Wire Line
	4350 3600 4350 4000
$Comp
L power:+3V3 #PWR049
U 1 1 61CD7EF4
P 3850 3900
F 0 "#PWR049" H 3850 3750 50  0001 C CNN
F 1 "+3V3" H 4000 3950 50  0000 C CNN
F 2 "" H 3850 3900 50  0001 C CNN
F 3 "" H 3850 3900 50  0001 C CNN
	1    3850 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3900 3700 3900
$Comp
L power:+5V #PWR?
U 1 1 61CD7EFB
P 3750 3450
AR Path="/61CD7EFB" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CD7EFB" Ref="#PWR041"  Part="1" 
F 0 "#PWR041" H 3750 3300 50  0001 C CNN
F 1 "+5V" H 3765 3623 50  0000 C CNN
F 2 "" H 3750 3450 50  0001 C CNN
F 3 "" H 3750 3450 50  0001 C CNN
	1    3750 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3450 3750 3800
Wire Wire Line
	3750 3800 3700 3800
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CD7F03
P 4450 3800
AR Path="/61CD7F03" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CD7F03" Ref="J21"  Part="1" 
F 0 "J21" H 4550 4150 50  0000 C CNN
F 1 "T11" H 4550 4250 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 4450 3800 50  0001 C CNN
F 3 "~" H 4450 3800 50  0001 C CNN
	1    4450 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3700 4650 3700
Wire Wire Line
	4650 4100 4750 4100
$Comp
L power:GND #PWR?
U 1 1 61CD7F0B
P 4750 4100
AR Path="/61CD7F0B" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CD7F0B" Ref="#PWR058"  Part="1" 
F 0 "#PWR058" H 4750 3850 50  0001 C CNN
F 1 "GND" H 4755 3927 50  0000 C CNN
F 2 "" H 4750 4100 50  0001 C CNN
F 3 "" H 4750 4100 50  0001 C CNN
	1    4750 4100
	1    0    0    -1  
$EndComp
Text GLabel 4750 3700 2    50   Output ~ 0
Touch11
Wire Wire Line
	4650 3600 5300 3600
Wire Wire Line
	5300 3600 5300 4000
Wire Wire Line
	5300 4000 5600 4000
$Comp
L power:+3V3 #PWR050
U 1 1 61CD7F15
P 4800 3900
F 0 "#PWR050" H 4800 3750 50  0001 C CNN
F 1 "+3V3" H 4950 3950 50  0000 C CNN
F 2 "" H 4800 3900 50  0001 C CNN
F 3 "" H 4800 3900 50  0001 C CNN
	1    4800 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3900 4650 3900
$Comp
L power:+5V #PWR?
U 1 1 61CD7F1C
P 4700 3450
AR Path="/61CD7F1C" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CD7F1C" Ref="#PWR042"  Part="1" 
F 0 "#PWR042" H 4700 3300 50  0001 C CNN
F 1 "+5V" H 4715 3623 50  0000 C CNN
F 2 "" H 4700 3450 50  0001 C CNN
F 3 "" H 4700 3450 50  0001 C CNN
	1    4700 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3450 4700 3800
Wire Wire Line
	4700 3800 4650 3800
Wire Wire Line
	4350 4000 4650 4000
Wire Wire Line
	3400 4000 3700 4000
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CD7F26
P 5400 3800
AR Path="/61CD7F26" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CD7F26" Ref="J22"  Part="1" 
F 0 "J22" H 5500 4150 50  0000 C CNN
F 1 "T12" H 5500 4250 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 5400 3800 50  0001 C CNN
F 3 "~" H 5400 3800 50  0001 C CNN
	1    5400 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3700 5600 3700
Wire Wire Line
	5600 4100 5700 4100
$Comp
L power:GND #PWR?
U 1 1 61CD7F2E
P 5700 4100
AR Path="/61CD7F2E" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CD7F2E" Ref="#PWR059"  Part="1" 
F 0 "#PWR059" H 5700 3850 50  0001 C CNN
F 1 "GND" H 5705 3927 50  0000 C CNN
F 2 "" H 5700 4100 50  0001 C CNN
F 3 "" H 5700 4100 50  0001 C CNN
	1    5700 4100
	1    0    0    -1  
$EndComp
Text GLabel 5700 3700 2    50   Output ~ 0
Touch12
Wire Wire Line
	5600 3600 6250 3600
Wire Wire Line
	6250 3600 6250 4000
Wire Wire Line
	6250 4000 6550 4000
$Comp
L power:+3V3 #PWR051
U 1 1 61CD7F38
P 5750 3900
F 0 "#PWR051" H 5750 3750 50  0001 C CNN
F 1 "+3V3" H 5900 3950 50  0000 C CNN
F 2 "" H 5750 3900 50  0001 C CNN
F 3 "" H 5750 3900 50  0001 C CNN
	1    5750 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3900 5600 3900
$Comp
L power:+5V #PWR?
U 1 1 61CD7F3F
P 5650 3450
AR Path="/61CD7F3F" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CD7F3F" Ref="#PWR043"  Part="1" 
F 0 "#PWR043" H 5650 3300 50  0001 C CNN
F 1 "+5V" H 5665 3623 50  0000 C CNN
F 2 "" H 5650 3450 50  0001 C CNN
F 3 "" H 5650 3450 50  0001 C CNN
	1    5650 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3450 5650 3800
Wire Wire Line
	5650 3800 5600 3800
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CD7F47
P 6350 3800
AR Path="/61CD7F47" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CD7F47" Ref="J23"  Part="1" 
F 0 "J23" H 6450 4150 50  0000 C CNN
F 1 "T13" H 6450 4250 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 6350 3800 50  0001 C CNN
F 3 "~" H 6350 3800 50  0001 C CNN
	1    6350 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3700 6550 3700
Wire Wire Line
	6550 4100 6650 4100
$Comp
L power:GND #PWR?
U 1 1 61CD7F4F
P 6650 4100
AR Path="/61CD7F4F" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CD7F4F" Ref="#PWR060"  Part="1" 
F 0 "#PWR060" H 6650 3850 50  0001 C CNN
F 1 "GND" H 6655 3927 50  0000 C CNN
F 2 "" H 6650 4100 50  0001 C CNN
F 3 "" H 6650 4100 50  0001 C CNN
	1    6650 4100
	1    0    0    -1  
$EndComp
Text GLabel 6650 3700 2    50   Output ~ 0
Touch13
Wire Wire Line
	6550 3600 7200 3600
Wire Wire Line
	7200 3600 7200 4000
Wire Wire Line
	7200 4000 7500 4000
$Comp
L power:+3V3 #PWR052
U 1 1 61CD7F59
P 6700 3900
F 0 "#PWR052" H 6700 3750 50  0001 C CNN
F 1 "+3V3" H 6850 3950 50  0000 C CNN
F 2 "" H 6700 3900 50  0001 C CNN
F 3 "" H 6700 3900 50  0001 C CNN
	1    6700 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3900 6550 3900
$Comp
L power:+5V #PWR?
U 1 1 61CD7F60
P 6600 3450
AR Path="/61CD7F60" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CD7F60" Ref="#PWR044"  Part="1" 
F 0 "#PWR044" H 6600 3300 50  0001 C CNN
F 1 "+5V" H 6615 3623 50  0000 C CNN
F 2 "" H 6600 3450 50  0001 C CNN
F 3 "" H 6600 3450 50  0001 C CNN
	1    6600 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 3450 6600 3800
Wire Wire Line
	6600 3800 6550 3800
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CD7F68
P 7300 3800
AR Path="/61CD7F68" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CD7F68" Ref="J24"  Part="1" 
F 0 "J24" H 7400 4150 50  0000 C CNN
F 1 "T14" H 7400 4250 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 7300 3800 50  0001 C CNN
F 3 "~" H 7300 3800 50  0001 C CNN
	1    7300 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3700 7500 3700
Wire Wire Line
	7500 4100 7600 4100
$Comp
L power:GND #PWR?
U 1 1 61CD7F70
P 7600 4100
AR Path="/61CD7F70" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CD7F70" Ref="#PWR061"  Part="1" 
F 0 "#PWR061" H 7600 3850 50  0001 C CNN
F 1 "GND" H 7605 3927 50  0000 C CNN
F 2 "" H 7600 4100 50  0001 C CNN
F 3 "" H 7600 4100 50  0001 C CNN
	1    7600 4100
	1    0    0    -1  
$EndComp
Text GLabel 7600 3700 2    50   Output ~ 0
Touch14
Wire Wire Line
	7500 3600 8150 3600
Wire Wire Line
	8150 3600 8150 4000
Wire Wire Line
	8150 4000 8450 4000
$Comp
L power:+3V3 #PWR053
U 1 1 61CD7F7A
P 7650 3900
F 0 "#PWR053" H 7650 3750 50  0001 C CNN
F 1 "+3V3" H 7800 3950 50  0000 C CNN
F 2 "" H 7650 3900 50  0001 C CNN
F 3 "" H 7650 3900 50  0001 C CNN
	1    7650 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3900 7500 3900
$Comp
L power:+5V #PWR?
U 1 1 61CD7F81
P 7550 3450
AR Path="/61CD7F81" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CD7F81" Ref="#PWR045"  Part="1" 
F 0 "#PWR045" H 7550 3300 50  0001 C CNN
F 1 "+5V" H 7565 3623 50  0000 C CNN
F 2 "" H 7550 3450 50  0001 C CNN
F 3 "" H 7550 3450 50  0001 C CNN
	1    7550 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 3450 7550 3800
Wire Wire Line
	7550 3800 7500 3800
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CD7F89
P 8250 3800
AR Path="/61CD7F89" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CD7F89" Ref="J25"  Part="1" 
F 0 "J25" H 8350 4150 50  0000 C CNN
F 1 "T15" H 8350 4250 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 8250 3800 50  0001 C CNN
F 3 "~" H 8250 3800 50  0001 C CNN
	1    8250 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 3700 8450 3700
Wire Wire Line
	8450 4100 8550 4100
$Comp
L power:GND #PWR?
U 1 1 61CD7F91
P 8550 4100
AR Path="/61CD7F91" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CD7F91" Ref="#PWR062"  Part="1" 
F 0 "#PWR062" H 8550 3850 50  0001 C CNN
F 1 "GND" H 8555 3927 50  0000 C CNN
F 2 "" H 8550 4100 50  0001 C CNN
F 3 "" H 8550 4100 50  0001 C CNN
	1    8550 4100
	1    0    0    -1  
$EndComp
Text GLabel 8550 3700 2    50   Output ~ 0
Touch15
Wire Wire Line
	8450 3600 9100 3600
Wire Wire Line
	9100 3600 9100 4000
Wire Wire Line
	9100 4000 9400 4000
$Comp
L power:+3V3 #PWR054
U 1 1 61CD7F9B
P 8600 3900
F 0 "#PWR054" H 8600 3750 50  0001 C CNN
F 1 "+3V3" H 8750 3950 50  0000 C CNN
F 2 "" H 8600 3900 50  0001 C CNN
F 3 "" H 8600 3900 50  0001 C CNN
	1    8600 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3900 8450 3900
$Comp
L power:+5V #PWR?
U 1 1 61CD7FA2
P 8500 3450
AR Path="/61CD7FA2" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CD7FA2" Ref="#PWR046"  Part="1" 
F 0 "#PWR046" H 8500 3300 50  0001 C CNN
F 1 "+5V" H 8515 3623 50  0000 C CNN
F 2 "" H 8500 3450 50  0001 C CNN
F 3 "" H 8500 3450 50  0001 C CNN
	1    8500 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 3450 8500 3800
Wire Wire Line
	8500 3800 8450 3800
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CD7FAA
P 9200 3800
AR Path="/61CD7FAA" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CD7FAA" Ref="J26"  Part="1" 
F 0 "J26" H 9300 4150 50  0000 C CNN
F 1 "T16" H 9300 4250 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 9200 3800 50  0001 C CNN
F 3 "~" H 9200 3800 50  0001 C CNN
	1    9200 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 3700 9400 3700
Wire Wire Line
	9400 4100 9500 4100
$Comp
L power:GND #PWR?
U 1 1 61CD7FB2
P 9500 4100
AR Path="/61CD7FB2" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CD7FB2" Ref="#PWR063"  Part="1" 
F 0 "#PWR063" H 9500 3850 50  0001 C CNN
F 1 "GND" H 9505 3927 50  0000 C CNN
F 2 "" H 9500 4100 50  0001 C CNN
F 3 "" H 9500 4100 50  0001 C CNN
	1    9500 4100
	1    0    0    -1  
$EndComp
Text GLabel 9500 3700 2    50   Output ~ 0
Touch16
Wire Wire Line
	9400 3600 10050 3600
$Comp
L power:+3V3 #PWR055
U 1 1 61CD7FBC
P 9550 3900
F 0 "#PWR055" H 9550 3750 50  0001 C CNN
F 1 "+3V3" H 9700 3950 50  0000 C CNN
F 2 "" H 9550 3900 50  0001 C CNN
F 3 "" H 9550 3900 50  0001 C CNN
	1    9550 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 3900 9400 3900
$Comp
L power:+5V #PWR?
U 1 1 61CD7FC3
P 9450 3450
AR Path="/61CD7FC3" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CD7FC3" Ref="#PWR047"  Part="1" 
F 0 "#PWR047" H 9450 3300 50  0001 C CNN
F 1 "+5V" H 9465 3623 50  0000 C CNN
F 2 "" H 9450 3450 50  0001 C CNN
F 3 "" H 9450 3450 50  0001 C CNN
	1    9450 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 3450 9450 3800
Wire Wire Line
	9450 3800 9400 3800
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CE6252
P 2550 5250
AR Path="/61CE6252" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CE6252" Ref="J27"  Part="1" 
F 0 "J27" H 2650 5600 50  0000 C CNN
F 1 "T17" H 2650 5700 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 2550 5250 50  0001 C CNN
F 3 "~" H 2550 5250 50  0001 C CNN
	1    2550 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 5150 2750 5150
Wire Wire Line
	2750 5550 2850 5550
$Comp
L power:GND #PWR?
U 1 1 61CE625A
P 2850 5550
AR Path="/61CE625A" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CE625A" Ref="#PWR080"  Part="1" 
F 0 "#PWR080" H 2850 5300 50  0001 C CNN
F 1 "GND" H 2855 5377 50  0000 C CNN
F 2 "" H 2850 5550 50  0001 C CNN
F 3 "" H 2850 5550 50  0001 C CNN
	1    2850 5550
	1    0    0    -1  
$EndComp
Text GLabel 2850 5150 2    50   Output ~ 0
Touch17
Wire Wire Line
	2750 5050 3400 5050
Wire Wire Line
	3400 5050 3400 5450
$Comp
L power:+3V3 #PWR072
U 1 1 61CE6264
P 2900 5350
F 0 "#PWR072" H 2900 5200 50  0001 C CNN
F 1 "+3V3" H 3050 5400 50  0000 C CNN
F 2 "" H 2900 5350 50  0001 C CNN
F 3 "" H 2900 5350 50  0001 C CNN
	1    2900 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 5350 2750 5350
$Comp
L power:+5V #PWR?
U 1 1 61CE626B
P 2800 4900
AR Path="/61CE626B" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CE626B" Ref="#PWR064"  Part="1" 
F 0 "#PWR064" H 2800 4750 50  0001 C CNN
F 1 "+5V" H 2815 5073 50  0000 C CNN
F 2 "" H 2800 4900 50  0001 C CNN
F 3 "" H 2800 4900 50  0001 C CNN
	1    2800 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 4900 2800 5250
Wire Wire Line
	2800 5250 2750 5250
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CE6273
P 3500 5250
AR Path="/61CE6273" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CE6273" Ref="J28"  Part="1" 
F 0 "J28" H 3600 5600 50  0000 C CNN
F 1 "T18" H 3600 5700 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 3500 5250 50  0001 C CNN
F 3 "~" H 3500 5250 50  0001 C CNN
	1    3500 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 5150 3700 5150
Wire Wire Line
	3700 5550 3800 5550
$Comp
L power:GND #PWR?
U 1 1 61CE627B
P 3800 5550
AR Path="/61CE627B" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CE627B" Ref="#PWR081"  Part="1" 
F 0 "#PWR081" H 3800 5300 50  0001 C CNN
F 1 "GND" H 3805 5377 50  0000 C CNN
F 2 "" H 3800 5550 50  0001 C CNN
F 3 "" H 3800 5550 50  0001 C CNN
	1    3800 5550
	1    0    0    -1  
$EndComp
Text GLabel 3800 5150 2    50   Output ~ 0
Touch18
Wire Wire Line
	3700 5050 4350 5050
Wire Wire Line
	4350 5050 4350 5450
$Comp
L power:+3V3 #PWR073
U 1 1 61CE6284
P 3850 5350
F 0 "#PWR073" H 3850 5200 50  0001 C CNN
F 1 "+3V3" H 4000 5400 50  0000 C CNN
F 2 "" H 3850 5350 50  0001 C CNN
F 3 "" H 3850 5350 50  0001 C CNN
	1    3850 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 5350 3700 5350
$Comp
L power:+5V #PWR?
U 1 1 61CE628B
P 3750 4900
AR Path="/61CE628B" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CE628B" Ref="#PWR065"  Part="1" 
F 0 "#PWR065" H 3750 4750 50  0001 C CNN
F 1 "+5V" H 3765 5073 50  0000 C CNN
F 2 "" H 3750 4900 50  0001 C CNN
F 3 "" H 3750 4900 50  0001 C CNN
	1    3750 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 4900 3750 5250
Wire Wire Line
	3750 5250 3700 5250
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CE6293
P 4450 5250
AR Path="/61CE6293" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CE6293" Ref="J29"  Part="1" 
F 0 "J29" H 4550 5600 50  0000 C CNN
F 1 "T19" H 4550 5700 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 4450 5250 50  0001 C CNN
F 3 "~" H 4450 5250 50  0001 C CNN
	1    4450 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 5150 4650 5150
Wire Wire Line
	4650 5550 4750 5550
$Comp
L power:GND #PWR?
U 1 1 61CE629B
P 4750 5550
AR Path="/61CE629B" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CE629B" Ref="#PWR082"  Part="1" 
F 0 "#PWR082" H 4750 5300 50  0001 C CNN
F 1 "GND" H 4755 5377 50  0000 C CNN
F 2 "" H 4750 5550 50  0001 C CNN
F 3 "" H 4750 5550 50  0001 C CNN
	1    4750 5550
	1    0    0    -1  
$EndComp
Text GLabel 4750 5150 2    50   Output ~ 0
Touch19
Wire Wire Line
	4650 5050 5300 5050
Wire Wire Line
	5300 5050 5300 5450
Wire Wire Line
	5300 5450 5600 5450
$Comp
L power:+3V3 #PWR074
U 1 1 61CE62A5
P 4800 5350
F 0 "#PWR074" H 4800 5200 50  0001 C CNN
F 1 "+3V3" H 4950 5400 50  0000 C CNN
F 2 "" H 4800 5350 50  0001 C CNN
F 3 "" H 4800 5350 50  0001 C CNN
	1    4800 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 5350 4650 5350
$Comp
L power:+5V #PWR?
U 1 1 61CE62AC
P 4700 4900
AR Path="/61CE62AC" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CE62AC" Ref="#PWR066"  Part="1" 
F 0 "#PWR066" H 4700 4750 50  0001 C CNN
F 1 "+5V" H 4715 5073 50  0000 C CNN
F 2 "" H 4700 4900 50  0001 C CNN
F 3 "" H 4700 4900 50  0001 C CNN
	1    4700 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4900 4700 5250
Wire Wire Line
	4700 5250 4650 5250
Wire Wire Line
	4350 5450 4650 5450
Wire Wire Line
	3400 5450 3700 5450
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CE62B6
P 5400 5250
AR Path="/61CE62B6" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CE62B6" Ref="J30"  Part="1" 
F 0 "J30" H 5500 5600 50  0000 C CNN
F 1 "T20" H 5500 5700 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 5400 5250 50  0001 C CNN
F 3 "~" H 5400 5250 50  0001 C CNN
	1    5400 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 5150 5600 5150
Wire Wire Line
	5600 5550 5700 5550
$Comp
L power:GND #PWR?
U 1 1 61CE62BE
P 5700 5550
AR Path="/61CE62BE" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CE62BE" Ref="#PWR083"  Part="1" 
F 0 "#PWR083" H 5700 5300 50  0001 C CNN
F 1 "GND" H 5705 5377 50  0000 C CNN
F 2 "" H 5700 5550 50  0001 C CNN
F 3 "" H 5700 5550 50  0001 C CNN
	1    5700 5550
	1    0    0    -1  
$EndComp
Text GLabel 5700 5150 2    50   Output ~ 0
Touch20
Wire Wire Line
	5600 5050 6250 5050
Wire Wire Line
	6250 5050 6250 5450
Wire Wire Line
	6250 5450 6550 5450
$Comp
L power:+3V3 #PWR075
U 1 1 61CE62C8
P 5750 5350
F 0 "#PWR075" H 5750 5200 50  0001 C CNN
F 1 "+3V3" H 5900 5400 50  0000 C CNN
F 2 "" H 5750 5350 50  0001 C CNN
F 3 "" H 5750 5350 50  0001 C CNN
	1    5750 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 5350 5600 5350
$Comp
L power:+5V #PWR?
U 1 1 61CE62CF
P 5650 4900
AR Path="/61CE62CF" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CE62CF" Ref="#PWR067"  Part="1" 
F 0 "#PWR067" H 5650 4750 50  0001 C CNN
F 1 "+5V" H 5665 5073 50  0000 C CNN
F 2 "" H 5650 4900 50  0001 C CNN
F 3 "" H 5650 4900 50  0001 C CNN
	1    5650 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4900 5650 5250
Wire Wire Line
	5650 5250 5600 5250
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CE62D7
P 6350 5250
AR Path="/61CE62D7" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CE62D7" Ref="J31"  Part="1" 
F 0 "J31" H 6450 5600 50  0000 C CNN
F 1 "T21" H 6450 5700 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 6350 5250 50  0001 C CNN
F 3 "~" H 6350 5250 50  0001 C CNN
	1    6350 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 5150 6550 5150
Wire Wire Line
	6550 5550 6650 5550
$Comp
L power:GND #PWR?
U 1 1 61CE62DF
P 6650 5550
AR Path="/61CE62DF" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CE62DF" Ref="#PWR084"  Part="1" 
F 0 "#PWR084" H 6650 5300 50  0001 C CNN
F 1 "GND" H 6655 5377 50  0000 C CNN
F 2 "" H 6650 5550 50  0001 C CNN
F 3 "" H 6650 5550 50  0001 C CNN
	1    6650 5550
	1    0    0    -1  
$EndComp
Text GLabel 6650 5150 2    50   Output ~ 0
Touch21
Wire Wire Line
	6550 5050 7200 5050
Wire Wire Line
	7200 5050 7200 5450
Wire Wire Line
	7200 5450 7500 5450
$Comp
L power:+3V3 #PWR076
U 1 1 61CE62E9
P 6700 5350
F 0 "#PWR076" H 6700 5200 50  0001 C CNN
F 1 "+3V3" H 6850 5400 50  0000 C CNN
F 2 "" H 6700 5350 50  0001 C CNN
F 3 "" H 6700 5350 50  0001 C CNN
	1    6700 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 5350 6550 5350
$Comp
L power:+5V #PWR?
U 1 1 61CE62F0
P 6600 4900
AR Path="/61CE62F0" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CE62F0" Ref="#PWR068"  Part="1" 
F 0 "#PWR068" H 6600 4750 50  0001 C CNN
F 1 "+5V" H 6615 5073 50  0000 C CNN
F 2 "" H 6600 4900 50  0001 C CNN
F 3 "" H 6600 4900 50  0001 C CNN
	1    6600 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4900 6600 5250
Wire Wire Line
	6600 5250 6550 5250
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CE62F8
P 7300 5250
AR Path="/61CE62F8" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CE62F8" Ref="J32"  Part="1" 
F 0 "J32" H 7400 5600 50  0000 C CNN
F 1 "T22" H 7400 5700 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 7300 5250 50  0001 C CNN
F 3 "~" H 7300 5250 50  0001 C CNN
	1    7300 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 5150 7500 5150
Wire Wire Line
	7500 5550 7600 5550
$Comp
L power:GND #PWR?
U 1 1 61CE6300
P 7600 5550
AR Path="/61CE6300" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CE6300" Ref="#PWR085"  Part="1" 
F 0 "#PWR085" H 7600 5300 50  0001 C CNN
F 1 "GND" H 7605 5377 50  0000 C CNN
F 2 "" H 7600 5550 50  0001 C CNN
F 3 "" H 7600 5550 50  0001 C CNN
	1    7600 5550
	1    0    0    -1  
$EndComp
Text GLabel 7600 5150 2    50   Output ~ 0
Touch22
Wire Wire Line
	7500 5050 8150 5050
Wire Wire Line
	8150 5050 8150 5450
Wire Wire Line
	8150 5450 8450 5450
$Comp
L power:+3V3 #PWR077
U 1 1 61CE630A
P 7650 5350
F 0 "#PWR077" H 7650 5200 50  0001 C CNN
F 1 "+3V3" H 7800 5400 50  0000 C CNN
F 2 "" H 7650 5350 50  0001 C CNN
F 3 "" H 7650 5350 50  0001 C CNN
	1    7650 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 5350 7500 5350
$Comp
L power:+5V #PWR?
U 1 1 61CE6311
P 7550 4900
AR Path="/61CE6311" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CE6311" Ref="#PWR069"  Part="1" 
F 0 "#PWR069" H 7550 4750 50  0001 C CNN
F 1 "+5V" H 7565 5073 50  0000 C CNN
F 2 "" H 7550 4900 50  0001 C CNN
F 3 "" H 7550 4900 50  0001 C CNN
	1    7550 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 4900 7550 5250
Wire Wire Line
	7550 5250 7500 5250
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CE6319
P 8250 5250
AR Path="/61CE6319" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CE6319" Ref="J33"  Part="1" 
F 0 "J33" H 8350 5600 50  0000 C CNN
F 1 "T23" H 8350 5700 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 8250 5250 50  0001 C CNN
F 3 "~" H 8250 5250 50  0001 C CNN
	1    8250 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 5150 8450 5150
Wire Wire Line
	8450 5550 8550 5550
$Comp
L power:GND #PWR?
U 1 1 61CE6321
P 8550 5550
AR Path="/61CE6321" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CE6321" Ref="#PWR086"  Part="1" 
F 0 "#PWR086" H 8550 5300 50  0001 C CNN
F 1 "GND" H 8555 5377 50  0000 C CNN
F 2 "" H 8550 5550 50  0001 C CNN
F 3 "" H 8550 5550 50  0001 C CNN
	1    8550 5550
	1    0    0    -1  
$EndComp
Text GLabel 8550 5150 2    50   Output ~ 0
Touch23
Wire Wire Line
	8450 5050 9100 5050
Wire Wire Line
	9100 5050 9100 5450
Wire Wire Line
	9100 5450 9400 5450
$Comp
L power:+3V3 #PWR078
U 1 1 61CE632B
P 8600 5350
F 0 "#PWR078" H 8600 5200 50  0001 C CNN
F 1 "+3V3" H 8750 5400 50  0000 C CNN
F 2 "" H 8600 5350 50  0001 C CNN
F 3 "" H 8600 5350 50  0001 C CNN
	1    8600 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5350 8450 5350
$Comp
L power:+5V #PWR?
U 1 1 61CE6332
P 8500 4900
AR Path="/61CE6332" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CE6332" Ref="#PWR070"  Part="1" 
F 0 "#PWR070" H 8500 4750 50  0001 C CNN
F 1 "+5V" H 8515 5073 50  0000 C CNN
F 2 "" H 8500 4900 50  0001 C CNN
F 3 "" H 8500 4900 50  0001 C CNN
	1    8500 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 4900 8500 5250
Wire Wire Line
	8500 5250 8450 5250
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CE633A
P 9200 5250
AR Path="/61CE633A" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CE633A" Ref="J34"  Part="1" 
F 0 "J34" H 9300 5600 50  0000 C CNN
F 1 "T24" H 9300 5700 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 9200 5250 50  0001 C CNN
F 3 "~" H 9200 5250 50  0001 C CNN
	1    9200 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 5150 9400 5150
Wire Wire Line
	9400 5550 9500 5550
$Comp
L power:GND #PWR?
U 1 1 61CE6342
P 9500 5550
AR Path="/61CE6342" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CE6342" Ref="#PWR087"  Part="1" 
F 0 "#PWR087" H 9500 5300 50  0001 C CNN
F 1 "GND" H 9505 5377 50  0000 C CNN
F 2 "" H 9500 5550 50  0001 C CNN
F 3 "" H 9500 5550 50  0001 C CNN
	1    9500 5550
	1    0    0    -1  
$EndComp
Text GLabel 9500 5150 2    50   Output ~ 0
Touch24
$Comp
L power:+3V3 #PWR079
U 1 1 61CE634C
P 9550 5350
F 0 "#PWR079" H 9550 5200 50  0001 C CNN
F 1 "+3V3" H 9700 5400 50  0000 C CNN
F 2 "" H 9550 5350 50  0001 C CNN
F 3 "" H 9550 5350 50  0001 C CNN
	1    9550 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 5350 9400 5350
$Comp
L power:+5V #PWR?
U 1 1 61CE6353
P 9450 4900
AR Path="/61CE6353" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CE6353" Ref="#PWR071"  Part="1" 
F 0 "#PWR071" H 9450 4750 50  0001 C CNN
F 1 "+5V" H 9465 5073 50  0000 C CNN
F 2 "" H 9450 4900 50  0001 C CNN
F 3 "" H 9450 4900 50  0001 C CNN
	1    9450 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 4900 9450 5250
Wire Wire Line
	9450 5250 9400 5250
Text Notes 10450 5050 0    50   ~ 0
End of LED string
Wire Wire Line
	10050 3000 2050 3000
Wire Wire Line
	2050 3000 2050 4000
Wire Wire Line
	2050 4000 2750 4000
Wire Wire Line
	10050 4500 2050 4500
Wire Wire Line
	2050 4500 2050 5450
Wire Wire Line
	2050 5450 2750 5450
Wire Wire Line
	10050 3600 10050 4500
Wire Wire Line
	10050 2100 10050 3000
Text Label 2050 2100 0    50   ~ 0
LEDm_LED1
Text Label 3000 2100 0    50   ~ 0
LED1_LED2
Text Label 3950 2100 0    50   ~ 0
LED2_LED3
Text Label 4900 2100 0    50   ~ 0
LED3_LED4
Text Label 5850 2100 0    50   ~ 0
LED4_LED5
Text Label 6800 2100 0    50   ~ 0
LED5_LED6
Text Label 7750 2100 0    50   ~ 0
LED6_LED7
Text Label 8700 2100 0    50   ~ 0
LED7_LED8
Text Label 9650 2100 0    50   ~ 0
LED8_LED9
Text Label 2950 3600 0    50   ~ 0
LED9_LED10
Text Label 3850 3600 0    50   ~ 0
LED10_LED11
Text Label 4800 3600 0    50   ~ 0
LED11_LED12
Text Label 5750 3600 0    50   ~ 0
LED12_LED13
Text Label 6700 3600 0    50   ~ 0
LED13_LED14
Text Label 7650 3600 0    50   ~ 0
LED14_LED15
Text Label 8600 3600 0    50   ~ 0
LED15_LED16
Text Label 9550 3600 0    50   ~ 0
LED16_LED17
Text Label 2900 5050 0    50   ~ 0
LED17_LED18
Text Label 3850 5050 0    50   ~ 0
LED18_LED19
Text Label 4800 5050 0    50   ~ 0
LED19_LED20
Text Label 5750 5050 0    50   ~ 0
LED20_LED21
Text Label 6700 5050 0    50   ~ 0
LED21_LED22
Text Label 7650 5050 0    50   ~ 0
LED22_LED23
Text Label 8600 5050 0    50   ~ 0
LED23_LED24
Wire Wire Line
	9400 5050 10050 5050
Wire Wire Line
	10050 5050 10050 5450
Wire Wire Line
	10050 5450 10350 5450
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CCFF29
P 10150 5250
AR Path="/61CCFF29" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CCFF29" Ref="J42"  Part="1" 
F 0 "J42" H 10250 5600 50  0000 C CNN
F 1 "T25" H 10250 5700 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 10150 5250 50  0001 C CNN
F 3 "~" H 10150 5250 50  0001 C CNN
	1    10150 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 5150 10350 5150
Wire Wire Line
	10350 5550 10450 5550
$Comp
L power:GND #PWR?
U 1 1 61CCFF31
P 10450 5550
AR Path="/61CCFF31" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CCFF31" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 10450 5300 50  0001 C CNN
F 1 "GND" H 10455 5377 50  0000 C CNN
F 2 "" H 10450 5550 50  0001 C CNN
F 3 "" H 10450 5550 50  0001 C CNN
	1    10450 5550
	1    0    0    -1  
$EndComp
Text GLabel 10450 5150 2    50   Output ~ 0
Touch25
$Comp
L power:+3V3 #PWR0107
U 1 1 61CCFF38
P 10500 5350
F 0 "#PWR0107" H 10500 5200 50  0001 C CNN
F 1 "+3V3" H 10650 5400 50  0000 C CNN
F 2 "" H 10500 5350 50  0001 C CNN
F 3 "" H 10500 5350 50  0001 C CNN
	1    10500 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 5350 10350 5350
$Comp
L power:+5V #PWR?
U 1 1 61CCFF3F
P 10400 4900
AR Path="/61CCFF3F" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CCFF3F" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 10400 4750 50  0001 C CNN
F 1 "+5V" H 10415 5073 50  0000 C CNN
F 2 "" H 10400 4900 50  0001 C CNN
F 3 "" H 10400 4900 50  0001 C CNN
	1    10400 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 4900 10400 5250
Wire Wire Line
	10400 5250 10350 5250
NoConn ~ 10350 5050
Text Label 9550 5050 0    50   ~ 0
LED24_LED25
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CA6CDC
P 4450 2300
AR Path="/61CA6CDC" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CA6CDC" Ref="J13"  Part="1" 
F 0 "J13" H 4550 2650 50  0000 C CNN
F 1 "T3" H 4550 2750 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 4450 2300 50  0001 C CNN
F 3 "~" H 4450 2300 50  0001 C CNN
	1    4450 2300
	1    0    0    -1  
$EndComp
$EndSCHEMATC
