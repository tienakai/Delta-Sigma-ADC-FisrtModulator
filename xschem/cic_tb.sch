v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -180 -30 -70 -30 {lab=#net1}
N -180 -10 -70 -10 {lab=#net2}
N -180 10 -70 10 {lab=#net3}
N 90 -140 170 -140 {lab=#net4}
N 90 -120 170 -120 {lab=#net5}
N 90 -100 170 -100 {lab=#net6}
N 90 -80 170 -80 {lab=#net7}
N 90 -60 170 -60 {lab=#net8}
N 90 -40 170 -40 {lab=#net9}
N 90 -20 170 -20 {lab=#net10}
N 90 -0 170 0 {lab=#net11}
N 90 20 170 20 {lab=#net12}
N 90 40 170 40 {lab=#net13}
N 90 60 170 60 {lab=#net14}
N 90 80 170 80 {lab=#net15}
N 90 100 170 100 {lab=#net16}
N 90 120 170 120 {lab=#net17}
N -310 -30 -240 -30 {lab=CLK}
N -310 -10 -240 -10 {lab=RST}
N -310 10 -240 10 {lab=X}
N 230 -140 300 -140 {lab=D13}
N 230 -120 300 -120 {lab=D12}
N 230 -100 300 -100 {lab=D11}
N 230 -80 300 -80 {lab=D10}
N 230 -60 300 -60 {lab=D9}
N 230 -40 300 -40 {lab=D8}
N 230 -20 300 -20 {lab=D7}
N 230 0 300 0 {lab=D6}
N 230 20 300 20 {lab=D5}
N 230 40 300 40 {lab=D4}
N 230 60 300 60 {lab=D3}
N 230 80 300 80 {lab=D2}
N 230 100 300 100 {lab=D1}
N 230 120 300 120 {lab=D0}
N -560 -170 -560 -120 {lab=CLK}
N -560 70 -560 140 {lab=RST}
N -420 70 -420 140 {lab=X}
N -560 -60 -560 -20 {lab=GND}
N -560 200 -560 240 {lab=GND}
N -420 200 -420 240 {lab=GND}
C {lab_pin.sym} -310 -30 0 0 {name=p1 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -310 -10 0 0 {name=p2 sig_type=std_logic lab=RST}
C {lab_pin.sym} -310 10 0 0 {name=p3 sig_type=std_logic lab=X}
C {lab_pin.sym} 300 120 0 1 {name=p4 sig_type=std_logic lab=D0}
C {lab_pin.sym} 300 100 0 1 {name=p5 sig_type=std_logic lab=D1}
C {lab_pin.sym} 300 80 0 1 {name=p6 sig_type=std_logic lab=D2}
C {lab_pin.sym} 300 60 0 1 {name=p7 sig_type=std_logic lab=D3}
C {lab_pin.sym} 300 40 0 1 {name=p8 sig_type=std_logic lab=D4}
C {lab_pin.sym} 300 20 0 1 {name=p9 sig_type=std_logic lab=D5}
C {lab_pin.sym} 300 0 0 1 {name=p10 sig_type=std_logic lab=D6}
C {lab_pin.sym} 300 -20 0 1 {name=p11 sig_type=std_logic lab=D7}
C {lab_pin.sym} 300 -40 0 1 {name=p12 sig_type=std_logic lab=D8}
C {lab_pin.sym} 300 -60 0 1 {name=p13 sig_type=std_logic lab=D9}
C {lab_pin.sym} 300 -80 0 1 {name=p14 sig_type=std_logic lab=D10}
C {lab_pin.sym} 300 -100 0 1 {name=p15 sig_type=std_logic lab=D11}
C {lab_pin.sym} 300 -120 0 1 {name=p16 sig_type=std_logic lab=D12}
C {lab_pin.sym} 300 -140 0 1 {name=p17 sig_type=std_logic lab=D13}
C {lab_pin.sym} -560 -170 0 0 {name=p18 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -560 70 0 0 {name=p19 sig_type=std_logic lab=RST}
C {lab_pin.sym} -420 70 0 0 {name=p20 sig_type=std_logic lab=X}
C {vsource.sym} -560 -90 0 0 {name=V1 value="PULSE(0 1.2 0 100p 100p 5n 100n)" savecurrent=false}
C {vsource.sym} -560 170 0 0 {name=V2 value="PWL(
+ 0n 1.2
+ 40n 1.2
+ 40.1n 0
)" savecurrent=false}
C {vsource.sym} -420 170 0 0 {name=V3 value="PULSE(0 1.2 0 100p 100p 5n 100n)" savecurrent=false}
C {gnd.sym} -560 -20 0 0 {name=l1 lab=GND}
C {gnd.sym} -560 240 0 0 {name=l2 lab=GND}
C {gnd.sym} -420 240 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} -460 -330 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all 
tran 100p 20u
write cic_tb.raw
.endc
"}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/adc_bridge1.sym} -210 -30 0 0 {name=A18
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.1
in_high=0.9
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/adc_bridge1.sym} -210 -10 0 0 {name=A1
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.1
in_high=0.9
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/adc_bridge1.sym} -210 10 0 0 {name=A3
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.1
in_high=0.9
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 200 120 0 0 {name=A2
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 200 100 0 0 {name=A4
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 200 80 0 0 {name=A5
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 200 60 0 0 {name=A6
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 200 40 0 0 {name=A7
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 200 20 0 0 {name=A8
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 200 0 0 0 {name=A9
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 200 -20 0 0 {name=A10
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 200 -40 0 0 {name=A11
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 200 -60 0 0 {name=A12
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 200 -80 0 0 {name=A13
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 200 -100 0 0 {name=A14
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 200 -120 0 0 {name=A15
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 200 -140 0 0 {name=A16
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {CIC_wrapper.sym} 10 -10 0 0 {name=adut
dut=dut
d_cosim_model= d_cosim
model=./CIC_wrapper.so}
