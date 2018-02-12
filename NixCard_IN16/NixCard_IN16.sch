EESchema Schematic File Version 2
LIBS:NixCard_IN16-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:NixCard
LIBS:quad_level_shifter
LIBS:russian-nixies
LIBS:microchip
LIBS:NixCard_IN16-cache
EELAYER 25 0
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
L 6k2 R2
U 1 1 585F2D1C
P 6650 1975
F 0 "R2" V 6730 1975 50  0000 C CNN
F 1 "20k" V 6650 1975 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 6700 1425 50  0001 C CNN
F 3 "http://www.yageo.com/NewPortal/yageodocoutput?fileName=/pdf/R-Chip/PYu-RC_Group_51_RoHS_L_4.pdf" H 6650 1525 50  0001 C CNN
F 4 "RC0805FR-076K2L" H 7150 1675 60  0001 C CNN "MFG P/N"
F 5 "Yageo" H 6450 1675 60  0001 C CNN "MFG"
	1    6650 1975
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 1975 7850 1525
Wire Wire Line
	7650 2475 8400 2475
$Comp
L VAA #PWR01
U 1 1 585F326F
P 8400 2175
F 0 "#PWR01" H 8400 2025 50  0001 C CNN
F 1 "VAA" H 8400 2325 50  0000 C CNN
F 2 "" H 8400 2175 50  0000 C CNN
F 3 "" H 8400 2175 50  0000 C CNN
	1    8400 2175
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 2475 8400 2175
Text Label 8400 2275 0    60   ~ 0
VAA
Wire Wire Line
	6900 1525 6900 1875
$Comp
L 6k2 R1
U 1 1 5A232F37
P 7375 1525
F 0 "R1" V 7455 1525 50  0000 C CNN
F 1 "120k" V 7375 1525 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 7425 975 50  0001 C CNN
F 3 "http://www.yageo.com/NewPortal/yageodocoutput?fileName=/pdf/R-Chip/PYu-RC_Group_51_RoHS_L_4.pdf" H 7375 1075 50  0001 C CNN
F 4 "RC0805FR-076K2L" H 7875 1225 60  0001 C CNN "MFG P/N"
F 5 "Yageo" H 7175 1225 60  0001 C CNN "MFG"
	1    7375 1525
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 1525 7225 1525
Wire Wire Line
	7850 1525 7525 1525
$Comp
L VAA #PWR02
U 1 1 5A2324DC
P 3775 1925
F 0 "#PWR02" H 3775 1775 50  0001 C CNN
F 1 "VAA" H 3775 2075 50  0000 C CNN
F 2 "" H 3775 1925 50  0000 C CNN
F 3 "" H 3775 1925 50  0000 C CNN
	1    3775 1925
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 1975 6950 1975
Wire Wire Line
	6475 2075 6950 2075
Wire Wire Line
	6950 2175 6800 2175
Wire Wire Line
	6475 2275 6950 2275
Wire Wire Line
	6950 2375 6800 2375
Wire Wire Line
	6475 2475 6950 2475
Wire Wire Line
	6950 2575 6800 2575
Wire Wire Line
	6475 2675 6950 2675
Wire Wire Line
	6950 2775 6800 2775
Wire Wire Line
	6475 2875 6950 2875
$Comp
L 6k2 R3
U 1 1 5A2E1376
P 6325 2075
F 0 "R3" V 6405 2075 50  0000 C CNN
F 1 "20k" V 6325 2075 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 6375 1525 50  0001 C CNN
F 3 "http://www.yageo.com/NewPortal/yageodocoutput?fileName=/pdf/R-Chip/PYu-RC_Group_51_RoHS_L_4.pdf" H 6325 1625 50  0001 C CNN
F 4 "RC0805FR-076K2L" H 6825 1775 60  0001 C CNN "MFG P/N"
F 5 "Yageo" H 6125 1775 60  0001 C CNN "MFG"
	1    6325 2075
	0    1    1    0   
$EndComp
$Comp
L 6k2 R4
U 1 1 5A2E1407
P 6650 2175
F 0 "R4" V 6730 2175 50  0000 C CNN
F 1 "20k" V 6650 2175 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 6700 1625 50  0001 C CNN
F 3 "http://www.yageo.com/NewPortal/yageodocoutput?fileName=/pdf/R-Chip/PYu-RC_Group_51_RoHS_L_4.pdf" H 6650 1725 50  0001 C CNN
F 4 "RC0805FR-076K2L" H 7150 1875 60  0001 C CNN "MFG P/N"
F 5 "Yageo" H 6450 1875 60  0001 C CNN "MFG"
	1    6650 2175
	0    1    1    0   
$EndComp
$Comp
L 6k2 R5
U 1 1 5A2E140F
P 6325 2275
F 0 "R5" V 6405 2275 50  0000 C CNN
F 1 "20k" V 6325 2275 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 6375 1725 50  0001 C CNN
F 3 "http://www.yageo.com/NewPortal/yageodocoutput?fileName=/pdf/R-Chip/PYu-RC_Group_51_RoHS_L_4.pdf" H 6325 1825 50  0001 C CNN
F 4 "RC0805FR-076K2L" H 6825 1975 60  0001 C CNN "MFG P/N"
F 5 "Yageo" H 6125 1975 60  0001 C CNN "MFG"
	1    6325 2275
	0    1    1    0   
$EndComp
$Comp
L 6k2 R6
U 1 1 5A2E1475
P 6650 2375
F 0 "R6" V 6730 2375 50  0000 C CNN
F 1 "20k" V 6650 2375 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 6700 1825 50  0001 C CNN
F 3 "http://www.yageo.com/NewPortal/yageodocoutput?fileName=/pdf/R-Chip/PYu-RC_Group_51_RoHS_L_4.pdf" H 6650 1925 50  0001 C CNN
F 4 "RC0805FR-076K2L" H 7150 2075 60  0001 C CNN "MFG P/N"
F 5 "Yageo" H 6450 2075 60  0001 C CNN "MFG"
	1    6650 2375
	0    1    1    0   
$EndComp
$Comp
L 6k2 R7
U 1 1 5A2E147D
P 6325 2475
F 0 "R7" V 6405 2475 50  0000 C CNN
F 1 "20k" V 6325 2475 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 6375 1925 50  0001 C CNN
F 3 "http://www.yageo.com/NewPortal/yageodocoutput?fileName=/pdf/R-Chip/PYu-RC_Group_51_RoHS_L_4.pdf" H 6325 2025 50  0001 C CNN
F 4 "RC0805FR-076K2L" H 6825 2175 60  0001 C CNN "MFG P/N"
F 5 "Yageo" H 6125 2175 60  0001 C CNN "MFG"
	1    6325 2475
	0    1    1    0   
$EndComp
$Comp
L 6k2 R8
U 1 1 5A2E1485
P 6650 2575
F 0 "R8" V 6730 2575 50  0000 C CNN
F 1 "20k" V 6650 2575 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 6700 2025 50  0001 C CNN
F 3 "http://www.yageo.com/NewPortal/yageodocoutput?fileName=/pdf/R-Chip/PYu-RC_Group_51_RoHS_L_4.pdf" H 6650 2125 50  0001 C CNN
F 4 "RC0805FR-076K2L" H 7150 2275 60  0001 C CNN "MFG P/N"
F 5 "Yageo" H 6450 2275 60  0001 C CNN "MFG"
	1    6650 2575
	0    1    1    0   
$EndComp
$Comp
L 6k2 R9
U 1 1 5A2E148D
P 6325 2675
F 0 "R9" V 6405 2675 50  0000 C CNN
F 1 "20k" V 6325 2675 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 6375 2125 50  0001 C CNN
F 3 "http://www.yageo.com/NewPortal/yageodocoutput?fileName=/pdf/R-Chip/PYu-RC_Group_51_RoHS_L_4.pdf" H 6325 2225 50  0001 C CNN
F 4 "RC0805FR-076K2L" H 6825 2375 60  0001 C CNN "MFG P/N"
F 5 "Yageo" H 6125 2375 60  0001 C CNN "MFG"
	1    6325 2675
	0    1    1    0   
$EndComp
$Comp
L 6k2 R10
U 1 1 5A2E14CB
P 6650 2775
F 0 "R10" V 6730 2775 50  0000 C CNN
F 1 "20k" V 6650 2775 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 6700 2225 50  0001 C CNN
F 3 "http://www.yageo.com/NewPortal/yageodocoutput?fileName=/pdf/R-Chip/PYu-RC_Group_51_RoHS_L_4.pdf" H 6650 2325 50  0001 C CNN
F 4 "RC0805FR-076K2L" H 7150 2475 60  0001 C CNN "MFG P/N"
F 5 "Yageo" H 6450 2475 60  0001 C CNN "MFG"
	1    6650 2775
	0    1    1    0   
$EndComp
$Comp
L 6k2 R11
U 1 1 5A2E14D3
P 6325 2875
F 0 "R11" V 6405 2875 50  0000 C CNN
F 1 "20k" V 6325 2875 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 6375 2325 50  0001 C CNN
F 3 "http://www.yageo.com/NewPortal/yageodocoutput?fileName=/pdf/R-Chip/PYu-RC_Group_51_RoHS_L_4.pdf" H 6325 2425 50  0001 C CNN
F 4 "RC0805FR-076K2L" H 6825 2575 60  0001 C CNN "MFG P/N"
F 5 "Yageo" H 6125 2575 60  0001 C CNN "MFG"
	1    6325 2875
	0    1    1    0   
$EndComp
Wire Wire Line
	5950 2075 6175 2075
Wire Wire Line
	6500 1975 5950 1975
Wire Wire Line
	6900 1875 5950 1875
Wire Wire Line
	6500 2175 5950 2175
Wire Wire Line
	6175 2275 5950 2275
Wire Wire Line
	5950 2475 6175 2475
Wire Wire Line
	6500 2375 5950 2375
Wire Wire Line
	6500 2575 5950 2575
Wire Wire Line
	6175 2675 5950 2675
Wire Wire Line
	6500 2775 5950 2775
Wire Wire Line
	6175 2875 5950 2875
$Comp
L CONN_01X05 P5
U 1 1 5A2E1CEC
P 3575 2125
F 0 "P5" H 3575 2425 50  0000 C CNN
F 1 "CONN_01X05" V 3675 2125 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 3575 2125 50  0001 C CNN
F 3 "" H 3575 2125 50  0000 C CNN
	1    3575 2125
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X05 P4
U 1 1 5A2E1D9A
P 3575 2800
F 0 "P4" H 3575 3100 50  0000 C CNN
F 1 "CONN_01X05" V 3675 2800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 3575 2800 50  0001 C CNN
F 3 "" H 3575 2800 50  0000 C CNN
	1    3575 2800
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X05 P6
U 1 1 5A2E1E06
P 4675 2125
F 0 "P6" H 4675 2425 50  0000 C CNN
F 1 "CONN_01X05" V 4775 2125 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 4675 2125 50  0001 C CNN
F 3 "" H 4675 2125 50  0000 C CNN
	1    4675 2125
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X05 P7
U 1 1 5A2E1E95
P 4675 2800
F 0 "P7" H 4675 3100 50  0000 C CNN
F 1 "CONN_01X05" V 4775 2800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 4675 2800 50  0001 C CNN
F 3 "" H 4675 2800 50  0000 C CNN
	1    4675 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4475 1925 4475 1700
Wire Wire Line
	4475 1700 4950 1700
Wire Wire Line
	4950 1700 4950 1775
$Comp
L GNDREF #PWR03
U 1 1 5A2E226D
P 4475 3150
F 0 "#PWR03" H 4475 2900 50  0001 C CNN
F 1 "GNDREF" H 4475 3000 50  0001 C CNN
F 2 "" H 4475 3150 50  0000 C CNN
F 3 "" H 4475 3150 50  0000 C CNN
	1    4475 3150
	1    0    0    -1  
$EndComp
$Comp
L GNDREF #PWR04
U 1 1 5A2E230E
P 4950 1775
F 0 "#PWR04" H 4950 1525 50  0001 C CNN
F 1 "GNDREF" H 4950 1625 50  0001 C CNN
F 2 "" H 4950 1775 50  0000 C CNN
F 3 "" H 4950 1775 50  0000 C CNN
	1    4950 1775
	1    0    0    -1  
$EndComp
$Comp
L VAA #PWR05
U 1 1 5A2E2393
P 3275 3025
F 0 "#PWR05" H 3275 2875 50  0001 C CNN
F 1 "VAA" H 3275 3175 50  0000 C CNN
F 2 "" H 3275 3025 50  0000 C CNN
F 3 "" H 3275 3025 50  0000 C CNN
	1    3275 3025
	1    0    0    -1  
$EndComp
Wire Wire Line
	4475 3150 4475 3000
Wire Bus Line
	4100 3075 4100 1450
Entry Wire Line
	4000 2025 4100 1925
Entry Wire Line
	4000 2125 4100 2025
Entry Wire Line
	4000 2225 4100 2125
Entry Wire Line
	4000 2325 4100 2225
Entry Wire Line
	4000 2600 4100 2500
Entry Wire Line
	4000 2700 4100 2600
Entry Wire Line
	4000 2800 4100 2700
Entry Wire Line
	4000 2900 4100 2800
Entry Wire Line
	4100 2600 4200 2700
Entry Wire Line
	4100 2700 4200 2800
Entry Wire Line
	4100 2800 4200 2900
Wire Wire Line
	3775 2025 4000 2025
Wire Wire Line
	3775 2125 4000 2125
Wire Wire Line
	3775 2225 4000 2225
Wire Wire Line
	3775 2325 4000 2325
Wire Wire Line
	3775 2600 4000 2600
Wire Wire Line
	3775 2700 4000 2700
Wire Wire Line
	3775 2800 4000 2800
Wire Wire Line
	3775 2900 4000 2900
Wire Wire Line
	4200 2025 4475 2025
Wire Wire Line
	4200 2125 4475 2125
Wire Wire Line
	4200 2225 4475 2225
Wire Wire Line
	4200 2325 4475 2325
Wire Wire Line
	4200 2600 4475 2600
Wire Wire Line
	4200 2700 4475 2700
Wire Wire Line
	4200 2800 4475 2800
Wire Wire Line
	4200 2900 4475 2900
Text Label 3800 2025 0    60   ~ 0
HV0
Text Label 3800 2125 0    60   ~ 0
HV1
Text Label 3800 2225 0    60   ~ 0
HV2
Text Label 3800 2325 0    60   ~ 0
HV3
Text Label 3800 2600 0    60   ~ 0
HV4
Text Label 3800 2700 0    60   ~ 0
HV5
Text Label 3800 2800 0    60   ~ 0
HV6
Text Label 3800 2900 0    60   ~ 0
HV7
Text Label 4225 2900 0    60   ~ 0
HV8
Text Label 4225 2800 0    60   ~ 0
HV9
Text Label 4225 2700 0    60   ~ 0
HV10
Text Label 4225 2600 0    60   ~ 0
HV11
Text Label 4225 2325 0    60   ~ 0
HV12
Text Label 4225 2225 0    60   ~ 0
HV13
Text Label 4225 2125 0    60   ~ 0
HV14
Text Label 4225 2025 0    60   ~ 0
HV15
Wire Bus Line
	4100 1450 5850 1450
Entry Wire Line
	5850 1775 5950 1875
Entry Wire Line
	5850 1875 5950 1975
Entry Wire Line
	5850 1975 5950 2075
Entry Wire Line
	5850 2075 5950 2175
Entry Wire Line
	5850 2175 5950 2275
Entry Wire Line
	5850 2275 5950 2375
Entry Wire Line
	5850 2375 5950 2475
Entry Wire Line
	5850 2475 5950 2575
Entry Wire Line
	5850 2575 5950 2675
Entry Wire Line
	5850 2675 5950 2775
Entry Wire Line
	5850 2775 5950 2875
Wire Bus Line
	5850 1450 5850 2875
Text Label 5975 2875 0    60   ~ 0
HV0
Text Label 5975 1975 0    60   ~ 0
HV1
Text Label 5975 2075 0    60   ~ 0
HV2
Text Label 5975 2175 0    60   ~ 0
HV3
Text Label 5975 2275 0    60   ~ 0
HV4
Text Label 5975 2375 0    60   ~ 0
HV5
Text Label 5975 2475 0    60   ~ 0
HV6
Text Label 5975 2575 0    60   ~ 0
HV7
Text Label 5975 2675 0    60   ~ 0
HV8
Text Label 5975 2775 0    60   ~ 0
HV9
Text Label 5975 1875 0    60   ~ 0
HV10
NoConn ~ 4200 2025
NoConn ~ 4200 2125
NoConn ~ 4200 2225
NoConn ~ 4200 2325
Wire Wire Line
	3275 3025 3275 3150
Wire Wire Line
	3275 3150 3775 3150
Wire Wire Line
	3775 3150 3775 3000
$Comp
L IN-16-RESCUE-NixCard_IN16 N1
U 1 1 5A5C0689
P 7250 2475
F 0 "N1" H 7025 1750 50  0000 L BNN
F 1 "IN-16" H 7450 1750 50  0000 L BNN
F 2 "footprints:IN-16-skt" H 7250 2625 50  0001 C CNN
F 3 "" H 7250 2475 60  0001 C CNN
	1    7250 2475
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 1975 7650 1975
Text Label 5975 1775 0    60   ~ 0
HV11
Entry Wire Line
	5850 1675 5950 1775
Wire Wire Line
	6800 1775 5950 1775
Wire Wire Line
	6800 1325 6800 1775
$Comp
L 6k2 R12
U 1 1 5A5C11AD
P 7375 1325
F 0 "R12" V 7455 1325 50  0000 C CNN
F 1 "120k" V 7375 1325 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 7425 775 50  0001 C CNN
F 3 "http://www.yageo.com/NewPortal/yageodocoutput?fileName=/pdf/R-Chip/PYu-RC_Group_51_RoHS_L_4.pdf" H 7375 875 50  0001 C CNN
F 4 "RC0805FR-076K2L" H 7875 1025 60  0001 C CNN "MFG P/N"
F 5 "Yageo" H 7175 1025 60  0001 C CNN "MFG"
	1    7375 1325
	0    1    1    0   
$EndComp
Wire Wire Line
	6800 1325 7225 1325
Wire Wire Line
	7525 1325 8000 1325
Wire Wire Line
	8000 1325 8000 2875
Wire Wire Line
	8000 2875 7650 2875
Entry Wire Line
	4100 2500 4200 2600
$EndSCHEMATC
