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
F 0 "U1" H 4300 3566 50  0000 C CNN
F 1 "74166" H 4300 3475 50  0000 C CNN
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
F 0 "U2" H 6200 4366 50  0000 C CNN
F 1 "74166" H 6200 4275 50  0000 C CNN
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
F 0 "U3" H 8100 5166 50  0000 C CNN
F 1 "74166" H 8100 5075 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 8100 4300 50  0001 C CNN
F 3 "" H 8100 4300 50  0001 C CNN
	1    8100 4300
	1    0    0    -1  
$EndComp
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
L power:GND #PWR061
U 1 1 61BCA21C
P 7200 4050
F 0 "#PWR061" H 7200 3800 50  0001 C CNN
F 1 "GND" H 7205 3877 50  0000 C CNN
F 2 "" H 7200 4050 50  0001 C CNN
F 3 "" H 7200 4050 50  0001 C CNN
	1    7200 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4050 7200 4000
$Comp
L power:GND #PWR059
U 1 1 61BCB609
P 5300 3250
F 0 "#PWR059" H 5300 3000 50  0001 C CNN
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
L power:GND #PWR057
U 1 1 61BCC001
P 3400 2450
F 0 "#PWR057" H 3400 2200 50  0001 C CNN
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
L power:+3V3 #PWR060
U 1 1 61BCF956
P 7550 3650
F 0 "#PWR060" H 7550 3500 50  0001 C CNN
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
L power:+3V3 #PWR058
U 1 1 61BD20D4
P 5650 2850
F 0 "#PWR058" H 5650 2700 50  0001 C CNN
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
L power:+3V3 #PWR056
U 1 1 61BD329C
P 3750 2050
F 0 "#PWR056" H 3750 1900 50  0001 C CNN
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
Shift_SH_LDn1
Wire Wire Line
	3600 2150 3600 2250
Wire Wire Line
	3600 2250 3750 2250
Text GLabel 5500 2950 1    50   Input ~ 0
Shift_SH_LDn2
Wire Wire Line
	5500 2950 5500 3050
Wire Wire Line
	5500 3050 5650 3050
Wire Wire Line
	7400 3750 7400 3850
Wire Wire Line
	7400 3850 7550 3850
Text GLabel 7400 3750 1    50   Input ~ 0
Shift_SH_LDn3
Wire Wire Line
	4850 3500 5650 3500
Wire Wire Line
	6750 4300 7550 4300
Text GLabel 3050 2800 0    50   Input ~ 0
Touch1
Wire Wire Line
	3050 2800 3100 2800
Text GLabel 3050 2900 0    50   Input ~ 0
Touch2
Wire Wire Line
	3050 2900 3100 2900
Text GLabel 3050 3000 0    50   Input ~ 0
Touch3
Wire Wire Line
	3050 3000 3100 3000
Text GLabel 3050 3100 0    50   Input ~ 0
Touch4
Wire Wire Line
	3050 3100 3100 3100
Text GLabel 3050 3200 0    50   Input ~ 0
Touch5
Wire Wire Line
	3050 3200 3100 3200
Text GLabel 3050 3300 0    50   Input ~ 0
Touch6
Wire Wire Line
	3050 3300 3100 3300
Text GLabel 3050 3400 0    50   Input ~ 0
Touch7
Wire Wire Line
	3050 3400 3100 3400
Text GLabel 3050 3500 0    50   Input ~ 0
Touch8
Wire Wire Line
	3050 3500 3100 3500
Text GLabel 4950 3600 0    50   Input ~ 0
Touch9
Wire Wire Line
	4950 3600 5000 3600
Text GLabel 4950 3700 0    50   Input ~ 0
Touch10
Wire Wire Line
	4950 3700 5000 3700
Text GLabel 4950 3800 0    50   Input ~ 0
Touch11
Wire Wire Line
	4950 3800 5000 3800
Text GLabel 4950 3900 0    50   Input ~ 0
Touch12
Wire Wire Line
	4950 3900 5000 3900
Text GLabel 4950 4000 0    50   Input ~ 0
Touch13
Wire Wire Line
	4950 4000 5000 4000
Text GLabel 4950 4100 0    50   Input ~ 0
Touch14
Wire Wire Line
	4950 4100 5000 4100
Text GLabel 4950 4200 0    50   Input ~ 0
Touch15
Wire Wire Line
	4950 4200 5000 4200
Text GLabel 4950 4300 0    50   Input ~ 0
Touch16
Wire Wire Line
	4950 4300 5000 4300
Text GLabel 6850 4400 0    50   Input ~ 0
Touch17
Wire Wire Line
	6850 4400 6900 4400
Text GLabel 6850 4500 0    50   Input ~ 0
Touch18
Wire Wire Line
	6850 4500 6900 4500
Text GLabel 6850 4600 0    50   Input ~ 0
Touch19
Wire Wire Line
	6850 4600 6900 4600
Text GLabel 6850 4700 0    50   Input ~ 0
Touch20
Wire Wire Line
	6850 4700 6900 4700
Text GLabel 6850 4800 0    50   Input ~ 0
Touch21
Wire Wire Line
	6850 4800 6900 4800
Text GLabel 6850 4900 0    50   Input ~ 0
Touch22
Wire Wire Line
	6850 4900 6900 4900
Text GLabel 6850 5000 0    50   Input ~ 0
Touch23
Wire Wire Line
	6850 5000 6900 5000
Wire Wire Line
	6850 5100 6900 5100
Text GLabel 6850 5100 0    50   Input ~ 0
Touch24
Wire Wire Line
	3750 2700 3650 2700
Wire Wire Line
	3650 2700 3650 2400
Connection ~ 3650 2400
Wire Wire Line
	3650 2400 3750 2400
$Comp
L Device:Jumper JP?
U 1 1 61BD9B4E
P 3400 2800
AR Path="/61BD9B4E" Ref="JP?"  Part="1" 
AR Path="/61C61687/61BD9B4E" Ref="JP15"  Part="1" 
F 0 "JP15" H 3400 3064 50  0000 C CNN
F 1 "Jumper" H 3400 2973 50  0000 C CNN
F 2 "Moederbord:Jumper_1x2_Pitch2.54mm" H 3400 2800 50  0001 C CNN
F 3 "~" H 3400 2800 50  0001 C CNN
	1    3400 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP?
U 1 1 61BD9B54
P 3400 2900
AR Path="/61BD9B54" Ref="JP?"  Part="1" 
AR Path="/61C61687/61BD9B54" Ref="JP16"  Part="1" 
F 0 "JP16" H 3400 3164 50  0000 C CNN
F 1 "Jumper" H 3400 3073 50  0000 C CNN
F 2 "Moederbord:Jumper_1x2_Pitch2.54mm" H 3400 2900 50  0001 C CNN
F 3 "~" H 3400 2900 50  0001 C CNN
	1    3400 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP?
U 1 1 61BDC88F
P 3400 3000
AR Path="/61BDC88F" Ref="JP?"  Part="1" 
AR Path="/61C61687/61BDC88F" Ref="JP17"  Part="1" 
F 0 "JP17" H 3400 3264 50  0000 C CNN
F 1 "Jumper" H 3400 3173 50  0000 C CNN
F 2 "Moederbord:Jumper_1x2_Pitch2.54mm" H 3400 3000 50  0001 C CNN
F 3 "~" H 3400 3000 50  0001 C CNN
	1    3400 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP?
U 1 1 61BDC895
P 3400 3100
AR Path="/61BDC895" Ref="JP?"  Part="1" 
AR Path="/61C61687/61BDC895" Ref="JP18"  Part="1" 
F 0 "JP18" H 3400 3364 50  0000 C CNN
F 1 "Jumper" H 3400 3273 50  0000 C CNN
F 2 "Moederbord:Jumper_1x2_Pitch2.54mm" H 3400 3100 50  0001 C CNN
F 3 "~" H 3400 3100 50  0001 C CNN
	1    3400 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP?
U 1 1 61BDF39E
P 3400 3200
AR Path="/61BDF39E" Ref="JP?"  Part="1" 
AR Path="/61C61687/61BDF39E" Ref="JP19"  Part="1" 
F 0 "JP19" H 3400 3464 50  0000 C CNN
F 1 "Jumper" H 3400 3373 50  0000 C CNN
F 2 "Moederbord:Jumper_1x2_Pitch2.54mm" H 3400 3200 50  0001 C CNN
F 3 "~" H 3400 3200 50  0001 C CNN
	1    3400 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP?
U 1 1 61BDF3A4
P 3400 3300
AR Path="/61BDF3A4" Ref="JP?"  Part="1" 
AR Path="/61C61687/61BDF3A4" Ref="JP20"  Part="1" 
F 0 "JP20" H 3400 3564 50  0000 C CNN
F 1 "Jumper" H 3400 3473 50  0000 C CNN
F 2 "Moederbord:Jumper_1x2_Pitch2.54mm" H 3400 3300 50  0001 C CNN
F 3 "~" H 3400 3300 50  0001 C CNN
	1    3400 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP?
U 1 1 61BE21EF
P 3400 3400
AR Path="/61BE21EF" Ref="JP?"  Part="1" 
AR Path="/61C61687/61BE21EF" Ref="JP21"  Part="1" 
F 0 "JP21" H 3400 3664 50  0000 C CNN
F 1 "Jumper" H 3400 3573 50  0000 C CNN
F 2 "Moederbord:Jumper_1x2_Pitch2.54mm" H 3400 3400 50  0001 C CNN
F 3 "~" H 3400 3400 50  0001 C CNN
	1    3400 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP?
U 1 1 61BE21F5
P 3400 3500
AR Path="/61BE21F5" Ref="JP?"  Part="1" 
AR Path="/61C61687/61BE21F5" Ref="JP22"  Part="1" 
F 0 "JP22" H 3400 3764 50  0000 C CNN
F 1 "Jumper" H 3400 3673 50  0000 C CNN
F 2 "Moederbord:Jumper_1x2_Pitch2.54mm" H 3400 3500 50  0001 C CNN
F 3 "~" H 3400 3500 50  0001 C CNN
	1    3400 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP?
U 1 1 61BE75C2
P 5300 3600
AR Path="/61BE75C2" Ref="JP?"  Part="1" 
AR Path="/61C61687/61BE75C2" Ref="JP23"  Part="1" 
F 0 "JP23" H 5300 3864 50  0000 C CNN
F 1 "Jumper" H 5300 3773 50  0000 C CNN
F 2 "Moederbord:Jumper_1x2_Pitch2.54mm" H 5300 3600 50  0001 C CNN
F 3 "~" H 5300 3600 50  0001 C CNN
	1    5300 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP?
U 1 1 61BE75C8
P 5300 3700
AR Path="/61BE75C8" Ref="JP?"  Part="1" 
AR Path="/61C61687/61BE75C8" Ref="JP24"  Part="1" 
F 0 "JP24" H 5300 3964 50  0000 C CNN
F 1 "Jumper" H 5300 3873 50  0000 C CNN
F 2 "Moederbord:Jumper_1x2_Pitch2.54mm" H 5300 3700 50  0001 C CNN
F 3 "~" H 5300 3700 50  0001 C CNN
	1    5300 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP?
U 1 1 61BE75CE
P 5300 3800
AR Path="/61BE75CE" Ref="JP?"  Part="1" 
AR Path="/61C61687/61BE75CE" Ref="JP25"  Part="1" 
F 0 "JP25" H 5300 4064 50  0000 C CNN
F 1 "Jumper" H 5300 3973 50  0000 C CNN
F 2 "Moederbord:Jumper_1x2_Pitch2.54mm" H 5300 3800 50  0001 C CNN
F 3 "~" H 5300 3800 50  0001 C CNN
	1    5300 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP?
U 1 1 61BE75D4
P 5300 3900
AR Path="/61BE75D4" Ref="JP?"  Part="1" 
AR Path="/61C61687/61BE75D4" Ref="JP26"  Part="1" 
F 0 "JP26" H 5300 4164 50  0000 C CNN
F 1 "Jumper" H 5300 4073 50  0000 C CNN
F 2 "Moederbord:Jumper_1x2_Pitch2.54mm" H 5300 3900 50  0001 C CNN
F 3 "~" H 5300 3900 50  0001 C CNN
	1    5300 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP?
U 1 1 61BE75DA
P 5300 4000
AR Path="/61BE75DA" Ref="JP?"  Part="1" 
AR Path="/61C61687/61BE75DA" Ref="JP27"  Part="1" 
F 0 "JP27" H 5300 4264 50  0000 C CNN
F 1 "Jumper" H 5300 4173 50  0000 C CNN
F 2 "Moederbord:Jumper_1x2_Pitch2.54mm" H 5300 4000 50  0001 C CNN
F 3 "~" H 5300 4000 50  0001 C CNN
	1    5300 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP?
U 1 1 61BE75E0
P 5300 4100
AR Path="/61BE75E0" Ref="JP?"  Part="1" 
AR Path="/61C61687/61BE75E0" Ref="JP28"  Part="1" 
F 0 "JP28" H 5300 4364 50  0000 C CNN
F 1 "Jumper" H 5300 4273 50  0000 C CNN
F 2 "Moederbord:Jumper_1x2_Pitch2.54mm" H 5300 4100 50  0001 C CNN
F 3 "~" H 5300 4100 50  0001 C CNN
	1    5300 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP?
U 1 1 61BE75E6
P 5300 4200
AR Path="/61BE75E6" Ref="JP?"  Part="1" 
AR Path="/61C61687/61BE75E6" Ref="JP29"  Part="1" 
F 0 "JP29" H 5300 4464 50  0000 C CNN
F 1 "Jumper" H 5300 4373 50  0000 C CNN
F 2 "Moederbord:Jumper_1x2_Pitch2.54mm" H 5300 4200 50  0001 C CNN
F 3 "~" H 5300 4200 50  0001 C CNN
	1    5300 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP?
U 1 1 61BE75EC
P 5300 4300
AR Path="/61BE75EC" Ref="JP?"  Part="1" 
AR Path="/61C61687/61BE75EC" Ref="JP30"  Part="1" 
F 0 "JP30" H 5300 4564 50  0000 C CNN
F 1 "Jumper" H 5300 4473 50  0000 C CNN
F 2 "Moederbord:Jumper_1x2_Pitch2.54mm" H 5300 4300 50  0001 C CNN
F 3 "~" H 5300 4300 50  0001 C CNN
	1    5300 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP?
U 1 1 61BEBFA5
P 7200 4400
AR Path="/61BEBFA5" Ref="JP?"  Part="1" 
AR Path="/61C61687/61BEBFA5" Ref="JP31"  Part="1" 
F 0 "JP31" H 7200 4664 50  0000 C CNN
F 1 "Jumper" H 7200 4573 50  0000 C CNN
F 2 "Moederbord:Jumper_1x2_Pitch2.54mm" H 7200 4400 50  0001 C CNN
F 3 "~" H 7200 4400 50  0001 C CNN
	1    7200 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP?
U 1 1 61BEBFAB
P 7200 4500
AR Path="/61BEBFAB" Ref="JP?"  Part="1" 
AR Path="/61C61687/61BEBFAB" Ref="JP32"  Part="1" 
F 0 "JP32" H 7200 4764 50  0000 C CNN
F 1 "Jumper" H 7200 4673 50  0000 C CNN
F 2 "Moederbord:Jumper_1x2_Pitch2.54mm" H 7200 4500 50  0001 C CNN
F 3 "~" H 7200 4500 50  0001 C CNN
	1    7200 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP?
U 1 1 61BEBFB1
P 7200 4600
AR Path="/61BEBFB1" Ref="JP?"  Part="1" 
AR Path="/61C61687/61BEBFB1" Ref="JP33"  Part="1" 
F 0 "JP33" H 7200 4864 50  0000 C CNN
F 1 "Jumper" H 7200 4773 50  0000 C CNN
F 2 "Moederbord:Jumper_1x2_Pitch2.54mm" H 7200 4600 50  0001 C CNN
F 3 "~" H 7200 4600 50  0001 C CNN
	1    7200 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP?
U 1 1 61BEBFB7
P 7200 4700
AR Path="/61BEBFB7" Ref="JP?"  Part="1" 
AR Path="/61C61687/61BEBFB7" Ref="JP34"  Part="1" 
F 0 "JP34" H 7200 4964 50  0000 C CNN
F 1 "Jumper" H 7200 4873 50  0000 C CNN
F 2 "Moederbord:Jumper_1x2_Pitch2.54mm" H 7200 4700 50  0001 C CNN
F 3 "~" H 7200 4700 50  0001 C CNN
	1    7200 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP?
U 1 1 61BEBFBD
P 7200 4800
AR Path="/61BEBFBD" Ref="JP?"  Part="1" 
AR Path="/61C61687/61BEBFBD" Ref="JP35"  Part="1" 
F 0 "JP35" H 7200 5064 50  0000 C CNN
F 1 "Jumper" H 7200 4973 50  0000 C CNN
F 2 "Moederbord:Jumper_1x2_Pitch2.54mm" H 7200 4800 50  0001 C CNN
F 3 "~" H 7200 4800 50  0001 C CNN
	1    7200 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP?
U 1 1 61BEBFC3
P 7200 4900
AR Path="/61BEBFC3" Ref="JP?"  Part="1" 
AR Path="/61C61687/61BEBFC3" Ref="JP36"  Part="1" 
F 0 "JP36" H 7200 5164 50  0000 C CNN
F 1 "Jumper" H 7200 5073 50  0000 C CNN
F 2 "Moederbord:Jumper_1x2_Pitch2.54mm" H 7200 4900 50  0001 C CNN
F 3 "~" H 7200 4900 50  0001 C CNN
	1    7200 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP?
U 1 1 61BEBFC9
P 7200 5000
AR Path="/61BEBFC9" Ref="JP?"  Part="1" 
AR Path="/61C61687/61BEBFC9" Ref="JP37"  Part="1" 
F 0 "JP37" H 7200 5264 50  0000 C CNN
F 1 "Jumper" H 7200 5173 50  0000 C CNN
F 2 "Moederbord:Jumper_1x2_Pitch2.54mm" H 7200 5000 50  0001 C CNN
F 3 "~" H 7200 5000 50  0001 C CNN
	1    7200 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP?
U 1 1 61BEBFCF
P 7200 5100
AR Path="/61BEBFCF" Ref="JP?"  Part="1" 
AR Path="/61C61687/61BEBFCF" Ref="JP38"  Part="1" 
F 0 "JP38" H 7200 5364 50  0000 C CNN
F 1 "Jumper" H 7200 5273 50  0000 C CNN
F 2 "Moederbord:Jumper_1x2_Pitch2.54mm" H 7200 5100 50  0001 C CNN
F 3 "~" H 7200 5100 50  0001 C CNN
	1    7200 5100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
