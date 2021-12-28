EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
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
L 74xx_IEEE:74166 U?
U 1 1 61C64694
P 4300 2700
AR Path="/61C64694" Ref="U?"  Part="1" 
AR Path="/61C61687/61C64694" Ref="U1"  Part="1" 
F 0 "U1" H 4400 3400 50  0000 C CNN
F 1 "74166#1" H 4150 3450 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 4300 2700 50  0001 C CNN
F 3 "" H 4300 2700 50  0001 C CNN
	1    4300 2700
	1    0    0    -1  
$EndComp
$Comp
L 74xx_IEEE:74166 U?
U 1 1 61C6469A
P 6200 3500
AR Path="/61C6469A" Ref="U?"  Part="1" 
AR Path="/61C61687/61C6469A" Ref="U2"  Part="1" 
F 0 "U2" H 6300 4200 50  0000 C CNN
F 1 "74166#2" H 6050 4250 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 6200 3500 50  0001 C CNN
F 3 "" H 6200 3500 50  0001 C CNN
	1    6200 3500
	1    0    0    -1  
$EndComp
$Comp
L 74xx_IEEE:74166 U?
U 1 1 61C646A0
P 8100 4300
AR Path="/61C646A0" Ref="U?"  Part="1" 
AR Path="/61C61687/61C646A0" Ref="U3"  Part="1" 
F 0 "U3" H 8200 5000 50  0000 C CNN
F 1 "74166#3" H 7950 5050 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 8100 4300 50  0001 C CNN
F 3 "" H 8100 4300 50  0001 C CNN
	1    8100 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 4400 7500 4400
Wire Wire Line
	7550 4500 7500 4500
Wire Wire Line
	7550 4600 7500 4600
Wire Wire Line
	7550 4700 7500 4700
Wire Wire Line
	7550 4800 7500 4800
Wire Wire Line
	7550 4900 7500 4900
Wire Wire Line
	7550 5000 7500 5000
Wire Wire Line
	7550 5100 7500 5100
Text GLabel 8700 5100 2    50   Output ~ 0
Shift_data
Wire Wire Line
	8650 5100 8700 5100
$Comp
L power:GND #PWR099
U 1 1 61BCA21C
P 7200 4050
F 0 "#PWR099" H 7200 3800 50  0001 C CNN
F 1 "GND" H 7205 3877 50  0000 C CNN
F 2 "" H 7200 4050 50  0001 C CNN
F 3 "" H 7200 4050 50  0001 C CNN
	1    7200 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4050 7200 4000
$Comp
L power:GND #PWR097
U 1 1 61BCB609
P 5300 3250
F 0 "#PWR097" H 5300 3000 50  0001 C CNN
F 1 "GND" H 5305 3077 50  0000 C CNN
F 2 "" H 5300 3250 50  0001 C CNN
F 3 "" H 5300 3250 50  0001 C CNN
	1    5300 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3250 5300 3200
Wire Wire Line
	5300 3200 5650 3200
$Comp
L power:GND #PWR093
U 1 1 61BCC001
P 3400 2450
F 0 "#PWR093" H 3400 2200 50  0001 C CNN
F 1 "GND" H 3405 2277 50  0000 C CNN
F 2 "" H 3400 2450 50  0001 C CNN
F 3 "" H 3400 2450 50  0001 C CNN
	1    3400 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2450 3400 2400
Wire Wire Line
	3400 2400 3650 2400
Text GLabel 3500 2150 1    50   Input ~ 0
Shift_CLK
Text GLabel 5400 2950 1    50   Input ~ 0
Shift_CLK
Text GLabel 7300 3750 1    50   Input ~ 0
Shift_CLK
$Comp
L power:+3V3 #PWR098
U 1 1 61BCF956
P 7550 3650
F 0 "#PWR098" H 7550 3500 50  0001 C CNN
F 1 "+3V3" H 7565 3823 50  0000 C CNN
F 2 "" H 7550 3650 50  0001 C CNN
F 3 "" H 7550 3650 50  0001 C CNN
	1    7550 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 3650 7550 3750
Wire Wire Line
	7550 3750 7650 3750
Wire Wire Line
	7200 4000 7550 4000
$Comp
L power:+3V3 #PWR094
U 1 1 61BD20D4
P 5650 2850
F 0 "#PWR094" H 5650 2700 50  0001 C CNN
F 1 "+3V3" H 5665 3023 50  0000 C CNN
F 2 "" H 5650 2850 50  0001 C CNN
F 3 "" H 5650 2850 50  0001 C CNN
	1    5650 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2850 5650 2950
Wire Wire Line
	5650 2950 5750 2950
$Comp
L power:+3V3 #PWR090
U 1 1 61BD329C
P 3750 2050
F 0 "#PWR090" H 3750 1900 50  0001 C CNN
F 1 "+3V3" H 3765 2223 50  0000 C CNN
F 2 "" H 3750 2050 50  0001 C CNN
F 3 "" H 3750 2050 50  0001 C CNN
	1    3750 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2050 3750 2150
Wire Wire Line
	3750 2150 3850 2150
Wire Wire Line
	3500 2150 3500 2500
Wire Wire Line
	5400 2950 5400 3300
Wire Wire Line
	7300 3750 7300 4100
Wire Wire Line
	7300 4100 7550 4100
Wire Wire Line
	5400 3300 5650 3300
Wire Wire Line
	3500 2500 3750 2500
Text GLabel 3600 2150 1    50   Input ~ 0
Shift_SH_LDn
Wire Wire Line
	3600 2150 3600 2250
Wire Wire Line
	3600 2250 3750 2250
Text GLabel 5500 2950 1    50   Input ~ 0
Shift_SH_LDn
Wire Wire Line
	5500 2950 5500 3050
Wire Wire Line
	5500 3050 5650 3050
Wire Wire Line
	7400 3750 7400 3850
Wire Wire Line
	7400 3850 7550 3850
Text GLabel 7400 3750 1    50   Input ~ 0
Shift_SH_LDn
Wire Wire Line
	4850 3500 5650 3500
Wire Wire Line
	6750 4300 7550 4300
Text GLabel 3150 2800 0    50   Input ~ 0
Touch1
Wire Wire Line
	3150 2800 3200 2800
Text GLabel 3150 2900 0    50   Input ~ 0
Touch2
Wire Wire Line
	3150 2900 3200 2900
Text GLabel 3150 3000 0    50   Input ~ 0
Touch3
Wire Wire Line
	3150 3000 3200 3000
Text GLabel 3150 3100 0    50   Input ~ 0
Touch4
Wire Wire Line
	3150 3100 3200 3100
Text GLabel 3150 3200 0    50   Input ~ 0
Touch5
Wire Wire Line
	3150 3200 3200 3200
Text GLabel 3150 3300 0    50   Input ~ 0
Touch6
Wire Wire Line
	3150 3300 3200 3300
Text GLabel 3150 3400 0    50   Input ~ 0
Touch7
Wire Wire Line
	3150 3400 3200 3400
Text GLabel 3150 3500 0    50   Input ~ 0
Touch8
Wire Wire Line
	3150 3500 3200 3500
Text GLabel 5050 3600 0    50   Input ~ 0
Touch9
Wire Wire Line
	5050 3600 5100 3600
Text GLabel 5050 3700 0    50   Input ~ 0
Touch10
Wire Wire Line
	5050 3700 5100 3700
Text GLabel 5050 3800 0    50   Input ~ 0
Touch11
Wire Wire Line
	5050 3800 5100 3800
Text GLabel 5050 3900 0    50   Input ~ 0
Touch12
Wire Wire Line
	5050 3900 5100 3900
Text GLabel 5050 4000 0    50   Input ~ 0
Touch13
Wire Wire Line
	5050 4000 5100 4000
Text GLabel 5050 4100 0    50   Input ~ 0
Touch14
Wire Wire Line
	5050 4100 5100 4100
Text GLabel 5050 4200 0    50   Input ~ 0
Touch15
Wire Wire Line
	5050 4200 5100 4200
Text GLabel 5050 4300 0    50   Input ~ 0
Touch16
Wire Wire Line
	5050 4300 5100 4300
Text GLabel 6950 4400 0    50   Input ~ 0
Touch17
Wire Wire Line
	6950 4400 7000 4400
Text GLabel 6950 4500 0    50   Input ~ 0
Touch18
Wire Wire Line
	6950 4500 7000 4500
Text GLabel 6950 4600 0    50   Input ~ 0
Touch19
Wire Wire Line
	6950 4600 7000 4600
Text GLabel 6950 4700 0    50   Input ~ 0
Touch20
Wire Wire Line
	6950 4700 7000 4700
Text GLabel 6950 4800 0    50   Input ~ 0
Touch21
Wire Wire Line
	6950 4800 7000 4800
Text GLabel 6950 4900 0    50   Input ~ 0
Touch22
Wire Wire Line
	6950 4900 7000 4900
Text GLabel 6950 5000 0    50   Input ~ 0
Touch23
Wire Wire Line
	6950 5000 7000 5000
Wire Wire Line
	6950 5100 7000 5100
Text GLabel 6950 5100 0    50   Input ~ 0
Touch24
Wire Wire Line
	3750 2700 3650 2700
Wire Wire Line
	3650 2700 3650 2400
Connection ~ 3650 2400
Wire Wire Line
	3650 2400 3750 2400
$Comp
L power:GND #PWR089
U 1 1 61D59D77
P 4100 1550
F 0 "#PWR089" H 4100 1300 50  0001 C CNN
F 1 "GND" H 4105 1377 50  0000 C CNN
F 2 "" H 4100 1550 50  0001 C CNN
F 3 "" H 4100 1550 50  0001 C CNN
	1    4100 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1550 4100 1500
Wire Wire Line
	4100 1500 4200 1500
$Comp
L power:+3V3 #PWR088
U 1 1 61D5D041
P 4700 1450
F 0 "#PWR088" H 4700 1300 50  0001 C CNN
F 1 "+3V3" H 4715 1623 50  0000 C CNN
F 2 "" H 4700 1450 50  0001 C CNN
F 3 "" H 4700 1450 50  0001 C CNN
	1    4700 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 61D69981
P 4400 1500
F 0 "C4" V 4148 1500 50  0000 C CNN
F 1 "100 uF" V 4239 1500 50  0000 C CNN
F 2 "Capacitors_SMD:C_1210_HandSoldering" H 4438 1350 50  0001 C CNN
F 3 "~" H 4400 1500 50  0001 C CNN
	1    4400 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 1750 4500 2050
Wire Wire Line
	4200 1500 4200 1750
Wire Wire Line
	4350 2050 4350 1750
Connection ~ 4200 1500
Wire Wire Line
	4200 1500 4250 1500
Wire Wire Line
	4200 1750 4350 1750
Wire Wire Line
	4650 1750 4650 1500
Wire Wire Line
	4550 1500 4650 1500
Wire Wire Line
	4500 1750 4650 1750
Wire Wire Line
	4650 1500 4700 1500
Wire Wire Line
	4700 1500 4700 1450
Connection ~ 4650 1500
$Comp
L power:+3V3 #PWR091
U 1 1 61D9C032
P 6600 2250
F 0 "#PWR091" H 6600 2100 50  0001 C CNN
F 1 "+3V3" H 6615 2423 50  0000 C CNN
F 2 "" H 6600 2250 50  0001 C CNN
F 3 "" H 6600 2250 50  0001 C CNN
	1    6600 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 61D9C038
P 6300 2300
F 0 "C5" V 6048 2300 50  0000 C CNN
F 1 "100 uF" V 6139 2300 50  0000 C CNN
F 2 "Capacitors_SMD:C_1210_HandSoldering" H 6338 2150 50  0001 C CNN
F 3 "~" H 6300 2300 50  0001 C CNN
	1    6300 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 2550 6400 2850
Wire Wire Line
	6100 2300 6100 2550
Wire Wire Line
	6250 2850 6250 2550
Wire Wire Line
	6100 2300 6150 2300
Wire Wire Line
	6550 2550 6550 2300
Wire Wire Line
	6450 2300 6550 2300
Wire Wire Line
	6400 2550 6550 2550
Wire Wire Line
	6550 2300 6600 2300
Wire Wire Line
	6600 2300 6600 2250
Connection ~ 6550 2300
$Comp
L power:GND #PWR096
U 1 1 61DA068A
P 7900 3150
F 0 "#PWR096" H 7900 2900 50  0001 C CNN
F 1 "GND" H 7905 2977 50  0000 C CNN
F 2 "" H 7900 3150 50  0001 C CNN
F 3 "" H 7900 3150 50  0001 C CNN
	1    7900 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 3150 7900 3100
Wire Wire Line
	7900 3100 8000 3100
$Comp
L power:+3V3 #PWR095
U 1 1 61DA0692
P 8500 3050
F 0 "#PWR095" H 8500 2900 50  0001 C CNN
F 1 "+3V3" H 8515 3223 50  0000 C CNN
F 2 "" H 8500 3050 50  0001 C CNN
F 3 "" H 8500 3050 50  0001 C CNN
	1    8500 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 61DA0698
P 8200 3100
F 0 "C6" V 7948 3100 50  0000 C CNN
F 1 "100 uF" V 8039 3100 50  0000 C CNN
F 2 "Capacitors_SMD:C_1210_HandSoldering" H 8238 2950 50  0001 C CNN
F 3 "~" H 8200 3100 50  0001 C CNN
	1    8200 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 3350 8300 3650
Wire Wire Line
	8000 3100 8000 3350
Wire Wire Line
	8150 3650 8150 3350
Connection ~ 8000 3100
Wire Wire Line
	8000 3100 8050 3100
Wire Wire Line
	8000 3350 8150 3350
Wire Wire Line
	8450 3350 8450 3100
Wire Wire Line
	8350 3100 8450 3100
Wire Wire Line
	8300 3350 8450 3350
Wire Wire Line
	8450 3100 8500 3100
Wire Wire Line
	8500 3100 8500 3050
Connection ~ 8450 3100
Text Notes 7850 2800 0    50   ~ 0
Place close to chip
Text Notes 5950 2000 0    50   ~ 0
Place close to chip
Text Notes 4050 1200 0    50   ~ 0
Place close to chip
Connection ~ 6100 2300
Wire Wire Line
	6100 2550 6250 2550
Wire Wire Line
	6000 2300 6100 2300
Wire Wire Line
	6000 2350 6000 2300
$Comp
L power:GND #PWR092
U 1 1 61D9C02A
P 6000 2350
F 0 "#PWR092" H 6000 2100 50  0001 C CNN
F 1 "GND" H 6005 2177 50  0000 C CNN
F 2 "" H 6000 2350 50  0001 C CNN
F 3 "" H 6000 2350 50  0001 C CNN
	1    6000 2350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J37
U 1 1 61C67DB1
P 7200 4700
F 0 "J37" H 7250 4200 50  0000 C CNN
F 1 "Shift#3" H 7250 4100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x08_Pitch2.54mm" H 7200 4700 50  0001 C CNN
F 3 "~" H 7200 4700 50  0001 C CNN
	1    7200 4700
	1    0    0    -1  
$EndComp
Text Label 7500 4400 0    50   ~ 0
T17
Text Label 7500 4500 0    50   ~ 0
T18
Text Label 7500 4600 0    50   ~ 0
T19
Text Label 7500 4700 0    50   ~ 0
T20
Text Label 7500 4800 0    50   ~ 0
T21
Text Label 7500 4900 0    50   ~ 0
T22
Text Label 7500 5000 0    50   ~ 0
T23
Text Label 7500 5100 0    50   ~ 0
T24
Wire Wire Line
	3750 2800 3700 2800
Wire Wire Line
	3750 2900 3700 2900
Wire Wire Line
	3750 3000 3700 3000
Wire Wire Line
	3750 3100 3700 3100
Wire Wire Line
	3750 3200 3700 3200
Wire Wire Line
	3750 3300 3700 3300
Wire Wire Line
	3750 3400 3700 3400
Wire Wire Line
	3750 3500 3700 3500
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J35
U 1 1 61CA8A1E
P 3400 3100
F 0 "J35" H 3450 2600 50  0000 C CNN
F 1 "Shift#1" H 3450 2500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x08_Pitch2.54mm" H 3400 3100 50  0001 C CNN
F 3 "~" H 3400 3100 50  0001 C CNN
	1    3400 3100
	1    0    0    -1  
$EndComp
Text Label 3700 2800 0    50   ~ 0
T1
Text Label 3700 2900 0    50   ~ 0
T2
Text Label 3700 3000 0    50   ~ 0
T3
Text Label 3700 3100 0    50   ~ 0
T4
Text Label 3700 3200 0    50   ~ 0
T5
Text Label 3700 3300 0    50   ~ 0
T6
Text Label 3700 3400 0    50   ~ 0
T7
Text Label 3700 3500 0    50   ~ 0
T8
Wire Wire Line
	5650 3600 5600 3600
Wire Wire Line
	5650 3700 5600 3700
Wire Wire Line
	5650 3800 5600 3800
Wire Wire Line
	5650 3900 5600 3900
Wire Wire Line
	5650 4000 5600 4000
Wire Wire Line
	5650 4100 5600 4100
Wire Wire Line
	5650 4200 5600 4200
Wire Wire Line
	5650 4300 5600 4300
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J36
U 1 1 61CADBD9
P 5300 3900
F 0 "J36" H 5350 3400 50  0000 C CNN
F 1 "Shift#2" H 5350 3300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x08_Pitch2.54mm" H 5300 3900 50  0001 C CNN
F 3 "~" H 5300 3900 50  0001 C CNN
	1    5300 3900
	1    0    0    -1  
$EndComp
Text Label 5600 3600 0    50   ~ 0
T9
Text Label 5600 3700 0    50   ~ 0
T10
Text Label 5600 3800 0    50   ~ 0
T11
Text Label 5600 3900 0    50   ~ 0
T12
Text Label 5600 4000 0    50   ~ 0
T13
Text Label 5600 4100 0    50   ~ 0
T14
Text Label 5600 4200 0    50   ~ 0
T15
Text Label 5600 4300 0    50   ~ 0
T16
Text Label 4850 3500 0    50   ~ 0
s1_s2
Text Label 6750 4300 0    50   ~ 0
s2_s3
$EndSCHEMATC
