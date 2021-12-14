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
P 3900 3700
AR Path="/61C64694" Ref="U?"  Part="1" 
AR Path="/61C61687/61C64694" Ref="U1"  Part="1" 
F 0 "U1" H 3900 4566 50  0000 C CNN
F 1 "74166" H 3900 4475 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 3900 3700 50  0001 C CNN
F 3 "" H 3900 3700 50  0001 C CNN
	1    3900 3700
	1    0    0    -1  
$EndComp
$Comp
L 74xx_IEEE:74166 U?
U 1 1 61C6469A
P 5800 4500
AR Path="/61C6469A" Ref="U?"  Part="1" 
AR Path="/61C61687/61C6469A" Ref="U2"  Part="1" 
F 0 "U2" H 5800 5366 50  0000 C CNN
F 1 "74166" H 5800 5275 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 5800 4500 50  0001 C CNN
F 3 "" H 5800 4500 50  0001 C CNN
	1    5800 4500
	1    0    0    -1  
$EndComp
$Comp
L 74xx_IEEE:74166 U?
U 1 1 61C646A0
P 7700 5300
AR Path="/61C646A0" Ref="U?"  Part="1" 
AR Path="/61C61687/61C646A0" Ref="U3"  Part="1" 
F 0 "U3" H 7700 6166 50  0000 C CNN
F 1 "74166" H 7700 6075 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 7700 5300 50  0001 C CNN
F 3 "" H 7700 5300 50  0001 C CNN
	1    7700 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3800 3300 3800
Wire Wire Line
	3350 3900 3300 3900
Wire Wire Line
	3350 4000 3300 4000
Wire Wire Line
	3350 4100 3300 4100
Wire Wire Line
	3350 4200 3300 4200
Wire Wire Line
	3350 4300 3300 4300
Wire Wire Line
	3350 4400 3300 4400
Wire Wire Line
	3350 4500 3300 4500
Wire Wire Line
	5250 4600 5200 4600
Wire Wire Line
	5250 4700 5200 4700
Wire Wire Line
	5250 4800 5200 4800
Wire Wire Line
	5250 4900 5200 4900
Wire Wire Line
	5250 5000 5200 5000
Wire Wire Line
	5250 5100 5200 5100
Wire Wire Line
	5250 5200 5200 5200
Wire Wire Line
	5250 5300 5200 5300
Wire Wire Line
	7150 5400 7100 5400
Wire Wire Line
	7150 5500 7100 5500
Wire Wire Line
	7150 5600 7100 5600
Wire Wire Line
	7150 5700 7100 5700
Wire Wire Line
	7150 5800 7100 5800
Wire Wire Line
	7150 5900 7100 5900
Wire Wire Line
	7150 6000 7100 6000
Wire Wire Line
	7150 6100 7100 6100
Text GLabel 8300 6100 2    50   Output ~ 0
Shift_data
Wire Wire Line
	8250 6100 8300 6100
$Comp
L power:GND #PWR061
U 1 1 61BCA21C
P 6800 5050
F 0 "#PWR061" H 6800 4800 50  0001 C CNN
F 1 "GND" H 6805 4877 50  0000 C CNN
F 2 "" H 6800 5050 50  0001 C CNN
F 3 "" H 6800 5050 50  0001 C CNN
	1    6800 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 5050 6800 5000
$Comp
L power:GND #PWR059
U 1 1 61BCB609
P 4900 4250
F 0 "#PWR059" H 4900 4000 50  0001 C CNN
F 1 "GND" H 4905 4077 50  0000 C CNN
F 2 "" H 4900 4250 50  0001 C CNN
F 3 "" H 4900 4250 50  0001 C CNN
	1    4900 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 4250 4900 4200
Wire Wire Line
	4900 4200 5250 4200
$Comp
L power:GND #PWR057
U 1 1 61BCC001
P 3000 3450
F 0 "#PWR057" H 3000 3200 50  0001 C CNN
F 1 "GND" H 3005 3277 50  0000 C CNN
F 2 "" H 3000 3450 50  0001 C CNN
F 3 "" H 3000 3450 50  0001 C CNN
	1    3000 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3450 3000 3400
Wire Wire Line
	3000 3400 3250 3400
Text GLabel 3100 3150 1    50   Input ~ 0
Shift_CLK
Text GLabel 5000 3950 1    50   Input ~ 0
Shift_CLK
Text GLabel 6900 4750 1    50   Input ~ 0
Shift_CLK
$Comp
L power:+3V3 #PWR060
U 1 1 61BCF956
P 7150 4650
F 0 "#PWR060" H 7150 4500 50  0001 C CNN
F 1 "+3V3" H 7165 4823 50  0000 C CNN
F 2 "" H 7150 4650 50  0001 C CNN
F 3 "" H 7150 4650 50  0001 C CNN
	1    7150 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 4650 7150 4750
Wire Wire Line
	7150 4750 7250 4750
Wire Wire Line
	6800 5000 7150 5000
$Comp
L power:+3V3 #PWR058
U 1 1 61BD20D4
P 5250 3850
F 0 "#PWR058" H 5250 3700 50  0001 C CNN
F 1 "+3V3" H 5265 4023 50  0000 C CNN
F 2 "" H 5250 3850 50  0001 C CNN
F 3 "" H 5250 3850 50  0001 C CNN
	1    5250 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3850 5250 3950
Wire Wire Line
	5250 3950 5350 3950
$Comp
L power:+3V3 #PWR056
U 1 1 61BD329C
P 3350 3050
F 0 "#PWR056" H 3350 2900 50  0001 C CNN
F 1 "+3V3" H 3365 3223 50  0000 C CNN
F 2 "" H 3350 3050 50  0001 C CNN
F 3 "" H 3350 3050 50  0001 C CNN
	1    3350 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3050 3350 3150
Wire Wire Line
	3350 3150 3450 3150
Wire Wire Line
	3100 3150 3100 3500
Wire Wire Line
	5000 3950 5000 4300
Wire Wire Line
	6900 4750 6900 5100
Wire Wire Line
	6900 5100 7150 5100
Wire Wire Line
	5000 4300 5250 4300
Wire Wire Line
	3100 3500 3350 3500
Text GLabel 3200 3150 1    50   Input ~ 0
Shift_SH_LDn1
Wire Wire Line
	3200 3150 3200 3250
Wire Wire Line
	3200 3250 3350 3250
Text GLabel 5100 3950 1    50   Input ~ 0
Shift_SH_LDn2
Wire Wire Line
	5100 3950 5100 4050
Wire Wire Line
	5100 4050 5250 4050
Wire Wire Line
	7000 4750 7000 4850
Wire Wire Line
	7000 4850 7150 4850
Text GLabel 7000 4750 1    50   Input ~ 0
Shift_SH_LDn3
$Comp
L Connector_Generic:Conn_02x01 J?
U 1 1 61BE6A79
P 3000 3800
AR Path="/61BE6A79" Ref="J?"  Part="1" 
AR Path="/61C61687/61BE6A79" Ref="J43"  Part="1" 
F 0 "J43" H 3050 4017 50  0000 C CNN
F 1 "Conn_02x01" H 3050 3926 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 3000 3800 50  0001 C CNN
F 3 "~" H 3000 3800 50  0001 C CNN
	1    3000 3800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J?
U 1 1 61BE6A7F
P 3000 3900
AR Path="/61BE6A7F" Ref="J?"  Part="1" 
AR Path="/61C61687/61BE6A7F" Ref="J44"  Part="1" 
F 0 "J44" H 3050 4117 50  0000 C CNN
F 1 "Conn_02x01" H 3050 4026 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 3000 3900 50  0001 C CNN
F 3 "~" H 3000 3900 50  0001 C CNN
	1    3000 3900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J?
U 1 1 61BE6A85
P 3000 4000
AR Path="/61BE6A85" Ref="J?"  Part="1" 
AR Path="/61C61687/61BE6A85" Ref="J45"  Part="1" 
F 0 "J45" H 3050 4217 50  0000 C CNN
F 1 "Conn_02x01" H 3050 4126 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 3000 4000 50  0001 C CNN
F 3 "~" H 3000 4000 50  0001 C CNN
	1    3000 4000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J?
U 1 1 61BE7E81
P 3000 4100
AR Path="/61BE7E81" Ref="J?"  Part="1" 
AR Path="/61C61687/61BE7E81" Ref="J46"  Part="1" 
F 0 "J46" H 3050 4317 50  0000 C CNN
F 1 "Conn_02x01" H 3050 4226 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 3000 4100 50  0001 C CNN
F 3 "~" H 3000 4100 50  0001 C CNN
	1    3000 4100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J?
U 1 1 61BE7E87
P 3000 4200
AR Path="/61BE7E87" Ref="J?"  Part="1" 
AR Path="/61C61687/61BE7E87" Ref="J47"  Part="1" 
F 0 "J47" H 3050 4417 50  0000 C CNN
F 1 "Conn_02x01" H 3050 4326 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 3000 4200 50  0001 C CNN
F 3 "~" H 3000 4200 50  0001 C CNN
	1    3000 4200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J?
U 1 1 61BE7E8D
P 3000 4300
AR Path="/61BE7E8D" Ref="J?"  Part="1" 
AR Path="/61C61687/61BE7E8D" Ref="J48"  Part="1" 
F 0 "J48" H 3050 4517 50  0000 C CNN
F 1 "Conn_02x01" H 3050 4426 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 3000 4300 50  0001 C CNN
F 3 "~" H 3000 4300 50  0001 C CNN
	1    3000 4300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J?
U 1 1 61BE9E7B
P 3000 4400
AR Path="/61BE9E7B" Ref="J?"  Part="1" 
AR Path="/61C61687/61BE9E7B" Ref="J49"  Part="1" 
F 0 "J49" H 3050 4617 50  0000 C CNN
F 1 "Conn_02x01" H 3050 4526 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 3000 4400 50  0001 C CNN
F 3 "~" H 3000 4400 50  0001 C CNN
	1    3000 4400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J?
U 1 1 61BE9E81
P 3000 4500
AR Path="/61BE9E81" Ref="J?"  Part="1" 
AR Path="/61C61687/61BE9E81" Ref="J50"  Part="1" 
F 0 "J50" H 3050 4717 50  0000 C CNN
F 1 "Conn_02x01" H 3050 4626 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 3000 4500 50  0001 C CNN
F 3 "~" H 3000 4500 50  0001 C CNN
	1    3000 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 4500 5250 4500
Wire Wire Line
	6350 5300 7150 5300
$Comp
L Connector_Generic:Conn_02x01 J?
U 1 1 61C1B450
P 4900 4600
AR Path="/61C1B450" Ref="J?"  Part="1" 
AR Path="/61C61687/61C1B450" Ref="J51"  Part="1" 
F 0 "J51" H 4950 4817 50  0000 C CNN
F 1 "Conn_02x01" H 4950 4726 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 4900 4600 50  0001 C CNN
F 3 "~" H 4900 4600 50  0001 C CNN
	1    4900 4600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J?
U 1 1 61C1B456
P 4900 4700
AR Path="/61C1B456" Ref="J?"  Part="1" 
AR Path="/61C61687/61C1B456" Ref="J52"  Part="1" 
F 0 "J52" H 4950 4917 50  0000 C CNN
F 1 "Conn_02x01" H 4950 4826 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 4900 4700 50  0001 C CNN
F 3 "~" H 4900 4700 50  0001 C CNN
	1    4900 4700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J?
U 1 1 61C1B45C
P 4900 4800
AR Path="/61C1B45C" Ref="J?"  Part="1" 
AR Path="/61C61687/61C1B45C" Ref="J53"  Part="1" 
F 0 "J53" H 4950 5017 50  0000 C CNN
F 1 "Conn_02x01" H 4950 4926 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 4900 4800 50  0001 C CNN
F 3 "~" H 4900 4800 50  0001 C CNN
	1    4900 4800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J?
U 1 1 61C1B462
P 4900 4900
AR Path="/61C1B462" Ref="J?"  Part="1" 
AR Path="/61C61687/61C1B462" Ref="J54"  Part="1" 
F 0 "J54" H 4950 5117 50  0000 C CNN
F 1 "Conn_02x01" H 4950 5026 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 4900 4900 50  0001 C CNN
F 3 "~" H 4900 4900 50  0001 C CNN
	1    4900 4900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J?
U 1 1 61C1B468
P 4900 5000
AR Path="/61C1B468" Ref="J?"  Part="1" 
AR Path="/61C61687/61C1B468" Ref="J55"  Part="1" 
F 0 "J55" H 4950 5217 50  0000 C CNN
F 1 "Conn_02x01" H 4950 5126 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 4900 5000 50  0001 C CNN
F 3 "~" H 4900 5000 50  0001 C CNN
	1    4900 5000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J?
U 1 1 61C1B46E
P 4900 5100
AR Path="/61C1B46E" Ref="J?"  Part="1" 
AR Path="/61C61687/61C1B46E" Ref="J56"  Part="1" 
F 0 "J56" H 4950 5317 50  0000 C CNN
F 1 "Conn_02x01" H 4950 5226 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 4900 5100 50  0001 C CNN
F 3 "~" H 4900 5100 50  0001 C CNN
	1    4900 5100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J?
U 1 1 61C1B474
P 4900 5200
AR Path="/61C1B474" Ref="J?"  Part="1" 
AR Path="/61C61687/61C1B474" Ref="J57"  Part="1" 
F 0 "J57" H 4950 5417 50  0000 C CNN
F 1 "Conn_02x01" H 4950 5326 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 4900 5200 50  0001 C CNN
F 3 "~" H 4900 5200 50  0001 C CNN
	1    4900 5200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J?
U 1 1 61C1B47A
P 4900 5300
AR Path="/61C1B47A" Ref="J?"  Part="1" 
AR Path="/61C61687/61C1B47A" Ref="J58"  Part="1" 
F 0 "J58" H 4950 5517 50  0000 C CNN
F 1 "Conn_02x01" H 4950 5426 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 4900 5300 50  0001 C CNN
F 3 "~" H 4900 5300 50  0001 C CNN
	1    4900 5300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J?
U 1 1 61C1FE17
P 6800 5400
AR Path="/61C1FE17" Ref="J?"  Part="1" 
AR Path="/61C61687/61C1FE17" Ref="J59"  Part="1" 
F 0 "J59" H 6850 5617 50  0000 C CNN
F 1 "Conn_02x01" H 6850 5526 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 6800 5400 50  0001 C CNN
F 3 "~" H 6800 5400 50  0001 C CNN
	1    6800 5400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J?
U 1 1 61C1FE1D
P 6800 5500
AR Path="/61C1FE1D" Ref="J?"  Part="1" 
AR Path="/61C61687/61C1FE1D" Ref="J60"  Part="1" 
F 0 "J60" H 6850 5717 50  0000 C CNN
F 1 "Conn_02x01" H 6850 5626 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 6800 5500 50  0001 C CNN
F 3 "~" H 6800 5500 50  0001 C CNN
	1    6800 5500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J?
U 1 1 61C1FE23
P 6800 5600
AR Path="/61C1FE23" Ref="J?"  Part="1" 
AR Path="/61C61687/61C1FE23" Ref="J61"  Part="1" 
F 0 "J61" H 6850 5817 50  0000 C CNN
F 1 "Conn_02x01" H 6850 5726 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 6800 5600 50  0001 C CNN
F 3 "~" H 6800 5600 50  0001 C CNN
	1    6800 5600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J?
U 1 1 61C1FE29
P 6800 5700
AR Path="/61C1FE29" Ref="J?"  Part="1" 
AR Path="/61C61687/61C1FE29" Ref="J62"  Part="1" 
F 0 "J62" H 6850 5917 50  0000 C CNN
F 1 "Conn_02x01" H 6850 5826 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 6800 5700 50  0001 C CNN
F 3 "~" H 6800 5700 50  0001 C CNN
	1    6800 5700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J?
U 1 1 61C1FE2F
P 6800 5800
AR Path="/61C1FE2F" Ref="J?"  Part="1" 
AR Path="/61C61687/61C1FE2F" Ref="J63"  Part="1" 
F 0 "J63" H 6850 6017 50  0000 C CNN
F 1 "Conn_02x01" H 6850 5926 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 6800 5800 50  0001 C CNN
F 3 "~" H 6800 5800 50  0001 C CNN
	1    6800 5800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J?
U 1 1 61C1FE35
P 6800 5900
AR Path="/61C1FE35" Ref="J?"  Part="1" 
AR Path="/61C61687/61C1FE35" Ref="J64"  Part="1" 
F 0 "J64" H 6850 6117 50  0000 C CNN
F 1 "Conn_02x01" H 6850 6026 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 6800 5900 50  0001 C CNN
F 3 "~" H 6800 5900 50  0001 C CNN
	1    6800 5900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J?
U 1 1 61C1FE3B
P 6800 6000
AR Path="/61C1FE3B" Ref="J?"  Part="1" 
AR Path="/61C61687/61C1FE3B" Ref="J65"  Part="1" 
F 0 "J65" H 6850 6217 50  0000 C CNN
F 1 "Conn_02x01" H 6850 6126 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 6800 6000 50  0001 C CNN
F 3 "~" H 6800 6000 50  0001 C CNN
	1    6800 6000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J?
U 1 1 61C1FE41
P 6800 6100
AR Path="/61C1FE41" Ref="J?"  Part="1" 
AR Path="/61C61687/61C1FE41" Ref="J66"  Part="1" 
F 0 "J66" H 6850 6317 50  0000 C CNN
F 1 "Conn_02x01" H 6850 6226 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 6800 6100 50  0001 C CNN
F 3 "~" H 6800 6100 50  0001 C CNN
	1    6800 6100
	1    0    0    -1  
$EndComp
Text GLabel 2750 3800 0    50   Input ~ 0
Touch1
Wire Wire Line
	2750 3800 2800 3800
Text GLabel 2750 3900 0    50   Input ~ 0
Touch2
Wire Wire Line
	2750 3900 2800 3900
Text GLabel 2750 4000 0    50   Input ~ 0
Touch3
Wire Wire Line
	2750 4000 2800 4000
Text GLabel 2750 4100 0    50   Input ~ 0
Touch4
Wire Wire Line
	2750 4100 2800 4100
Text GLabel 2750 4200 0    50   Input ~ 0
Touch5
Wire Wire Line
	2750 4200 2800 4200
Text GLabel 2750 4300 0    50   Input ~ 0
Touch6
Wire Wire Line
	2750 4300 2800 4300
Text GLabel 2750 4400 0    50   Input ~ 0
Touch7
Wire Wire Line
	2750 4400 2800 4400
Text GLabel 2750 4500 0    50   Input ~ 0
Touch8
Wire Wire Line
	2750 4500 2800 4500
Text GLabel 4650 4600 0    50   Input ~ 0
Touch9
Wire Wire Line
	4650 4600 4700 4600
Text GLabel 4650 4700 0    50   Input ~ 0
Touch10
Wire Wire Line
	4650 4700 4700 4700
Text GLabel 4650 4800 0    50   Input ~ 0
Touch11
Wire Wire Line
	4650 4800 4700 4800
Text GLabel 4650 4900 0    50   Input ~ 0
Touch12
Wire Wire Line
	4650 4900 4700 4900
Text GLabel 4650 5000 0    50   Input ~ 0
Touch13
Wire Wire Line
	4650 5000 4700 5000
Text GLabel 4650 5100 0    50   Input ~ 0
Touch14
Wire Wire Line
	4650 5100 4700 5100
Text GLabel 4650 5200 0    50   Input ~ 0
Touch15
Wire Wire Line
	4650 5200 4700 5200
Text GLabel 4650 5300 0    50   Input ~ 0
Touch16
Wire Wire Line
	4650 5300 4700 5300
Text GLabel 6550 5400 0    50   Input ~ 0
Touch17
Wire Wire Line
	6550 5400 6600 5400
Text GLabel 6550 5500 0    50   Input ~ 0
Touch18
Wire Wire Line
	6550 5500 6600 5500
Text GLabel 6550 5600 0    50   Input ~ 0
Touch19
Wire Wire Line
	6550 5600 6600 5600
Text GLabel 6550 5700 0    50   Input ~ 0
Touch20
Wire Wire Line
	6550 5700 6600 5700
Text GLabel 6550 5800 0    50   Input ~ 0
Touch21
Wire Wire Line
	6550 5800 6600 5800
Text GLabel 6550 5900 0    50   Input ~ 0
Touch22
Wire Wire Line
	6550 5900 6600 5900
Text GLabel 6550 6000 0    50   Input ~ 0
Touch23
Wire Wire Line
	6550 6000 6600 6000
Wire Wire Line
	6550 6100 6600 6100
Text GLabel 6550 6100 0    50   Input ~ 0
Touch24
Wire Wire Line
	3350 3700 3250 3700
Wire Wire Line
	3250 3700 3250 3400
Connection ~ 3250 3400
Wire Wire Line
	3250 3400 3350 3400
$EndSCHEMATC
