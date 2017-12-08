EESchema Schematic File Version 2
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
LIBS:NixCard-cache
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
L 6k2 R1
U 1 1 585F2D1C
P 8150 2475
F 0 "R1" V 8230 2475 50  0000 C CNN
F 1 "20k" V 8150 2475 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 8200 1925 50  0001 C CNN
F 3 "http://www.yageo.com/NewPortal/yageodocoutput?fileName=/pdf/R-Chip/PYu-RC_Group_51_RoHS_L_4.pdf" H 8150 2025 50  0001 C CNN
F 4 "RC0805FR-076K2L" H 8650 2175 60  0001 C CNN "MFG P/N"
F 5 "Yageo" H 7950 2175 60  0001 C CNN "MFG"
	1    8150 2475
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 1975 7850 1525
Wire Wire Line
	7850 2475 8000 2475
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
	8400 2175 8400 2475
Wire Wire Line
	8400 2475 8300 2475
$Comp
L IN-12B N1
U 1 1 585F41A2
P 7450 2475
F 0 "N1" H 7150 1750 50  0000 L BNN
F 1 "IN-12B" H 7600 1775 50  0000 L BNN
F 2 "footprints:IN-12B-skt" H 7350 1725 50  0001 C CNN
F 3 "https://archive.org/details/IN12BB" H 7500 1525 60  0001 C CNN
F 4 "CCCP" H 6950 1625 60  0001 C CNN "MFG"
F 5 "IN-12B" H 7300 1625 60  0001 C CNN "MFG P/N"
	1    7450 2475
	1    0    0    -1  
$EndComp
Text Label 8400 2275 0    60   ~ 0
VAA
Wire Wire Line
	6275 2775 6950 2775
Wire Wire Line
	6950 2675 6275 2675
Wire Wire Line
	6900 1525 6900 1875
$Comp
L 6k2 R2
U 1 1 5A232F37
P 7375 1525
F 0 "R2" V 7455 1525 50  0000 C CNN
F 1 "56k" V 7375 1525 50  0000 C CNN
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
Wire Wire Line
	6900 1875 6275 1875
Wire Wire Line
	6275 2575 6950 2575
Wire Wire Line
	6275 2475 6950 2475
Wire Wire Line
	6275 2375 6950 2375
Wire Wire Line
	6275 2275 6950 2275
Wire Wire Line
	6275 2175 6950 2175
Wire Wire Line
	6275 2075 6950 2075
Wire Wire Line
	6275 1975 6950 1975
Wire Wire Line
	6950 2875 6275 2875
$Comp
L CONN_01X06 P1
U 1 1 5A2322CF
P 6075 2125
F 0 "P1" H 6075 1775 50  0000 C CNN
F 1 "CONN_01X06" V 6175 2125 50  0000 C CNN
F 2 "Connectors_Samtec:SL-106-X-XX_1x06" H 6075 2125 50  0001 C CNN
F 3 "" H 6075 2125 50  0000 C CNN
	1    6075 2125
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X06 P2
U 1 1 5A232324
P 6075 2725
F 0 "P2" H 6075 3075 50  0000 C CNN
F 1 "CONN_01X06" V 6175 2725 50  0000 C CNN
F 2 "Connectors_Samtec:SL-106-X-XX_1x06" H 6075 2725 50  0001 C CNN
F 3 "" H 6075 2725 50  0000 C CNN
	1    6075 2725
	-1   0    0    1   
$EndComp
Wire Wire Line
	6275 2975 6275 3300
Wire Wire Line
	6275 3300 6550 3300
Wire Wire Line
	6550 3300 6550 3225
$Comp
L VAA #PWR02
U 1 1 5A2324DC
P 6550 3225
F 0 "#PWR02" H 6550 3075 50  0001 C CNN
F 1 "VAA" H 6550 3375 50  0000 C CNN
F 2 "" H 6550 3225 50  0000 C CNN
F 3 "" H 6550 3225 50  0000 C CNN
	1    6550 3225
	1    0    0    -1  
$EndComp
$EndSCHEMATC
