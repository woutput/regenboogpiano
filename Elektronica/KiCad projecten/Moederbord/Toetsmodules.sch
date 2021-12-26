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
P 2900 2400
AR Path="/61AF2AD5" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61AF2AD5" Ref="J11"  Part="1" 
F 0 "J11" H 3008 2781 50  0000 C CNN
F 1 "Conn_01x06_Male" H 3008 2690 50  0001 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 2900 2400 50  0001 C CNN
F 3 "~" H 2900 2400 50  0001 C CNN
	1    2900 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2300 3100 2300
Wire Wire Line
	3100 2700 3200 2700
$Comp
L power:GND #PWR?
U 1 1 61AF2AE6
P 3200 2700
AR Path="/61AF2AE6" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61AF2AE6" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 3200 2450 50  0001 C CNN
F 1 "GND" H 3205 2527 50  0000 C CNN
F 2 "" H 3200 2700 50  0001 C CNN
F 3 "" H 3200 2700 50  0001 C CNN
	1    3200 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B3C702
P 1950 2400
AR Path="/61B3C702" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B3C702" Ref="J10"  Part="1" 
F 0 "J10" H 2058 2781 50  0000 C CNN
F 1 "Conn_01x06_Male" H 2058 2690 50  0001 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 1950 2400 50  0001 C CNN
F 3 "~" H 1950 2400 50  0001 C CNN
	1    1950 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2300 2150 2300
Wire Wire Line
	2150 2700 2250 2700
$Comp
L power:GND #PWR?
U 1 1 61B3C70C
P 2250 2700
AR Path="/61B3C70C" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B3C70C" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 2250 2450 50  0001 C CNN
F 1 "GND" H 2255 2527 50  0000 C CNN
F 2 "" H 2250 2700 50  0001 C CNN
F 3 "" H 2250 2700 50  0001 C CNN
	1    2250 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B3C712
P 2200 2050
AR Path="/61B3C712" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B3C712" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 2200 1900 50  0001 C CNN
F 1 "+5V" H 2215 2223 50  0000 C CNN
F 2 "" H 2200 2050 50  0001 C CNN
F 3 "" H 2200 2050 50  0001 C CNN
	1    2200 2050
	1    0    0    -1  
$EndComp
Text Notes 7800 1550 0    63   ~ 0
1: LEDout (5 V)\n2: Touch_out (3.3 V)\n3: 5V\n4: 3V3\n5: LEDin (5 V)\n6: GND\n
Text GLabel 1750 2600 0    50   Input ~ 0
LED_rings_data
Text Notes 1850 1750 0    50   ~ 0
Menu is first in line\nto allow quick updates\nto menu button only\n(for example for\nrainbow animation)\nTo be tested to see if this really works,\notherwise: no harm done
Text GLabel 2250 2300 2    50   Output ~ 0
Touch_menu
Text GLabel 3200 2300 2    50   Output ~ 0
Touch1
Wire Wire Line
	1750 2600 2150 2600
$Comp
L power:+3V3 #PWR022
U 1 1 61BE6B33
P 2300 2500
F 0 "#PWR022" H 2300 2350 50  0001 C CNN
F 1 "+3V3" H 2450 2550 50  0000 C CNN
F 2 "" H 2300 2500 50  0001 C CNN
F 3 "" H 2300 2500 50  0001 C CNN
	1    2300 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2200 2800 2200
Wire Wire Line
	2800 2200 2800 2600
Wire Wire Line
	2800 2600 3100 2600
Wire Wire Line
	2200 2050 2200 2400
Wire Wire Line
	2200 2400 2150 2400
Wire Wire Line
	2300 2500 2150 2500
Wire Wire Line
	3100 2200 3750 2200
Wire Wire Line
	3750 2200 3750 2600
$Comp
L power:+3V3 #PWR023
U 1 1 61C9CD39
P 3250 2500
F 0 "#PWR023" H 3250 2350 50  0001 C CNN
F 1 "+3V3" H 3400 2550 50  0000 C CNN
F 2 "" H 3250 2500 50  0001 C CNN
F 3 "" H 3250 2500 50  0001 C CNN
	1    3250 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2500 3100 2500
$Comp
L power:+5V #PWR?
U 1 1 61C9D891
P 3150 2050
AR Path="/61C9D891" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61C9D891" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 3150 1900 50  0001 C CNN
F 1 "+5V" H 3165 2223 50  0000 C CNN
F 2 "" H 3150 2050 50  0001 C CNN
F 3 "" H 3150 2050 50  0001 C CNN
	1    3150 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2050 3150 2400
Wire Wire Line
	3150 2400 3100 2400
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CA5475
P 3850 2400
AR Path="/61CA5475" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CA5475" Ref="J12"  Part="1" 
F 0 "J12" H 3958 2781 50  0000 C CNN
F 1 "Conn_01x06_Male" H 3958 2690 50  0001 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 3850 2400 50  0001 C CNN
F 3 "~" H 3850 2400 50  0001 C CNN
	1    3850 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2300 4050 2300
Wire Wire Line
	4050 2700 4150 2700
$Comp
L power:GND #PWR?
U 1 1 61CA547D
P 4150 2700
AR Path="/61CA547D" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CA547D" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 4150 2450 50  0001 C CNN
F 1 "GND" H 4155 2527 50  0000 C CNN
F 2 "" H 4150 2700 50  0001 C CNN
F 3 "" H 4150 2700 50  0001 C CNN
	1    4150 2700
	1    0    0    -1  
$EndComp
Text GLabel 4150 2300 2    50   Output ~ 0
Touch2
Wire Wire Line
	4050 2200 4700 2200
Wire Wire Line
	4700 2200 4700 2600
$Comp
L power:+3V3 #PWR024
U 1 1 61CA5488
P 4200 2500
F 0 "#PWR024" H 4200 2350 50  0001 C CNN
F 1 "+3V3" H 4350 2550 50  0000 C CNN
F 2 "" H 4200 2500 50  0001 C CNN
F 3 "" H 4200 2500 50  0001 C CNN
	1    4200 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2500 4050 2500
$Comp
L power:+5V #PWR?
U 1 1 61CA548F
P 4100 2050
AR Path="/61CA548F" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CA548F" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 4100 1900 50  0001 C CNN
F 1 "+5V" H 4115 2223 50  0000 C CNN
F 2 "" H 4100 2050 50  0001 C CNN
F 3 "" H 4100 2050 50  0001 C CNN
	1    4100 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2050 4100 2400
Wire Wire Line
	4100 2400 4050 2400
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CA6CDC
P 4800 2400
AR Path="/61CA6CDC" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CA6CDC" Ref="J13"  Part="1" 
F 0 "J13" H 4908 2781 50  0000 C CNN
F 1 "Conn_01x06_Male" H 4908 2690 50  0001 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 4800 2400 50  0001 C CNN
F 3 "~" H 4800 2400 50  0001 C CNN
	1    4800 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2300 5000 2300
Wire Wire Line
	5000 2700 5100 2700
$Comp
L power:GND #PWR?
U 1 1 61CA6CE4
P 5100 2700
AR Path="/61CA6CE4" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CA6CE4" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 5100 2450 50  0001 C CNN
F 1 "GND" H 5105 2527 50  0000 C CNN
F 2 "" H 5100 2700 50  0001 C CNN
F 3 "" H 5100 2700 50  0001 C CNN
	1    5100 2700
	1    0    0    -1  
$EndComp
Text GLabel 5100 2300 2    50   Output ~ 0
Touch3
Wire Wire Line
	5000 2200 5650 2200
Wire Wire Line
	5650 2200 5650 2600
Wire Wire Line
	5650 2600 5950 2600
$Comp
L power:+3V3 #PWR025
U 1 1 61CA6CEF
P 5150 2500
F 0 "#PWR025" H 5150 2350 50  0001 C CNN
F 1 "+3V3" H 5300 2550 50  0000 C CNN
F 2 "" H 5150 2500 50  0001 C CNN
F 3 "" H 5150 2500 50  0001 C CNN
	1    5150 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2500 5000 2500
$Comp
L power:+5V #PWR?
U 1 1 61CA6CF6
P 5050 2050
AR Path="/61CA6CF6" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CA6CF6" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 5050 1900 50  0001 C CNN
F 1 "+5V" H 5065 2223 50  0000 C CNN
F 2 "" H 5050 2050 50  0001 C CNN
F 3 "" H 5050 2050 50  0001 C CNN
	1    5050 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2050 5050 2400
Wire Wire Line
	5050 2400 5000 2400
Wire Wire Line
	4700 2600 5000 2600
Wire Wire Line
	3750 2600 4050 2600
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CAB997
P 5750 2400
AR Path="/61CAB997" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CAB997" Ref="J14"  Part="1" 
F 0 "J14" H 5858 2781 50  0000 C CNN
F 1 "Conn_01x06_Male" H 5858 2690 50  0001 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 5750 2400 50  0001 C CNN
F 3 "~" H 5750 2400 50  0001 C CNN
	1    5750 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2300 5950 2300
Wire Wire Line
	5950 2700 6050 2700
$Comp
L power:GND #PWR?
U 1 1 61CAB99F
P 6050 2700
AR Path="/61CAB99F" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CAB99F" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 6050 2450 50  0001 C CNN
F 1 "GND" H 6055 2527 50  0000 C CNN
F 2 "" H 6050 2700 50  0001 C CNN
F 3 "" H 6050 2700 50  0001 C CNN
	1    6050 2700
	1    0    0    -1  
$EndComp
Text GLabel 6050 2300 2    50   Output ~ 0
Touch4
Wire Wire Line
	5950 2200 6600 2200
Wire Wire Line
	6600 2200 6600 2600
Wire Wire Line
	6600 2600 6900 2600
$Comp
L power:+3V3 #PWR026
U 1 1 61CAB9AA
P 6100 2500
F 0 "#PWR026" H 6100 2350 50  0001 C CNN
F 1 "+3V3" H 6250 2550 50  0000 C CNN
F 2 "" H 6100 2500 50  0001 C CNN
F 3 "" H 6100 2500 50  0001 C CNN
	1    6100 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2500 5950 2500
$Comp
L power:+5V #PWR?
U 1 1 61CAB9B1
P 6000 2050
AR Path="/61CAB9B1" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CAB9B1" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 6000 1900 50  0001 C CNN
F 1 "+5V" H 6015 2223 50  0000 C CNN
F 2 "" H 6000 2050 50  0001 C CNN
F 3 "" H 6000 2050 50  0001 C CNN
	1    6000 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 2050 6000 2400
Wire Wire Line
	6000 2400 5950 2400
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CAE520
P 6700 2400
AR Path="/61CAE520" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CAE520" Ref="J15"  Part="1" 
F 0 "J15" H 6808 2781 50  0000 C CNN
F 1 "Conn_01x06_Male" H 6808 2690 50  0001 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 6700 2400 50  0001 C CNN
F 3 "~" H 6700 2400 50  0001 C CNN
	1    6700 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 2300 6900 2300
Wire Wire Line
	6900 2700 7000 2700
$Comp
L power:GND #PWR?
U 1 1 61CAE528
P 7000 2700
AR Path="/61CAE528" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CAE528" Ref="#PWR036"  Part="1" 
F 0 "#PWR036" H 7000 2450 50  0001 C CNN
F 1 "GND" H 7005 2527 50  0000 C CNN
F 2 "" H 7000 2700 50  0001 C CNN
F 3 "" H 7000 2700 50  0001 C CNN
	1    7000 2700
	1    0    0    -1  
$EndComp
Text GLabel 7000 2300 2    50   Output ~ 0
Touch5
Wire Wire Line
	6900 2200 7550 2200
Wire Wire Line
	7550 2200 7550 2600
Wire Wire Line
	7550 2600 7850 2600
$Comp
L power:+3V3 #PWR027
U 1 1 61CAE533
P 7050 2500
F 0 "#PWR027" H 7050 2350 50  0001 C CNN
F 1 "+3V3" H 7200 2550 50  0000 C CNN
F 2 "" H 7050 2500 50  0001 C CNN
F 3 "" H 7050 2500 50  0001 C CNN
	1    7050 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2500 6900 2500
$Comp
L power:+5V #PWR?
U 1 1 61CAE53A
P 6950 2050
AR Path="/61CAE53A" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CAE53A" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 6950 1900 50  0001 C CNN
F 1 "+5V" H 6965 2223 50  0000 C CNN
F 2 "" H 6950 2050 50  0001 C CNN
F 3 "" H 6950 2050 50  0001 C CNN
	1    6950 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2050 6950 2400
Wire Wire Line
	6950 2400 6900 2400
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CB0C37
P 7650 2400
AR Path="/61CB0C37" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CB0C37" Ref="J16"  Part="1" 
F 0 "J16" H 7758 2781 50  0000 C CNN
F 1 "Conn_01x06_Male" H 7758 2690 50  0001 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 7650 2400 50  0001 C CNN
F 3 "~" H 7650 2400 50  0001 C CNN
	1    7650 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 2300 7850 2300
Wire Wire Line
	7850 2700 7950 2700
$Comp
L power:GND #PWR?
U 1 1 61CB0C3F
P 7950 2700
AR Path="/61CB0C3F" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CB0C3F" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 7950 2450 50  0001 C CNN
F 1 "GND" H 7955 2527 50  0000 C CNN
F 2 "" H 7950 2700 50  0001 C CNN
F 3 "" H 7950 2700 50  0001 C CNN
	1    7950 2700
	1    0    0    -1  
$EndComp
Text GLabel 7950 2300 2    50   Output ~ 0
Touch6
Wire Wire Line
	7850 2200 8500 2200
Wire Wire Line
	8500 2200 8500 2600
Wire Wire Line
	8500 2600 8800 2600
$Comp
L power:+3V3 #PWR028
U 1 1 61CB0C4A
P 8000 2500
F 0 "#PWR028" H 8000 2350 50  0001 C CNN
F 1 "+3V3" H 8150 2550 50  0000 C CNN
F 2 "" H 8000 2500 50  0001 C CNN
F 3 "" H 8000 2500 50  0001 C CNN
	1    8000 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 2500 7850 2500
$Comp
L power:+5V #PWR?
U 1 1 61CB0C51
P 7900 2050
AR Path="/61CB0C51" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CB0C51" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 7900 1900 50  0001 C CNN
F 1 "+5V" H 7915 2223 50  0000 C CNN
F 2 "" H 7900 2050 50  0001 C CNN
F 3 "" H 7900 2050 50  0001 C CNN
	1    7900 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2050 7900 2400
Wire Wire Line
	7900 2400 7850 2400
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CB37A4
P 8600 2400
AR Path="/61CB37A4" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CB37A4" Ref="J17"  Part="1" 
F 0 "J17" H 8708 2781 50  0000 C CNN
F 1 "Conn_01x06_Male" H 8708 2690 50  0001 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 8600 2400 50  0001 C CNN
F 3 "~" H 8600 2400 50  0001 C CNN
	1    8600 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 2300 8800 2300
Wire Wire Line
	8800 2700 8900 2700
$Comp
L power:GND #PWR?
U 1 1 61CB37AC
P 8900 2700
AR Path="/61CB37AC" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CB37AC" Ref="#PWR038"  Part="1" 
F 0 "#PWR038" H 8900 2450 50  0001 C CNN
F 1 "GND" H 8905 2527 50  0000 C CNN
F 2 "" H 8900 2700 50  0001 C CNN
F 3 "" H 8900 2700 50  0001 C CNN
	1    8900 2700
	1    0    0    -1  
$EndComp
Text GLabel 8900 2300 2    50   Output ~ 0
Touch7
Wire Wire Line
	8800 2200 9450 2200
Wire Wire Line
	9450 2200 9450 2600
Wire Wire Line
	9450 2600 9750 2600
$Comp
L power:+3V3 #PWR029
U 1 1 61CB37B7
P 8950 2500
F 0 "#PWR029" H 8950 2350 50  0001 C CNN
F 1 "+3V3" H 9100 2550 50  0000 C CNN
F 2 "" H 8950 2500 50  0001 C CNN
F 3 "" H 8950 2500 50  0001 C CNN
	1    8950 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 2500 8800 2500
$Comp
L power:+5V #PWR?
U 1 1 61CB37BE
P 8850 2050
AR Path="/61CB37BE" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CB37BE" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 8850 1900 50  0001 C CNN
F 1 "+5V" H 8865 2223 50  0000 C CNN
F 2 "" H 8850 2050 50  0001 C CNN
F 3 "" H 8850 2050 50  0001 C CNN
	1    8850 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 2050 8850 2400
Wire Wire Line
	8850 2400 8800 2400
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CB65DD
P 9550 2400
AR Path="/61CB65DD" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CB65DD" Ref="J18"  Part="1" 
F 0 "J18" H 9658 2781 50  0000 C CNN
F 1 "Conn_01x06_Male" H 9658 2690 50  0001 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 9550 2400 50  0001 C CNN
F 3 "~" H 9550 2400 50  0001 C CNN
	1    9550 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 2300 9750 2300
Wire Wire Line
	9750 2700 9850 2700
$Comp
L power:GND #PWR?
U 1 1 61CB65E5
P 9850 2700
AR Path="/61CB65E5" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CB65E5" Ref="#PWR039"  Part="1" 
F 0 "#PWR039" H 9850 2450 50  0001 C CNN
F 1 "GND" H 9855 2527 50  0000 C CNN
F 2 "" H 9850 2700 50  0001 C CNN
F 3 "" H 9850 2700 50  0001 C CNN
	1    9850 2700
	1    0    0    -1  
$EndComp
Text GLabel 9850 2300 2    50   Output ~ 0
Touch8
Wire Wire Line
	9750 2200 10400 2200
$Comp
L power:+3V3 #PWR030
U 1 1 61CB65F0
P 9900 2500
F 0 "#PWR030" H 9900 2350 50  0001 C CNN
F 1 "+3V3" H 10050 2550 50  0000 C CNN
F 2 "" H 9900 2500 50  0001 C CNN
F 3 "" H 9900 2500 50  0001 C CNN
	1    9900 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 2500 9750 2500
$Comp
L power:+5V #PWR?
U 1 1 61CB65F7
P 9800 2050
AR Path="/61CB65F7" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CB65F7" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 9800 1900 50  0001 C CNN
F 1 "+5V" H 9815 2223 50  0000 C CNN
F 2 "" H 9800 2050 50  0001 C CNN
F 3 "" H 9800 2050 50  0001 C CNN
	1    9800 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 2050 9800 2400
Wire Wire Line
	9800 2400 9750 2400
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CD7EC2
P 2900 3900
AR Path="/61CD7EC2" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CD7EC2" Ref="J19"  Part="1" 
F 0 "J19" H 3008 4281 50  0000 C CNN
F 1 "Conn_01x06_Male" H 3008 4190 50  0001 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 2900 3900 50  0001 C CNN
F 3 "~" H 2900 3900 50  0001 C CNN
	1    2900 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3800 3100 3800
Wire Wire Line
	3100 4200 3200 4200
$Comp
L power:GND #PWR?
U 1 1 61CD7ECA
P 3200 4200
AR Path="/61CD7ECA" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CD7ECA" Ref="#PWR056"  Part="1" 
F 0 "#PWR056" H 3200 3950 50  0001 C CNN
F 1 "GND" H 3205 4027 50  0000 C CNN
F 2 "" H 3200 4200 50  0001 C CNN
F 3 "" H 3200 4200 50  0001 C CNN
	1    3200 4200
	1    0    0    -1  
$EndComp
Text GLabel 3200 3800 2    50   Output ~ 0
Touch9
Wire Wire Line
	3100 3700 3750 3700
Wire Wire Line
	3750 3700 3750 4100
$Comp
L power:+3V3 #PWR048
U 1 1 61CD7ED4
P 3250 4000
F 0 "#PWR048" H 3250 3850 50  0001 C CNN
F 1 "+3V3" H 3400 4050 50  0000 C CNN
F 2 "" H 3250 4000 50  0001 C CNN
F 3 "" H 3250 4000 50  0001 C CNN
	1    3250 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 4000 3100 4000
$Comp
L power:+5V #PWR?
U 1 1 61CD7EDB
P 3150 3550
AR Path="/61CD7EDB" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CD7EDB" Ref="#PWR040"  Part="1" 
F 0 "#PWR040" H 3150 3400 50  0001 C CNN
F 1 "+5V" H 3165 3723 50  0000 C CNN
F 2 "" H 3150 3550 50  0001 C CNN
F 3 "" H 3150 3550 50  0001 C CNN
	1    3150 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 3550 3150 3900
Wire Wire Line
	3150 3900 3100 3900
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CD7EE3
P 3850 3900
AR Path="/61CD7EE3" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CD7EE3" Ref="J20"  Part="1" 
F 0 "J20" H 3958 4281 50  0000 C CNN
F 1 "Conn_01x06_Male" H 3958 4190 50  0001 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 3850 3900 50  0001 C CNN
F 3 "~" H 3850 3900 50  0001 C CNN
	1    3850 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3800 4050 3800
Wire Wire Line
	4050 4200 4150 4200
$Comp
L power:GND #PWR?
U 1 1 61CD7EEB
P 4150 4200
AR Path="/61CD7EEB" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CD7EEB" Ref="#PWR057"  Part="1" 
F 0 "#PWR057" H 4150 3950 50  0001 C CNN
F 1 "GND" H 4155 4027 50  0000 C CNN
F 2 "" H 4150 4200 50  0001 C CNN
F 3 "" H 4150 4200 50  0001 C CNN
	1    4150 4200
	1    0    0    -1  
$EndComp
Text GLabel 4150 3800 2    50   Output ~ 0
Touch10
Wire Wire Line
	4050 3700 4700 3700
Wire Wire Line
	4700 3700 4700 4100
$Comp
L power:+3V3 #PWR049
U 1 1 61CD7EF4
P 4200 4000
F 0 "#PWR049" H 4200 3850 50  0001 C CNN
F 1 "+3V3" H 4350 4050 50  0000 C CNN
F 2 "" H 4200 4000 50  0001 C CNN
F 3 "" H 4200 4000 50  0001 C CNN
	1    4200 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 4000 4050 4000
$Comp
L power:+5V #PWR?
U 1 1 61CD7EFB
P 4100 3550
AR Path="/61CD7EFB" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CD7EFB" Ref="#PWR041"  Part="1" 
F 0 "#PWR041" H 4100 3400 50  0001 C CNN
F 1 "+5V" H 4115 3723 50  0000 C CNN
F 2 "" H 4100 3550 50  0001 C CNN
F 3 "" H 4100 3550 50  0001 C CNN
	1    4100 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3550 4100 3900
Wire Wire Line
	4100 3900 4050 3900
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CD7F03
P 4800 3900
AR Path="/61CD7F03" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CD7F03" Ref="J21"  Part="1" 
F 0 "J21" H 4908 4281 50  0000 C CNN
F 1 "Conn_01x06_Male" H 4908 4190 50  0001 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 4800 3900 50  0001 C CNN
F 3 "~" H 4800 3900 50  0001 C CNN
	1    4800 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3800 5000 3800
Wire Wire Line
	5000 4200 5100 4200
$Comp
L power:GND #PWR?
U 1 1 61CD7F0B
P 5100 4200
AR Path="/61CD7F0B" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CD7F0B" Ref="#PWR058"  Part="1" 
F 0 "#PWR058" H 5100 3950 50  0001 C CNN
F 1 "GND" H 5105 4027 50  0000 C CNN
F 2 "" H 5100 4200 50  0001 C CNN
F 3 "" H 5100 4200 50  0001 C CNN
	1    5100 4200
	1    0    0    -1  
$EndComp
Text GLabel 5100 3800 2    50   Output ~ 0
Touch11
Wire Wire Line
	5000 3700 5650 3700
Wire Wire Line
	5650 3700 5650 4100
Wire Wire Line
	5650 4100 5950 4100
$Comp
L power:+3V3 #PWR050
U 1 1 61CD7F15
P 5150 4000
F 0 "#PWR050" H 5150 3850 50  0001 C CNN
F 1 "+3V3" H 5300 4050 50  0000 C CNN
F 2 "" H 5150 4000 50  0001 C CNN
F 3 "" H 5150 4000 50  0001 C CNN
	1    5150 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 4000 5000 4000
$Comp
L power:+5V #PWR?
U 1 1 61CD7F1C
P 5050 3550
AR Path="/61CD7F1C" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CD7F1C" Ref="#PWR042"  Part="1" 
F 0 "#PWR042" H 5050 3400 50  0001 C CNN
F 1 "+5V" H 5065 3723 50  0000 C CNN
F 2 "" H 5050 3550 50  0001 C CNN
F 3 "" H 5050 3550 50  0001 C CNN
	1    5050 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3550 5050 3900
Wire Wire Line
	5050 3900 5000 3900
Wire Wire Line
	4700 4100 5000 4100
Wire Wire Line
	3750 4100 4050 4100
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CD7F26
P 5750 3900
AR Path="/61CD7F26" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CD7F26" Ref="J22"  Part="1" 
F 0 "J22" H 5858 4281 50  0000 C CNN
F 1 "Conn_01x06_Male" H 5858 4190 50  0001 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 5750 3900 50  0001 C CNN
F 3 "~" H 5750 3900 50  0001 C CNN
	1    5750 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3800 5950 3800
Wire Wire Line
	5950 4200 6050 4200
$Comp
L power:GND #PWR?
U 1 1 61CD7F2E
P 6050 4200
AR Path="/61CD7F2E" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CD7F2E" Ref="#PWR059"  Part="1" 
F 0 "#PWR059" H 6050 3950 50  0001 C CNN
F 1 "GND" H 6055 4027 50  0000 C CNN
F 2 "" H 6050 4200 50  0001 C CNN
F 3 "" H 6050 4200 50  0001 C CNN
	1    6050 4200
	1    0    0    -1  
$EndComp
Text GLabel 6050 3800 2    50   Output ~ 0
Touch12
Wire Wire Line
	5950 3700 6600 3700
Wire Wire Line
	6600 3700 6600 4100
Wire Wire Line
	6600 4100 6900 4100
$Comp
L power:+3V3 #PWR051
U 1 1 61CD7F38
P 6100 4000
F 0 "#PWR051" H 6100 3850 50  0001 C CNN
F 1 "+3V3" H 6250 4050 50  0000 C CNN
F 2 "" H 6100 4000 50  0001 C CNN
F 3 "" H 6100 4000 50  0001 C CNN
	1    6100 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4000 5950 4000
$Comp
L power:+5V #PWR?
U 1 1 61CD7F3F
P 6000 3550
AR Path="/61CD7F3F" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CD7F3F" Ref="#PWR043"  Part="1" 
F 0 "#PWR043" H 6000 3400 50  0001 C CNN
F 1 "+5V" H 6015 3723 50  0000 C CNN
F 2 "" H 6000 3550 50  0001 C CNN
F 3 "" H 6000 3550 50  0001 C CNN
	1    6000 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3550 6000 3900
Wire Wire Line
	6000 3900 5950 3900
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CD7F47
P 6700 3900
AR Path="/61CD7F47" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CD7F47" Ref="J23"  Part="1" 
F 0 "J23" H 6808 4281 50  0000 C CNN
F 1 "Conn_01x06_Male" H 6808 4190 50  0001 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 6700 3900 50  0001 C CNN
F 3 "~" H 6700 3900 50  0001 C CNN
	1    6700 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3800 6900 3800
Wire Wire Line
	6900 4200 7000 4200
$Comp
L power:GND #PWR?
U 1 1 61CD7F4F
P 7000 4200
AR Path="/61CD7F4F" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CD7F4F" Ref="#PWR060"  Part="1" 
F 0 "#PWR060" H 7000 3950 50  0001 C CNN
F 1 "GND" H 7005 4027 50  0000 C CNN
F 2 "" H 7000 4200 50  0001 C CNN
F 3 "" H 7000 4200 50  0001 C CNN
	1    7000 4200
	1    0    0    -1  
$EndComp
Text GLabel 7000 3800 2    50   Output ~ 0
Touch13
Wire Wire Line
	6900 3700 7550 3700
Wire Wire Line
	7550 3700 7550 4100
Wire Wire Line
	7550 4100 7850 4100
$Comp
L power:+3V3 #PWR052
U 1 1 61CD7F59
P 7050 4000
F 0 "#PWR052" H 7050 3850 50  0001 C CNN
F 1 "+3V3" H 7200 4050 50  0000 C CNN
F 2 "" H 7050 4000 50  0001 C CNN
F 3 "" H 7050 4000 50  0001 C CNN
	1    7050 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 4000 6900 4000
$Comp
L power:+5V #PWR?
U 1 1 61CD7F60
P 6950 3550
AR Path="/61CD7F60" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CD7F60" Ref="#PWR044"  Part="1" 
F 0 "#PWR044" H 6950 3400 50  0001 C CNN
F 1 "+5V" H 6965 3723 50  0000 C CNN
F 2 "" H 6950 3550 50  0001 C CNN
F 3 "" H 6950 3550 50  0001 C CNN
	1    6950 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3550 6950 3900
Wire Wire Line
	6950 3900 6900 3900
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CD7F68
P 7650 3900
AR Path="/61CD7F68" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CD7F68" Ref="J24"  Part="1" 
F 0 "J24" H 7758 4281 50  0000 C CNN
F 1 "Conn_01x06_Male" H 7758 4190 50  0001 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 7650 3900 50  0001 C CNN
F 3 "~" H 7650 3900 50  0001 C CNN
	1    7650 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 3800 7850 3800
Wire Wire Line
	7850 4200 7950 4200
$Comp
L power:GND #PWR?
U 1 1 61CD7F70
P 7950 4200
AR Path="/61CD7F70" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CD7F70" Ref="#PWR061"  Part="1" 
F 0 "#PWR061" H 7950 3950 50  0001 C CNN
F 1 "GND" H 7955 4027 50  0000 C CNN
F 2 "" H 7950 4200 50  0001 C CNN
F 3 "" H 7950 4200 50  0001 C CNN
	1    7950 4200
	1    0    0    -1  
$EndComp
Text GLabel 7950 3800 2    50   Output ~ 0
Touch14
Wire Wire Line
	7850 3700 8500 3700
Wire Wire Line
	8500 3700 8500 4100
Wire Wire Line
	8500 4100 8800 4100
$Comp
L power:+3V3 #PWR053
U 1 1 61CD7F7A
P 8000 4000
F 0 "#PWR053" H 8000 3850 50  0001 C CNN
F 1 "+3V3" H 8150 4050 50  0000 C CNN
F 2 "" H 8000 4000 50  0001 C CNN
F 3 "" H 8000 4000 50  0001 C CNN
	1    8000 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 4000 7850 4000
$Comp
L power:+5V #PWR?
U 1 1 61CD7F81
P 7900 3550
AR Path="/61CD7F81" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CD7F81" Ref="#PWR045"  Part="1" 
F 0 "#PWR045" H 7900 3400 50  0001 C CNN
F 1 "+5V" H 7915 3723 50  0000 C CNN
F 2 "" H 7900 3550 50  0001 C CNN
F 3 "" H 7900 3550 50  0001 C CNN
	1    7900 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 3550 7900 3900
Wire Wire Line
	7900 3900 7850 3900
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CD7F89
P 8600 3900
AR Path="/61CD7F89" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CD7F89" Ref="J25"  Part="1" 
F 0 "J25" H 8708 4281 50  0000 C CNN
F 1 "Conn_01x06_Male" H 8708 4190 50  0001 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 8600 3900 50  0001 C CNN
F 3 "~" H 8600 3900 50  0001 C CNN
	1    8600 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 3800 8800 3800
Wire Wire Line
	8800 4200 8900 4200
$Comp
L power:GND #PWR?
U 1 1 61CD7F91
P 8900 4200
AR Path="/61CD7F91" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CD7F91" Ref="#PWR062"  Part="1" 
F 0 "#PWR062" H 8900 3950 50  0001 C CNN
F 1 "GND" H 8905 4027 50  0000 C CNN
F 2 "" H 8900 4200 50  0001 C CNN
F 3 "" H 8900 4200 50  0001 C CNN
	1    8900 4200
	1    0    0    -1  
$EndComp
Text GLabel 8900 3800 2    50   Output ~ 0
Touch15
Wire Wire Line
	8800 3700 9450 3700
Wire Wire Line
	9450 3700 9450 4100
Wire Wire Line
	9450 4100 9750 4100
$Comp
L power:+3V3 #PWR054
U 1 1 61CD7F9B
P 8950 4000
F 0 "#PWR054" H 8950 3850 50  0001 C CNN
F 1 "+3V3" H 9100 4050 50  0000 C CNN
F 2 "" H 8950 4000 50  0001 C CNN
F 3 "" H 8950 4000 50  0001 C CNN
	1    8950 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 4000 8800 4000
$Comp
L power:+5V #PWR?
U 1 1 61CD7FA2
P 8850 3550
AR Path="/61CD7FA2" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CD7FA2" Ref="#PWR046"  Part="1" 
F 0 "#PWR046" H 8850 3400 50  0001 C CNN
F 1 "+5V" H 8865 3723 50  0000 C CNN
F 2 "" H 8850 3550 50  0001 C CNN
F 3 "" H 8850 3550 50  0001 C CNN
	1    8850 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 3550 8850 3900
Wire Wire Line
	8850 3900 8800 3900
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CD7FAA
P 9550 3900
AR Path="/61CD7FAA" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CD7FAA" Ref="J26"  Part="1" 
F 0 "J26" H 9658 4281 50  0000 C CNN
F 1 "Conn_01x06_Male" H 9658 4190 50  0001 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 9550 3900 50  0001 C CNN
F 3 "~" H 9550 3900 50  0001 C CNN
	1    9550 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 3800 9750 3800
Wire Wire Line
	9750 4200 9850 4200
$Comp
L power:GND #PWR?
U 1 1 61CD7FB2
P 9850 4200
AR Path="/61CD7FB2" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CD7FB2" Ref="#PWR063"  Part="1" 
F 0 "#PWR063" H 9850 3950 50  0001 C CNN
F 1 "GND" H 9855 4027 50  0000 C CNN
F 2 "" H 9850 4200 50  0001 C CNN
F 3 "" H 9850 4200 50  0001 C CNN
	1    9850 4200
	1    0    0    -1  
$EndComp
Text GLabel 9850 3800 2    50   Output ~ 0
Touch16
Wire Wire Line
	9750 3700 10400 3700
$Comp
L power:+3V3 #PWR055
U 1 1 61CD7FBC
P 9900 4000
F 0 "#PWR055" H 9900 3850 50  0001 C CNN
F 1 "+3V3" H 10050 4050 50  0000 C CNN
F 2 "" H 9900 4000 50  0001 C CNN
F 3 "" H 9900 4000 50  0001 C CNN
	1    9900 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 4000 9750 4000
$Comp
L power:+5V #PWR?
U 1 1 61CD7FC3
P 9800 3550
AR Path="/61CD7FC3" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CD7FC3" Ref="#PWR047"  Part="1" 
F 0 "#PWR047" H 9800 3400 50  0001 C CNN
F 1 "+5V" H 9815 3723 50  0000 C CNN
F 2 "" H 9800 3550 50  0001 C CNN
F 3 "" H 9800 3550 50  0001 C CNN
	1    9800 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 3550 9800 3900
Wire Wire Line
	9800 3900 9750 3900
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CE6252
P 2900 5350
AR Path="/61CE6252" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CE6252" Ref="J27"  Part="1" 
F 0 "J27" H 3008 5731 50  0000 C CNN
F 1 "Conn_01x06_Male" H 3008 5640 50  0001 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 2900 5350 50  0001 C CNN
F 3 "~" H 2900 5350 50  0001 C CNN
	1    2900 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 5250 3100 5250
Wire Wire Line
	3100 5650 3200 5650
$Comp
L power:GND #PWR?
U 1 1 61CE625A
P 3200 5650
AR Path="/61CE625A" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CE625A" Ref="#PWR080"  Part="1" 
F 0 "#PWR080" H 3200 5400 50  0001 C CNN
F 1 "GND" H 3205 5477 50  0000 C CNN
F 2 "" H 3200 5650 50  0001 C CNN
F 3 "" H 3200 5650 50  0001 C CNN
	1    3200 5650
	1    0    0    -1  
$EndComp
Text GLabel 3200 5250 2    50   Output ~ 0
Touch17
Wire Wire Line
	3100 5150 3750 5150
Wire Wire Line
	3750 5150 3750 5550
$Comp
L power:+3V3 #PWR072
U 1 1 61CE6264
P 3250 5450
F 0 "#PWR072" H 3250 5300 50  0001 C CNN
F 1 "+3V3" H 3400 5500 50  0000 C CNN
F 2 "" H 3250 5450 50  0001 C CNN
F 3 "" H 3250 5450 50  0001 C CNN
	1    3250 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 5450 3100 5450
$Comp
L power:+5V #PWR?
U 1 1 61CE626B
P 3150 5000
AR Path="/61CE626B" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CE626B" Ref="#PWR064"  Part="1" 
F 0 "#PWR064" H 3150 4850 50  0001 C CNN
F 1 "+5V" H 3165 5173 50  0000 C CNN
F 2 "" H 3150 5000 50  0001 C CNN
F 3 "" H 3150 5000 50  0001 C CNN
	1    3150 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 5000 3150 5350
Wire Wire Line
	3150 5350 3100 5350
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CE6273
P 3850 5350
AR Path="/61CE6273" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CE6273" Ref="J28"  Part="1" 
F 0 "J28" H 3958 5731 50  0000 C CNN
F 1 "Conn_01x06_Male" H 3958 5640 50  0001 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 3850 5350 50  0001 C CNN
F 3 "~" H 3850 5350 50  0001 C CNN
	1    3850 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 5250 4050 5250
Wire Wire Line
	4050 5650 4150 5650
$Comp
L power:GND #PWR?
U 1 1 61CE627B
P 4150 5650
AR Path="/61CE627B" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CE627B" Ref="#PWR081"  Part="1" 
F 0 "#PWR081" H 4150 5400 50  0001 C CNN
F 1 "GND" H 4155 5477 50  0000 C CNN
F 2 "" H 4150 5650 50  0001 C CNN
F 3 "" H 4150 5650 50  0001 C CNN
	1    4150 5650
	1    0    0    -1  
$EndComp
Text GLabel 4150 5250 2    50   Output ~ 0
Touch18
Wire Wire Line
	4050 5150 4700 5150
Wire Wire Line
	4700 5150 4700 5550
$Comp
L power:+3V3 #PWR073
U 1 1 61CE6284
P 4200 5450
F 0 "#PWR073" H 4200 5300 50  0001 C CNN
F 1 "+3V3" H 4350 5500 50  0000 C CNN
F 2 "" H 4200 5450 50  0001 C CNN
F 3 "" H 4200 5450 50  0001 C CNN
	1    4200 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 5450 4050 5450
$Comp
L power:+5V #PWR?
U 1 1 61CE628B
P 4100 5000
AR Path="/61CE628B" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CE628B" Ref="#PWR065"  Part="1" 
F 0 "#PWR065" H 4100 4850 50  0001 C CNN
F 1 "+5V" H 4115 5173 50  0000 C CNN
F 2 "" H 4100 5000 50  0001 C CNN
F 3 "" H 4100 5000 50  0001 C CNN
	1    4100 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 5000 4100 5350
Wire Wire Line
	4100 5350 4050 5350
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CE6293
P 4800 5350
AR Path="/61CE6293" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CE6293" Ref="J29"  Part="1" 
F 0 "J29" H 4908 5731 50  0000 C CNN
F 1 "Conn_01x06_Male" H 4908 5640 50  0001 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 4800 5350 50  0001 C CNN
F 3 "~" H 4800 5350 50  0001 C CNN
	1    4800 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 5250 5000 5250
Wire Wire Line
	5000 5650 5100 5650
$Comp
L power:GND #PWR?
U 1 1 61CE629B
P 5100 5650
AR Path="/61CE629B" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CE629B" Ref="#PWR082"  Part="1" 
F 0 "#PWR082" H 5100 5400 50  0001 C CNN
F 1 "GND" H 5105 5477 50  0000 C CNN
F 2 "" H 5100 5650 50  0001 C CNN
F 3 "" H 5100 5650 50  0001 C CNN
	1    5100 5650
	1    0    0    -1  
$EndComp
Text GLabel 5100 5250 2    50   Output ~ 0
Touch19
Wire Wire Line
	5000 5150 5650 5150
Wire Wire Line
	5650 5150 5650 5550
Wire Wire Line
	5650 5550 5950 5550
$Comp
L power:+3V3 #PWR074
U 1 1 61CE62A5
P 5150 5450
F 0 "#PWR074" H 5150 5300 50  0001 C CNN
F 1 "+3V3" H 5300 5500 50  0000 C CNN
F 2 "" H 5150 5450 50  0001 C CNN
F 3 "" H 5150 5450 50  0001 C CNN
	1    5150 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 5450 5000 5450
$Comp
L power:+5V #PWR?
U 1 1 61CE62AC
P 5050 5000
AR Path="/61CE62AC" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CE62AC" Ref="#PWR066"  Part="1" 
F 0 "#PWR066" H 5050 4850 50  0001 C CNN
F 1 "+5V" H 5065 5173 50  0000 C CNN
F 2 "" H 5050 5000 50  0001 C CNN
F 3 "" H 5050 5000 50  0001 C CNN
	1    5050 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 5000 5050 5350
Wire Wire Line
	5050 5350 5000 5350
Wire Wire Line
	4700 5550 5000 5550
Wire Wire Line
	3750 5550 4050 5550
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CE62B6
P 5750 5350
AR Path="/61CE62B6" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CE62B6" Ref="J30"  Part="1" 
F 0 "J30" H 5858 5731 50  0000 C CNN
F 1 "Conn_01x06_Male" H 5858 5640 50  0001 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 5750 5350 50  0001 C CNN
F 3 "~" H 5750 5350 50  0001 C CNN
	1    5750 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 5250 5950 5250
Wire Wire Line
	5950 5650 6050 5650
$Comp
L power:GND #PWR?
U 1 1 61CE62BE
P 6050 5650
AR Path="/61CE62BE" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CE62BE" Ref="#PWR083"  Part="1" 
F 0 "#PWR083" H 6050 5400 50  0001 C CNN
F 1 "GND" H 6055 5477 50  0000 C CNN
F 2 "" H 6050 5650 50  0001 C CNN
F 3 "" H 6050 5650 50  0001 C CNN
	1    6050 5650
	1    0    0    -1  
$EndComp
Text GLabel 6050 5250 2    50   Output ~ 0
Touch20
Wire Wire Line
	5950 5150 6600 5150
Wire Wire Line
	6600 5150 6600 5550
Wire Wire Line
	6600 5550 6900 5550
$Comp
L power:+3V3 #PWR075
U 1 1 61CE62C8
P 6100 5450
F 0 "#PWR075" H 6100 5300 50  0001 C CNN
F 1 "+3V3" H 6250 5500 50  0000 C CNN
F 2 "" H 6100 5450 50  0001 C CNN
F 3 "" H 6100 5450 50  0001 C CNN
	1    6100 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 5450 5950 5450
$Comp
L power:+5V #PWR?
U 1 1 61CE62CF
P 6000 5000
AR Path="/61CE62CF" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CE62CF" Ref="#PWR067"  Part="1" 
F 0 "#PWR067" H 6000 4850 50  0001 C CNN
F 1 "+5V" H 6015 5173 50  0000 C CNN
F 2 "" H 6000 5000 50  0001 C CNN
F 3 "" H 6000 5000 50  0001 C CNN
	1    6000 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 5000 6000 5350
Wire Wire Line
	6000 5350 5950 5350
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CE62D7
P 6700 5350
AR Path="/61CE62D7" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CE62D7" Ref="J31"  Part="1" 
F 0 "J31" H 6808 5731 50  0000 C CNN
F 1 "Conn_01x06_Male" H 6808 5640 50  0001 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 6700 5350 50  0001 C CNN
F 3 "~" H 6700 5350 50  0001 C CNN
	1    6700 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 5250 6900 5250
Wire Wire Line
	6900 5650 7000 5650
$Comp
L power:GND #PWR?
U 1 1 61CE62DF
P 7000 5650
AR Path="/61CE62DF" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CE62DF" Ref="#PWR084"  Part="1" 
F 0 "#PWR084" H 7000 5400 50  0001 C CNN
F 1 "GND" H 7005 5477 50  0000 C CNN
F 2 "" H 7000 5650 50  0001 C CNN
F 3 "" H 7000 5650 50  0001 C CNN
	1    7000 5650
	1    0    0    -1  
$EndComp
Text GLabel 7000 5250 2    50   Output ~ 0
Touch21
Wire Wire Line
	6900 5150 7550 5150
Wire Wire Line
	7550 5150 7550 5550
Wire Wire Line
	7550 5550 7850 5550
$Comp
L power:+3V3 #PWR076
U 1 1 61CE62E9
P 7050 5450
F 0 "#PWR076" H 7050 5300 50  0001 C CNN
F 1 "+3V3" H 7200 5500 50  0000 C CNN
F 2 "" H 7050 5450 50  0001 C CNN
F 3 "" H 7050 5450 50  0001 C CNN
	1    7050 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 5450 6900 5450
$Comp
L power:+5V #PWR?
U 1 1 61CE62F0
P 6950 5000
AR Path="/61CE62F0" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CE62F0" Ref="#PWR068"  Part="1" 
F 0 "#PWR068" H 6950 4850 50  0001 C CNN
F 1 "+5V" H 6965 5173 50  0000 C CNN
F 2 "" H 6950 5000 50  0001 C CNN
F 3 "" H 6950 5000 50  0001 C CNN
	1    6950 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 5000 6950 5350
Wire Wire Line
	6950 5350 6900 5350
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CE62F8
P 7650 5350
AR Path="/61CE62F8" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CE62F8" Ref="J32"  Part="1" 
F 0 "J32" H 7758 5731 50  0000 C CNN
F 1 "Conn_01x06_Male" H 7758 5640 50  0001 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 7650 5350 50  0001 C CNN
F 3 "~" H 7650 5350 50  0001 C CNN
	1    7650 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 5250 7850 5250
Wire Wire Line
	7850 5650 7950 5650
$Comp
L power:GND #PWR?
U 1 1 61CE6300
P 7950 5650
AR Path="/61CE6300" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CE6300" Ref="#PWR085"  Part="1" 
F 0 "#PWR085" H 7950 5400 50  0001 C CNN
F 1 "GND" H 7955 5477 50  0000 C CNN
F 2 "" H 7950 5650 50  0001 C CNN
F 3 "" H 7950 5650 50  0001 C CNN
	1    7950 5650
	1    0    0    -1  
$EndComp
Text GLabel 7950 5250 2    50   Output ~ 0
Touch22
Wire Wire Line
	7850 5150 8500 5150
Wire Wire Line
	8500 5150 8500 5550
Wire Wire Line
	8500 5550 8800 5550
$Comp
L power:+3V3 #PWR077
U 1 1 61CE630A
P 8000 5450
F 0 "#PWR077" H 8000 5300 50  0001 C CNN
F 1 "+3V3" H 8150 5500 50  0000 C CNN
F 2 "" H 8000 5450 50  0001 C CNN
F 3 "" H 8000 5450 50  0001 C CNN
	1    8000 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 5450 7850 5450
$Comp
L power:+5V #PWR?
U 1 1 61CE6311
P 7900 5000
AR Path="/61CE6311" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CE6311" Ref="#PWR069"  Part="1" 
F 0 "#PWR069" H 7900 4850 50  0001 C CNN
F 1 "+5V" H 7915 5173 50  0000 C CNN
F 2 "" H 7900 5000 50  0001 C CNN
F 3 "" H 7900 5000 50  0001 C CNN
	1    7900 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 5000 7900 5350
Wire Wire Line
	7900 5350 7850 5350
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CE6319
P 8600 5350
AR Path="/61CE6319" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CE6319" Ref="J33"  Part="1" 
F 0 "J33" H 8708 5731 50  0000 C CNN
F 1 "Conn_01x06_Male" H 8708 5640 50  0001 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 8600 5350 50  0001 C CNN
F 3 "~" H 8600 5350 50  0001 C CNN
	1    8600 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 5250 8800 5250
Wire Wire Line
	8800 5650 8900 5650
$Comp
L power:GND #PWR?
U 1 1 61CE6321
P 8900 5650
AR Path="/61CE6321" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CE6321" Ref="#PWR086"  Part="1" 
F 0 "#PWR086" H 8900 5400 50  0001 C CNN
F 1 "GND" H 8905 5477 50  0000 C CNN
F 2 "" H 8900 5650 50  0001 C CNN
F 3 "" H 8900 5650 50  0001 C CNN
	1    8900 5650
	1    0    0    -1  
$EndComp
Text GLabel 8900 5250 2    50   Output ~ 0
Touch23
Wire Wire Line
	8800 5150 9450 5150
Wire Wire Line
	9450 5150 9450 5550
Wire Wire Line
	9450 5550 9750 5550
$Comp
L power:+3V3 #PWR078
U 1 1 61CE632B
P 8950 5450
F 0 "#PWR078" H 8950 5300 50  0001 C CNN
F 1 "+3V3" H 9100 5500 50  0000 C CNN
F 2 "" H 8950 5450 50  0001 C CNN
F 3 "" H 8950 5450 50  0001 C CNN
	1    8950 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 5450 8800 5450
$Comp
L power:+5V #PWR?
U 1 1 61CE6332
P 8850 5000
AR Path="/61CE6332" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CE6332" Ref="#PWR070"  Part="1" 
F 0 "#PWR070" H 8850 4850 50  0001 C CNN
F 1 "+5V" H 8865 5173 50  0000 C CNN
F 2 "" H 8850 5000 50  0001 C CNN
F 3 "" H 8850 5000 50  0001 C CNN
	1    8850 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 5000 8850 5350
Wire Wire Line
	8850 5350 8800 5350
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61CE633A
P 9550 5350
AR Path="/61CE633A" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61CE633A" Ref="J34"  Part="1" 
F 0 "J34" H 9658 5731 50  0000 C CNN
F 1 "Conn_01x06_Male" H 9658 5640 50  0001 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 9550 5350 50  0001 C CNN
F 3 "~" H 9550 5350 50  0001 C CNN
	1    9550 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 5250 9750 5250
Wire Wire Line
	9750 5650 9850 5650
$Comp
L power:GND #PWR?
U 1 1 61CE6342
P 9850 5650
AR Path="/61CE6342" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CE6342" Ref="#PWR087"  Part="1" 
F 0 "#PWR087" H 9850 5400 50  0001 C CNN
F 1 "GND" H 9855 5477 50  0000 C CNN
F 2 "" H 9850 5650 50  0001 C CNN
F 3 "" H 9850 5650 50  0001 C CNN
	1    9850 5650
	1    0    0    -1  
$EndComp
Text GLabel 9850 5250 2    50   Output ~ 0
Touch24
$Comp
L power:+3V3 #PWR079
U 1 1 61CE634C
P 9900 5450
F 0 "#PWR079" H 9900 5300 50  0001 C CNN
F 1 "+3V3" H 10050 5500 50  0000 C CNN
F 2 "" H 9900 5450 50  0001 C CNN
F 3 "" H 9900 5450 50  0001 C CNN
	1    9900 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 5450 9750 5450
$Comp
L power:+5V #PWR?
U 1 1 61CE6353
P 9800 5000
AR Path="/61CE6353" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61CE6353" Ref="#PWR071"  Part="1" 
F 0 "#PWR071" H 9800 4850 50  0001 C CNN
F 1 "+5V" H 9815 5173 50  0000 C CNN
F 2 "" H 9800 5000 50  0001 C CNN
F 3 "" H 9800 5000 50  0001 C CNN
	1    9800 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 5000 9800 5350
Wire Wire Line
	9800 5350 9750 5350
NoConn ~ 9750 5150
Text Notes 10000 5100 0    50   ~ 0
End of LED string
Wire Wire Line
	10400 3100 2400 3100
Wire Wire Line
	2400 3100 2400 4100
Wire Wire Line
	2400 4100 3100 4100
Wire Wire Line
	10400 4600 2400 4600
Wire Wire Line
	2400 4600 2400 5550
Wire Wire Line
	2400 5550 3100 5550
Wire Wire Line
	10400 3700 10400 4600
Wire Wire Line
	10400 2200 10400 3100
$EndSCHEMATC
