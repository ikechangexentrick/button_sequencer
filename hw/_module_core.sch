EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title "Button Sequencer"
Date ""
Rev "1"
Comp "Norio Ikeda"
Comment1 "https://github.com/ikechangexentrick/button_sequencer"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R?
U 1 1 6245BA46
P 1400 1550
AR Path="/6245BA46" Ref="R?"  Part="1" 
AR Path="/62451AD8/6245BA46" Ref="R19"  Part="1" 
F 0 "R19" V 1193 1550 50  0000 C CNN
F 1 "100k" V 1284 1550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 1330 1550 50  0001 C CNN
F 3 "~" H 1400 1550 50  0001 C CNN
	1    1400 1550
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 6245BA4C
P 1650 1900
AR Path="/6245BA4C" Ref="R?"  Part="1" 
AR Path="/62451AD8/6245BA4C" Ref="R20"  Part="1" 
F 0 "R20" H 1580 1854 50  0000 R CNN
F 1 "100k" H 1580 1945 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 1580 1900 50  0001 C CNN
F 3 "~" H 1650 1900 50  0001 C CNN
	1    1650 1900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6245BA52
P 1650 2050
AR Path="/6245BA52" Ref="#PWR?"  Part="1" 
AR Path="/62451AD8/6245BA52" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 1650 1800 50  0001 C CNN
F 1 "GND" H 1655 1877 50  0000 C CNN
F 2 "" H 1650 2050 50  0001 C CNN
F 3 "" H 1650 2050 50  0001 C CNN
	1    1650 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6245BA58
P 2000 1900
AR Path="/6245BA58" Ref="R?"  Part="1" 
AR Path="/62451AD8/6245BA58" Ref="R21"  Part="1" 
F 0 "R21" H 1930 1854 50  0000 R CNN
F 1 "100k" H 1930 1945 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 1930 1900 50  0001 C CNN
F 3 "~" H 2000 1900 50  0001 C CNN
	1    2000 1900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6245BA5E
P 2000 2050
AR Path="/6245BA5E" Ref="#PWR?"  Part="1" 
AR Path="/62451AD8/6245BA5E" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 2000 1800 50  0001 C CNN
F 1 "GND" H 2005 1877 50  0000 C CNN
F 2 "" H 2000 2050 50  0001 C CNN
F 3 "" H 2000 2050 50  0001 C CNN
	1    2000 2050
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2SC1815 Q?
U 1 1 6245BA64
P 1900 1550
AR Path="/6245BA64" Ref="Q?"  Part="1" 
AR Path="/62451AD8/6245BA64" Ref="Q1"  Part="1" 
F 0 "Q1" H 2090 1596 50  0000 L CNN
F 1 "2SC1815" H 2090 1505 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2100 1475 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Toshiba%20PDFs/2SC1815.pdf" H 1900 1550 50  0001 L CNN
	1    1900 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 1550 1650 1550
Wire Wire Line
	1650 1550 1650 1750
Connection ~ 1650 1550
Wire Wire Line
	1650 1550 1700 1550
Wire Wire Line
	2000 1750 2300 1750
Connection ~ 2000 1750
Text Label 2300 1750 0    50   ~ 0
clock
$Comp
L power:+5V #PWR?
U 1 1 6245BA71
P 2000 1350
AR Path="/6245BA71" Ref="#PWR?"  Part="1" 
AR Path="/62451AD8/6245BA71" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 2000 1200 50  0001 C CNN
F 1 "+5V" H 2015 1523 50  0000 C CNN
F 2 "" H 2000 1350 50  0001 C CNN
F 3 "" H 2000 1350 50  0001 C CNN
	1    2000 1350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 U?
U 1 1 6245BA77
P 4450 4300
AR Path="/6245BA77" Ref="U?"  Part="1" 
AR Path="/62451AD8/6245BA77" Ref="U3"  Part="1" 
F 0 "U3" H 4650 4950 50  0000 C CNN
F 1 "74HC595" H 4700 4850 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4450 4300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 4450 4300 50  0001 C CNN
	1    4450 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6245BA7D
P 4250 3500
AR Path="/6245BA7D" Ref="C?"  Part="1" 
AR Path="/62451AD8/6245BA7D" Ref="C7"  Part="1" 
F 0 "C7" V 3998 3500 50  0000 C CNN
F 1 "0.1u" V 4089 3500 50  0000 C CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 4288 3350 50  0001 C CNN
F 3 "~" H 4250 3500 50  0001 C CNN
	1    4250 3500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6245BA83
P 4050 3550
AR Path="/6245BA83" Ref="#PWR?"  Part="1" 
AR Path="/62451AD8/6245BA83" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 4050 3300 50  0001 C CNN
F 1 "GND" H 4055 3377 50  0000 C CNN
F 2 "" H 4050 3550 50  0001 C CNN
F 3 "" H 4050 3550 50  0001 C CNN
	1    4050 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6245BA89
P 4450 3450
AR Path="/6245BA89" Ref="#PWR?"  Part="1" 
AR Path="/62451AD8/6245BA89" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 4450 3300 50  0001 C CNN
F 1 "+5V" H 4465 3623 50  0000 C CNN
F 2 "" H 4450 3450 50  0001 C CNN
F 3 "" H 4450 3450 50  0001 C CNN
	1    4450 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3450 4450 3500
Wire Wire Line
	4450 3500 4400 3500
Connection ~ 4450 3500
Wire Wire Line
	4450 3500 4450 3700
Wire Wire Line
	4100 3500 4050 3500
Wire Wire Line
	4050 3500 4050 3550
$Comp
L power:GND #PWR?
U 1 1 6245BA95
P 4450 5000
AR Path="/6245BA95" Ref="#PWR?"  Part="1" 
AR Path="/62451AD8/6245BA95" Ref="#PWR038"  Part="1" 
F 0 "#PWR038" H 4450 4750 50  0001 C CNN
F 1 "GND" H 4455 4827 50  0000 C CNN
F 2 "" H 4450 5000 50  0001 C CNN
F 3 "" H 4450 5000 50  0001 C CNN
	1    4450 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6245BA9B
P 4050 4500
AR Path="/6245BA9B" Ref="#PWR?"  Part="1" 
AR Path="/62451AD8/6245BA9B" Ref="#PWR036"  Part="1" 
F 0 "#PWR036" H 4050 4250 50  0001 C CNN
F 1 "GND" H 4055 4327 50  0000 C CNN
F 2 "" H 4050 4500 50  0001 C CNN
F 3 "" H 4050 4500 50  0001 C CNN
	1    4050 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6245BAA1
P 3700 4550
AR Path="/6245BAA1" Ref="C?"  Part="1" 
AR Path="/62451AD8/6245BAA1" Ref="C6"  Part="1" 
F 0 "C6" H 3585 4504 50  0000 R CNN
F 1 "0.1u" H 3585 4595 50  0000 R CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 3738 4400 50  0001 C CNN
F 3 "~" H 3700 4550 50  0001 C CNN
	1    3700 4550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6245BAA7
P 3700 4700
AR Path="/6245BAA7" Ref="#PWR?"  Part="1" 
AR Path="/62451AD8/6245BAA7" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 3700 4450 50  0001 C CNN
F 1 "GND" H 3705 4527 50  0000 C CNN
F 2 "" H 3700 4700 50  0001 C CNN
F 3 "" H 3700 4700 50  0001 C CNN
	1    3700 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 4400 3700 4400
Connection ~ 3700 4400
Wire Wire Line
	3700 4400 3550 4400
$Comp
L power:+5V #PWR?
U 1 1 6245BAB0
P 4050 4200
AR Path="/6245BAB0" Ref="#PWR?"  Part="1" 
AR Path="/62451AD8/6245BAB0" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 4050 4050 50  0001 C CNN
F 1 "+5V" V 4065 4328 50  0000 L CNN
F 2 "" H 4050 4200 50  0001 C CNN
F 3 "" H 4050 4200 50  0001 C CNN
	1    4050 4200
	0    -1   -1   0   
$EndComp
Text Label 3550 4400 2    50   ~ 0
595_latch
Text Label 4050 4100 2    50   ~ 0
595_clock
Text Label 4050 3900 2    50   ~ 0
595_data
NoConn ~ 4850 4800
Text Label 4850 4600 0    50   ~ 0
gate1
Text Label 4850 4500 0    50   ~ 0
gate2
Text Label 4850 4400 0    50   ~ 0
gate3
Text Label 4850 4300 0    50   ~ 0
gate4
Text Label 4850 4200 0    50   ~ 0
select1
Text Label 4850 4100 0    50   ~ 0
select2
Text Label 4850 4000 0    50   ~ 0
select3
Text Label 4850 3900 0    50   ~ 0
select4
Text HLabel 1250 1550 0    50   Input ~ 0
clock_in
$Comp
L Arduino_compatible:ProMicro U?
U 1 1 6246815B
P 4450 2000
AR Path="/6246815B" Ref="U?"  Part="1" 
AR Path="/62451AD8/6246815B" Ref="U2"  Part="1" 
F 0 "U2" V 3425 2025 50  0000 C CNN
F 1 "ProMicro" V 3516 2025 50  0000 C CNN
F 2 "ClockGenerator:Pro_Micro_Top_side_Up" H 4450 2000 50  0001 C CNN
F 3 "" H 4450 2000 50  0001 C CNN
	1    4450 2000
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 62468161
P 5650 1650
AR Path="/62468161" Ref="SW?"  Part="1" 
AR Path="/62451AD8/62468161" Ref="SW5"  Part="1" 
F 0 "SW5" V 5604 1798 50  0000 L CNN
F 1 "SW_Push" V 5695 1798 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 5650 1850 50  0001 C CNN
F 3 "~" H 5650 1850 50  0001 C CNN
	1    5650 1650
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 62468167
P 5050 1150
AR Path="/62468167" Ref="#PWR?"  Part="1" 
AR Path="/62451AD8/62468167" Ref="#PWR039"  Part="1" 
F 0 "#PWR039" H 5050 1000 50  0001 C CNN
F 1 "+12V" V 5065 1278 50  0000 L CNN
F 2 "" H 5050 1150 50  0001 C CNN
F 3 "" H 5050 1150 50  0001 C CNN
	1    5050 1150
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6246816D
P 5050 1600
AR Path="/6246816D" Ref="#PWR?"  Part="1" 
AR Path="/62451AD8/6246816D" Ref="#PWR041"  Part="1" 
F 0 "#PWR041" H 5050 1450 50  0001 C CNN
F 1 "+5V" V 5065 1728 50  0000 L CNN
F 2 "" H 5050 1600 50  0001 C CNN
F 3 "" H 5050 1600 50  0001 C CNN
	1    5050 1600
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 62468173
P 5650 1300
AR Path="/62468173" Ref="R?"  Part="1" 
AR Path="/62451AD8/62468173" Ref="R22"  Part="1" 
F 0 "R22" H 5580 1254 50  0000 R CNN
F 1 "10k" H 5580 1345 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 5580 1300 50  0001 C CNN
F 3 "~" H 5650 1300 50  0001 C CNN
	1    5650 1300
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 62468179
P 5650 1150
AR Path="/62468179" Ref="#PWR?"  Part="1" 
AR Path="/62451AD8/62468179" Ref="#PWR042"  Part="1" 
F 0 "#PWR042" H 5650 1000 50  0001 C CNN
F 1 "+5V" H 5665 1323 50  0000 C CNN
F 2 "" H 5650 1150 50  0001 C CNN
F 3 "" H 5650 1150 50  0001 C CNN
	1    5650 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6246817F
P 5650 1850
AR Path="/6246817F" Ref="#PWR?"  Part="1" 
AR Path="/62451AD8/6246817F" Ref="#PWR043"  Part="1" 
F 0 "#PWR043" H 5650 1600 50  0001 C CNN
F 1 "GND" H 5655 1677 50  0000 C CNN
F 2 "" H 5650 1850 50  0001 C CNN
F 3 "" H 5650 1850 50  0001 C CNN
	1    5650 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 1450 5050 1450
Connection ~ 5650 1450
$Comp
L power:GND #PWR?
U 1 1 62468187
P 5050 1300
AR Path="/62468187" Ref="#PWR?"  Part="1" 
AR Path="/62451AD8/62468187" Ref="#PWR040"  Part="1" 
F 0 "#PWR040" H 5050 1050 50  0001 C CNN
F 1 "GND" V 5055 1172 50  0000 R CNN
F 2 "" H 5050 1300 50  0001 C CNN
F 3 "" H 5050 1300 50  0001 C CNN
	1    5050 1300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6246818D
P 3850 1450
AR Path="/6246818D" Ref="#PWR?"  Part="1" 
AR Path="/62451AD8/6246818D" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 3850 1200 50  0001 C CNN
F 1 "GND" V 3855 1322 50  0000 R CNN
F 2 "" H 3850 1450 50  0001 C CNN
F 3 "" H 3850 1450 50  0001 C CNN
	1    3850 1450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62468193
P 3850 1600
AR Path="/62468193" Ref="#PWR?"  Part="1" 
AR Path="/62451AD8/62468193" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 3850 1350 50  0001 C CNN
F 1 "GND" V 3855 1472 50  0000 R CNN
F 2 "" H 3850 1600 50  0001 C CNN
F 3 "" H 3850 1600 50  0001 C CNN
	1    3850 1600
	0    1    1    0   
$EndComp
NoConn ~ 3850 1150
NoConn ~ 3850 1300
Text Label 3850 2050 2    50   ~ 0
595_data
Text Label 3850 2200 2    50   ~ 0
595_clock
Text Label 3850 2350 2    50   ~ 0
595_latch
Text Label 5050 2800 0    50   ~ 0
re_2
Text Label 3850 2800 2    50   ~ 0
re_1
Text Label 3850 2500 2    50   ~ 0
sw_enter
Text Label 3850 2650 2    50   ~ 0
sw_func
Text Label 3850 1750 2    50   ~ 0
clock
Text Label 3850 1900 2    50   ~ 0
seq_start
NoConn ~ 5050 2650
NoConn ~ 5050 2350
NoConn ~ 5050 2200
NoConn ~ 5050 2050
NoConn ~ 5050 1900
NoConn ~ 5050 1750
Wire Wire Line
	3850 2800 3550 2800
Text HLabel 3550 2800 0    50   Input ~ 0
re_1
Wire Wire Line
	5050 2800 5250 2800
Text HLabel 5250 2800 2    50   Input ~ 0
re_2
Text HLabel 3550 2650 0    50   Input ~ 0
sw_func_1
Wire Wire Line
	3550 2650 3850 2650
Text HLabel 3550 2500 0    50   Input ~ 0
sw_enter
Wire Wire Line
	3550 2500 3850 2500
Text HLabel 5450 2500 2    50   Input ~ 0
sw_func_2
Text Label 5050 2500 0    50   ~ 0
sw_func_2
Wire Wire Line
	5450 2500 5050 2500
$Comp
L Amplifier_Operational:TL074 U?
U 1 1 62477FDA
P 7500 4800
AR Path="/62477FDA" Ref="U?"  Part="1" 
AR Path="/62451AD8/62477FDA" Ref="U1"  Part="1" 
F 0 "U1" H 7500 5167 50  0000 C CNN
F 1 "TL074" H 7500 5076 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7450 4900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7550 5000 50  0001 C CNN
	1    7500 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 1250 7150 1250
Wire Wire Line
	7850 1150 7800 1150
$Comp
L Device:R R?
U 1 1 62477FE2
P 6950 2800
AR Path="/62477FE2" Ref="R?"  Part="1" 
AR Path="/62451AD8/62477FE2" Ref="R24"  Part="1" 
F 0 "R24" V 7157 2800 50  0000 C CNN
F 1 "10k" V 7066 2800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6880 2800 50  0001 C CNN
F 3 "~" H 6950 2800 50  0001 C CNN
	1    6950 2800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 62477FE8
P 7500 2800
AR Path="/62477FE8" Ref="R?"  Part="1" 
AR Path="/62451AD8/62477FE8" Ref="R28"  Part="1" 
F 0 "R28" V 7707 2800 50  0000 C CNN
F 1 "10k" V 7616 2800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 7430 2800 50  0001 C CNN
F 3 "~" H 7500 2800 50  0001 C CNN
	1    7500 2800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62477FEE
P 6700 2800
AR Path="/62477FEE" Ref="#PWR?"  Part="1" 
AR Path="/62451AD8/62477FEE" Ref="#PWR045"  Part="1" 
F 0 "#PWR045" H 6700 2550 50  0001 C CNN
F 1 "GND" H 6705 2627 50  0000 C CNN
F 2 "" H 6700 2800 50  0001 C CNN
F 3 "" H 6700 2800 50  0001 C CNN
	1    6700 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 2500 7150 2500
Wire Wire Line
	7850 2400 7800 2400
Wire Wire Line
	7200 3700 7150 3700
Wire Wire Line
	7850 3600 7800 3600
Wire Wire Line
	7200 4900 7150 4900
Wire Wire Line
	7850 4800 7800 4800
$Comp
L Amplifier_Operational:TL074 U?
U 2 1 62477FFA
P 7500 1150
AR Path="/62477FFA" Ref="U?"  Part="2" 
AR Path="/62451AD8/62477FFA" Ref="U1"  Part="2" 
F 0 "U1" H 7500 1517 50  0000 C CNN
F 1 "TL074" H 7500 1426 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7450 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7550 1350 50  0001 C CNN
	2    7500 1150
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U?
U 3 1 62478000
P 7500 2400
AR Path="/62478000" Ref="U?"  Part="3" 
AR Path="/62451AD8/62478000" Ref="U1"  Part="3" 
F 0 "U1" H 7500 2767 50  0000 C CNN
F 1 "TL074" H 7500 2676 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7450 2500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7550 2600 50  0001 C CNN
	3    7500 2400
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U?
U 4 1 62478006
P 7500 3600
AR Path="/62478006" Ref="U?"  Part="4" 
AR Path="/62451AD8/62478006" Ref="U1"  Part="4" 
F 0 "U1" H 7500 3967 50  0000 C CNN
F 1 "TL074" H 7500 3876 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7450 3700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7550 3800 50  0001 C CNN
	4    7500 3600
	1    0    0    -1  
$EndComp
Text Label 7200 1050 2    50   ~ 0
gate1
Text Label 7200 2300 2    50   ~ 0
gate2
Text Label 7200 3500 2    50   ~ 0
gate3
Text Label 7200 4700 2    50   ~ 0
gate4
Wire Wire Line
	7150 2800 7100 2800
Wire Wire Line
	6800 2800 6700 2800
Wire Wire Line
	7150 2800 7350 2800
Connection ~ 7150 2800
Wire Wire Line
	7650 2800 7850 2800
Wire Wire Line
	7150 2500 7150 2800
Wire Wire Line
	7850 2400 7850 2800
$Comp
L Device:R R?
U 1 1 62478017
P 6950 1550
AR Path="/62478017" Ref="R?"  Part="1" 
AR Path="/62451AD8/62478017" Ref="R23"  Part="1" 
F 0 "R23" V 7157 1550 50  0000 C CNN
F 1 "10k" V 7066 1550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6880 1550 50  0001 C CNN
F 3 "~" H 6950 1550 50  0001 C CNN
	1    6950 1550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 6247801D
P 7500 1550
AR Path="/6247801D" Ref="R?"  Part="1" 
AR Path="/62451AD8/6247801D" Ref="R27"  Part="1" 
F 0 "R27" V 7707 1550 50  0000 C CNN
F 1 "10k" V 7616 1550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 7430 1550 50  0001 C CNN
F 3 "~" H 7500 1550 50  0001 C CNN
	1    7500 1550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62478023
P 6700 1550
AR Path="/62478023" Ref="#PWR?"  Part="1" 
AR Path="/62451AD8/62478023" Ref="#PWR044"  Part="1" 
F 0 "#PWR044" H 6700 1300 50  0001 C CNN
F 1 "GND" H 6705 1377 50  0000 C CNN
F 2 "" H 6700 1550 50  0001 C CNN
F 3 "" H 6700 1550 50  0001 C CNN
	1    6700 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1550 7100 1550
Wire Wire Line
	6800 1550 6700 1550
Wire Wire Line
	7150 1550 7350 1550
Connection ~ 7150 1550
Wire Wire Line
	7650 1550 7850 1550
Wire Wire Line
	7150 1250 7150 1550
Wire Wire Line
	7850 1150 7850 1550
$Comp
L Device:R R?
U 1 1 62478030
P 6950 4000
AR Path="/62478030" Ref="R?"  Part="1" 
AR Path="/62451AD8/62478030" Ref="R25"  Part="1" 
F 0 "R25" V 7157 4000 50  0000 C CNN
F 1 "10k" V 7066 4000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6880 4000 50  0001 C CNN
F 3 "~" H 6950 4000 50  0001 C CNN
	1    6950 4000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 62478036
P 7500 4000
AR Path="/62478036" Ref="R?"  Part="1" 
AR Path="/62451AD8/62478036" Ref="R29"  Part="1" 
F 0 "R29" V 7707 4000 50  0000 C CNN
F 1 "10k" V 7616 4000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 7430 4000 50  0001 C CNN
F 3 "~" H 7500 4000 50  0001 C CNN
	1    7500 4000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6247803C
P 6700 4000
AR Path="/6247803C" Ref="#PWR?"  Part="1" 
AR Path="/62451AD8/6247803C" Ref="#PWR046"  Part="1" 
F 0 "#PWR046" H 6700 3750 50  0001 C CNN
F 1 "GND" H 6705 3827 50  0000 C CNN
F 2 "" H 6700 4000 50  0001 C CNN
F 3 "" H 6700 4000 50  0001 C CNN
	1    6700 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 4000 7100 4000
Wire Wire Line
	6800 4000 6700 4000
Wire Wire Line
	7150 4000 7350 4000
Connection ~ 7150 4000
Wire Wire Line
	7150 3700 7150 4000
Wire Wire Line
	7850 4000 7650 4000
Wire Wire Line
	7850 3600 7850 4000
$Comp
L Device:R R?
U 1 1 62478049
P 6950 5200
AR Path="/62478049" Ref="R?"  Part="1" 
AR Path="/62451AD8/62478049" Ref="R26"  Part="1" 
F 0 "R26" V 7157 5200 50  0000 C CNN
F 1 "10k" V 7066 5200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6880 5200 50  0001 C CNN
F 3 "~" H 6950 5200 50  0001 C CNN
	1    6950 5200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 6247804F
P 7500 5200
AR Path="/6247804F" Ref="R?"  Part="1" 
AR Path="/62451AD8/6247804F" Ref="R30"  Part="1" 
F 0 "R30" V 7707 5200 50  0000 C CNN
F 1 "10k" V 7616 5200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 7430 5200 50  0001 C CNN
F 3 "~" H 7500 5200 50  0001 C CNN
	1    7500 5200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62478055
P 6700 5200
AR Path="/62478055" Ref="#PWR?"  Part="1" 
AR Path="/62451AD8/62478055" Ref="#PWR047"  Part="1" 
F 0 "#PWR047" H 6700 4950 50  0001 C CNN
F 1 "GND" H 6705 5027 50  0000 C CNN
F 2 "" H 6700 5200 50  0001 C CNN
F 3 "" H 6700 5200 50  0001 C CNN
	1    6700 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 5200 7100 5200
Wire Wire Line
	6800 5200 6700 5200
Wire Wire Line
	7150 5200 7350 5200
Connection ~ 7150 5200
Wire Wire Line
	7150 4900 7150 5200
Wire Wire Line
	7850 5200 7650 5200
Wire Wire Line
	7850 4800 7850 5200
Text HLabel 7850 1150 2    50   Input ~ 0
gate_1
Text HLabel 7850 2400 2    50   Input ~ 0
gate_2
Text HLabel 7850 3600 2    50   Input ~ 0
gate_3
Text HLabel 7850 4800 2    50   Input ~ 0
gate_4
$Comp
L Device:CP C?
U 1 1 62498E2B
P 2600 6750
AR Path="/62498E2B" Ref="C?"  Part="1" 
AR Path="/62451AD8/62498E2B" Ref="C3"  Part="1" 
F 0 "C3" H 2718 6796 50  0000 L CNN
F 1 "100u" H 2718 6705 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2638 6600 50  0001 C CNN
F 3 "~" H 2600 6750 50  0001 C CNN
	1    2600 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 62498E31
P 2600 7050
AR Path="/62498E31" Ref="C?"  Part="1" 
AR Path="/62451AD8/62498E31" Ref="C4"  Part="1" 
F 0 "C4" H 2718 7096 50  0000 L CNN
F 1 "100u" H 2718 7005 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2638 6900 50  0001 C CNN
F 3 "~" H 2600 7050 50  0001 C CNN
	1    2600 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 62498E37
P 3200 6900
AR Path="/62498E37" Ref="C?"  Part="1" 
AR Path="/62451AD8/62498E37" Ref="C5"  Part="1" 
F 0 "C5" H 3315 6946 50  0000 L CNN
F 1 "0.1u" H 3315 6855 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 3238 6750 50  0001 C CNN
F 3 "~" H 3200 6900 50  0001 C CNN
	1    3200 6900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J?
U 1 1 62498E3D
P 1300 6900
AR Path="/62498E3D" Ref="J?"  Part="1" 
AR Path="/62451AD8/62498E3D" Ref="J6"  Part="1" 
F 0 "J6" H 1350 7317 50  0000 C CNN
F 1 "power_bus" H 1350 7226 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Horizontal" H 1300 6900 50  0001 C CNN
F 3 "~" H 1300 6900 50  0001 C CNN
	1    1300 6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62498E43
P 1000 6900
AR Path="/62498E43" Ref="#PWR?"  Part="1" 
AR Path="/62451AD8/62498E43" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 1000 6650 50  0001 C CNN
F 1 "GND" V 1005 6772 50  0000 R CNN
F 2 "" H 1000 6900 50  0001 C CNN
F 3 "" H 1000 6900 50  0001 C CNN
	1    1000 6900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62498E49
P 1700 6900
AR Path="/62498E49" Ref="#PWR?"  Part="1" 
AR Path="/62451AD8/62498E49" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 1700 6650 50  0001 C CNN
F 1 "GND" V 1705 6772 50  0000 R CNN
F 2 "" H 1700 6900 50  0001 C CNN
F 3 "" H 1700 6900 50  0001 C CNN
	1    1700 6900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1600 6800 1600 6900
Connection ~ 1600 6900
Wire Wire Line
	1600 6900 1600 7000
Wire Wire Line
	1600 6900 1700 6900
Wire Wire Line
	1100 6800 1100 6900
Connection ~ 1100 6900
Wire Wire Line
	1100 6900 1100 7000
Wire Wire Line
	1100 6900 1000 6900
Wire Wire Line
	2600 6600 2900 6600
Wire Wire Line
	3200 6600 3200 6750
Wire Wire Line
	3200 7050 3200 7200
Wire Wire Line
	3200 7200 2900 7200
$Comp
L power:PWR_FLAG #FLG?
U 1 1 62498E5B
P 2900 6600
AR Path="/62498E5B" Ref="#FLG?"  Part="1" 
AR Path="/62451AD8/62498E5B" Ref="#FLG02"  Part="1" 
F 0 "#FLG02" H 2900 6675 50  0001 C CNN
F 1 "PWR_FLAG" H 2900 6773 50  0000 C CNN
F 2 "" H 2900 6600 50  0001 C CNN
F 3 "~" H 2900 6600 50  0001 C CNN
	1    2900 6600
	1    0    0    -1  
$EndComp
Connection ~ 2900 6600
Wire Wire Line
	2900 6600 3200 6600
$Comp
L power:PWR_FLAG #FLG?
U 1 1 62498E63
P 2900 7200
AR Path="/62498E63" Ref="#FLG?"  Part="1" 
AR Path="/62451AD8/62498E63" Ref="#FLG03"  Part="1" 
F 0 "#FLG03" H 2900 7275 50  0001 C CNN
F 1 "PWR_FLAG" H 2900 7373 50  0000 C CNN
F 2 "" H 2900 7200 50  0001 C CNN
F 3 "~" H 2900 7200 50  0001 C CNN
	1    2900 7200
	-1   0    0    1   
$EndComp
Connection ~ 2900 7200
Wire Wire Line
	2900 7200 2600 7200
$Comp
L power:GND #PWR?
U 1 1 62498E6B
P 2300 6900
AR Path="/62498E6B" Ref="#PWR?"  Part="1" 
AR Path="/62451AD8/62498E6B" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 2300 6650 50  0001 C CNN
F 1 "GND" H 2305 6727 50  0000 C CNN
F 2 "" H 2300 6900 50  0001 C CNN
F 3 "" H 2300 6900 50  0001 C CNN
	1    2300 6900
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 62498E71
P 2300 6900
AR Path="/62498E71" Ref="#FLG?"  Part="1" 
AR Path="/62451AD8/62498E71" Ref="#FLG01"  Part="1" 
F 0 "#FLG01" H 2300 6975 50  0001 C CNN
F 1 "PWR_FLAG" H 2300 7073 50  0000 C CNN
F 2 "" H 2300 6900 50  0001 C CNN
F 3 "~" H 2300 6900 50  0001 C CNN
	1    2300 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 6900 2600 6900
Connection ~ 2300 6900
Connection ~ 2600 6900
$Comp
L power:+12V #PWR?
U 1 1 62498E7A
P 1100 7100
AR Path="/62498E7A" Ref="#PWR?"  Part="1" 
AR Path="/62451AD8/62498E7A" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 1100 6950 50  0001 C CNN
F 1 "+12V" V 1115 7228 50  0000 L CNN
F 2 "" H 1100 7100 50  0001 C CNN
F 3 "" H 1100 7100 50  0001 C CNN
	1    1100 7100
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 62498E80
P 1600 7100
AR Path="/62498E80" Ref="#PWR?"  Part="1" 
AR Path="/62451AD8/62498E80" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 1600 6950 50  0001 C CNN
F 1 "+12V" V 1615 7228 50  0000 L CNN
F 2 "" H 1600 7100 50  0001 C CNN
F 3 "" H 1600 7100 50  0001 C CNN
	1    1600 7100
	0    1    1    0   
$EndComp
$Comp
L power:-12V #PWR?
U 1 1 62498E86
P 1100 6700
AR Path="/62498E86" Ref="#PWR?"  Part="1" 
AR Path="/62451AD8/62498E86" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 1100 6800 50  0001 C CNN
F 1 "-12V" V 1115 6828 50  0000 L CNN
F 2 "" H 1100 6700 50  0001 C CNN
F 3 "" H 1100 6700 50  0001 C CNN
	1    1100 6700
	0    -1   -1   0   
$EndComp
$Comp
L power:-12V #PWR?
U 1 1 62498E8C
P 1600 6700
AR Path="/62498E8C" Ref="#PWR?"  Part="1" 
AR Path="/62451AD8/62498E8C" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 1600 6800 50  0001 C CNN
F 1 "-12V" V 1615 6828 50  0000 L CNN
F 2 "" H 1600 6700 50  0001 C CNN
F 3 "" H 1600 6700 50  0001 C CNN
	1    1600 6700
	0    1    1    0   
$EndComp
$Comp
L power:-12V #PWR?
U 1 1 62498E92
P 3400 7200
AR Path="/62498E92" Ref="#PWR?"  Part="1" 
AR Path="/62451AD8/62498E92" Ref="#PWR030"  Part="1" 
F 0 "#PWR030" H 3400 7300 50  0001 C CNN
F 1 "-12V" H 3415 7373 50  0000 C CNN
F 2 "" H 3400 7200 50  0001 C CNN
F 3 "" H 3400 7200 50  0001 C CNN
	1    3400 7200
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 62498E98
P 3400 6600
AR Path="/62498E98" Ref="#PWR?"  Part="1" 
AR Path="/62451AD8/62498E98" Ref="#PWR029"  Part="1" 
F 0 "#PWR029" H 3400 6450 50  0001 C CNN
F 1 "+12V" H 3415 6773 50  0000 C CNN
F 2 "" H 3400 6600 50  0001 C CNN
F 3 "" H 3400 6600 50  0001 C CNN
	1    3400 6600
	1    0    0    -1  
$EndComp
Connection ~ 3200 6600
$Comp
L Amplifier_Operational:TL074 U?
U 5 1 62498E9F
P 3650 6900
AR Path="/62498E9F" Ref="U?"  Part="5" 
AR Path="/62451AD8/62498E9F" Ref="U1"  Part="5" 
F 0 "U1" H 3608 6946 50  0000 L CNN
F 1 "TL074" H 3608 6855 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3600 7000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3700 7100 50  0001 C CNN
	5    3650 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 6600 3400 6600
Connection ~ 3400 6600
Wire Wire Line
	3400 6600 3550 6600
Wire Wire Line
	3200 7200 3400 7200
Connection ~ 3200 7200
Connection ~ 3400 7200
Wire Wire Line
	3400 7200 3550 7200
Text HLabel 5150 4200 2    50   Input ~ 0
select_1
Text HLabel 5150 4100 2    50   Input ~ 0
select_2
Text HLabel 5150 4000 2    50   Input ~ 0
select_3
Text HLabel 5150 3900 2    50   Input ~ 0
select_4
Wire Wire Line
	4850 3900 5150 3900
Wire Wire Line
	4850 4000 5150 4000
Wire Wire Line
	4850 4100 5150 4100
Wire Wire Line
	4850 4200 5150 4200
Text HLabel 3500 1900 0    50   Input ~ 0
seq_start
Wire Wire Line
	3850 1900 3500 1900
Text HLabel 5250 7100 0    50   Input ~ 0
sw_enter
Text HLabel 5750 6900 2    50   Input ~ 0
sw_func_2
Text HLabel 5750 7100 2    50   Input ~ 0
sw_func_1
Text HLabel 5250 7000 0    50   Input ~ 0
re_2
Text HLabel 5250 6900 0    50   Input ~ 0
re_1
Text HLabel 5250 6300 0    50   Input ~ 0
clock_in
Text HLabel 5750 6400 2    50   Input ~ 0
select_1
Text HLabel 5750 6600 2    50   Input ~ 0
select_2
Text HLabel 5750 6800 2    50   Input ~ 0
select_3
Text HLabel 5750 7000 2    50   Input ~ 0
select_4
Text HLabel 5750 6300 2    50   Input ~ 0
seq_start
Text HLabel 5250 6400 0    50   Input ~ 0
gate_1
Text HLabel 5750 6500 2    50   Input ~ 0
gate_2
Text HLabel 5250 6700 0    50   Input ~ 0
gate_3
Text HLabel 5250 6800 0    50   Input ~ 0
gate_4
$Comp
L power:GND #PWR?
U 1 1 624C44E4
P 5250 6600
AR Path="/624C44E4" Ref="#PWR?"  Part="1" 
AR Path="/6241987A/624C44E4" Ref="#PWR?"  Part="1" 
AR Path="/62451AD8/624C44E4" Ref="#PWR051"  Part="1" 
F 0 "#PWR051" H 5250 6350 50  0001 C CNN
F 1 "GND" H 5255 6427 50  0000 C CNN
F 2 "" H 5250 6600 50  0001 C CNN
F 3 "" H 5250 6600 50  0001 C CNN
	1    5250 6600
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 624C44EA
P 4950 6500
AR Path="/624C44EA" Ref="#PWR?"  Part="1" 
AR Path="/6241987A/624C44EA" Ref="#PWR?"  Part="1" 
AR Path="/62451AD8/624C44EA" Ref="#PWR050"  Part="1" 
F 0 "#PWR050" H 4950 6350 50  0001 C CNN
F 1 "+5V" H 4965 6673 50  0000 C CNN
F 2 "" H 4950 6500 50  0001 C CNN
F 3 "" H 4950 6500 50  0001 C CNN
	1    4950 6500
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x09_Odd_Even J?
U 1 1 624C44F0
P 5450 6700
AR Path="/6241987A/624C44F0" Ref="J?"  Part="1" 
AR Path="/62451AD8/624C44F0" Ref="J8"  Part="1" 
F 0 "J8" H 5500 7317 50  0000 C CNN
F 1 "Conn_02x09_Odd_Even" H 5500 7226 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x09_P2.54mm_Vertical" H 5450 6700 50  0001 C CNN
F 3 "~" H 5450 6700 50  0001 C CNN
	1    5450 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 6500 5250 6500
$Comp
L power:GND #PWR?
U 1 1 624E3922
P 5750 6700
AR Path="/624E3922" Ref="#PWR?"  Part="1" 
AR Path="/6241987A/624E3922" Ref="#PWR?"  Part="1" 
AR Path="/62451AD8/624E3922" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 5750 6450 50  0001 C CNN
F 1 "GND" H 5755 6527 50  0000 C CNN
F 2 "" H 5750 6700 50  0001 C CNN
F 3 "" H 5750 6700 50  0001 C CNN
	1    5750 6700
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
