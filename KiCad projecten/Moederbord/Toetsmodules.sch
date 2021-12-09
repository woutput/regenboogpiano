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
P 3250 1950
AR Path="/61AF2AD5" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61AF2AD5" Ref="J6"  Part="1" 
F 0 "J6" H 3358 2331 50  0000 C CNN
F 1 "Conn_01x06_Male" H 3358 2240 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 3250 1950 50  0001 C CNN
F 3 "~" H 3250 1950 50  0001 C CNN
	1    3250 1950
	1    0    0    -1  
$EndComp
NoConn ~ 3450 2250
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61AF2ADC
P 4200 1950
AR Path="/61AF2ADC" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61AF2ADC" Ref="J7"  Part="1" 
F 0 "J7" H 4308 2331 50  0000 C CNN
F 1 "Conn_01x06_Male" H 4308 2240 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 4200 1950 50  0001 C CNN
F 3 "~" H 4200 1950 50  0001 C CNN
	1    4200 1950
	1    0    0    -1  
$EndComp
NoConn ~ 4400 2250
Text Label 3550 2050 0    50   ~ 0
TouchIO_01
Wire Wire Line
	3550 2050 3450 2050
Wire Wire Line
	3450 2150 3550 2150
$Comp
L power:GND #PWR?
U 1 1 61AF2AE6
P 3550 2150
AR Path="/61AF2AE6" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61AF2AE6" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 3550 1900 50  0001 C CNN
F 1 "GND" H 3555 1977 50  0000 C CNN
F 2 "" H 3550 2150 50  0001 C CNN
F 3 "" H 3550 2150 50  0001 C CNN
	1    3550 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61AF2AEC
P 3550 1750
AR Path="/61AF2AEC" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61AF2AEC" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 3550 1600 50  0001 C CNN
F 1 "+5V" H 3565 1923 50  0000 C CNN
F 2 "" H 3550 1750 50  0001 C CNN
F 3 "" H 3550 1750 50  0001 C CNN
	1    3550 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1750 3450 1750
Text Label 4500 2050 0    50   ~ 0
TouchIO_02
Wire Wire Line
	4500 2050 4400 2050
Wire Wire Line
	4400 2150 4500 2150
$Comp
L power:GND #PWR?
U 1 1 61AF2AF6
P 4500 2150
AR Path="/61AF2AF6" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61AF2AF6" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 4500 1900 50  0001 C CNN
F 1 "GND" H 4505 1977 50  0000 C CNN
F 2 "" H 4500 2150 50  0001 C CNN
F 3 "" H 4500 2150 50  0001 C CNN
	1    4500 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61AF2AFC
P 4500 1750
AR Path="/61AF2AFC" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61AF2AFC" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 4500 1600 50  0001 C CNN
F 1 "+5V" H 4515 1923 50  0000 C CNN
F 2 "" H 4500 1750 50  0001 C CNN
F 3 "" H 4500 1750 50  0001 C CNN
	1    4500 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1750 4400 1750
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61AF2B03
P 5150 1950
AR Path="/61AF2B03" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61AF2B03" Ref="J8"  Part="1" 
F 0 "J8" H 5258 2331 50  0000 C CNN
F 1 "Conn_01x06_Male" H 5258 2240 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 5150 1950 50  0001 C CNN
F 3 "~" H 5150 1950 50  0001 C CNN
	1    5150 1950
	1    0    0    -1  
$EndComp
NoConn ~ 5350 2250
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61AF2B0A
P 6100 1950
AR Path="/61AF2B0A" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61AF2B0A" Ref="J9"  Part="1" 
F 0 "J9" H 6208 2331 50  0000 C CNN
F 1 "Conn_01x06_Male" H 6208 2240 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 6100 1950 50  0001 C CNN
F 3 "~" H 6100 1950 50  0001 C CNN
	1    6100 1950
	1    0    0    -1  
$EndComp
NoConn ~ 6300 2250
Text Label 5450 2050 0    50   ~ 0
TouchIO_03
Wire Wire Line
	5450 2050 5350 2050
Wire Wire Line
	5350 2150 5450 2150
$Comp
L power:GND #PWR?
U 1 1 61AF2B14
P 5450 2150
AR Path="/61AF2B14" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61AF2B14" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 5450 1900 50  0001 C CNN
F 1 "GND" H 5455 1977 50  0000 C CNN
F 2 "" H 5450 2150 50  0001 C CNN
F 3 "" H 5450 2150 50  0001 C CNN
	1    5450 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61AF2B1A
P 5450 1750
AR Path="/61AF2B1A" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61AF2B1A" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 5450 1600 50  0001 C CNN
F 1 "+5V" H 5465 1923 50  0000 C CNN
F 2 "" H 5450 1750 50  0001 C CNN
F 3 "" H 5450 1750 50  0001 C CNN
	1    5450 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1750 5350 1750
Text Label 6400 2050 0    50   ~ 0
TouchIO_04
Wire Wire Line
	6400 2050 6300 2050
Wire Wire Line
	6300 2150 6400 2150
$Comp
L power:GND #PWR?
U 1 1 61AF2B24
P 6400 2150
AR Path="/61AF2B24" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61AF2B24" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 6400 1900 50  0001 C CNN
F 1 "GND" H 6405 1977 50  0000 C CNN
F 2 "" H 6400 2150 50  0001 C CNN
F 3 "" H 6400 2150 50  0001 C CNN
	1    6400 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61AF2B2A
P 6400 1750
AR Path="/61AF2B2A" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61AF2B2A" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 6400 1600 50  0001 C CNN
F 1 "+5V" H 6415 1923 50  0000 C CNN
F 2 "" H 6400 1750 50  0001 C CNN
F 3 "" H 6400 1750 50  0001 C CNN
	1    6400 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1750 6300 1750
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61AF81C5
P 7050 1950
AR Path="/61AF81C5" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61AF81C5" Ref="J10"  Part="1" 
F 0 "J10" H 7158 2331 50  0000 C CNN
F 1 "Conn_01x06_Male" H 7158 2240 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 7050 1950 50  0001 C CNN
F 3 "~" H 7050 1950 50  0001 C CNN
	1    7050 1950
	1    0    0    -1  
$EndComp
NoConn ~ 7250 2250
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61AF81CC
P 8000 1950
AR Path="/61AF81CC" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61AF81CC" Ref="J11"  Part="1" 
F 0 "J11" H 8108 2331 50  0000 C CNN
F 1 "Conn_01x06_Male" H 8108 2240 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 8000 1950 50  0001 C CNN
F 3 "~" H 8000 1950 50  0001 C CNN
	1    8000 1950
	1    0    0    -1  
$EndComp
NoConn ~ 8200 2250
Text Label 7350 2050 0    50   ~ 0
TouchIO_05
Wire Wire Line
	7350 2050 7250 2050
Wire Wire Line
	7250 2150 7350 2150
$Comp
L power:GND #PWR?
U 1 1 61AF81D6
P 7350 2150
AR Path="/61AF81D6" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61AF81D6" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 7350 1900 50  0001 C CNN
F 1 "GND" H 7355 1977 50  0000 C CNN
F 2 "" H 7350 2150 50  0001 C CNN
F 3 "" H 7350 2150 50  0001 C CNN
	1    7350 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61AF81DC
P 7350 1750
AR Path="/61AF81DC" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61AF81DC" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 7350 1600 50  0001 C CNN
F 1 "+5V" H 7365 1923 50  0000 C CNN
F 2 "" H 7350 1750 50  0001 C CNN
F 3 "" H 7350 1750 50  0001 C CNN
	1    7350 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1750 7250 1750
Text Label 8300 2050 0    50   ~ 0
TouchIO_06
Wire Wire Line
	8300 2050 8200 2050
Wire Wire Line
	8200 2150 8300 2150
$Comp
L power:GND #PWR?
U 1 1 61AF81E6
P 8300 2150
AR Path="/61AF81E6" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61AF81E6" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 8300 1900 50  0001 C CNN
F 1 "GND" H 8305 1977 50  0000 C CNN
F 2 "" H 8300 2150 50  0001 C CNN
F 3 "" H 8300 2150 50  0001 C CNN
	1    8300 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61AF81EC
P 8300 1750
AR Path="/61AF81EC" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61AF81EC" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 8300 1600 50  0001 C CNN
F 1 "+5V" H 8315 1923 50  0000 C CNN
F 2 "" H 8300 1750 50  0001 C CNN
F 3 "" H 8300 1750 50  0001 C CNN
	1    8300 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 1750 8200 1750
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61AF81F3
P 8950 1950
AR Path="/61AF81F3" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61AF81F3" Ref="J12"  Part="1" 
F 0 "J12" H 9058 2331 50  0000 C CNN
F 1 "Conn_01x06_Male" H 9058 2240 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 8950 1950 50  0001 C CNN
F 3 "~" H 8950 1950 50  0001 C CNN
	1    8950 1950
	1    0    0    -1  
$EndComp
NoConn ~ 9150 2250
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61AF81FA
P 9900 1950
AR Path="/61AF81FA" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61AF81FA" Ref="J13"  Part="1" 
F 0 "J13" H 10008 2331 50  0000 C CNN
F 1 "Conn_01x06_Male" H 10008 2240 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 9900 1950 50  0001 C CNN
F 3 "~" H 9900 1950 50  0001 C CNN
	1    9900 1950
	1    0    0    -1  
$EndComp
NoConn ~ 10100 2250
Text Label 9250 2050 0    50   ~ 0
TouchIO_07
Wire Wire Line
	9250 2050 9150 2050
Wire Wire Line
	9150 2150 9250 2150
$Comp
L power:GND #PWR?
U 1 1 61AF8204
P 9250 2150
AR Path="/61AF8204" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61AF8204" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 9250 1900 50  0001 C CNN
F 1 "GND" H 9255 1977 50  0000 C CNN
F 2 "" H 9250 2150 50  0001 C CNN
F 3 "" H 9250 2150 50  0001 C CNN
	1    9250 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61AF820A
P 9250 1750
AR Path="/61AF820A" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61AF820A" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 9250 1600 50  0001 C CNN
F 1 "+5V" H 9265 1923 50  0000 C CNN
F 2 "" H 9250 1750 50  0001 C CNN
F 3 "" H 9250 1750 50  0001 C CNN
	1    9250 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 1750 9150 1750
Text Label 10200 2050 0    50   ~ 0
TouchIO_08
Wire Wire Line
	10200 2050 10100 2050
Wire Wire Line
	10100 2150 10200 2150
$Comp
L power:GND #PWR?
U 1 1 61AF8214
P 10200 2150
AR Path="/61AF8214" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61AF8214" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 10200 1900 50  0001 C CNN
F 1 "GND" H 10205 1977 50  0000 C CNN
F 2 "" H 10200 2150 50  0001 C CNN
F 3 "" H 10200 2150 50  0001 C CNN
	1    10200 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61AF821A
P 10200 1750
AR Path="/61AF821A" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61AF821A" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 10200 1600 50  0001 C CNN
F 1 "+5V" H 10215 1923 50  0000 C CNN
F 2 "" H 10200 1750 50  0001 C CNN
F 3 "" H 10200 1750 50  0001 C CNN
	1    10200 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 1750 10100 1750
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B0CBF5
P 3250 3350
AR Path="/61B0CBF5" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B0CBF5" Ref="J14"  Part="1" 
F 0 "J14" H 3358 3731 50  0000 C CNN
F 1 "Conn_01x06_Male" H 3358 3640 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 3250 3350 50  0001 C CNN
F 3 "~" H 3250 3350 50  0001 C CNN
	1    3250 3350
	1    0    0    -1  
$EndComp
NoConn ~ 3450 3650
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B0CBFC
P 4200 3350
AR Path="/61B0CBFC" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B0CBFC" Ref="J15"  Part="1" 
F 0 "J15" H 4308 3731 50  0000 C CNN
F 1 "Conn_01x06_Male" H 4308 3640 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 4200 3350 50  0001 C CNN
F 3 "~" H 4200 3350 50  0001 C CNN
	1    4200 3350
	1    0    0    -1  
$EndComp
NoConn ~ 4400 3650
Text Label 3550 3450 0    50   ~ 0
TouchIO_09
Wire Wire Line
	3550 3450 3450 3450
Wire Wire Line
	3450 3550 3550 3550
$Comp
L power:GND #PWR?
U 1 1 61B0CC06
P 3550 3550
AR Path="/61B0CC06" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B0CC06" Ref="#PWR030"  Part="1" 
F 0 "#PWR030" H 3550 3300 50  0001 C CNN
F 1 "GND" H 3555 3377 50  0000 C CNN
F 2 "" H 3550 3550 50  0001 C CNN
F 3 "" H 3550 3550 50  0001 C CNN
	1    3550 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B0CC0C
P 3550 3150
AR Path="/61B0CC0C" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B0CC0C" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 3550 3000 50  0001 C CNN
F 1 "+5V" H 3565 3323 50  0000 C CNN
F 2 "" H 3550 3150 50  0001 C CNN
F 3 "" H 3550 3150 50  0001 C CNN
	1    3550 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3150 3450 3150
Text Label 4500 3450 0    50   ~ 0
TouchIO_10
Wire Wire Line
	4500 3450 4400 3450
Wire Wire Line
	4400 3550 4500 3550
$Comp
L power:GND #PWR?
U 1 1 61B0CC16
P 4500 3550
AR Path="/61B0CC16" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B0CC16" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 4500 3300 50  0001 C CNN
F 1 "GND" H 4505 3377 50  0000 C CNN
F 2 "" H 4500 3550 50  0001 C CNN
F 3 "" H 4500 3550 50  0001 C CNN
	1    4500 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B0CC1C
P 4500 3150
AR Path="/61B0CC1C" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B0CC1C" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 4500 3000 50  0001 C CNN
F 1 "+5V" H 4515 3323 50  0000 C CNN
F 2 "" H 4500 3150 50  0001 C CNN
F 3 "" H 4500 3150 50  0001 C CNN
	1    4500 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3150 4400 3150
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B0CC23
P 5150 3350
AR Path="/61B0CC23" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B0CC23" Ref="J16"  Part="1" 
F 0 "J16" H 5258 3731 50  0000 C CNN
F 1 "Conn_01x06_Male" H 5258 3640 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 5150 3350 50  0001 C CNN
F 3 "~" H 5150 3350 50  0001 C CNN
	1    5150 3350
	1    0    0    -1  
$EndComp
NoConn ~ 5350 3650
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B0CC2A
P 6100 3350
AR Path="/61B0CC2A" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B0CC2A" Ref="J17"  Part="1" 
F 0 "J17" H 6208 3731 50  0000 C CNN
F 1 "Conn_01x06_Male" H 6208 3640 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 6100 3350 50  0001 C CNN
F 3 "~" H 6100 3350 50  0001 C CNN
	1    6100 3350
	1    0    0    -1  
$EndComp
NoConn ~ 6300 3650
Text Label 5450 3450 0    50   ~ 0
TouchIO_11
Wire Wire Line
	5450 3450 5350 3450
Wire Wire Line
	5350 3550 5450 3550
$Comp
L power:GND #PWR?
U 1 1 61B0CC34
P 5450 3550
AR Path="/61B0CC34" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B0CC34" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 5450 3300 50  0001 C CNN
F 1 "GND" H 5455 3377 50  0000 C CNN
F 2 "" H 5450 3550 50  0001 C CNN
F 3 "" H 5450 3550 50  0001 C CNN
	1    5450 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B0CC3A
P 5450 3150
AR Path="/61B0CC3A" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B0CC3A" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 5450 3000 50  0001 C CNN
F 1 "+5V" H 5465 3323 50  0000 C CNN
F 2 "" H 5450 3150 50  0001 C CNN
F 3 "" H 5450 3150 50  0001 C CNN
	1    5450 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3150 5350 3150
Text Label 6400 3450 0    50   ~ 0
TouchIO_12
Wire Wire Line
	6400 3450 6300 3450
Wire Wire Line
	6300 3550 6400 3550
$Comp
L power:GND #PWR?
U 1 1 61B0CC44
P 6400 3550
AR Path="/61B0CC44" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B0CC44" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 6400 3300 50  0001 C CNN
F 1 "GND" H 6405 3377 50  0000 C CNN
F 2 "" H 6400 3550 50  0001 C CNN
F 3 "" H 6400 3550 50  0001 C CNN
	1    6400 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B0CC4A
P 6400 3150
AR Path="/61B0CC4A" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B0CC4A" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 6400 3000 50  0001 C CNN
F 1 "+5V" H 6415 3323 50  0000 C CNN
F 2 "" H 6400 3150 50  0001 C CNN
F 3 "" H 6400 3150 50  0001 C CNN
	1    6400 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3150 6300 3150
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B0CC51
P 7050 3350
AR Path="/61B0CC51" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B0CC51" Ref="J18"  Part="1" 
F 0 "J18" H 7158 3731 50  0000 C CNN
F 1 "Conn_01x06_Male" H 7158 3640 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 7050 3350 50  0001 C CNN
F 3 "~" H 7050 3350 50  0001 C CNN
	1    7050 3350
	1    0    0    -1  
$EndComp
NoConn ~ 7250 3650
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B0CC58
P 8000 3350
AR Path="/61B0CC58" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B0CC58" Ref="J19"  Part="1" 
F 0 "J19" H 8108 3731 50  0000 C CNN
F 1 "Conn_01x06_Male" H 8108 3640 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 8000 3350 50  0001 C CNN
F 3 "~" H 8000 3350 50  0001 C CNN
	1    8000 3350
	1    0    0    -1  
$EndComp
NoConn ~ 8200 3650
Text Label 7350 3450 0    50   ~ 0
TouchIO_13
Wire Wire Line
	7350 3450 7250 3450
Wire Wire Line
	7250 3550 7350 3550
$Comp
L power:GND #PWR?
U 1 1 61B0CC62
P 7350 3550
AR Path="/61B0CC62" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B0CC62" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 7350 3300 50  0001 C CNN
F 1 "GND" H 7355 3377 50  0000 C CNN
F 2 "" H 7350 3550 50  0001 C CNN
F 3 "" H 7350 3550 50  0001 C CNN
	1    7350 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B0CC68
P 7350 3150
AR Path="/61B0CC68" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B0CC68" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 7350 3000 50  0001 C CNN
F 1 "+5V" H 7365 3323 50  0000 C CNN
F 2 "" H 7350 3150 50  0001 C CNN
F 3 "" H 7350 3150 50  0001 C CNN
	1    7350 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 3150 7250 3150
Text Label 8300 3450 0    50   ~ 0
TouchIO_14
Wire Wire Line
	8300 3450 8200 3450
Wire Wire Line
	8200 3550 8300 3550
$Comp
L power:GND #PWR?
U 1 1 61B0CC72
P 8300 3550
AR Path="/61B0CC72" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B0CC72" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 8300 3300 50  0001 C CNN
F 1 "GND" H 8305 3377 50  0000 C CNN
F 2 "" H 8300 3550 50  0001 C CNN
F 3 "" H 8300 3550 50  0001 C CNN
	1    8300 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B0CC78
P 8300 3150
AR Path="/61B0CC78" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B0CC78" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 8300 3000 50  0001 C CNN
F 1 "+5V" H 8315 3323 50  0000 C CNN
F 2 "" H 8300 3150 50  0001 C CNN
F 3 "" H 8300 3150 50  0001 C CNN
	1    8300 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 3150 8200 3150
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B0CC7F
P 8950 3350
AR Path="/61B0CC7F" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B0CC7F" Ref="J20"  Part="1" 
F 0 "J20" H 9058 3731 50  0000 C CNN
F 1 "Conn_01x06_Male" H 9058 3640 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 8950 3350 50  0001 C CNN
F 3 "~" H 8950 3350 50  0001 C CNN
	1    8950 3350
	1    0    0    -1  
$EndComp
NoConn ~ 9150 3650
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B0CC86
P 9900 3350
AR Path="/61B0CC86" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B0CC86" Ref="J21"  Part="1" 
F 0 "J21" H 10008 3731 50  0000 C CNN
F 1 "Conn_01x06_Male" H 10008 3640 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 9900 3350 50  0001 C CNN
F 3 "~" H 9900 3350 50  0001 C CNN
	1    9900 3350
	1    0    0    -1  
$EndComp
NoConn ~ 10100 3650
Text Label 9250 3450 0    50   ~ 0
TouchIO_15
Wire Wire Line
	9250 3450 9150 3450
Wire Wire Line
	9150 3550 9250 3550
$Comp
L power:GND #PWR?
U 1 1 61B0CC90
P 9250 3550
AR Path="/61B0CC90" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B0CC90" Ref="#PWR036"  Part="1" 
F 0 "#PWR036" H 9250 3300 50  0001 C CNN
F 1 "GND" H 9255 3377 50  0000 C CNN
F 2 "" H 9250 3550 50  0001 C CNN
F 3 "" H 9250 3550 50  0001 C CNN
	1    9250 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B0CC96
P 9250 3150
AR Path="/61B0CC96" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B0CC96" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 9250 3000 50  0001 C CNN
F 1 "+5V" H 9265 3323 50  0000 C CNN
F 2 "" H 9250 3150 50  0001 C CNN
F 3 "" H 9250 3150 50  0001 C CNN
	1    9250 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 3150 9150 3150
Text Label 10200 3450 0    50   ~ 0
TouchIO_16
Wire Wire Line
	10200 3450 10100 3450
Wire Wire Line
	10100 3550 10200 3550
$Comp
L power:GND #PWR?
U 1 1 61B0CCA0
P 10200 3550
AR Path="/61B0CCA0" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B0CCA0" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 10200 3300 50  0001 C CNN
F 1 "GND" H 10205 3377 50  0000 C CNN
F 2 "" H 10200 3550 50  0001 C CNN
F 3 "" H 10200 3550 50  0001 C CNN
	1    10200 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B0CCA6
P 10200 3150
AR Path="/61B0CCA6" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B0CCA6" Ref="#PWR029"  Part="1" 
F 0 "#PWR029" H 10200 3000 50  0001 C CNN
F 1 "+5V" H 10215 3323 50  0000 C CNN
F 2 "" H 10200 3150 50  0001 C CNN
F 3 "" H 10200 3150 50  0001 C CNN
	1    10200 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 3150 10100 3150
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B1CCC5
P 3250 4750
AR Path="/61B1CCC5" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B1CCC5" Ref="J22"  Part="1" 
F 0 "J22" H 3358 5131 50  0000 C CNN
F 1 "Conn_01x06_Male" H 3358 5040 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 3250 4750 50  0001 C CNN
F 3 "~" H 3250 4750 50  0001 C CNN
	1    3250 4750
	1    0    0    -1  
$EndComp
NoConn ~ 3450 5050
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B1CCCC
P 4200 4750
AR Path="/61B1CCCC" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B1CCCC" Ref="J23"  Part="1" 
F 0 "J23" H 4308 5131 50  0000 C CNN
F 1 "Conn_01x06_Male" H 4308 5040 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 4200 4750 50  0001 C CNN
F 3 "~" H 4200 4750 50  0001 C CNN
	1    4200 4750
	1    0    0    -1  
$EndComp
NoConn ~ 4400 5050
Text Label 3550 4850 0    50   ~ 0
TouchIO_17
Wire Wire Line
	3550 4850 3450 4850
Wire Wire Line
	3450 4950 3550 4950
$Comp
L power:GND #PWR?
U 1 1 61B1CCD6
P 3550 4950
AR Path="/61B1CCD6" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B1CCD6" Ref="#PWR046"  Part="1" 
F 0 "#PWR046" H 3550 4700 50  0001 C CNN
F 1 "GND" H 3555 4777 50  0000 C CNN
F 2 "" H 3550 4950 50  0001 C CNN
F 3 "" H 3550 4950 50  0001 C CNN
	1    3550 4950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B1CCDC
P 3550 4550
AR Path="/61B1CCDC" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B1CCDC" Ref="#PWR038"  Part="1" 
F 0 "#PWR038" H 3550 4400 50  0001 C CNN
F 1 "+5V" H 3565 4723 50  0000 C CNN
F 2 "" H 3550 4550 50  0001 C CNN
F 3 "" H 3550 4550 50  0001 C CNN
	1    3550 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 4550 3450 4550
Text Label 4500 4850 0    50   ~ 0
TouchIO_18
Wire Wire Line
	4500 4850 4400 4850
Wire Wire Line
	4400 4950 4500 4950
$Comp
L power:GND #PWR?
U 1 1 61B1CCE6
P 4500 4950
AR Path="/61B1CCE6" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B1CCE6" Ref="#PWR047"  Part="1" 
F 0 "#PWR047" H 4500 4700 50  0001 C CNN
F 1 "GND" H 4505 4777 50  0000 C CNN
F 2 "" H 4500 4950 50  0001 C CNN
F 3 "" H 4500 4950 50  0001 C CNN
	1    4500 4950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B1CCEC
P 4500 4550
AR Path="/61B1CCEC" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B1CCEC" Ref="#PWR039"  Part="1" 
F 0 "#PWR039" H 4500 4400 50  0001 C CNN
F 1 "+5V" H 4515 4723 50  0000 C CNN
F 2 "" H 4500 4550 50  0001 C CNN
F 3 "" H 4500 4550 50  0001 C CNN
	1    4500 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4550 4400 4550
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B1CCF3
P 5150 4750
AR Path="/61B1CCF3" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B1CCF3" Ref="J24"  Part="1" 
F 0 "J24" H 5258 5131 50  0000 C CNN
F 1 "Conn_01x06_Male" H 5258 5040 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 5150 4750 50  0001 C CNN
F 3 "~" H 5150 4750 50  0001 C CNN
	1    5150 4750
	1    0    0    -1  
$EndComp
NoConn ~ 5350 5050
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B1CCFA
P 6100 4750
AR Path="/61B1CCFA" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B1CCFA" Ref="J25"  Part="1" 
F 0 "J25" H 6208 5131 50  0000 C CNN
F 1 "Conn_01x06_Male" H 6208 5040 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 6100 4750 50  0001 C CNN
F 3 "~" H 6100 4750 50  0001 C CNN
	1    6100 4750
	1    0    0    -1  
$EndComp
NoConn ~ 6300 5050
Text Label 5450 4850 0    50   ~ 0
TouchIO_19
Wire Wire Line
	5450 4850 5350 4850
Wire Wire Line
	5350 4950 5450 4950
$Comp
L power:GND #PWR?
U 1 1 61B1CD04
P 5450 4950
AR Path="/61B1CD04" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B1CD04" Ref="#PWR048"  Part="1" 
F 0 "#PWR048" H 5450 4700 50  0001 C CNN
F 1 "GND" H 5455 4777 50  0000 C CNN
F 2 "" H 5450 4950 50  0001 C CNN
F 3 "" H 5450 4950 50  0001 C CNN
	1    5450 4950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B1CD0A
P 5450 4550
AR Path="/61B1CD0A" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B1CD0A" Ref="#PWR040"  Part="1" 
F 0 "#PWR040" H 5450 4400 50  0001 C CNN
F 1 "+5V" H 5465 4723 50  0000 C CNN
F 2 "" H 5450 4550 50  0001 C CNN
F 3 "" H 5450 4550 50  0001 C CNN
	1    5450 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4550 5350 4550
Wire Wire Line
	6400 4850 6300 4850
Wire Wire Line
	6300 4950 6400 4950
$Comp
L power:GND #PWR?
U 1 1 61B1CD14
P 6400 4950
AR Path="/61B1CD14" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B1CD14" Ref="#PWR049"  Part="1" 
F 0 "#PWR049" H 6400 4700 50  0001 C CNN
F 1 "GND" H 6405 4777 50  0000 C CNN
F 2 "" H 6400 4950 50  0001 C CNN
F 3 "" H 6400 4950 50  0001 C CNN
	1    6400 4950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B1CD1A
P 6400 4550
AR Path="/61B1CD1A" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B1CD1A" Ref="#PWR041"  Part="1" 
F 0 "#PWR041" H 6400 4400 50  0001 C CNN
F 1 "+5V" H 6415 4723 50  0000 C CNN
F 2 "" H 6400 4550 50  0001 C CNN
F 3 "" H 6400 4550 50  0001 C CNN
	1    6400 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 4550 6300 4550
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B1CD21
P 7050 4750
AR Path="/61B1CD21" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B1CD21" Ref="J26"  Part="1" 
F 0 "J26" H 7158 5131 50  0000 C CNN
F 1 "Conn_01x06_Male" H 7158 5040 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 7050 4750 50  0001 C CNN
F 3 "~" H 7050 4750 50  0001 C CNN
	1    7050 4750
	1    0    0    -1  
$EndComp
NoConn ~ 7250 5050
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B1CD28
P 8000 4750
AR Path="/61B1CD28" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B1CD28" Ref="J27"  Part="1" 
F 0 "J27" H 8108 5131 50  0000 C CNN
F 1 "Conn_01x06_Male" H 8108 5040 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 8000 4750 50  0001 C CNN
F 3 "~" H 8000 4750 50  0001 C CNN
	1    8000 4750
	1    0    0    -1  
$EndComp
NoConn ~ 8200 5050
Text Label 7350 4850 0    50   ~ 0
TouchIO_21
Wire Wire Line
	7350 4850 7250 4850
Wire Wire Line
	7250 4950 7350 4950
$Comp
L power:GND #PWR?
U 1 1 61B1CD32
P 7350 4950
AR Path="/61B1CD32" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B1CD32" Ref="#PWR050"  Part="1" 
F 0 "#PWR050" H 7350 4700 50  0001 C CNN
F 1 "GND" H 7355 4777 50  0000 C CNN
F 2 "" H 7350 4950 50  0001 C CNN
F 3 "" H 7350 4950 50  0001 C CNN
	1    7350 4950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B1CD38
P 7350 4550
AR Path="/61B1CD38" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B1CD38" Ref="#PWR042"  Part="1" 
F 0 "#PWR042" H 7350 4400 50  0001 C CNN
F 1 "+5V" H 7365 4723 50  0000 C CNN
F 2 "" H 7350 4550 50  0001 C CNN
F 3 "" H 7350 4550 50  0001 C CNN
	1    7350 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 4550 7250 4550
Text Label 8300 4850 0    50   ~ 0
TouchIO_22
Wire Wire Line
	8300 4850 8200 4850
Wire Wire Line
	8200 4950 8300 4950
$Comp
L power:GND #PWR?
U 1 1 61B1CD42
P 8300 4950
AR Path="/61B1CD42" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B1CD42" Ref="#PWR051"  Part="1" 
F 0 "#PWR051" H 8300 4700 50  0001 C CNN
F 1 "GND" H 8305 4777 50  0000 C CNN
F 2 "" H 8300 4950 50  0001 C CNN
F 3 "" H 8300 4950 50  0001 C CNN
	1    8300 4950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B1CD48
P 8300 4550
AR Path="/61B1CD48" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B1CD48" Ref="#PWR043"  Part="1" 
F 0 "#PWR043" H 8300 4400 50  0001 C CNN
F 1 "+5V" H 8315 4723 50  0000 C CNN
F 2 "" H 8300 4550 50  0001 C CNN
F 3 "" H 8300 4550 50  0001 C CNN
	1    8300 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 4550 8200 4550
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B1CD4F
P 8950 4750
AR Path="/61B1CD4F" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B1CD4F" Ref="J28"  Part="1" 
F 0 "J28" H 9058 5131 50  0000 C CNN
F 1 "Conn_01x06_Male" H 9058 5040 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 8950 4750 50  0001 C CNN
F 3 "~" H 8950 4750 50  0001 C CNN
	1    8950 4750
	1    0    0    -1  
$EndComp
NoConn ~ 9150 5050
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B1CD56
P 9900 4750
AR Path="/61B1CD56" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B1CD56" Ref="J29"  Part="1" 
F 0 "J29" H 10008 5131 50  0000 C CNN
F 1 "Conn_01x06_Male" H 10008 5040 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 9900 4750 50  0001 C CNN
F 3 "~" H 9900 4750 50  0001 C CNN
	1    9900 4750
	1    0    0    -1  
$EndComp
NoConn ~ 10100 5050
Text Label 9250 4850 0    50   ~ 0
TouchIO_23
Wire Wire Line
	9250 4850 9150 4850
Wire Wire Line
	9150 4950 9250 4950
$Comp
L power:GND #PWR?
U 1 1 61B1CD60
P 9250 4950
AR Path="/61B1CD60" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B1CD60" Ref="#PWR052"  Part="1" 
F 0 "#PWR052" H 9250 4700 50  0001 C CNN
F 1 "GND" H 9255 4777 50  0000 C CNN
F 2 "" H 9250 4950 50  0001 C CNN
F 3 "" H 9250 4950 50  0001 C CNN
	1    9250 4950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B1CD66
P 9250 4550
AR Path="/61B1CD66" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B1CD66" Ref="#PWR044"  Part="1" 
F 0 "#PWR044" H 9250 4400 50  0001 C CNN
F 1 "+5V" H 9265 4723 50  0000 C CNN
F 2 "" H 9250 4550 50  0001 C CNN
F 3 "" H 9250 4550 50  0001 C CNN
	1    9250 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 4550 9150 4550
Text Label 10200 4850 0    50   ~ 0
TouchIO_24
Wire Wire Line
	10200 4850 10100 4850
Wire Wire Line
	10100 4950 10200 4950
$Comp
L power:GND #PWR?
U 1 1 61B1CD70
P 10200 4950
AR Path="/61B1CD70" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B1CD70" Ref="#PWR053"  Part="1" 
F 0 "#PWR053" H 10200 4700 50  0001 C CNN
F 1 "GND" H 10205 4777 50  0000 C CNN
F 2 "" H 10200 4950 50  0001 C CNN
F 3 "" H 10200 4950 50  0001 C CNN
	1    10200 4950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B1CD76
P 10200 4550
AR Path="/61B1CD76" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B1CD76" Ref="#PWR045"  Part="1" 
F 0 "#PWR045" H 10200 4400 50  0001 C CNN
F 1 "+5V" H 10215 4723 50  0000 C CNN
F 2 "" H 10200 4550 50  0001 C CNN
F 3 "" H 10200 4550 50  0001 C CNN
	1    10200 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 4550 10100 4550
Text Label 6400 4850 0    50   ~ 0
TouchIO_20
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B3C702
P 2300 1950
AR Path="/61B3C702" Ref="J?"  Part="1" 
AR Path="/61AEA73C/61B3C702" Ref="J5"  Part="1" 
F 0 "J5" H 2408 2331 50  0000 C CNN
F 1 "Conn_01x06_Male" H 2408 2240 50  0000 C CNN
F 2 "Moederbord:IDC_Header_Straight_6pins" H 2300 1950 50  0001 C CNN
F 3 "~" H 2300 1950 50  0001 C CNN
	1    2300 1950
	1    0    0    -1  
$EndComp
NoConn ~ 2500 2250
Text Label 2600 2050 0    50   ~ 0
TouchIO_menu
Wire Wire Line
	2600 2050 2500 2050
Wire Wire Line
	2500 2150 2600 2150
$Comp
L power:GND #PWR?
U 1 1 61B3C70C
P 2600 2150
AR Path="/61B3C70C" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B3C70C" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 2600 1900 50  0001 C CNN
F 1 "GND" H 2605 1977 50  0000 C CNN
F 2 "" H 2600 2150 50  0001 C CNN
F 3 "" H 2600 2150 50  0001 C CNN
	1    2600 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B3C712
P 2600 1750
AR Path="/61B3C712" Ref="#PWR?"  Part="1" 
AR Path="/61AEA73C/61B3C712" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 2600 1600 50  0001 C CNN
F 1 "+5V" H 2615 1923 50  0000 C CNN
F 2 "" H 2600 1750 50  0001 C CNN
F 3 "" H 2600 1750 50  0001 C CNN
	1    2600 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1750 2500 1750
Text Notes 1100 2150 0    50   ~ 0
5v\nledin\nledout\ntouchout\ngnd\nnc
Wire Wire Line
	3450 1950 3850 1950
Wire Wire Line
	3850 1950 3850 1850
Wire Wire Line
	3850 1850 4400 1850
Wire Wire Line
	4400 1950 4800 1950
Wire Wire Line
	4800 1950 4800 1850
Wire Wire Line
	4800 1850 5350 1850
Wire Wire Line
	5350 1950 5750 1950
Wire Wire Line
	5750 1950 5750 1850
Wire Wire Line
	5750 1850 6300 1850
Wire Wire Line
	6300 1950 6700 1950
Wire Wire Line
	6700 1950 6700 1850
Wire Wire Line
	6700 1850 7250 1850
Wire Wire Line
	7250 1950 7650 1950
Wire Wire Line
	7650 1950 7650 1850
Wire Wire Line
	7650 1850 8200 1850
Wire Wire Line
	8200 1950 8600 1950
Wire Wire Line
	8600 1950 8600 1850
Wire Wire Line
	8600 1850 9150 1850
Wire Wire Line
	9150 1950 9550 1950
Wire Wire Line
	9550 1950 9550 1850
Wire Wire Line
	9550 1850 10100 1850
Wire Wire Line
	10100 1950 10800 1950
Wire Wire Line
	10800 1950 10800 2700
Wire Wire Line
	10800 2700 2700 2700
Wire Wire Line
	2700 2700 2700 3250
Wire Wire Line
	2700 3250 3450 3250
Wire Wire Line
	3450 3350 3850 3350
Wire Wire Line
	3850 3350 3850 3250
Wire Wire Line
	3850 3250 4400 3250
Wire Wire Line
	4400 3350 4800 3350
Wire Wire Line
	4800 3350 4800 3250
Wire Wire Line
	4800 3250 5350 3250
Wire Wire Line
	5350 3350 5750 3350
Wire Wire Line
	5750 3350 5750 3250
Wire Wire Line
	5750 3250 6300 3250
Wire Wire Line
	6300 3350 6700 3350
Wire Wire Line
	6700 3350 6700 3250
Wire Wire Line
	6700 3250 7250 3250
Wire Wire Line
	7250 3350 7650 3350
Wire Wire Line
	7650 3350 7650 3250
Wire Wire Line
	7650 3250 8200 3250
Wire Wire Line
	8200 3350 8600 3350
Wire Wire Line
	8600 3350 8600 3250
Wire Wire Line
	8600 3250 9150 3250
Wire Wire Line
	9150 3350 9550 3350
Wire Wire Line
	9550 3350 9550 3250
Wire Wire Line
	9550 3250 10100 3250
Wire Wire Line
	10100 3350 10800 3350
Wire Wire Line
	10800 3350 10800 4100
Wire Wire Line
	10800 4100 2700 4100
Wire Wire Line
	2700 4100 2700 4650
Wire Wire Line
	2700 4650 3450 4650
Wire Wire Line
	3450 4750 3850 4750
Wire Wire Line
	3850 4750 3850 4650
Wire Wire Line
	3850 4650 4400 4650
Wire Wire Line
	4400 4750 4800 4750
Wire Wire Line
	4800 4750 4800 4650
Wire Wire Line
	4800 4650 5350 4650
Wire Wire Line
	5350 4750 5750 4750
Wire Wire Line
	5750 4750 5750 4650
Wire Wire Line
	5750 4650 6300 4650
Wire Wire Line
	6300 4750 6700 4750
Wire Wire Line
	6700 4750 6700 4650
Wire Wire Line
	6700 4650 7250 4650
Wire Wire Line
	7250 4750 7650 4750
Wire Wire Line
	7650 4750 7650 4650
Wire Wire Line
	7650 4650 8200 4650
Wire Wire Line
	8200 4750 8600 4750
Wire Wire Line
	8600 4750 8600 4650
Wire Wire Line
	8600 4650 9150 4650
Wire Wire Line
	9150 4750 9550 4750
Wire Wire Line
	9550 4750 9550 4650
Wire Wire Line
	9550 4650 10100 4650
NoConn ~ 10100 4750
Text Notes 10400 4700 0    50   ~ 0
End of LED string
Text GLabel 2150 1850 0    50   Input ~ 0
Data_to_LED_rings
Wire Wire Line
	2500 1850 2150 1850
Wire Wire Line
	2500 1950 2900 1950
Wire Wire Line
	2900 1950 2900 1850
Wire Wire Line
	2900 1850 3450 1850
Text Notes 2050 1400 0    50   ~ 0
Menu is first in line\nto allow quick updates\nto menu button only
$EndSCHEMATC
