EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
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
L Device:Rotary_Encoder_Switch SW2
U 1 1 608725B3
P 8100 2350
F 0 "SW2" H 8100 2717 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 8100 2626 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 7950 2510 50  0001 C CNN
F 3 "~" H 8100 2610 50  0001 C CNN
	1    8100 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 60873B64
P 8750 2900
F 0 "R5" V 8543 2900 50  0000 C CNN
F 1 "10k" V 8634 2900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8680 2900 50  0001 C CNN
F 3 "~" H 8750 2900 50  0001 C CNN
	1    8750 2900
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 6087474C
P 8750 3250
F 0 "R6" V 8543 3250 50  0000 C CNN
F 1 "10k" V 8634 3250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8680 3250 50  0001 C CNN
F 3 "~" H 8750 3250 50  0001 C CNN
	1    8750 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	7800 2350 7600 2350
Wire Wire Line
	7600 2350 7600 2650
Wire Wire Line
	7600 2650 8550 2650
Wire Wire Line
	8550 2650 8550 2550
Wire Wire Line
	8550 2450 8400 2450
Wire Wire Line
	8550 2550 9150 2550
Connection ~ 8550 2550
Wire Wire Line
	8550 2550 8550 2450
Text GLabel 9150 2550 2    50   Input ~ 0
GND
Text GLabel 9150 2350 2    50   Input ~ 0
+5V
Wire Wire Line
	9150 2350 8950 2350
Wire Wire Line
	8950 2350 8950 2900
Wire Wire Line
	8950 3250 8900 3250
Wire Wire Line
	8900 2900 8950 2900
Connection ~ 8950 2900
Wire Wire Line
	8950 2900 8950 3250
Wire Wire Line
	8600 2900 7500 2900
Wire Wire Line
	7500 2900 7500 2450
Wire Wire Line
	7500 2450 7800 2450
Wire Wire Line
	8600 3250 8500 3250
Wire Wire Line
	7450 3250 7450 2250
Wire Wire Line
	7450 2250 7800 2250
Text GLabel 9150 2200 2    50   Input ~ 0
SW
Wire Wire Line
	8400 2250 8800 2250
Wire Wire Line
	8800 2250 8800 2200
Wire Wire Line
	8800 2200 9150 2200
Text GLabel 9150 1900 2    50   Input ~ 0
CLK
Wire Wire Line
	9150 2050 8600 2050
Wire Wire Line
	8600 2050 8600 2900
Connection ~ 8600 2900
Wire Wire Line
	9150 1900 8500 1900
Wire Wire Line
	8500 1900 8500 3250
Connection ~ 8500 3250
Wire Wire Line
	8500 3250 7450 3250
Text GLabel 9150 2050 2    50   Input ~ 0
DT
$Comp
L promicro:ProMicro U1
U 1 1 6087C341
P 5200 2500
F 0 "U1" H 5200 3537 60  0000 C CNN
F 1 "ProMicro" H 5200 3431 60  0000 C CNN
F 2 "promicro:ProMicro" H 5300 1450 60  0001 C CNN
F 3 "" H 5300 1450 60  0000 C CNN
	1    5200 2500
	1    0    0    -1  
$EndComp
Text GLabel 6050 1750 2    50   Input ~ 0
+5V
$Comp
L Device:R R2
U 1 1 60886361
P 6650 3200
F 0 "R2" V 6857 3200 50  0000 C CNN
F 1 "R" V 6766 3200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6580 3200 50  0001 C CNN
F 3 "~" H 6650 3200 50  0001 C CNN
	1    6650 3200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 60887159
P 6650 3600
F 0 "R3" V 6443 3600 50  0000 C CNN
F 1 "R" V 6534 3600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6580 3600 50  0001 C CNN
F 3 "~" H 6650 3600 50  0001 C CNN
	1    6650 3600
	0    1    1    0   
$EndComp
$Comp
L Device:LED D2
U 1 1 6088E44C
P 6250 3200
F 0 "D2" H 6243 2945 50  0000 C CNN
F 1 "LED" H 6243 3036 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 6250 3200 50  0001 C CNN
F 3 "~" H 6250 3200 50  0001 C CNN
	1    6250 3200
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 6088EE1B
P 6250 3600
F 0 "D3" H 6243 3345 50  0000 C CNN
F 1 "LED" H 6243 3436 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 6250 3600 50  0001 C CNN
F 3 "~" H 6250 3600 50  0001 C CNN
	1    6250 3600
	-1   0    0    1   
$EndComp
Text GLabel 6950 3350 2    50   Input ~ 0
GND
Wire Wire Line
	6500 3600 6400 3600
Wire Wire Line
	6950 3350 6800 3350
Text GLabel 6050 2450 2    50   Input ~ 0
CLK
Wire Wire Line
	6050 2650 5900 2650
Wire Wire Line
	5900 2750 6000 2750
Wire Wire Line
	6050 2450 5900 2450
Text GLabel 6050 2350 2    50   Input ~ 0
DT
Text GLabel 6050 2250 2    50   Input ~ 0
SW
Wire Wire Line
	6050 2250 5900 2250
Wire Wire Line
	5900 2350 6050 2350
Wire Wire Line
	5900 1750 6050 1750
$Sheet
S 2650 2050 1100 900 
U 608A1D3F
F0 "matrix" 50
F1 "keypad_matrix.sch" 50
F2 "R1" I R 3750 2150 50 
F3 "R2" I R 3750 2250 50 
F4 "R3" I R 3750 2350 50 
F5 "R4" I R 3750 2450 50 
F6 "C1" I R 3750 2550 50 
F7 "C2" I R 3750 2650 50 
F8 "C3" I R 3750 2750 50 
F9 "C4" I R 3750 2850 50 
$EndSheet
Wire Wire Line
	3750 2150 4500 2150
Wire Wire Line
	4500 2250 3750 2250
Wire Wire Line
	3750 2350 4500 2350
Wire Wire Line
	4500 2450 3750 2450
Wire Wire Line
	3750 2550 4500 2550
Wire Wire Line
	4500 2650 3750 2650
Wire Wire Line
	3750 2750 4500 2750
Wire Wire Line
	4500 2850 3750 2850
$Comp
L Device:R R4
U 1 1 60918EA0
P 6650 4000
F 0 "R4" V 6443 4000 50  0000 C CNN
F 1 "R" V 6534 4000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6580 4000 50  0001 C CNN
F 3 "~" H 6650 4000 50  0001 C CNN
	1    6650 4000
	0    1    1    0   
$EndComp
$Comp
L Device:LED D4
U 1 1 60918EA6
P 6250 4000
F 0 "D4" H 6243 3745 50  0000 C CNN
F 1 "LED" H 6243 3836 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 6250 4000 50  0001 C CNN
F 3 "~" H 6250 4000 50  0001 C CNN
	1    6250 4000
	-1   0    0    1   
$EndComp
Wire Wire Line
	5950 2850 5900 2850
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 6092628F
P 4550 3750
F 0 "H3" H 4650 3799 50  0000 L CNN
F 1 "MountingHole_Pad" H 4650 3708 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm_Pad" H 4550 3750 50  0001 C CNN
F 3 "~" H 4550 3750 50  0001 C CNN
	1    4550 3750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 60926BA0
P 4300 3750
F 0 "H2" H 4400 3799 50  0000 L CNN
F 1 "MountingHole_Pad" H 4400 3708 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm_Pad" H 4300 3750 50  0001 C CNN
F 3 "~" H 4300 3750 50  0001 C CNN
	1    4300 3750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 60927249
P 4050 3750
F 0 "H1" H 4150 3799 50  0000 L CNN
F 1 "MountingHole_Pad" H 4150 3708 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm_Pad" H 4050 3750 50  0001 C CNN
F 3 "~" H 4050 3750 50  0001 C CNN
	1    4050 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 60929615
P 4300 4000
F 0 "#PWR01" H 4300 3750 50  0001 C CNN
F 1 "GND" H 4305 3827 50  0000 C CNN
F 2 "" H 4300 4000 50  0001 C CNN
F 3 "" H 4300 4000 50  0001 C CNN
	1    4300 4000
	1    0    0    -1  
$EndComp
Text GLabel 3850 4000 0    50   Input ~ 0
GND
Wire Wire Line
	4050 3850 4050 4000
Wire Wire Line
	4050 4000 4300 4000
Wire Wire Line
	4300 3850 4300 4000
Connection ~ 4300 4000
Wire Wire Line
	4550 3850 4550 4000
Wire Wire Line
	4550 4000 4300 4000
Wire Wire Line
	3850 4000 4050 4000
Connection ~ 4050 4000
Wire Wire Line
	4350 1950 4500 1950
Wire Wire Line
	5900 1950 6350 1950
Wire Wire Line
	6850 1850 6850 1950
Wire Wire Line
	6850 1950 6750 1950
Wire Wire Line
	5900 1850 6850 1850
NoConn ~ 5900 2050
NoConn ~ 5900 2150
NoConn ~ 4500 1750
NoConn ~ 4500 1850
NoConn ~ 4500 2050
$Comp
L Switch:SW_SPST SW1
U 1 1 6092F546
P 6550 1950
F 0 "SW1" H 6550 2185 50  0000 C CNN
F 1 "reset" H 6550 2094 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 6550 1950 50  0001 C CNN
F 3 "~" H 6550 1950 50  0001 C CNN
	1    6550 1950
	1    0    0    -1  
$EndComp
Text GLabel 4350 1950 0    50   BiDi ~ 0
GND
Connection ~ 6800 3350
Wire Wire Line
	6000 2750 6000 3600
Wire Wire Line
	5950 2850 5950 4000
$Comp
L Device:R R1
U 1 1 609CBCB5
P 6650 2850
F 0 "R1" V 6443 2850 50  0000 C CNN
F 1 "R" V 6534 2850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6580 2850 50  0001 C CNN
F 3 "~" H 6650 2850 50  0001 C CNN
	1    6650 2850
	0    1    1    0   
$EndComp
$Comp
L Device:LED D1
U 1 1 609CCF57
P 6250 2850
F 0 "D1" H 6243 2595 50  0000 C CNN
F 1 "LED" H 6243 2686 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 6250 2850 50  0001 C CNN
F 3 "~" H 6250 2850 50  0001 C CNN
	1    6250 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	6050 2650 6050 3200
Wire Wire Line
	5900 2550 6100 2550
Wire Wire Line
	6400 2850 6500 2850
Wire Wire Line
	6800 2850 6800 3200
Wire Wire Line
	6800 3350 6800 3600
Connection ~ 6800 3200
Wire Wire Line
	6800 3200 6800 3350
Connection ~ 6800 3600
Wire Wire Line
	6800 3600 6800 4000
Wire Wire Line
	6400 3200 6500 3200
Wire Wire Line
	6400 4000 6500 4000
Wire Wire Line
	6100 4000 5950 4000
Wire Wire Line
	6100 3600 6000 3600
Wire Wire Line
	6100 3200 6050 3200
Wire Wire Line
	6100 2850 6100 2550
$EndSCHEMATC
