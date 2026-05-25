v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -270 -330 -270 -280 {lab=CLK}
N -270 -90 -270 -20 {lab=RST}
N 460 -110 460 -40 {lab=X}
N -270 -220 -270 -180 {lab=GND}
N -270 40 -270 80 {lab=GND}
N 460 20 460 60 {lab=GND}
N 530 -530 580 -530 {lab=#net1}
N 530 -510 580 -510 {lab=#net2}
N 290 -380 370 -380 {lab=#net3}
N 290 -400 370 -400 {lab=#net4}
N 290 -420 370 -420 {lab=#net5}
N 290 -440 370 -440 {lab=#net6}
N 640 -510 680 -510 {lab=d11}
N 640 -530 680 -530 {lab=data_valid}
N 180 -440 230 -440 {lab=CLK}
N 180 -420 230 -420 {lab=RST}
N 180 -400 230 -400 {lab=X}
N 180 -380 230 -380 {lab=en}
N 160 -100 160 -30 {lab=en}
N 160 30 160 70 {lab=GND}
N 530 -490 580 -490 {lab=#net7}
N 640 -490 680 -490 {lab=d11}
N 530 -470 580 -470 {lab=#net8}
N 640 -470 680 -470 {lab=d9}
N 530 -450 580 -450 {lab=#net9}
N 640 -450 680 -450 {lab=d8}
N 530 -430 580 -430 {lab=#net10}
N 640 -430 680 -430 {lab=d7}
N 530 -410 580 -410 {lab=#net11}
N 640 -410 680 -410 {lab=d6}
N 530 -390 580 -390 {lab=#net12}
N 640 -390 680 -390 {lab=d5}
N 530 -370 580 -370 {lab=#net13}
N 640 -370 680 -370 {lab=d4}
N 530 -350 580 -350 {lab=#net14}
N 640 -350 680 -350 {lab=d3}
N 530 -330 580 -330 {lab=#net15}
N 640 -330 680 -330 {lab=d2}
N 530 -310 580 -310 {lab=#net16}
N 640 -310 680 -310 {lab=d1}
N 530 -290 580 -290 {lab=#net17}
N 640 -290 680 -290 {lab=d0}
C {lab_pin.sym} -270 -330 0 0 {name=p18 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -270 -90 0 0 {name=p19 sig_type=std_logic lab=RST}
C {lab_pin.sym} 460 -110 0 0 {name=p20 sig_type=std_logic lab=X}
C {vsource.sym} -270 -250 0 0 {name=V1 value="pulse(0 1.2 0 100p 100p 10n 20n)" savecurrent=false}
C {vsource.sym} -270 10 0 0 {name=V2 value="PWL(
+ 0n   1.2
+ 100n 1.2
+ 101n 0
)" savecurrent=false}
C {vsource.sym} 460 -10 0 0 {name=V3 value=1.2 savecurrent=false}
C {gnd.sym} -270 -180 0 0 {name=l1 lab=GND}
C {gnd.sym} -270 80 0 0 {name=l2 lab=GND}
C {gnd.sym} 460 60 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} -170 -490 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all 
tran 1n 200u
write sinc3_tb.raw
.endc
"}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 610 -510 0 0 {name=A17
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 610 -530 0 0 {name=A19
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/adc_bridge1.sym} 260 -440 0 0 {name=A20
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.1
in_high=0.9
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/adc_bridge1.sym} 260 -420 0 0 {name=A1
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.1
in_high=0.9
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/adc_bridge1.sym} 260 -400 0 0 {name=A2
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.1
in_high=0.9
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/adc_bridge1.sym} 260 -380 0 0 {name=A3
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.1
in_high=0.9
}
C {lab_pin.sym} 180 -400 0 0 {name=p1 sig_type=std_logic lab=X}
C {lab_pin.sym} 180 -440 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 180 -420 0 0 {name=p3 sig_type=std_logic lab=RST}
C {lab_pin.sym} 180 -380 0 0 {name=p4 sig_type=std_logic lab=en}
C {lab_pin.sym} 680 -510 0 1 {name=p5 sig_type=std_logic lab=d11}
C {lab_pin.sym} 680 -530 0 1 {name=p6 sig_type=std_logic lab=data_valid}
C {lab_pin.sym} 160 -100 0 0 {name=p7 sig_type=std_logic lab=en}
C {vsource.sym} 160 0 0 0 {name=V4 value=1.2 savecurrent=false}
C {gnd.sym} 160 70 0 0 {name=l4 lab=GND}
C {sinc_sync.sym} 450 -410 0 0 {name=adut
dut=dut
d_cosim_model= d_cosim
model=./sinc_sync.so}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 610 -490 0 0 {name=A4
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {lab_pin.sym} 680 -490 0 1 {name=p8 sig_type=std_logic lab=d10}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 610 -470 0 0 {name=A5
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {lab_pin.sym} 680 -470 0 1 {name=p9 sig_type=std_logic lab=d9}
C {lab_pin.sym} 680 -450 0 1 {name=p10 sig_type=std_logic lab=d8}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 610 -430 0 0 {name=A7
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {lab_pin.sym} 680 -430 0 1 {name=p11 sig_type=std_logic lab=d7}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 610 -450 0 0 {name=A6
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 610 -410 0 0 {name=A8
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {lab_pin.sym} 680 -410 0 1 {name=p12 sig_type=std_logic lab=d6}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 610 -390 0 0 {name=A9
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {lab_pin.sym} 680 -390 0 1 {name=p13 sig_type=std_logic lab=d5}
C {lab_pin.sym} 680 -370 0 1 {name=p14 sig_type=std_logic lab=d4}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 610 -350 0 0 {name=A10
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {lab_pin.sym} 680 -350 0 1 {name=p15 sig_type=std_logic lab=d3}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 610 -370 0 0 {name=A11
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 610 -330 0 0 {name=A12
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {lab_pin.sym} 680 -330 0 1 {name=p16 sig_type=std_logic lab=d2}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 610 -310 0 0 {name=A13
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {lab_pin.sym} 680 -310 0 1 {name=p17 sig_type=std_logic lab=d1}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/algorithm/xschem/dac_bridge1.sym} 610 -290 0 0 {name=A14
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {lab_pin.sym} 680 -290 0 1 {name=p21 sig_type=std_logic lab=d0}
