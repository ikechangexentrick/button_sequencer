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
L Switch:SW_Push SW?
U 1 1 62422773
P 1700 2200
AR Path="/62422773" Ref="SW?"  Part="1" 
AR Path="/6241987A/62422773" Ref="SW4"  Part="1" 
F 0 "SW4" H 1700 2485 50  0000 C CNN
F 1 "function" H 1700 2394 50  0000 C CNN
F 2 "Attenuverter:push_button" H 1700 2400 50  0001 C CNN
F 3 "~" H 1700 2400 50  0001 C CNN
	1    1700 2200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 62422779
P 1700 1400
AR Path="/62422779" Ref="SW?"  Part="1" 
AR Path="/6241987A/62422779" Ref="SW2"  Part="1" 
F 0 "SW2" H 1700 1685 50  0000 C CNN
F 1 "enter" H 1700 1594 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1700 1600 50  0001 C CNN
F 3 "~" H 1700 1600 50  0001 C CNN
	1    1700 1400
	1    0    0    -1  
$EndComp
Connection ~ 1500 2200
Wire Wire Line
	1500 2200 1500 2250
$Comp
L power:GND #PWR?
U 1 1 62422781
P 1500 2250
AR Path="/62422781" Ref="#PWR?"  Part="1" 
AR Path="/6241987A/62422781" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 1500 2000 50  0001 C CNN
F 1 "GND" H 1505 2077 50  0000 C CNN
F 2 "" H 1500 2250 50  0001 C CNN
F 3 "" H 1500 2250 50  0001 C CNN
	1    1500 2250
	1    0    0    -1  
$EndComp
Text Label 1900 1400 0    50   ~ 0
sw_enter
Text Label 1900 2200 0    50   ~ 0
sw_func
Text HLabel 2250 1400 2    50   Input ~ 0
sw_enter
Text HLabel 2250 2200 2    50   Input ~ 0
sw_func_1
Wire Wire Line
	2250 1400 1900 1400
Wire Wire Line
	2250 2200 1900 2200
$Comp
L Switch:SW_Push SW?
U 1 1 6242278D
P 1700 1800
AR Path="/6242278D" Ref="SW?"  Part="1" 
AR Path="/6241987A/6242278D" Ref="SW3"  Part="1" 
F 0 "SW3" H 1700 2085 50  0000 C CNN
F 1 "func2" H 1700 1994 50  0000 C CNN
F 2 "Attenuverter:push_button" H 1700 2000 50  0001 C CNN
F 3 "~" H 1700 2000 50  0001 C CNN
	1    1700 1800
	1    0    0    -1  
$EndComp
Text Label 1900 1800 0    50   ~ 0
sw_func_2
Text HLabel 2250 1800 2    50   Input ~ 0
sw_func_2
Wire Wire Line
	2250 1800 1900 1800
$Comp
L Device:Rotary_Encoder SW?
U 1 1 6242C465
P 1500 3200
AR Path="/6242C465" Ref="SW?"  Part="1" 
AR Path="/6241987A/6242C465" Ref="SW1"  Part="1" 
F 0 "SW1" V 1850 3300 50  0000 R CNN
F 1 "Rotary_Encoder" V 1750 3500 50  0000 R CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC12E_Vertical_H20mm" H 1350 3360 50  0001 C CNN
F 3 "~" H 1500 3460 50  0001 C CNN
	1    1500 3200
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6242C46B
P 2000 3850
AR Path="/6242C46B" Ref="#PWR?"  Part="1" 
AR Path="/6241987A/6242C46B" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 2000 3700 50  0001 C CNN
F 1 "+5V" H 2015 4023 50  0000 C CNN
F 2 "" H 2000 3850 50  0001 C CNN
F 3 "" H 2000 3850 50  0001 C CNN
	1    2000 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6242C471
P 2500 3650
AR Path="/6242C471" Ref="C?"  Part="1" 
AR Path="/6241987A/6242C471" Ref="C1"  Part="1" 
F 0 "C1" H 2615 3696 50  0000 L CNN
F 1 "0.1u" H 2615 3605 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 2538 3500 50  0001 C CNN
F 3 "~" H 2500 3650 50  0001 C CNN
	1    2500 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6242C477
P 2300 3500
AR Path="/6242C477" Ref="R?"  Part="1" 
AR Path="/6241987A/6242C477" Ref="R4"  Part="1" 
F 0 "R4" V 2093 3500 50  0000 C CNN
F 1 "10k" V 2184 3500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 2230 3500 50  0001 C CNN
F 3 "~" H 2300 3500 50  0001 C CNN
	1    2300 3500
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 6242C47D
P 2500 4300
AR Path="/6242C47D" Ref="C?"  Part="1" 
AR Path="/6241987A/6242C47D" Ref="C2"  Part="1" 
F 0 "C2" H 2615 4346 50  0000 L CNN
F 1 "0.1u" H 2615 4255 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 2538 4150 50  0001 C CNN
F 3 "~" H 2500 4300 50  0001 C CNN
	1    2500 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6242C483
P 2300 4150
AR Path="/6242C483" Ref="R?"  Part="1" 
AR Path="/6241987A/6242C483" Ref="R5"  Part="1" 
F 0 "R5" V 2093 4150 50  0000 C CNN
F 1 "10k" V 2184 4150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 2230 4150 50  0001 C CNN
F 3 "~" H 2300 4150 50  0001 C CNN
	1    2300 4150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6242C489
P 2500 3800
AR Path="/6242C489" Ref="#PWR?"  Part="1" 
AR Path="/6241987A/6242C489" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 2500 3550 50  0001 C CNN
F 1 "GND" H 2505 3627 50  0000 C CNN
F 2 "" H 2500 3800 50  0001 C CNN
F 3 "" H 2500 3800 50  0001 C CNN
	1    2500 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6242C48F
P 2500 4450
AR Path="/6242C48F" Ref="#PWR?"  Part="1" 
AR Path="/6241987A/6242C48F" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 2500 4200 50  0001 C CNN
F 1 "GND" H 2505 4277 50  0000 C CNN
F 2 "" H 2500 4450 50  0001 C CNN
F 3 "" H 2500 4450 50  0001 C CNN
	1    2500 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6242C495
P 2000 3350
AR Path="/6242C495" Ref="R?"  Part="1" 
AR Path="/6241987A/6242C495" Ref="R1"  Part="1" 
F 0 "R1" H 2070 3396 50  0000 L CNN
F 1 "10k" H 2070 3305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 1930 3350 50  0001 C CNN
F 3 "~" H 2000 3350 50  0001 C CNN
	1    2000 3350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6242C49B
P 2000 3200
AR Path="/6242C49B" Ref="#PWR?"  Part="1" 
AR Path="/6241987A/6242C49B" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 2000 3050 50  0001 C CNN
F 1 "+5V" H 2015 3373 50  0000 C CNN
F 2 "" H 2000 3200 50  0001 C CNN
F 3 "" H 2000 3200 50  0001 C CNN
	1    2000 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6242C4A1
P 2000 4000
AR Path="/6242C4A1" Ref="R?"  Part="1" 
AR Path="/6241987A/6242C4A1" Ref="R2"  Part="1" 
F 0 "R2" H 2070 4046 50  0000 L CNN
F 1 "10k" H 2070 3955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 1930 4000 50  0001 C CNN
F 3 "~" H 2000 4000 50  0001 C CNN
	1    2000 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6242C4A7
P 1500 3500
AR Path="/6242C4A7" Ref="#PWR?"  Part="1" 
AR Path="/6241987A/6242C4A7" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 1500 3250 50  0001 C CNN
F 1 "GND" H 1505 3327 50  0000 C CNN
F 2 "" H 1500 3500 50  0001 C CNN
F 3 "" H 1500 3500 50  0001 C CNN
	1    1500 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3500 2500 3500
Connection ~ 2500 3500
Wire Wire Line
	2450 4150 2500 4150
Connection ~ 2500 4150
Wire Wire Line
	2150 4150 2000 4150
Wire Wire Line
	2150 3500 2000 3500
Wire Wire Line
	1600 3500 2000 3500
Connection ~ 2000 3500
Text Label 2650 4150 0    50   ~ 0
re_1
Text Label 2650 3500 0    50   ~ 0
re_2
Wire Wire Line
	2000 4150 1400 4150
Wire Wire Line
	1400 4150 1400 3500
Connection ~ 2000 4150
Text HLabel 2850 3500 2    50   Input ~ 0
re_2
Text HLabel 2850 4150 2    50   Input ~ 0
re_1
Wire Wire Line
	2500 3500 2850 3500
Wire Wire Line
	2500 4150 2850 4150
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 62435597
P 1650 5150
AR Path="/62435597" Ref="J?"  Part="1" 
AR Path="/6241987A/62435597" Ref="J1"  Part="1" 
F 0 "J1" H 1471 5083 50  0000 R CNN
F 1 "clock_in" H 1471 5174 50  0000 R CNN
F 2 "Attenuverter:mono_jack_3.5mm" H 1650 5150 50  0001 C CNN
F 3 "~" H 1650 5150 50  0001 C CNN
	1    1650 5150
	1    0    0    1   
$EndComp
$Comp
L Device:LED D?
U 1 1 6243559D
P 2050 5300
AR Path="/6243559D" Ref="D?"  Part="1" 
AR Path="/6241987A/6243559D" Ref="D1"  Part="1" 
F 0 "D1" V 2089 5182 50  0000 R CNN
F 1 "clock" V 1998 5182 50  0000 R CNN
F 2 "LED_THT:LED_D4.0mm" H 2050 5300 50  0001 C CNN
F 3 "~" H 2050 5300 50  0001 C CNN
	1    2050 5300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 624355A3
P 2050 5600
AR Path="/624355A3" Ref="R?"  Part="1" 
AR Path="/6241987A/624355A3" Ref="R3"  Part="1" 
F 0 "R3" H 2120 5646 50  0000 L CNN
F 1 "10k" H 2120 5555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 1980 5600 50  0001 C CNN
F 3 "~" H 2050 5600 50  0001 C CNN
	1    2050 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 624355A9
P 2050 5750
AR Path="/624355A9" Ref="#PWR?"  Part="1" 
AR Path="/6241987A/624355A9" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 2050 5500 50  0001 C CNN
F 1 "GND" H 2055 5577 50  0000 C CNN
F 2 "" H 2050 5750 50  0001 C CNN
F 3 "" H 2050 5750 50  0001 C CNN
	1    2050 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 624355AF
P 1850 5250
AR Path="/624355AF" Ref="#PWR?"  Part="1" 
AR Path="/6241987A/624355AF" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 1850 5000 50  0001 C CNN
F 1 "GND" H 1855 5077 50  0000 C CNN
F 2 "" H 1850 5250 50  0001 C CNN
F 3 "" H 1850 5250 50  0001 C CNN
	1    1850 5250
	1    0    0    -1  
$EndComp
NoConn ~ 1850 5050
Wire Wire Line
	1850 5150 2050 5150
Connection ~ 2050 5150
Wire Wire Line
	2050 5150 2350 5150
Text HLabel 2350 5150 2    50   Input ~ 0
clock_in
$Comp
L Device:R R?
U 1 1 62441331
P 5050 4650
AR Path="/62441331" Ref="R?"  Part="1" 
AR Path="/6241987A/62441331" Ref="R10"  Part="1" 
F 0 "R10" V 5150 4650 50  0000 C CNN
F 1 "1k" V 5050 4650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 4980 4650 50  0001 C CNN
F 3 "~" H 5050 4650 50  0001 C CNN
	1    5050 4650
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 62441337
P 5350 4650
AR Path="/62441337" Ref="D?"  Part="1" 
AR Path="/6241987A/62441337" Ref="D6"  Part="1" 
F 0 "D6" H 5250 4750 50  0000 C CNN
F 1 "select1" H 5450 4750 50  0000 C CNN
F 2 "LED_THT:LED_D4.0mm" H 5350 4650 50  0001 C CNN
F 3 "~" H 5350 4650 50  0001 C CNN
	1    5350 4650
	-1   0    0    1   
$EndComp
Text Label 4900 4650 2    50   ~ 0
select1
$Comp
L Device:R R?
U 1 1 6244133E
P 5050 4400
AR Path="/6244133E" Ref="R?"  Part="1" 
AR Path="/6241987A/6244133E" Ref="R9"  Part="1" 
F 0 "R9" V 5150 4400 50  0000 C CNN
F 1 "1k" V 5050 4400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 4980 4400 50  0001 C CNN
F 3 "~" H 5050 4400 50  0001 C CNN
	1    5050 4400
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 62441344
P 5350 4400
AR Path="/62441344" Ref="D?"  Part="1" 
AR Path="/6241987A/62441344" Ref="D5"  Part="1" 
F 0 "D5" H 5250 4500 50  0000 C CNN
F 1 "select2" H 5450 4500 50  0000 C CNN
F 2 "LED_THT:LED_D4.0mm" H 5350 4400 50  0001 C CNN
F 3 "~" H 5350 4400 50  0001 C CNN
	1    5350 4400
	-1   0    0    1   
$EndComp
Text Label 4900 4400 2    50   ~ 0
select2
$Comp
L Device:R R?
U 1 1 6244134B
P 5050 4150
AR Path="/6244134B" Ref="R?"  Part="1" 
AR Path="/6241987A/6244134B" Ref="R8"  Part="1" 
F 0 "R8" V 5150 4150 50  0000 C CNN
F 1 "1k" V 5050 4150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 4980 4150 50  0001 C CNN
F 3 "~" H 5050 4150 50  0001 C CNN
	1    5050 4150
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 62441351
P 5350 4150
AR Path="/62441351" Ref="D?"  Part="1" 
AR Path="/6241987A/62441351" Ref="D4"  Part="1" 
F 0 "D4" H 5250 4250 50  0000 C CNN
F 1 "select3" H 5450 4250 50  0000 C CNN
F 2 "LED_THT:LED_D4.0mm" H 5350 4150 50  0001 C CNN
F 3 "~" H 5350 4150 50  0001 C CNN
	1    5350 4150
	-1   0    0    1   
$EndComp
Text Label 4900 4150 2    50   ~ 0
select3
$Comp
L Device:R R?
U 1 1 62441358
P 5050 3900
AR Path="/62441358" Ref="R?"  Part="1" 
AR Path="/6241987A/62441358" Ref="R7"  Part="1" 
F 0 "R7" V 5150 3900 50  0000 C CNN
F 1 "1k" V 5050 3900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 4980 3900 50  0001 C CNN
F 3 "~" H 5050 3900 50  0001 C CNN
	1    5050 3900
	0    -1   -1   0   
$EndComp
Text Label 4900 3900 2    50   ~ 0
select4
Wire Wire Line
	5500 3900 5600 3900
Wire Wire Line
	5600 3900 5600 4150
Wire Wire Line
	5600 4650 5500 4650
Wire Wire Line
	5500 4400 5600 4400
Connection ~ 5600 4400
Wire Wire Line
	5600 4400 5600 4650
Wire Wire Line
	5500 4150 5600 4150
Connection ~ 5600 4150
Wire Wire Line
	5600 4150 5600 4250
Wire Wire Line
	5600 4250 5700 4250
Connection ~ 5600 4250
Wire Wire Line
	5600 4250 5600 4400
$Comp
L Device:LED D?
U 1 1 6244136B
P 5350 3900
AR Path="/6244136B" Ref="D?"  Part="1" 
AR Path="/6241987A/6244136B" Ref="D3"  Part="1" 
F 0 "D3" H 5250 4000 50  0000 C CNN
F 1 "select4" H 5450 4000 50  0000 C CNN
F 2 "LED_THT:LED_D4.0mm" H 5350 3900 50  0001 C CNN
F 3 "~" H 5350 3900 50  0001 C CNN
	1    5350 3900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62441371
P 5700 4250
AR Path="/62441371" Ref="#PWR?"  Part="1" 
AR Path="/6241987A/62441371" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 5700 4000 50  0001 C CNN
F 1 "GND" H 5705 4077 50  0000 C CNN
F 2 "" H 5700 4250 50  0001 C CNN
F 3 "" H 5700 4250 50  0001 C CNN
	1    5700 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 62441377
P 5150 5250
AR Path="/62441377" Ref="R?"  Part="1" 
AR Path="/6241987A/62441377" Ref="R6"  Part="1" 
F 0 "R6" V 5250 5250 50  0000 C CNN
F 1 "1k" V 5150 5250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 5080 5250 50  0001 C CNN
F 3 "~" H 5150 5250 50  0001 C CNN
	1    5150 5250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 6244137D
P 5450 5250
AR Path="/6244137D" Ref="D?"  Part="1" 
AR Path="/6241987A/6244137D" Ref="D2"  Part="1" 
F 0 "D2" H 5350 5350 50  0000 C CNN
F 1 "select4" H 5550 5350 50  0000 C CNN
F 2 "LED_THT:LED_D4.0mm" H 5450 5250 50  0001 C CNN
F 3 "~" H 5450 5250 50  0001 C CNN
	1    5450 5250
	1    0    0    1   
$EndComp
Text Label 5000 5250 2    50   ~ 0
seq_start
$Comp
L power:+5V #PWR?
U 1 1 62441384
P 5600 5250
AR Path="/62441384" Ref="#PWR?"  Part="1" 
AR Path="/6241987A/62441384" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 5600 5100 50  0001 C CNN
F 1 "+5V" H 5615 5423 50  0000 C CNN
F 2 "" H 5600 5250 50  0001 C CNN
F 3 "" H 5600 5250 50  0001 C CNN
	1    5600 5250
	1    0    0    -1  
$EndComp
Text HLabel 4600 5250 0    50   Input ~ 0
seq_start
Wire Wire Line
	4600 5250 5000 5250
Text HLabel 4550 4650 0    50   Input ~ 0
select_1
Text HLabel 4550 4400 0    50   Input ~ 0
select_2
Text HLabel 4550 4150 0    50   Input ~ 0
select_3
Text HLabel 4550 3900 0    50   Input ~ 0
select_4
Wire Wire Line
	4550 3900 4900 3900
Wire Wire Line
	4550 4150 4900 4150
Wire Wire Line
	4550 4400 4900 4400
Wire Wire Line
	4550 4650 4900 4650
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 6244D4CA
P 7600 1500
AR Path="/6244D4CA" Ref="J?"  Part="1" 
AR Path="/6241987A/6244D4CA" Ref="J2"  Part="1" 
F 0 "J2" H 7420 1433 50  0000 R CNN
F 1 "gate_out_1" H 7420 1524 50  0000 R CNN
F 2 "Attenuverter:mono_jack_3.5mm" H 7600 1500 50  0001 C CNN
F 3 "~" H 7600 1500 50  0001 C CNN
	1    7600 1500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 6244D4D0
P 7250 1500
AR Path="/6244D4D0" Ref="R?"  Part="1" 
AR Path="/6241987A/6244D4D0" Ref="R15"  Part="1" 
F 0 "R15" V 7043 1500 50  0000 C CNN
F 1 "1k" V 7134 1500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 7180 1500 50  0001 C CNN
F 3 "~" H 7250 1500 50  0001 C CNN
	1    7250 1500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6244D4D6
P 7400 1600
AR Path="/6244D4D6" Ref="#PWR?"  Part="1" 
AR Path="/6241987A/6244D4D6" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 7400 1350 50  0001 C CNN
F 1 "GND" H 7405 1427 50  0000 C CNN
F 2 "" H 7400 1600 50  0001 C CNN
F 3 "" H 7400 1600 50  0001 C CNN
	1    7400 1600
	1    0    0    -1  
$EndComp
NoConn ~ 7400 1400
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 6244D4DD
P 7600 2750
AR Path="/6244D4DD" Ref="J?"  Part="1" 
AR Path="/6241987A/6244D4DD" Ref="J3"  Part="1" 
F 0 "J3" H 7420 2683 50  0000 R CNN
F 1 "gate_out_2" H 7420 2774 50  0000 R CNN
F 2 "Attenuverter:mono_jack_3.5mm" H 7600 2750 50  0001 C CNN
F 3 "~" H 7600 2750 50  0001 C CNN
	1    7600 2750
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 6244D4E3
P 7250 2750
AR Path="/6244D4E3" Ref="R?"  Part="1" 
AR Path="/6241987A/6244D4E3" Ref="R16"  Part="1" 
F 0 "R16" V 7043 2750 50  0000 C CNN
F 1 "1k" V 7134 2750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 7180 2750 50  0001 C CNN
F 3 "~" H 7250 2750 50  0001 C CNN
	1    7250 2750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6244D4E9
P 7400 2850
AR Path="/6244D4E9" Ref="#PWR?"  Part="1" 
AR Path="/6241987A/6244D4E9" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 7400 2600 50  0001 C CNN
F 1 "GND" H 7405 2677 50  0000 C CNN
F 2 "" H 7400 2850 50  0001 C CNN
F 3 "" H 7400 2850 50  0001 C CNN
	1    7400 2850
	1    0    0    -1  
$EndComp
NoConn ~ 7400 2650
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 6244D4F0
P 7600 3950
AR Path="/6244D4F0" Ref="J?"  Part="1" 
AR Path="/6241987A/6244D4F0" Ref="J4"  Part="1" 
F 0 "J4" H 7420 3883 50  0000 R CNN
F 1 "gate_out_3" H 7420 3974 50  0000 R CNN
F 2 "Attenuverter:mono_jack_3.5mm" H 7600 3950 50  0001 C CNN
F 3 "~" H 7600 3950 50  0001 C CNN
	1    7600 3950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 6244D4F6
P 7250 3950
AR Path="/6244D4F6" Ref="R?"  Part="1" 
AR Path="/6241987A/6244D4F6" Ref="R17"  Part="1" 
F 0 "R17" V 7043 3950 50  0000 C CNN
F 1 "1k" V 7134 3950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 7180 3950 50  0001 C CNN
F 3 "~" H 7250 3950 50  0001 C CNN
	1    7250 3950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6244D4FC
P 7400 4050
AR Path="/6244D4FC" Ref="#PWR?"  Part="1" 
AR Path="/6241987A/6244D4FC" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 7400 3800 50  0001 C CNN
F 1 "GND" H 7405 3877 50  0000 C CNN
F 2 "" H 7400 4050 50  0001 C CNN
F 3 "" H 7400 4050 50  0001 C CNN
	1    7400 4050
	1    0    0    -1  
$EndComp
NoConn ~ 7400 3850
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 6244D503
P 7600 5150
AR Path="/6244D503" Ref="J?"  Part="1" 
AR Path="/6241987A/6244D503" Ref="J5"  Part="1" 
F 0 "J5" H 7420 5083 50  0000 R CNN
F 1 "gate_out_4" H 7420 5174 50  0000 R CNN
F 2 "Attenuverter:mono_jack_3.5mm" H 7600 5150 50  0001 C CNN
F 3 "~" H 7600 5150 50  0001 C CNN
	1    7600 5150
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 6244D509
P 7250 5150
AR Path="/6244D509" Ref="R?"  Part="1" 
AR Path="/6241987A/6244D509" Ref="R18"  Part="1" 
F 0 "R18" V 7043 5150 50  0000 C CNN
F 1 "1k" V 7134 5150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 7180 5150 50  0001 C CNN
F 3 "~" H 7250 5150 50  0001 C CNN
	1    7250 5150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6244D50F
P 7400 5250
AR Path="/6244D50F" Ref="#PWR?"  Part="1" 
AR Path="/6241987A/6244D50F" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 7400 5000 50  0001 C CNN
F 1 "GND" H 7405 5077 50  0000 C CNN
F 2 "" H 7400 5250 50  0001 C CNN
F 3 "" H 7400 5250 50  0001 C CNN
	1    7400 5250
	1    0    0    -1  
$EndComp
NoConn ~ 7400 5050
$Comp
L Device:R R?
U 1 1 6244D516
P 6950 1950
AR Path="/6244D516" Ref="R?"  Part="1" 
AR Path="/6241987A/6244D516" Ref="R11"  Part="1" 
F 0 "R11" V 7050 1950 50  0000 C CNN
F 1 "3.3k" V 6850 1950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6880 1950 50  0001 C CNN
F 3 "~" H 6950 1950 50  0001 C CNN
	1    6950 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 6244D51C
P 6950 1650
AR Path="/6244D51C" Ref="D?"  Part="1" 
AR Path="/6241987A/6244D51C" Ref="D7"  Part="1" 
F 0 "D7" H 6850 1750 50  0000 C CNN
F 1 "gate1" H 7050 1750 50  0000 C CNN
F 2 "LED_THT:LED_D4.0mm" H 6950 1650 50  0001 C CNN
F 3 "~" H 6950 1650 50  0001 C CNN
	1    6950 1650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 6244D522
P 6950 4400
AR Path="/6244D522" Ref="R?"  Part="1" 
AR Path="/6241987A/6244D522" Ref="R13"  Part="1" 
F 0 "R13" V 7050 4400 50  0000 C CNN
F 1 "3.3k" V 6850 4400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6880 4400 50  0001 C CNN
F 3 "~" H 6950 4400 50  0001 C CNN
	1    6950 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 6244D528
P 6950 4100
AR Path="/6244D528" Ref="D?"  Part="1" 
AR Path="/6241987A/6244D528" Ref="D9"  Part="1" 
F 0 "D9" H 6850 4200 50  0000 C CNN
F 1 "gate3" H 7050 4200 50  0000 C CNN
F 2 "LED_THT:LED_D4.0mm" H 6950 4100 50  0001 C CNN
F 3 "~" H 6950 4100 50  0001 C CNN
	1    6950 4100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 6244D52E
P 6950 5600
AR Path="/6244D52E" Ref="R?"  Part="1" 
AR Path="/6241987A/6244D52E" Ref="R14"  Part="1" 
F 0 "R14" V 7050 5600 50  0000 C CNN
F 1 "3.3k" V 6850 5600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6880 5600 50  0001 C CNN
F 3 "~" H 6950 5600 50  0001 C CNN
	1    6950 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 6244D534
P 6950 5300
AR Path="/6244D534" Ref="D?"  Part="1" 
AR Path="/6241987A/6244D534" Ref="D10"  Part="1" 
F 0 "D10" H 6850 5400 50  0000 C CNN
F 1 "gate4" H 7050 5400 50  0000 C CNN
F 2 "LED_THT:LED_D4.0mm" H 6950 5300 50  0001 C CNN
F 3 "~" H 6950 5300 50  0001 C CNN
	1    6950 5300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 6244D53A
P 6950 3200
AR Path="/6244D53A" Ref="R?"  Part="1" 
AR Path="/6241987A/6244D53A" Ref="R12"  Part="1" 
F 0 "R12" V 7050 3200 50  0000 C CNN
F 1 "3.3k" V 6950 3200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6880 3200 50  0001 C CNN
F 3 "~" H 6950 3200 50  0001 C CNN
	1    6950 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 6244D540
P 6950 2900
AR Path="/6244D540" Ref="D?"  Part="1" 
AR Path="/6241987A/6244D540" Ref="D8"  Part="1" 
F 0 "D8" H 6850 3000 50  0000 C CNN
F 1 "gate2" H 7050 3000 50  0000 C CNN
F 2 "LED_THT:LED_D4.0mm" H 6950 2900 50  0001 C CNN
F 3 "~" H 6950 2900 50  0001 C CNN
	1    6950 2900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6244D546
P 6950 3350
AR Path="/6244D546" Ref="#PWR?"  Part="1" 
AR Path="/6241987A/6244D546" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 6950 3100 50  0001 C CNN
F 1 "GND" H 6955 3177 50  0000 C CNN
F 2 "" H 6950 3350 50  0001 C CNN
F 3 "" H 6950 3350 50  0001 C CNN
	1    6950 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6244D54C
P 6950 5750
AR Path="/6244D54C" Ref="#PWR?"  Part="1" 
AR Path="/6241987A/6244D54C" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 6950 5500 50  0001 C CNN
F 1 "GND" H 6955 5577 50  0000 C CNN
F 2 "" H 6950 5750 50  0001 C CNN
F 3 "" H 6950 5750 50  0001 C CNN
	1    6950 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6244D552
P 6950 4550
AR Path="/6244D552" Ref="#PWR?"  Part="1" 
AR Path="/6241987A/6244D552" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 6950 4300 50  0001 C CNN
F 1 "GND" H 6955 4377 50  0000 C CNN
F 2 "" H 6950 4550 50  0001 C CNN
F 3 "" H 6950 4550 50  0001 C CNN
	1    6950 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6244D558
P 6950 2100
AR Path="/6244D558" Ref="#PWR?"  Part="1" 
AR Path="/6241987A/6244D558" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 6950 1850 50  0001 C CNN
F 1 "GND" H 6955 1927 50  0000 C CNN
F 2 "" H 6950 2100 50  0001 C CNN
F 3 "" H 6950 2100 50  0001 C CNN
	1    6950 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1500 7100 1500
Wire Wire Line
	6950 3950 7100 3950
Wire Wire Line
	6950 5150 7100 5150
Wire Wire Line
	6950 2750 7100 2750
Text HLabel 6950 1500 1    50   Input ~ 0
gate_1
Text HLabel 6950 2750 1    50   Input ~ 0
gate_2
Text HLabel 6950 5150 1    50   Input ~ 0
gate_4
Text HLabel 6950 3950 1    50   Input ~ 0
gate_3
Connection ~ 1500 1800
Wire Wire Line
	1500 1800 1500 2200
Wire Wire Line
	1500 1400 1500 1800
Text HLabel 4750 2100 0    50   Input ~ 0
sw_enter
Text HLabel 5250 1900 2    50   Input ~ 0
sw_func_2
Text HLabel 5250 2100 2    50   Input ~ 0
sw_func_1
Text HLabel 4750 2000 0    50   Input ~ 0
re_2
Text HLabel 4750 1900 0    50   Input ~ 0
re_1
Text HLabel 4750 1300 0    50   Input ~ 0
clock_in
Text HLabel 5250 1400 2    50   Input ~ 0
select_1
Text HLabel 5250 1600 2    50   Input ~ 0
select_2
Text HLabel 5250 1800 2    50   Input ~ 0
select_3
Text HLabel 5250 2000 2    50   Input ~ 0
select_4
Text HLabel 5250 1300 2    50   Input ~ 0
seq_start
Text HLabel 4750 1400 0    50   Input ~ 0
gate_1
Text HLabel 5250 1500 2    50   Input ~ 0
gate_2
Text HLabel 4750 1700 0    50   Input ~ 0
gate_3
Text HLabel 4750 1800 0    50   Input ~ 0
gate_4
$Comp
L power:GND #PWR?
U 1 1 624B68FF
P 4750 1600
AR Path="/624B68FF" Ref="#PWR?"  Part="1" 
AR Path="/6241987A/624B68FF" Ref="#PWR049"  Part="1" 
F 0 "#PWR049" H 4750 1350 50  0001 C CNN
F 1 "GND" H 4755 1427 50  0000 C CNN
F 2 "" H 4750 1600 50  0001 C CNN
F 3 "" H 4750 1600 50  0001 C CNN
	1    4750 1600
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 624B6DF8
P 4450 1500
AR Path="/624B6DF8" Ref="#PWR?"  Part="1" 
AR Path="/6241987A/624B6DF8" Ref="#PWR048"  Part="1" 
F 0 "#PWR048" H 4450 1350 50  0001 C CNN
F 1 "+5V" H 4465 1673 50  0000 C CNN
F 2 "" H 4450 1500 50  0001 C CNN
F 3 "" H 4450 1500 50  0001 C CNN
	1    4450 1500
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x09_Odd_Even J7
U 1 1 624B7BF2
P 4950 1700
F 0 "J7" H 5000 2317 50  0000 C CNN
F 1 "Conn_02x09_Odd_Even" H 5000 2226 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x09_P2.54mm_Vertical" H 4950 1700 50  0001 C CNN
F 3 "~" H 4950 1700 50  0001 C CNN
	1    4950 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1500 4750 1500
$Comp
L power:GND #PWR?
U 1 1 622F81F8
P 5250 1700
AR Path="/622F81F8" Ref="#PWR?"  Part="1" 
AR Path="/6241987A/622F81F8" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 5250 1450 50  0001 C CNN
F 1 "GND" H 5255 1527 50  0000 C CNN
F 2 "" H 5250 1700 50  0001 C CNN
F 3 "" H 5250 1700 50  0001 C CNN
	1    5250 1700
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
