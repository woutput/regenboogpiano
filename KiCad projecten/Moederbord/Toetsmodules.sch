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
P 2150 2350
AR Path="/61AF2AD5" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61AF2AD5" Ref="J13"  Part="1" 
F 0 "J13" H 2258 2731 50  0000 C CNN
F 1 "Conn_01x06_Male" H 2258 2640 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 2150 2350 50  0001 C CNN
F 3 "~" H 2150 2350 50  0001 C CNN
	1    2150 2350
	1    0    0    -1  
$EndComp
NoConn ~ 2350 2650
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61AF2ADC
P 3100 2350
AR Path="/61AF2ADC" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61AF2ADC" Ref="J14"  Part="1" 
F 0 "J14" H 3208 2731 50  0000 C CNN
F 1 "Conn_01x06_Male" H 3208 2640 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 3100 2350 50  0001 C CNN
F 3 "~" H 3100 2350 50  0001 C CNN
	1    3100 2350
	1    0    0    -1  
$EndComp
NoConn ~ 3300 2650
Text Label 2450 2450 0    50   ~ 0
TouchIO_01
Wire Wire Line
	2450 2450 2350 2450
Wire Wire Line
	2350 2550 2450 2550
$Comp
L power:GND #PWR?
U 1 1 61AF2AE6
P 2450 2550
AR Path="/61AF2AE6" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61AF2AE6" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 2450 2300 50  0001 C CNN
F 1 "GND" H 2455 2377 50  0000 C CNN
F 2 "" H 2450 2550 50  0001 C CNN
F 3 "" H 2450 2550 50  0001 C CNN
	1    2450 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61AF2AEC
P 2450 2150
AR Path="/61AF2AEC" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61AF2AEC" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 2450 2000 50  0001 C CNN
F 1 "+5V" H 2465 2323 50  0000 C CNN
F 2 "" H 2450 2150 50  0001 C CNN
F 3 "" H 2450 2150 50  0001 C CNN
	1    2450 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2150 2350 2150
Text Label 3400 2450 0    50   ~ 0
TouchIO_02
Wire Wire Line
	3400 2450 3300 2450
Wire Wire Line
	3300 2550 3400 2550
$Comp
L power:GND #PWR?
U 1 1 61AF2AF6
P 3400 2550
AR Path="/61AF2AF6" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61AF2AF6" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 3400 2300 50  0001 C CNN
F 1 "GND" H 3405 2377 50  0000 C CNN
F 2 "" H 3400 2550 50  0001 C CNN
F 3 "" H 3400 2550 50  0001 C CNN
	1    3400 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61AF2AFC
P 3400 2150
AR Path="/61AF2AFC" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61AF2AFC" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 3400 2000 50  0001 C CNN
F 1 "+5V" H 3415 2323 50  0000 C CNN
F 2 "" H 3400 2150 50  0001 C CNN
F 3 "" H 3400 2150 50  0001 C CNN
	1    3400 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2150 3300 2150
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61AF2B03
P 4050 2350
AR Path="/61AF2B03" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61AF2B03" Ref="J15"  Part="1" 
F 0 "J15" H 4158 2731 50  0000 C CNN
F 1 "Conn_01x06_Male" H 4158 2640 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 4050 2350 50  0001 C CNN
F 3 "~" H 4050 2350 50  0001 C CNN
	1    4050 2350
	1    0    0    -1  
$EndComp
NoConn ~ 4250 2650
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61AF2B0A
P 5000 2350
AR Path="/61AF2B0A" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61AF2B0A" Ref="J16"  Part="1" 
F 0 "J16" H 5108 2731 50  0000 C CNN
F 1 "Conn_01x06_Male" H 5108 2640 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 5000 2350 50  0001 C CNN
F 3 "~" H 5000 2350 50  0001 C CNN
	1    5000 2350
	1    0    0    -1  
$EndComp
NoConn ~ 5200 2650
Text Label 4350 2450 0    50   ~ 0
TouchIO_03
Wire Wire Line
	4350 2450 4250 2450
Wire Wire Line
	4250 2550 4350 2550
$Comp
L power:GND #PWR?
U 1 1 61AF2B14
P 4350 2550
AR Path="/61AF2B14" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61AF2B14" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 4350 2300 50  0001 C CNN
F 1 "GND" H 4355 2377 50  0000 C CNN
F 2 "" H 4350 2550 50  0001 C CNN
F 3 "" H 4350 2550 50  0001 C CNN
	1    4350 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61AF2B1A
P 4350 2150
AR Path="/61AF2B1A" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61AF2B1A" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 4350 2000 50  0001 C CNN
F 1 "+5V" H 4365 2323 50  0000 C CNN
F 2 "" H 4350 2150 50  0001 C CNN
F 3 "" H 4350 2150 50  0001 C CNN
	1    4350 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2150 4250 2150
Text Label 5300 2450 0    50   ~ 0
TouchIO_04
Wire Wire Line
	5300 2450 5200 2450
Wire Wire Line
	5200 2550 5300 2550
$Comp
L power:GND #PWR?
U 1 1 61AF2B24
P 5300 2550
AR Path="/61AF2B24" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61AF2B24" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 5300 2300 50  0001 C CNN
F 1 "GND" H 5305 2377 50  0000 C CNN
F 2 "" H 5300 2550 50  0001 C CNN
F 3 "" H 5300 2550 50  0001 C CNN
	1    5300 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61AF2B2A
P 5300 2150
AR Path="/61AF2B2A" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61AF2B2A" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 5300 2000 50  0001 C CNN
F 1 "+5V" H 5315 2323 50  0000 C CNN
F 2 "" H 5300 2150 50  0001 C CNN
F 3 "" H 5300 2150 50  0001 C CNN
	1    5300 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2150 5200 2150
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61AF81C5
P 5950 2350
AR Path="/61AF81C5" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61AF81C5" Ref="J17"  Part="1" 
F 0 "J17" H 6058 2731 50  0000 C CNN
F 1 "Conn_01x06_Male" H 6058 2640 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 5950 2350 50  0001 C CNN
F 3 "~" H 5950 2350 50  0001 C CNN
	1    5950 2350
	1    0    0    -1  
$EndComp
NoConn ~ 6150 2650
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61AF81CC
P 6900 2350
AR Path="/61AF81CC" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61AF81CC" Ref="J18"  Part="1" 
F 0 "J18" H 7008 2731 50  0000 C CNN
F 1 "Conn_01x06_Male" H 7008 2640 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 6900 2350 50  0001 C CNN
F 3 "~" H 6900 2350 50  0001 C CNN
	1    6900 2350
	1    0    0    -1  
$EndComp
NoConn ~ 7100 2650
Text Label 6250 2450 0    50   ~ 0
TouchIO_05
Wire Wire Line
	6250 2450 6150 2450
Wire Wire Line
	6150 2550 6250 2550
$Comp
L power:GND #PWR?
U 1 1 61AF81D6
P 6250 2550
AR Path="/61AF81D6" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61AF81D6" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 6250 2300 50  0001 C CNN
F 1 "GND" H 6255 2377 50  0000 C CNN
F 2 "" H 6250 2550 50  0001 C CNN
F 3 "" H 6250 2550 50  0001 C CNN
	1    6250 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61AF81DC
P 6250 2150
AR Path="/61AF81DC" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61AF81DC" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 6250 2000 50  0001 C CNN
F 1 "+5V" H 6265 2323 50  0000 C CNN
F 2 "" H 6250 2150 50  0001 C CNN
F 3 "" H 6250 2150 50  0001 C CNN
	1    6250 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 2150 6150 2150
Text Label 7200 2450 0    50   ~ 0
TouchIO_06
Wire Wire Line
	7200 2450 7100 2450
Wire Wire Line
	7100 2550 7200 2550
$Comp
L power:GND #PWR?
U 1 1 61AF81E6
P 7200 2550
AR Path="/61AF81E6" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61AF81E6" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 7200 2300 50  0001 C CNN
F 1 "GND" H 7205 2377 50  0000 C CNN
F 2 "" H 7200 2550 50  0001 C CNN
F 3 "" H 7200 2550 50  0001 C CNN
	1    7200 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61AF81EC
P 7200 2150
AR Path="/61AF81EC" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61AF81EC" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 7200 2000 50  0001 C CNN
F 1 "+5V" H 7215 2323 50  0000 C CNN
F 2 "" H 7200 2150 50  0001 C CNN
F 3 "" H 7200 2150 50  0001 C CNN
	1    7200 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 2150 7100 2150
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61AF81F3
P 7850 2350
AR Path="/61AF81F3" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61AF81F3" Ref="J19"  Part="1" 
F 0 "J19" H 7958 2731 50  0000 C CNN
F 1 "Conn_01x06_Male" H 7958 2640 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 7850 2350 50  0001 C CNN
F 3 "~" H 7850 2350 50  0001 C CNN
	1    7850 2350
	1    0    0    -1  
$EndComp
NoConn ~ 8050 2650
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61AF81FA
P 8800 2350
AR Path="/61AF81FA" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61AF81FA" Ref="J20"  Part="1" 
F 0 "J20" H 8908 2731 50  0000 C CNN
F 1 "Conn_01x06_Male" H 8908 2640 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 8800 2350 50  0001 C CNN
F 3 "~" H 8800 2350 50  0001 C CNN
	1    8800 2350
	1    0    0    -1  
$EndComp
NoConn ~ 9000 2650
Text Label 8150 2450 0    50   ~ 0
TouchIO_07
Wire Wire Line
	8150 2450 8050 2450
Wire Wire Line
	8050 2550 8150 2550
$Comp
L power:GND #PWR?
U 1 1 61AF8204
P 8150 2550
AR Path="/61AF8204" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61AF8204" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 8150 2300 50  0001 C CNN
F 1 "GND" H 8155 2377 50  0000 C CNN
F 2 "" H 8150 2550 50  0001 C CNN
F 3 "" H 8150 2550 50  0001 C CNN
	1    8150 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61AF820A
P 8150 2150
AR Path="/61AF820A" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61AF820A" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 8150 2000 50  0001 C CNN
F 1 "+5V" H 8165 2323 50  0000 C CNN
F 2 "" H 8150 2150 50  0001 C CNN
F 3 "" H 8150 2150 50  0001 C CNN
	1    8150 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 2150 8050 2150
Text Label 9100 2450 0    50   ~ 0
TouchIO_08
Wire Wire Line
	9100 2450 9000 2450
Wire Wire Line
	9000 2550 9100 2550
$Comp
L power:GND #PWR?
U 1 1 61AF8214
P 9100 2550
AR Path="/61AF8214" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61AF8214" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 9100 2300 50  0001 C CNN
F 1 "GND" H 9105 2377 50  0000 C CNN
F 2 "" H 9100 2550 50  0001 C CNN
F 3 "" H 9100 2550 50  0001 C CNN
	1    9100 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61AF821A
P 9100 2150
AR Path="/61AF821A" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61AF821A" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 9100 2000 50  0001 C CNN
F 1 "+5V" H 9115 2323 50  0000 C CNN
F 2 "" H 9100 2150 50  0001 C CNN
F 3 "" H 9100 2150 50  0001 C CNN
	1    9100 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 2150 9000 2150
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B0CBF5
P 2150 3750
AR Path="/61B0CBF5" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B0CBF5" Ref="J21"  Part="1" 
F 0 "J21" H 2258 4131 50  0000 C CNN
F 1 "Conn_01x06_Male" H 2258 4040 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 2150 3750 50  0001 C CNN
F 3 "~" H 2150 3750 50  0001 C CNN
	1    2150 3750
	1    0    0    -1  
$EndComp
NoConn ~ 2350 4050
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B0CBFC
P 3100 3750
AR Path="/61B0CBFC" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B0CBFC" Ref="J22"  Part="1" 
F 0 "J22" H 3208 4131 50  0000 C CNN
F 1 "Conn_01x06_Male" H 3208 4040 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 3100 3750 50  0001 C CNN
F 3 "~" H 3100 3750 50  0001 C CNN
	1    3100 3750
	1    0    0    -1  
$EndComp
NoConn ~ 3300 4050
Text Label 2450 3850 0    50   ~ 0
TouchIO_09
Wire Wire Line
	2450 3850 2350 3850
Wire Wire Line
	2350 3950 2450 3950
$Comp
L power:GND #PWR?
U 1 1 61B0CC06
P 2450 3950
AR Path="/61B0CC06" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B0CC06" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 2450 3700 50  0001 C CNN
F 1 "GND" H 2455 3777 50  0000 C CNN
F 2 "" H 2450 3950 50  0001 C CNN
F 3 "" H 2450 3950 50  0001 C CNN
	1    2450 3950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B0CC0C
P 2450 3550
AR Path="/61B0CC0C" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B0CC0C" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 2450 3400 50  0001 C CNN
F 1 "+5V" H 2465 3723 50  0000 C CNN
F 2 "" H 2450 3550 50  0001 C CNN
F 3 "" H 2450 3550 50  0001 C CNN
	1    2450 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3550 2350 3550
Text Label 3400 3850 0    50   ~ 0
TouchIO_10
Wire Wire Line
	3400 3850 3300 3850
Wire Wire Line
	3300 3950 3400 3950
$Comp
L power:GND #PWR?
U 1 1 61B0CC16
P 3400 3950
AR Path="/61B0CC16" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B0CC16" Ref="#PWR029"  Part="1" 
F 0 "#PWR029" H 3400 3700 50  0001 C CNN
F 1 "GND" H 3405 3777 50  0000 C CNN
F 2 "" H 3400 3950 50  0001 C CNN
F 3 "" H 3400 3950 50  0001 C CNN
	1    3400 3950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B0CC1C
P 3400 3550
AR Path="/61B0CC1C" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B0CC1C" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 3400 3400 50  0001 C CNN
F 1 "+5V" H 3415 3723 50  0000 C CNN
F 2 "" H 3400 3550 50  0001 C CNN
F 3 "" H 3400 3550 50  0001 C CNN
	1    3400 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3550 3300 3550
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B0CC23
P 4050 3750
AR Path="/61B0CC23" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B0CC23" Ref="J23"  Part="1" 
F 0 "J23" H 4158 4131 50  0000 C CNN
F 1 "Conn_01x06_Male" H 4158 4040 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 4050 3750 50  0001 C CNN
F 3 "~" H 4050 3750 50  0001 C CNN
	1    4050 3750
	1    0    0    -1  
$EndComp
NoConn ~ 4250 4050
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B0CC2A
P 5000 3750
AR Path="/61B0CC2A" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B0CC2A" Ref="J24"  Part="1" 
F 0 "J24" H 5108 4131 50  0000 C CNN
F 1 "Conn_01x06_Male" H 5108 4040 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 5000 3750 50  0001 C CNN
F 3 "~" H 5000 3750 50  0001 C CNN
	1    5000 3750
	1    0    0    -1  
$EndComp
NoConn ~ 5200 4050
Text Label 4350 3850 0    50   ~ 0
TouchIO_11
Wire Wire Line
	4350 3850 4250 3850
Wire Wire Line
	4250 3950 4350 3950
$Comp
L power:GND #PWR?
U 1 1 61B0CC34
P 4350 3950
AR Path="/61B0CC34" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B0CC34" Ref="#PWR030"  Part="1" 
F 0 "#PWR030" H 4350 3700 50  0001 C CNN
F 1 "GND" H 4355 3777 50  0000 C CNN
F 2 "" H 4350 3950 50  0001 C CNN
F 3 "" H 4350 3950 50  0001 C CNN
	1    4350 3950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B0CC3A
P 4350 3550
AR Path="/61B0CC3A" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B0CC3A" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 4350 3400 50  0001 C CNN
F 1 "+5V" H 4365 3723 50  0000 C CNN
F 2 "" H 4350 3550 50  0001 C CNN
F 3 "" H 4350 3550 50  0001 C CNN
	1    4350 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3550 4250 3550
Text Label 5300 3850 0    50   ~ 0
TouchIO_12
Wire Wire Line
	5300 3850 5200 3850
Wire Wire Line
	5200 3950 5300 3950
$Comp
L power:GND #PWR?
U 1 1 61B0CC44
P 5300 3950
AR Path="/61B0CC44" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B0CC44" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 5300 3700 50  0001 C CNN
F 1 "GND" H 5305 3777 50  0000 C CNN
F 2 "" H 5300 3950 50  0001 C CNN
F 3 "" H 5300 3950 50  0001 C CNN
	1    5300 3950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B0CC4A
P 5300 3550
AR Path="/61B0CC4A" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B0CC4A" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 5300 3400 50  0001 C CNN
F 1 "+5V" H 5315 3723 50  0000 C CNN
F 2 "" H 5300 3550 50  0001 C CNN
F 3 "" H 5300 3550 50  0001 C CNN
	1    5300 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3550 5200 3550
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B0CC51
P 5950 3750
AR Path="/61B0CC51" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B0CC51" Ref="J25"  Part="1" 
F 0 "J25" H 6058 4131 50  0000 C CNN
F 1 "Conn_01x06_Male" H 6058 4040 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 5950 3750 50  0001 C CNN
F 3 "~" H 5950 3750 50  0001 C CNN
	1    5950 3750
	1    0    0    -1  
$EndComp
NoConn ~ 6150 4050
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B0CC58
P 6900 3750
AR Path="/61B0CC58" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B0CC58" Ref="J26"  Part="1" 
F 0 "J26" H 7008 4131 50  0000 C CNN
F 1 "Conn_01x06_Male" H 7008 4040 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 6900 3750 50  0001 C CNN
F 3 "~" H 6900 3750 50  0001 C CNN
	1    6900 3750
	1    0    0    -1  
$EndComp
NoConn ~ 7100 4050
Text Label 6250 3850 0    50   ~ 0
TouchIO_13
Wire Wire Line
	6250 3850 6150 3850
Wire Wire Line
	6150 3950 6250 3950
$Comp
L power:GND #PWR?
U 1 1 61B0CC62
P 6250 3950
AR Path="/61B0CC62" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B0CC62" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 6250 3700 50  0001 C CNN
F 1 "GND" H 6255 3777 50  0000 C CNN
F 2 "" H 6250 3950 50  0001 C CNN
F 3 "" H 6250 3950 50  0001 C CNN
	1    6250 3950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B0CC68
P 6250 3550
AR Path="/61B0CC68" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B0CC68" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 6250 3400 50  0001 C CNN
F 1 "+5V" H 6265 3723 50  0000 C CNN
F 2 "" H 6250 3550 50  0001 C CNN
F 3 "" H 6250 3550 50  0001 C CNN
	1    6250 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3550 6150 3550
Text Label 7200 3850 0    50   ~ 0
TouchIO_14
Wire Wire Line
	7200 3850 7100 3850
Wire Wire Line
	7100 3950 7200 3950
$Comp
L power:GND #PWR?
U 1 1 61B0CC72
P 7200 3950
AR Path="/61B0CC72" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B0CC72" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 7200 3700 50  0001 C CNN
F 1 "GND" H 7205 3777 50  0000 C CNN
F 2 "" H 7200 3950 50  0001 C CNN
F 3 "" H 7200 3950 50  0001 C CNN
	1    7200 3950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B0CC78
P 7200 3550
AR Path="/61B0CC78" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B0CC78" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 7200 3400 50  0001 C CNN
F 1 "+5V" H 7215 3723 50  0000 C CNN
F 2 "" H 7200 3550 50  0001 C CNN
F 3 "" H 7200 3550 50  0001 C CNN
	1    7200 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3550 7100 3550
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B0CC7F
P 7850 3750
AR Path="/61B0CC7F" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B0CC7F" Ref="J27"  Part="1" 
F 0 "J27" H 7958 4131 50  0000 C CNN
F 1 "Conn_01x06_Male" H 7958 4040 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 7850 3750 50  0001 C CNN
F 3 "~" H 7850 3750 50  0001 C CNN
	1    7850 3750
	1    0    0    -1  
$EndComp
NoConn ~ 8050 4050
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B0CC86
P 8800 3750
AR Path="/61B0CC86" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B0CC86" Ref="J28"  Part="1" 
F 0 "J28" H 8908 4131 50  0000 C CNN
F 1 "Conn_01x06_Male" H 8908 4040 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 8800 3750 50  0001 C CNN
F 3 "~" H 8800 3750 50  0001 C CNN
	1    8800 3750
	1    0    0    -1  
$EndComp
NoConn ~ 9000 4050
Text Label 8150 3850 0    50   ~ 0
TouchIO_15
Wire Wire Line
	8150 3850 8050 3850
Wire Wire Line
	8050 3950 8150 3950
$Comp
L power:GND #PWR?
U 1 1 61B0CC90
P 8150 3950
AR Path="/61B0CC90" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B0CC90" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 8150 3700 50  0001 C CNN
F 1 "GND" H 8155 3777 50  0000 C CNN
F 2 "" H 8150 3950 50  0001 C CNN
F 3 "" H 8150 3950 50  0001 C CNN
	1    8150 3950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B0CC96
P 8150 3550
AR Path="/61B0CC96" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B0CC96" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 8150 3400 50  0001 C CNN
F 1 "+5V" H 8165 3723 50  0000 C CNN
F 2 "" H 8150 3550 50  0001 C CNN
F 3 "" H 8150 3550 50  0001 C CNN
	1    8150 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 3550 8050 3550
Text Label 9100 3850 0    50   ~ 0
TouchIO_16
Wire Wire Line
	9100 3850 9000 3850
Wire Wire Line
	9000 3950 9100 3950
$Comp
L power:GND #PWR?
U 1 1 61B0CCA0
P 9100 3950
AR Path="/61B0CCA0" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B0CCA0" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 9100 3700 50  0001 C CNN
F 1 "GND" H 9105 3777 50  0000 C CNN
F 2 "" H 9100 3950 50  0001 C CNN
F 3 "" H 9100 3950 50  0001 C CNN
	1    9100 3950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B0CCA6
P 9100 3550
AR Path="/61B0CCA6" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B0CCA6" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 9100 3400 50  0001 C CNN
F 1 "+5V" H 9115 3723 50  0000 C CNN
F 2 "" H 9100 3550 50  0001 C CNN
F 3 "" H 9100 3550 50  0001 C CNN
	1    9100 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 3550 9000 3550
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B1CCC5
P 2150 5150
AR Path="/61B1CCC5" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B1CCC5" Ref="J29"  Part="1" 
F 0 "J29" H 2258 5531 50  0000 C CNN
F 1 "Conn_01x06_Male" H 2258 5440 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 2150 5150 50  0001 C CNN
F 3 "~" H 2150 5150 50  0001 C CNN
	1    2150 5150
	1    0    0    -1  
$EndComp
NoConn ~ 2350 5450
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B1CCCC
P 3100 5150
AR Path="/61B1CCCC" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B1CCCC" Ref="J30"  Part="1" 
F 0 "J30" H 3208 5531 50  0000 C CNN
F 1 "Conn_01x06_Male" H 3208 5440 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 3100 5150 50  0001 C CNN
F 3 "~" H 3100 5150 50  0001 C CNN
	1    3100 5150
	1    0    0    -1  
$EndComp
NoConn ~ 3300 5450
Text Label 2450 5250 0    50   ~ 0
TouchIO_17
Wire Wire Line
	2450 5250 2350 5250
Wire Wire Line
	2350 5350 2450 5350
$Comp
L power:GND #PWR?
U 1 1 61B1CCD6
P 2450 5350
AR Path="/61B1CCD6" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B1CCD6" Ref="#PWR044"  Part="1" 
F 0 "#PWR044" H 2450 5100 50  0001 C CNN
F 1 "GND" H 2455 5177 50  0000 C CNN
F 2 "" H 2450 5350 50  0001 C CNN
F 3 "" H 2450 5350 50  0001 C CNN
	1    2450 5350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B1CCDC
P 2450 4950
AR Path="/61B1CCDC" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B1CCDC" Ref="#PWR036"  Part="1" 
F 0 "#PWR036" H 2450 4800 50  0001 C CNN
F 1 "+5V" H 2465 5123 50  0000 C CNN
F 2 "" H 2450 4950 50  0001 C CNN
F 3 "" H 2450 4950 50  0001 C CNN
	1    2450 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 4950 2350 4950
Text Label 3400 5250 0    50   ~ 0
TouchIO_18
Wire Wire Line
	3400 5250 3300 5250
Wire Wire Line
	3300 5350 3400 5350
$Comp
L power:GND #PWR?
U 1 1 61B1CCE6
P 3400 5350
AR Path="/61B1CCE6" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B1CCE6" Ref="#PWR045"  Part="1" 
F 0 "#PWR045" H 3400 5100 50  0001 C CNN
F 1 "GND" H 3405 5177 50  0000 C CNN
F 2 "" H 3400 5350 50  0001 C CNN
F 3 "" H 3400 5350 50  0001 C CNN
	1    3400 5350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B1CCEC
P 3400 4950
AR Path="/61B1CCEC" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B1CCEC" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 3400 4800 50  0001 C CNN
F 1 "+5V" H 3415 5123 50  0000 C CNN
F 2 "" H 3400 4950 50  0001 C CNN
F 3 "" H 3400 4950 50  0001 C CNN
	1    3400 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 4950 3300 4950
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B1CCF3
P 4050 5150
AR Path="/61B1CCF3" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B1CCF3" Ref="J31"  Part="1" 
F 0 "J31" H 4158 5531 50  0000 C CNN
F 1 "Conn_01x06_Male" H 4158 5440 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 4050 5150 50  0001 C CNN
F 3 "~" H 4050 5150 50  0001 C CNN
	1    4050 5150
	1    0    0    -1  
$EndComp
NoConn ~ 4250 5450
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B1CCFA
P 5000 5150
AR Path="/61B1CCFA" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B1CCFA" Ref="J32"  Part="1" 
F 0 "J32" H 5108 5531 50  0000 C CNN
F 1 "Conn_01x06_Male" H 5108 5440 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 5000 5150 50  0001 C CNN
F 3 "~" H 5000 5150 50  0001 C CNN
	1    5000 5150
	1    0    0    -1  
$EndComp
NoConn ~ 5200 5450
Text Label 4350 5250 0    50   ~ 0
TouchIO_19
Wire Wire Line
	4350 5250 4250 5250
Wire Wire Line
	4250 5350 4350 5350
$Comp
L power:GND #PWR?
U 1 1 61B1CD04
P 4350 5350
AR Path="/61B1CD04" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B1CD04" Ref="#PWR046"  Part="1" 
F 0 "#PWR046" H 4350 5100 50  0001 C CNN
F 1 "GND" H 4355 5177 50  0000 C CNN
F 2 "" H 4350 5350 50  0001 C CNN
F 3 "" H 4350 5350 50  0001 C CNN
	1    4350 5350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B1CD0A
P 4350 4950
AR Path="/61B1CD0A" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B1CD0A" Ref="#PWR038"  Part="1" 
F 0 "#PWR038" H 4350 4800 50  0001 C CNN
F 1 "+5V" H 4365 5123 50  0000 C CNN
F 2 "" H 4350 4950 50  0001 C CNN
F 3 "" H 4350 4950 50  0001 C CNN
	1    4350 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4950 4250 4950
Wire Wire Line
	5300 5250 5200 5250
Wire Wire Line
	5200 5350 5300 5350
$Comp
L power:GND #PWR?
U 1 1 61B1CD14
P 5300 5350
AR Path="/61B1CD14" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B1CD14" Ref="#PWR047"  Part="1" 
F 0 "#PWR047" H 5300 5100 50  0001 C CNN
F 1 "GND" H 5305 5177 50  0000 C CNN
F 2 "" H 5300 5350 50  0001 C CNN
F 3 "" H 5300 5350 50  0001 C CNN
	1    5300 5350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B1CD1A
P 5300 4950
AR Path="/61B1CD1A" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B1CD1A" Ref="#PWR039"  Part="1" 
F 0 "#PWR039" H 5300 4800 50  0001 C CNN
F 1 "+5V" H 5315 5123 50  0000 C CNN
F 2 "" H 5300 4950 50  0001 C CNN
F 3 "" H 5300 4950 50  0001 C CNN
	1    5300 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4950 5200 4950
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B1CD21
P 5950 5150
AR Path="/61B1CD21" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B1CD21" Ref="J33"  Part="1" 
F 0 "J33" H 6058 5531 50  0000 C CNN
F 1 "Conn_01x06_Male" H 6058 5440 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 5950 5150 50  0001 C CNN
F 3 "~" H 5950 5150 50  0001 C CNN
	1    5950 5150
	1    0    0    -1  
$EndComp
NoConn ~ 6150 5450
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B1CD28
P 6900 5150
AR Path="/61B1CD28" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B1CD28" Ref="J34"  Part="1" 
F 0 "J34" H 7008 5531 50  0000 C CNN
F 1 "Conn_01x06_Male" H 7008 5440 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 6900 5150 50  0001 C CNN
F 3 "~" H 6900 5150 50  0001 C CNN
	1    6900 5150
	1    0    0    -1  
$EndComp
NoConn ~ 7100 5450
Text Label 6250 5250 0    50   ~ 0
TouchIO_21
Wire Wire Line
	6250 5250 6150 5250
Wire Wire Line
	6150 5350 6250 5350
$Comp
L power:GND #PWR?
U 1 1 61B1CD32
P 6250 5350
AR Path="/61B1CD32" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B1CD32" Ref="#PWR048"  Part="1" 
F 0 "#PWR048" H 6250 5100 50  0001 C CNN
F 1 "GND" H 6255 5177 50  0000 C CNN
F 2 "" H 6250 5350 50  0001 C CNN
F 3 "" H 6250 5350 50  0001 C CNN
	1    6250 5350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B1CD38
P 6250 4950
AR Path="/61B1CD38" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B1CD38" Ref="#PWR040"  Part="1" 
F 0 "#PWR040" H 6250 4800 50  0001 C CNN
F 1 "+5V" H 6265 5123 50  0000 C CNN
F 2 "" H 6250 4950 50  0001 C CNN
F 3 "" H 6250 4950 50  0001 C CNN
	1    6250 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 4950 6150 4950
Text Label 7200 5250 0    50   ~ 0
TouchIO_22
Wire Wire Line
	7200 5250 7100 5250
Wire Wire Line
	7100 5350 7200 5350
$Comp
L power:GND #PWR?
U 1 1 61B1CD42
P 7200 5350
AR Path="/61B1CD42" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B1CD42" Ref="#PWR049"  Part="1" 
F 0 "#PWR049" H 7200 5100 50  0001 C CNN
F 1 "GND" H 7205 5177 50  0000 C CNN
F 2 "" H 7200 5350 50  0001 C CNN
F 3 "" H 7200 5350 50  0001 C CNN
	1    7200 5350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B1CD48
P 7200 4950
AR Path="/61B1CD48" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B1CD48" Ref="#PWR041"  Part="1" 
F 0 "#PWR041" H 7200 4800 50  0001 C CNN
F 1 "+5V" H 7215 5123 50  0000 C CNN
F 2 "" H 7200 4950 50  0001 C CNN
F 3 "" H 7200 4950 50  0001 C CNN
	1    7200 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4950 7100 4950
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B1CD4F
P 7850 5150
AR Path="/61B1CD4F" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B1CD4F" Ref="J35"  Part="1" 
F 0 "J35" H 7958 5531 50  0000 C CNN
F 1 "Conn_01x06_Male" H 7958 5440 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 7850 5150 50  0001 C CNN
F 3 "~" H 7850 5150 50  0001 C CNN
	1    7850 5150
	1    0    0    -1  
$EndComp
NoConn ~ 8050 5450
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B1CD56
P 8800 5150
AR Path="/61B1CD56" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B1CD56" Ref="J36"  Part="1" 
F 0 "J36" H 8908 5531 50  0000 C CNN
F 1 "Conn_01x06_Male" H 8908 5440 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 8800 5150 50  0001 C CNN
F 3 "~" H 8800 5150 50  0001 C CNN
	1    8800 5150
	1    0    0    -1  
$EndComp
NoConn ~ 9000 5450
Text Label 8150 5250 0    50   ~ 0
TouchIO_23
Wire Wire Line
	8150 5250 8050 5250
Wire Wire Line
	8050 5350 8150 5350
$Comp
L power:GND #PWR?
U 1 1 61B1CD60
P 8150 5350
AR Path="/61B1CD60" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B1CD60" Ref="#PWR050"  Part="1" 
F 0 "#PWR050" H 8150 5100 50  0001 C CNN
F 1 "GND" H 8155 5177 50  0000 C CNN
F 2 "" H 8150 5350 50  0001 C CNN
F 3 "" H 8150 5350 50  0001 C CNN
	1    8150 5350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B1CD66
P 8150 4950
AR Path="/61B1CD66" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B1CD66" Ref="#PWR042"  Part="1" 
F 0 "#PWR042" H 8150 4800 50  0001 C CNN
F 1 "+5V" H 8165 5123 50  0000 C CNN
F 2 "" H 8150 4950 50  0001 C CNN
F 3 "" H 8150 4950 50  0001 C CNN
	1    8150 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 4950 8050 4950
Text Label 9100 5250 0    50   ~ 0
TouchIO_24
Wire Wire Line
	9100 5250 9000 5250
Wire Wire Line
	9000 5350 9100 5350
$Comp
L power:GND #PWR?
U 1 1 61B1CD70
P 9100 5350
AR Path="/61B1CD70" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B1CD70" Ref="#PWR051"  Part="1" 
F 0 "#PWR051" H 9100 5100 50  0001 C CNN
F 1 "GND" H 9105 5177 50  0000 C CNN
F 2 "" H 9100 5350 50  0001 C CNN
F 3 "" H 9100 5350 50  0001 C CNN
	1    9100 5350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B1CD76
P 9100 4950
AR Path="/61B1CD76" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B1CD76" Ref="#PWR043"  Part="1" 
F 0 "#PWR043" H 9100 4800 50  0001 C CNN
F 1 "+5V" H 9115 5123 50  0000 C CNN
F 2 "" H 9100 4950 50  0001 C CNN
F 3 "" H 9100 4950 50  0001 C CNN
	1    9100 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 4950 9000 4950
Text Label 5300 5250 0    50   ~ 0
TouchIO_20
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B3C702
P 2150 6550
AR Path="/61B3C702" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B3C702" Ref="J37"  Part="1" 
F 0 "J37" H 2258 6931 50  0000 C CNN
F 1 "Conn_01x06_Male" H 2258 6840 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 2150 6550 50  0001 C CNN
F 3 "~" H 2150 6550 50  0001 C CNN
	1    2150 6550
	1    0    0    -1  
$EndComp
NoConn ~ 2350 6850
Text Label 2450 6650 0    50   ~ 0
TouchIO_menu
Wire Wire Line
	2450 6650 2350 6650
Wire Wire Line
	2350 6750 2450 6750
$Comp
L power:GND #PWR?
U 1 1 61B3C70C
P 2450 6750
AR Path="/61B3C70C" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B3C70C" Ref="#PWR053"  Part="1" 
F 0 "#PWR053" H 2450 6500 50  0001 C CNN
F 1 "GND" H 2455 6577 50  0000 C CNN
F 2 "" H 2450 6750 50  0001 C CNN
F 3 "" H 2450 6750 50  0001 C CNN
	1    2450 6750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B3C712
P 2450 6350
AR Path="/61B3C712" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B3C712" Ref="#PWR052"  Part="1" 
F 0 "#PWR052" H 2450 6200 50  0001 C CNN
F 1 "+5V" H 2465 6523 50  0000 C CNN
F 2 "" H 2450 6350 50  0001 C CNN
F 3 "" H 2450 6350 50  0001 C CNN
	1    2450 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 6350 2350 6350
Text Notes 900  2550 0    50   ~ 0
5v\nledin\nledout\ntouchout\ngnd\nnc
Wire Wire Line
	2350 2350 2750 2350
Wire Wire Line
	2750 2350 2750 2250
Wire Wire Line
	2750 2250 3300 2250
Wire Wire Line
	3300 2350 3700 2350
Wire Wire Line
	3700 2350 3700 2250
Wire Wire Line
	3700 2250 4250 2250
Wire Wire Line
	4250 2350 4650 2350
Wire Wire Line
	4650 2350 4650 2250
Wire Wire Line
	4650 2250 5200 2250
Wire Wire Line
	5200 2350 5600 2350
Wire Wire Line
	5600 2350 5600 2250
Wire Wire Line
	5600 2250 6150 2250
Wire Wire Line
	6150 2350 6550 2350
Wire Wire Line
	6550 2350 6550 2250
Wire Wire Line
	6550 2250 7100 2250
Wire Wire Line
	7100 2350 7500 2350
Wire Wire Line
	7500 2350 7500 2250
Wire Wire Line
	7500 2250 8050 2250
Wire Wire Line
	8050 2350 8450 2350
Wire Wire Line
	8450 2350 8450 2250
Wire Wire Line
	8450 2250 9000 2250
Wire Wire Line
	9000 2350 9700 2350
Wire Wire Line
	9700 2350 9700 3100
Wire Wire Line
	9700 3100 1600 3100
Wire Wire Line
	1600 3100 1600 3650
Wire Wire Line
	1600 3650 2350 3650
Wire Wire Line
	2350 3750 2750 3750
Wire Wire Line
	2750 3750 2750 3650
Wire Wire Line
	2750 3650 3300 3650
Wire Wire Line
	3300 3750 3700 3750
Wire Wire Line
	3700 3750 3700 3650
Wire Wire Line
	3700 3650 4250 3650
Wire Wire Line
	4250 3750 4650 3750
Wire Wire Line
	4650 3750 4650 3650
Wire Wire Line
	4650 3650 5200 3650
Wire Wire Line
	5200 3750 5600 3750
Wire Wire Line
	5600 3750 5600 3650
Wire Wire Line
	5600 3650 6150 3650
Wire Wire Line
	6150 3750 6550 3750
Wire Wire Line
	6550 3750 6550 3650
Wire Wire Line
	6550 3650 7100 3650
Wire Wire Line
	7100 3750 7500 3750
Wire Wire Line
	7500 3750 7500 3650
Wire Wire Line
	7500 3650 8050 3650
Wire Wire Line
	8050 3750 8450 3750
Wire Wire Line
	8450 3750 8450 3650
Wire Wire Line
	8450 3650 9000 3650
Wire Wire Line
	9000 3750 9700 3750
Wire Wire Line
	9700 3750 9700 4500
Wire Wire Line
	9700 4500 1600 4500
Wire Wire Line
	1600 4500 1600 5050
Wire Wire Line
	1600 5050 2350 5050
Wire Wire Line
	2350 5150 2750 5150
Wire Wire Line
	2750 5150 2750 5050
Wire Wire Line
	2750 5050 3300 5050
Wire Wire Line
	3300 5150 3700 5150
Wire Wire Line
	3700 5150 3700 5050
Wire Wire Line
	3700 5050 4250 5050
Wire Wire Line
	4250 5150 4650 5150
Wire Wire Line
	4650 5150 4650 5050
Wire Wire Line
	4650 5050 5200 5050
Wire Wire Line
	5200 5150 5600 5150
Wire Wire Line
	5600 5150 5600 5050
Wire Wire Line
	5600 5050 6150 5050
Wire Wire Line
	6150 5150 6550 5150
Wire Wire Line
	6550 5150 6550 5050
Wire Wire Line
	6550 5050 7100 5050
Wire Wire Line
	7100 5150 7500 5150
Wire Wire Line
	7500 5150 7500 5050
Wire Wire Line
	7500 5050 8050 5050
Wire Wire Line
	8050 5150 8450 5150
Wire Wire Line
	8450 5150 8450 5050
Wire Wire Line
	8450 5050 9000 5050
Wire Wire Line
	9000 5150 9700 5150
Wire Wire Line
	9700 5150 9700 5900
Wire Wire Line
	9700 5900 1600 5900
Wire Wire Line
	1600 5900 1600 6450
Wire Wire Line
	1600 6450 2350 6450
NoConn ~ 2350 6550
Text Notes 2450 6550 0    50   ~ 0
End of LED string
Text GLabel 2000 2250 0    50   Input ~ 0
Data_to_LED_rings
Wire Wire Line
	2350 2250 2000 2250
$EndSCHEMATC
