v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 110 -170 210 -170 {lab=GND}
N 110 -120 210 -120 {lab=Vin}
N 110 -80 210 -80 {lab=vdd}
N 290 -40 290 -0 {lab=phi1n}
N 110 -0 290 -0 {lab=phi1n}
N 370 -120 430 -120 {lab=vo}
N 290 -240 290 -200 {lab=phi1}
N 110 -240 290 -240 {lab=phi1}
N -260 -220 -260 -190 {lab=vdd}
N -260 -130 -260 -100 {lab=GND}
N -890 -480 -890 -450 {lab=phi1}
N -890 -390 -890 -360 {lab=GND}
N -550 -470 -550 -440 {lab=phi1n}
N -550 -380 -550 -350 {lab=GND}
N -440 -230 -440 -200 {lab=Vin}
N -440 -140 -440 -110 {lab=GND}
N 400 -60 400 -20 {lab=GND}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/T_gate/schematic/T_gate.sym} 290 -120 2 1 {name=x2}
C {lab_pin.sym} 110 -120 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {gnd.sym} 110 -170 0 0 {name=l2 lab=GND}
C {vsource.sym} -260 -160 0 0 {name=V3 value=1.2}
C {lab_pin.sym} -260 -220 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {gnd.sym} -260 -100 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 110 -80 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 430 -120 0 1 {name=p8 sig_type=std_logic lab=vo}
C {simulator_commands_shown.sym} -390 -630 0 0 {
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
C {devices/code_shown.sym} -760 -640 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
save all
tran 1u 100u
write T_gate_tb.raw
.endc
" }
C {vsource.sym} -890 -420 0 0 {name=V5 value="PULSE(0 1.2 0 1n 1n 48.828125n 97.65625n)"}
C {gnd.sym} -890 -360 0 0 {name=l13 lab=GND}
C {lab_pin.sym} -890 -480 0 0 {name=p17 sig_type=std_logic lab=phi1}
C {vsource.sym} -550 -410 0 0 {name=V6 value="PULSE(1.2 0 0 1n 1n 48.828125n 97.65625n)"}
C {gnd.sym} -550 -350 0 0 {name=l14 lab=GND}
C {lab_pin.sym} -550 -470 0 0 {name=p18 sig_type=std_logic lab=phi1n}
C {lab_pin.sym} 110 -240 0 0 {name=p5 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 110 0 0 0 {name=p6 sig_type=std_logic lab=phi1n}
C {vsource.sym} -440 -170 0 0 {name=V2 value="SIN(0 0.1 20k)"}
C {gnd.sym} -440 -110 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -440 -230 0 0 {name=p7 sig_type=std_logic lab=Vin}
C {devices/launcher.sym} -150 -370 0 0 {name=h3
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {capa.sym} 400 -90 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 400 -20 0 0 {name=l1 lab=GND}
