v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 40 -630 40 -600 {lab=vref_pos}
N 40 -540 40 -510 {lab=GND}
N 40 -480 40 -450 {lab=Vin}
N 40 -390 40 -360 {lab=GND}
N 40 -780 40 -750 {lab=vdd}
N 40 -690 40 -660 {lab=GND}
N 620 -720 620 -690 {lab=Vin}
N 700 -800 760 -800 {lab=Vo}
N 620 -1050 620 -880 {lab=#net1}
N 700 -1130 760 -1130 {lab=Vo}
N 760 -970 760 -800 {lab=Vo}
N 760 -1130 760 -970 {lab=Vo}
N 620 -1280 620 -1210 {lab=Vin}
N 410 -1280 620 -1280 {lab=Vin}
N 480 -800 540 -800 {lab=vref_neg}
N 480 -760 540 -760 {lab=vdd}
N 480 -850 540 -850 {lab=GND}
N 410 -690 620 -690 {lab=Vin}
N 480 -1130 540 -1130 {lab=vref_pos}
N 480 -1090 540 -1090 {lab=vdd}
N 480 -1180 540 -1180 {lab=GND}
N 370 -960 440 -960 {lab=Vin}
N 480 -1030 480 -1020 {lab=vdd}
N 480 -900 480 -890 {lab=GND}
N 760 -970 810 -970 {lab=Vo}
N -150 -630 -150 -600 {lab=vref_neg}
N -150 -540 -150 -510 {lab=GND}
N 800 -910 800 -890 {lab=GND}
C {vsource.sym} 40 -570 0 0 {name=V1 value=0.7}
C {vsource.sym} 40 -420 0 0 {name=V2 value="PULSE(0 1 0 10n 10n 10u 20u)"}
C {devices/code_shown.sym} 250 -540 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
save all
tran 1u 100u
write T_gate_tb.raw
.endc
" }
C {devices/code_shown.sym} 240 -370 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {gnd.sym} 40 -360 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 40 -480 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {gnd.sym} 40 -510 0 0 {name=l2 lab=GND}
C {vsource.sym} 40 -720 0 0 {name=V3 value=1.2}
C {lab_pin.sym} 40 -780 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {gnd.sym} 40 -660 0 0 {name=l3 lab=GND}
C {iopin.sym} 810 -970 0 0 {name=p5 lab=Vo}
C {gnd.sym} 480 -850 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 480 -760 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {gnd.sym} 480 -1180 0 0 {name=l8 lab=GND}
C {lab_pin.sym} 480 -1090 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 480 -1130 0 0 {name=p8 sig_type=std_logic lab=vref_pos}
C {lab_pin.sym} 370 -960 0 0 {name=p9 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 480 -1030 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {gnd.sym} 480 -890 0 0 {name=l4 lab=GND}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/T_gate/schematic/T_gate.sym} 620 -1130 2 1 {name=x2}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/T_gate/schematic/T_gate.sym} 620 -800 2 1 {name=x3}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/bootstrap_switch/schematic/inverter.sym} 460 -960 0 0 {name=x1}
C {lab_pin.sym} 480 -800 0 0 {name=p10 sig_type=std_logic lab=vref_neg}
C {vsource.sym} -150 -570 0 0 {name=V4 value=0.5}
C {gnd.sym} -150 -510 0 0 {name=l5 lab=GND}
C {lab_pin.sym} -150 -630 0 0 {name=p12 sig_type=std_logic lab=vref_neg}
C {lab_pin.sym} 40 -630 0 0 {name=p1 sig_type=std_logic lab=vref_pos}
C {lab_pin.sym} 410 -1280 0 0 {name=p14 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 410 -690 0 0 {name=p15 sig_type=std_logic lab=Vin}
C {capa-2.sym} 800 -940 0 0 {name=C1
m=1
value=1p
footprint=1206
device=polarized_capacitor}
C {gnd.sym} 800 -890 0 0 {name=l10 lab=GND}
