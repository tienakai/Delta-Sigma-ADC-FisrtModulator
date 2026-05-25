v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -890 -270 -890 -240 {lab=Vcm}
N -890 -180 -890 -150 {lab=GND}
N -890 -90 -890 -60 {lab=Vin}
N -890 0 -890 30 {lab=GND}
N -450 -350 -450 -320 {lab=vdd}
N -450 -260 -450 -230 {lab=GND}
N -620 -270 -620 -240 {lab=VBN}
N -620 -180 -620 -150 {lab=GND}
N -620 -90 -620 -60 {lab=VBP}
N -620 0 -620 30 {lab=GND}
N -620 120 -620 150 {lab=Vref_neg}
N -620 210 -620 240 {lab=GND}
N -890 120 -890 150 {lab=Vref_pos}
N -890 210 -890 240 {lab=GND}
N -280 10 -170 10 {lab=Vin}
N -280 30 -170 30 {lab=VBN}
N -280 50 -170 50 {lab=VBP}
N -280 70 -170 70 {lab=Vcm}
N -280 90 -170 90 {lab=Vref_pos}
N -280 110 -170 110 {lab=Vref_neg}
N -100 -100 -100 -60 {lab=phi1}
N -130 -100 -100 -100 {lab=phi1}
N -80 -120 -80 -60 {lab=phi1n}
N -130 -120 -80 -120 {lab=phi1n}
N -60 -140 -60 -60 {lab=phi2}
N -130 -140 -60 -140 {lab=phi2}
N -40 -160 -40 -60 {lab=phi2n}
N -130 -160 -40 -160 {lab=phi2n}
N 20 -100 20 -60 {lab=vdd}
N 20 180 20 220 {lab=GND}
N 130 60 180 60 {lab=#net1}
N 470 -10 520 -10 {lab=d9}
N 470 -70 520 -70 {lab=data_valid}
N 510 -560 510 -510 {lab=CLK}
N 780 -560 780 -490 {lab=RST}
N 510 -450 510 -410 {lab=GND}
N 780 -430 780 -390 {lab=GND}
N 880 -560 880 -490 {lab=en}
N 880 -430 880 -390 {lab=GND}
N 400 -10 410 -10 {lab=#net2}
N 400 -70 410 -70 {lab=#net3}
N -620 -530 -620 -500 {lab=phi1}
N -620 -440 -620 -410 {lab=GND}
N -890 -710 -890 -680 {lab=phi1n}
N -890 -620 -890 -590 {lab=GND}
N -890 -530 -890 -500 {lab=phi2}
N -890 -440 -890 -410 {lab=GND}
N -620 -710 -620 -680 {lab=phi2n}
N -620 -620 -620 -590 {lab=GND}
N 470 -30 520 -30 {lab=d10}
N 400 -30 410 -30 {lab=#net4}
N 470 -50 520 -50 {lab=d11}
N 400 -50 410 -50 {lab=#net5}
N 470 10 520 10 {lab=d8}
N 400 10 410 10 {lab=#net6}
N 470 30 520 30 {lab=d7}
N 400 30 410 30 {lab=#net7}
N 470 50 520 50 {lab=d6}
N 400 50 410 50 {lab=#net8}
N 470 70 520 70 {lab=d5}
N 400 70 410 70 {lab=#net9}
N 470 90 520 90 {lab=d5}
N 400 90 410 90 {lab=#net10}
N 470 110 520 110 {lab=d3}
N 400 110 410 110 {lab=#net11}
N 470 130 520 130 {lab=d2}
N 400 130 410 130 {lab=#net12}
N 470 150 520 150 {lab=d1}
N 400 150 410 150 {lab=#net13}
N 470 170 520 170 {lab=d0}
N 400 170 410 170 {lab=#net14}
C {vsource.sym} -890 -210 0 0 {name=V1 value=0.6}
C {vsource.sym} -890 -30 0 0 {name=V2 value="SIN(0.6 0.1 20k)"}
C {gnd.sym} -890 30 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -890 -90 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {gnd.sym} -890 -150 0 0 {name=l2 lab=GND}
C {vsource.sym} -450 -290 0 0 {name=V3 value=1.2}
C {lab_pin.sym} -450 -350 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {gnd.sym} -450 -230 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -890 -270 0 0 {name=p1 sig_type=std_logic lab=Vcm}
C {vsource.sym} -620 -210 0 0 {name=V9 value=0.3}
C {gnd.sym} -620 -150 0 0 {name=l12 lab=GND}
C {lab_pin.sym} -620 -270 0 0 {name=p28 sig_type=std_logic lab=VBN}
C {vsource.sym} -620 -30 0 0 {name=V10 value=0.2}
C {gnd.sym} -620 30 0 0 {name=l16 lab=GND}
C {lab_pin.sym} -620 -90 0 0 {name=p29 sig_type=std_logic lab=VBP}
C {vsource.sym} -620 180 0 0 {name=V12 value=0.5}
C {gnd.sym} -620 240 0 0 {name=l20 lab=GND}
C {lab_pin.sym} -620 120 0 0 {name=p35 sig_type=std_logic lab=Vref_neg}
C {vsource.sym} -890 180 0 0 {name=V11 value=0.7}
C {gnd.sym} -890 240 0 0 {name=l19 lab=GND}
C {lab_pin.sym} -890 120 0 0 {name=p34 sig_type=std_logic lab=Vref_pos}
C {simulator_commands_shown.sym} -270 -530 0 0 {
name=Libs_Ngspice
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerHBT.lib hbt_typ
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ
"
      }
C {devices/launcher.sym} -150 -340 0 0 {name=h3
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {first_order_modulator.sym} -20 60 0 0 {name=x1}
C {lab_pin.sym} -280 10 0 0 {name=p4 sig_type=std_logic lab=Vin}
C {lab_pin.sym} -280 30 0 0 {name=p5 sig_type=std_logic lab=VBN}
C {lab_pin.sym} -280 50 0 0 {name=p6 sig_type=std_logic lab=VBP}
C {lab_pin.sym} -280 70 0 0 {name=p9 sig_type=std_logic lab=Vcm}
C {lab_pin.sym} -280 90 0 0 {name=p10 sig_type=std_logic lab=Vref_pos}
C {lab_pin.sym} -280 110 0 0 {name=p11 sig_type=std_logic lab=Vref_neg}
C {lab_pin.sym} -130 -100 0 0 {name=p12 sig_type=std_logic lab=phi1}
C {lab_pin.sym} -130 -140 0 0 {name=p13 sig_type=std_logic lab=phi2}
C {lab_pin.sym} -130 -160 0 0 {name=p14 sig_type=std_logic lab=phi2n}
C {lab_pin.sym} -130 -120 0 0 {name=p15 sig_type=std_logic lab=phi1n}
C {lab_pin.sym} 20 -100 0 1 {name=p16 sig_type=std_logic lab=vdd}
C {gnd.sym} 20 220 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 520 -50 0 1 {name=p19 sig_type=std_logic lab=d11}
C {lab_pin.sym} 520 -70 0 1 {name=p20 sig_type=std_logic lab=data_valid}
C {lab_pin.sym} 510 -560 0 0 {name=p21 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 780 -560 0 0 {name=p22 sig_type=std_logic lab=RST}
C {vsource.sym} 510 -480 0 0 {name=V4 value="pulse(0 1.2 0 100p 100p 10n 20n)" savecurrent=false}
C {vsource.sym} 780 -460 0 0 {name=V13 value=0 savecurrent=false}
C {gnd.sym} 510 -410 0 0 {name=l5 lab=GND}
C {gnd.sym} 780 -390 0 0 {name=l8 lab=GND}
C {lab_pin.sym} 180 20 0 0 {name=p23 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 180 40 0 0 {name=p24 sig_type=std_logic lab=RST}
C {lab_pin.sym} 880 -560 0 0 {name=p25 sig_type=std_logic lab=en}
C {vsource.sym} 880 -460 0 0 {name=V14 value=1.2 savecurrent=false}
C {gnd.sym} 880 -390 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 180 80 0 0 {name=p26 sig_type=std_logic lab=en}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/adc_bridge1.sym} 210 60 0 0 {name=A20
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.1
in_high=0.9
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/adc_bridge1.sym} 210 40 0 0 {name=A1
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.1
in_high=0.9
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/adc_bridge1.sym} 210 20 0 0 {name=A2
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.1
in_high=0.9
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/adc_bridge1.sym} 210 80 0 0 {name=A3
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.1
in_high=0.9
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 440 -10 0 0 {name=A17
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 440 -70 0 0 {name=A4
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {vsource.sym} -620 -470 0 0 {name=V5 value="PULSE(0 1.2 0 1n 1n 40n 97.65625n)"}
C {gnd.sym} -620 -410 0 0 {name=l13 lab=GND}
C {lab_pin.sym} -620 -530 0 0 {name=p17 sig_type=std_logic lab=phi1}
C {vsource.sym} -890 -650 0 0 {name=V6 value="PULSE(1.2 0 0 1n 1n 40n 97.65625n)"}
C {gnd.sym} -890 -590 0 0 {name=l14 lab=GND}
C {lab_pin.sym} -890 -710 0 0 {name=p18 sig_type=std_logic lab=phi1n}
C {vsource.sym} -890 -470 0 0 {name=V7 value="PULSE(0 1.2 55n 1n 1n 40n 97.65625n)"}
C {gnd.sym} -890 -410 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -890 -530 0 0 {name=p7 sig_type=std_logic lab=phi2}
C {vsource.sym} -620 -650 0 0 {name=V8 value="PULSE(1.2 0 55n 1n 1n 40n 97.65625n)"}
C {gnd.sym} -620 -590 0 0 {name=l7 lab=GND}
C {lab_pin.sym} -620 -710 0 0 {name=p8 sig_type=std_logic lab=phi2n}
C {devices/code_shown.sym} 80 -510 0 0 {name=NGSPICE1
only_toplevel=true
value="
.control
save all
tran 10n 600u
wrdata output_adc.txt v(vout)
.endc
" }
C {sinc_sync.sym} 320 50 0 0 {name=adut
dut=dut
d_cosim_model= d_cosim
model=./sinc_sync.so}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 440 -30 0 0 {name=A5
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 440 -50 0 0 {name=A6
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 440 10 0 0 {name=A7
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 440 30 0 0 {name=A8
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 440 50 0 0 {name=A9
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 440 70 0 0 {name=A10
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 440 90 0 0 {name=A11
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 440 110 0 0 {name=A12
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 440 130 0 0 {name=A13
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 440 150 0 0 {name=A14
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 440 170 0 0 {name=A15
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {lab_pin.sym} 520 -30 0 1 {name=p27 sig_type=std_logic lab=d10}
C {lab_pin.sym} 520 -10 0 1 {name=p30 sig_type=std_logic lab=d9}
C {lab_pin.sym} 520 10 0 1 {name=p31 sig_type=std_logic lab=d8}
C {lab_pin.sym} 520 30 0 1 {name=p32 sig_type=std_logic lab=d7}
C {lab_pin.sym} 520 50 0 1 {name=p33 sig_type=std_logic lab=d6}
C {lab_pin.sym} 520 70 0 1 {name=p36 sig_type=std_logic lab=d5}
C {lab_pin.sym} 520 90 0 1 {name=p37 sig_type=std_logic lab=d4}
C {lab_pin.sym} 520 110 0 1 {name=p38 sig_type=std_logic lab=d3}
C {lab_pin.sym} 520 130 0 1 {name=p39 sig_type=std_logic lab=d2}
C {lab_pin.sym} 520 150 0 1 {name=p40 sig_type=std_logic lab=d1}
C {lab_pin.sym} 520 170 0 1 {name=p41 sig_type=std_logic lab=d0}
