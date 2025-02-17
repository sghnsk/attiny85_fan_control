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
LIBS:microchip
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
LIBS:transistor-npn
LIBS:transistor-pnp
LIBS:transistor-power
LIBS:v-reg
LIBS:attiny85_fan_control_01-cache
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
L BD139 Q1
U 1 1 56DEF083
P 4900 2900
F 0 "Q1" H 5100 2975 50  0000 L CNN
F 1 "BD139" H 5100 2900 50  0000 L CNN
F 2 "transistor-pnp:transistor-pnp-TO126V" H 5100 2825 50  0000 L CIN
F 3 "" H 4900 2900 50  0000 L CNN
	1    4900 2900
	1    0    0    -1  
$EndComp
$Comp
L BD139 Q2
U 1 1 56DEF146
P 4900 4100
F 0 "Q2" H 5100 4175 50  0000 L CNN
F 1 "BD139" H 5100 4100 50  0000 L CNN
F 2 "transistor-pnp:transistor-pnp-TO126V" H 5100 4025 50  0000 L CIN
F 3 "" H 4900 4100 50  0000 L CNN
	1    4900 4100
	1    0    0    -1  
$EndComp
$Comp
L ATTINY85-P IC1
U 1 1 56DEF1A3
P 4550 1600
F 0 "IC1" H 3400 2000 50  0000 C CNN
F 1 "ATTINY85-P" H 5550 1200 50  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_LongPads" H 5550 1600 50  0000 C CIN
F 3 "" H 4550 1600 50  0000 C CNN
	1    4550 1600
	-1   0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 56DEF1EE
P 4350 2900
F 0 "R3" V 4430 2900 50  0000 C CNN
F 1 "1K" V 4350 2900 50  0000 C CNN
F 2 "Discret:R3" V 4280 2900 50  0001 C CNN
F 3 "" H 4350 2900 50  0000 C CNN
	1    4350 2900
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 56DEF2FF
P 4350 4100
F 0 "R4" V 4430 4100 50  0000 C CNN
F 1 "1K" V 4350 4100 50  0000 C CNN
F 2 "Discret:R1" V 4280 4100 50  0001 C CNN
F 3 "" H 4350 4100 50  0000 C CNN
	1    4350 4100
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 56DEF392
P 1500 1650
F 0 "R1" V 1580 1650 50  0000 C CNN
F 1 "4K7" V 1500 1650 50  0000 C CNN
F 2 "Discret:R1" V 1430 1650 50  0001 C CNN
F 3 "" H 1500 1650 50  0000 C CNN
	1    1500 1650
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 56DEF481
P 1500 1750
F 0 "R2" V 1580 1750 50  0000 C CNN
F 1 "4K7" V 1500 1750 50  0000 C CNN
F 2 "Discret:R1" V 1430 1750 50  0001 C CNN
F 3 "" H 1500 1750 50  0000 C CNN
	1    1500 1750
	0    1    1    0   
$EndComp
$Comp
L C_Small C3
U 1 1 56DEF59A
P 3100 1500
F 0 "C3" H 3110 1570 50  0000 L CNN
F 1 "104" H 3110 1420 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 3100 1500 50  0001 C CNN
F 3 "" H 3100 1500 50  0000 C CNN
	1    3100 1500
	1    0    0    -1  
$EndComp
$Comp
L CP_Small C5
U 1 1 56DEF659
P 4600 4250
F 0 "C5" H 4610 4320 50  0000 L CNN
F 1 "100,0 x 16v" H 4610 4170 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D6.3_L11.2_P2.5" H 4600 4250 50  0001 C CNN
F 3 "" H 4600 4250 50  0000 C CNN
	1    4600 4250
	1    0    0    -1  
$EndComp
$Comp
L CP_Small C4
U 1 1 56DEF6F4
P 4600 3050
F 0 "C4" H 4610 3120 50  0000 L CNN
F 1 "100,0 x 16v" H 4610 2970 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D6.3_L11.2_P2.5" H 4600 3050 50  0001 C CNN
F 3 "" H 4600 3050 50  0000 C CNN
	1    4600 3050
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 56DEF75B
P 2450 2900
F 0 "C2" H 2460 2970 50  0000 L CNN
F 1 "104" H 2460 2820 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 2450 2900 50  0001 C CNN
F 3 "" H 2450 2900 50  0000 C CNN
	1    2450 2900
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 56DEF856
P 1450 2900
F 0 "C1" H 1460 2970 50  0000 L CNN
F 1 "104" H 1460 2820 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 1450 2900 50  0001 C CNN
F 3 "" H 1450 2900 50  0000 C CNN
	1    1450 2900
	1    0    0    -1  
$EndComp
$Comp
L D_Small D1
U 1 1 56DEF97E
P 4900 2500
F 0 "D1" H 4850 2580 50  0000 L CNN
F 1 "1N4148" H 4750 2420 50  0000 L CNN
F 2 "diode:diode-DO34-5" V 4900 2500 50  0001 C CNN
F 3 "" V 4900 2500 50  0000 C CNN
	1    4900 2500
	0    1    1    0   
$EndComp
$Comp
L D_Small D2
U 1 1 56DEFA31
P 4900 3700
F 0 "D2" H 4850 3780 50  0000 L CNN
F 1 "1N4148" H 4750 3620 50  0000 L CNN
F 2 "diode:diode-DO34-5" V 4900 3700 50  0001 C CNN
F 3 "" V 4900 3700 50  0000 C CNN
	1    4900 3700
	0    1    1    0   
$EndComp
$Comp
L CONN_01X02 P3
U 1 1 56DEFA80
P 5300 2550
F 0 "P3" H 5300 2700 50  0000 C CNN
F 1 "FAN1" V 5400 2550 50  0000 C CNN
F 2 "conn_dg350:DG350-3.5_2pin" H 5300 2550 50  0001 C CNN
F 3 "" H 5300 2550 50  0000 C CNN
	1    5300 2550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P4
U 1 1 56DEFB67
P 5300 3750
F 0 "P4" H 5300 3900 50  0000 C CNN
F 1 "FAN2" V 5400 3750 50  0000 C CNN
F 2 "conn_dg350:DG350-3.5_2pin" H 5300 3750 50  0001 C CNN
F 3 "" H 5300 3750 50  0000 C CNN
	1    5300 3750
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P2
U 1 1 56DEFCBC
P 1000 2000
F 0 "P2" H 1000 2200 50  0000 C CNN
F 1 "IN2" V 1100 2000 50  0000 C CNN
F 2 "conn_dg350:DG350-3.5_3pin" H 1000 2000 50  0001 C CNN
F 3 "" H 1000 2000 50  0000 C CNN
	1    1000 2000
	-1   0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 56DF26F3
P 4950 1100
F 0 "R5" V 5030 1100 50  0000 C CNN
F 1 "10K" V 4950 1100 50  0000 C CNN
F 2 "Discret:R1" V 4880 1100 50  0001 C CNN
F 3 "" H 4950 1100 50  0000 C CNN
	1    4950 1100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR01
U 1 1 56DF37A5
P 5000 4400
F 0 "#PWR01" H 5000 4150 50  0001 C CNN
F 1 "GND" H 5000 4250 50  0000 C CNN
F 2 "" H 5000 4400 50  0000 C CNN
F 3 "" H 5000 4400 50  0000 C CNN
	1    5000 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 56DF3881
P 4600 4400
F 0 "#PWR02" H 4600 4150 50  0001 C CNN
F 1 "GND" H 4600 4250 50  0000 C CNN
F 2 "" H 4600 4400 50  0000 C CNN
F 3 "" H 4600 4400 50  0000 C CNN
	1    4600 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 56DF3A2F
P 5000 3200
F 0 "#PWR03" H 5000 2950 50  0001 C CNN
F 1 "GND" H 5000 3050 50  0000 C CNN
F 2 "" H 5000 3200 50  0000 C CNN
F 3 "" H 5000 3200 50  0000 C CNN
	1    5000 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 56DF3BA1
P 4600 3200
F 0 "#PWR04" H 4600 2950 50  0001 C CNN
F 1 "GND" H 4600 3050 50  0000 C CNN
F 2 "" H 4600 3200 50  0000 C CNN
F 3 "" H 4600 3200 50  0000 C CNN
	1    4600 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 56DF3D81
P 3100 1950
F 0 "#PWR05" H 3100 1700 50  0001 C CNN
F 1 "GND" H 3100 1800 50  0000 C CNN
F 2 "" H 3100 1950 50  0000 C CNN
F 3 "" H 3100 1950 50  0000 C CNN
	1    3100 1950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 56DF3E5D
P 2450 3100
F 0 "#PWR06" H 2450 2850 50  0001 C CNN
F 1 "GND" H 2450 2950 50  0000 C CNN
F 2 "" H 2450 3100 50  0000 C CNN
F 3 "" H 2450 3100 50  0000 C CNN
	1    2450 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 56DF3E99
P 1950 3150
F 0 "#PWR07" H 1950 2900 50  0001 C CNN
F 1 "GND" H 1950 3000 50  0000 C CNN
F 2 "" H 1950 3150 50  0000 C CNN
F 3 "" H 1950 3150 50  0000 C CNN
	1    1950 3150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 56DF3ED5
P 1450 3100
F 0 "#PWR08" H 1450 2850 50  0001 C CNN
F 1 "GND" H 1450 2950 50  0000 C CNN
F 2 "" H 1450 3100 50  0000 C CNN
F 3 "" H 1450 3100 50  0000 C CNN
	1    1450 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 56DF7B23
P 1300 1350
F 0 "#PWR09" H 1300 1100 50  0001 C CNN
F 1 "GND" H 1300 1200 50  0000 C CNN
F 2 "" H 1300 1350 50  0000 C CNN
F 3 "" H 1300 1350 50  0000 C CNN
	1    1300 1350
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR010
U 1 1 56DF8E97
P 1300 900
F 0 "#PWR010" H 1300 750 50  0001 C CNN
F 1 "+12V" H 1300 1040 50  0000 C CNN
F 2 "" H 1300 900 50  0000 C CNN
F 3 "" H 1300 900 50  0000 C CNN
	1    1300 900 
	1    0    0    -1  
$EndComp
Text GLabel 1200 2750 0    60   Input ~ 0
VCC12V
Text GLabel 2700 2750 2    60   Input ~ 0
VCC5V
Text GLabel 4000 4100 0    60   Input ~ 0
FAN2
Text GLabel 4100 3500 0    60   Input ~ 0
VCC12V
Text GLabel 4000 2900 0    60   Input ~ 0
FAN1
Text GLabel 4100 2300 0    60   Input ~ 0
VCC12V
Text GLabel 6150 1750 2    60   Input ~ 0
DS2
Text GLabel 6150 1650 2    60   Input ~ 0
DS1
Text GLabel 6150 1550 2    60   Input ~ 0
TX
Text GLabel 6150 1450 2    60   Input ~ 0
FAN1
Text GLabel 6150 1350 2    60   Input ~ 0
FAN2
Text GLabel 2850 1100 0    60   Input ~ 0
VCC5V
Text GLabel 1850 2000 2    60   Input ~ 0
DS2
Text GLabel 1850 1900 2    60   Input ~ 0
DS1
Text GLabel 1800 1650 2    60   Input ~ 0
VCC5V
Text GLabel 1500 1200 2    60   Input ~ 0
VCC5V
Text GLabel 1450 1000 2    60   Input ~ 0
VCC12V
Wire Wire Line
	5900 1350 6150 1350
Wire Wire Line
	5900 1450 6150 1450
Wire Wire Line
	5900 1550 6150 1550
Wire Wire Line
	5900 1650 6150 1650
Wire Wire Line
	5900 1750 6150 1750
Connection ~ 1300 1000
Wire Wire Line
	1300 900  1300 1000
Connection ~ 3100 1100
Connection ~ 1300 2000
Wire Wire Line
	1300 1750 1300 2000
Wire Wire Line
	1350 1750 1300 1750
Connection ~ 1250 1900
Wire Wire Line
	1250 1650 1250 1900
Wire Wire Line
	1350 1650 1250 1650
Wire Wire Line
	1200 1900 1850 1900
Connection ~ 1750 1650
Wire Wire Line
	1650 1650 1800 1650
Wire Wire Line
	1750 1750 1750 1650
Wire Wire Line
	1650 1750 1750 1750
Wire Wire Line
	1200 2000 1850 2000
Wire Wire Line
	1200 1000 1450 1000
Wire Wire Line
	1200 1200 1500 1200
Wire Wire Line
	1300 1100 1300 1350
Wire Wire Line
	1200 1100 1300 1100
Wire Wire Line
	1200 2100 1850 2100
Connection ~ 5000 3600
Wire Wire Line
	5000 3500 5000 3600
Wire Wire Line
	4100 3500 5000 3500
Connection ~ 5000 2400
Wire Wire Line
	5000 2300 5000 2400
Wire Wire Line
	4100 2300 5000 2300
Connection ~ 2450 2750
Connection ~ 1450 2750
Wire Wire Line
	4200 2900 4000 2900
Wire Wire Line
	4000 4100 4200 4100
Wire Wire Line
	4600 4350 4600 4400
Wire Wire Line
	4600 3150 4600 3200
Wire Wire Line
	1450 3000 1450 3100
Wire Wire Line
	2450 3000 2450 3100
Connection ~ 3100 1850
Wire Wire Line
	3100 1850 3200 1850
Wire Wire Line
	3100 1600 3100 1950
Wire Wire Line
	5000 4300 5000 4400
Wire Wire Line
	5000 3100 5000 3200
Wire Wire Line
	1450 2750 1450 2800
Wire Wire Line
	1200 2750 1650 2750
Wire Wire Line
	2850 1100 4800 1100
Wire Wire Line
	6000 1100 5100 1100
Wire Wire Line
	6000 1850 6000 1100
Wire Wire Line
	5900 1850 6000 1850
Wire Wire Line
	4900 3600 5100 3600
Wire Wire Line
	5100 3600 5100 3700
Connection ~ 5000 3800
Wire Wire Line
	5000 3800 5000 3900
Wire Wire Line
	4900 3800 5100 3800
Wire Wire Line
	4900 2400 5100 2400
Wire Wire Line
	5100 2400 5100 2500
Connection ~ 5000 2600
Wire Wire Line
	5000 2600 5000 2700
Wire Wire Line
	4900 2600 5100 2600
Connection ~ 4600 4100
Wire Wire Line
	4600 4150 4600 4100
Wire Wire Line
	4500 4100 4700 4100
Connection ~ 4600 2900
Wire Wire Line
	4600 2950 4600 2900
Wire Wire Line
	4500 2900 4700 2900
Connection ~ 3100 1350
Wire Wire Line
	3100 1100 3100 1400
Wire Wire Line
	2450 2600 2450 2800
Wire Wire Line
	3100 1350 3200 1350
Wire Wire Line
	2250 2750 2700 2750
$Comp
L +5V #PWR011
U 1 1 56DFCD1F
P 2450 2600
F 0 "#PWR011" H 2450 2450 50  0001 C CNN
F 1 "+5V" H 2450 2740 50  0000 C CNN
F 2 "" H 2450 2600 50  0000 C CNN
F 3 "" H 2450 2600 50  0000 C CNN
	1    2450 2600
	1    0    0    -1  
$EndComp
Text Notes 750  1900 0    60   ~ 0
DS1
Text Notes 750  2000 0    60   ~ 0
DS2
Text Notes 700  1000 0    60   ~ 0
+12V
Text Notes 600  1200 0    60   ~ 0
DS5VCC
Text Notes 700  1100 0    60   ~ 0
GND
Text GLabel 1850 2100 2    60   Input ~ 0
TX
Text Notes 750  2100 0    60   ~ 0
TX
Text Notes 5450 2500 0    60   ~ 0
+
Text Notes 5450 2600 0    60   ~ 0
-
Text Notes 5450 3700 0    60   ~ 0
+
Text Notes 5450 3800 0    60   ~ 0
-
$Comp
L CONN_01X03 P1
U 1 1 56DEFBC8
P 1000 1100
F 0 "P1" H 1000 1300 50  0000 C CNN
F 1 "IN1" V 1100 1100 50  0000 C CNN
F 2 "conn_dg350:DG350-3.5_3pin" H 1000 1100 50  0001 C CNN
F 3 "" H 1000 1100 50  0000 C CNN
	1    1000 1100
	-1   0    0    -1  
$EndComp
$Comp
L 78LXX IC2
U 1 1 56E0078F
P 1950 2750
F 0 "IC2" H 2050 2450 50  0000 L BNN
F 1 "78L05" H 2050 2350 50  0000 L BNN
F 2 "v-reg:v-reg-78LXX" H 1950 2900 50  0001 C CNN
F 3 "" H 1950 2750 60  0000 C CNN
	1    1950 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3050 1950 3150
$EndSCHEMATC
