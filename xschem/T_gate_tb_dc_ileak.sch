v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {kiem tra dong do} -430 -190 0 0 0.5 0.5 {}
N 580 -150 680 -150 {lab=GND}
N 580 -100 680 -100 {lab=Vin}
N 580 -60 680 -60 {lab=vdd}
N 760 -20 760 20 {lab=vdd}
N 580 20 760 20 {lab=vdd}
N 840 -100 900 -100 {lab=vo}
N 760 -220 760 -180 {lab=GND}
N 580 -220 760 -220 {lab=GND}
N 310 -200 310 -170 {lab=Vin}
N 310 -110 310 -80 {lab=GND}
N 210 -200 210 -170 {lab=vdd}
N 210 -110 210 -80 {lab=GND}
N 870 -40 870 -10 {lab=GND}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/T_gate/schematic/T_gate.sym} 760 -100 2 1 {name=x2}
C {devices/code_shown.sym} -450 -620 0 0 {name=NGSPICE
only_toplevel=true
value="
.param temp=27
.options savecurrents
.control
save all

* Operating Point Analysis
op
remzerovec
write transmission_gate_tb_dc_Ileak.raw
set appendwrite

* DC Sweep Analysis with Dummy
dc Vin 0 1.2 10m vout 0 1.2 0.6
write transmission_gate_tb_dc_Ileak.raw
set appendwrite

* Off-Leakage Current
let Ileak = i(vout)
plot Ileak

*quit
.endc" }
C {vsource.sym} 310 -140 0 0 {name=Vin value=0.6}
C {gnd.sym} 310 -80 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 310 -200 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 580 -100 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {gnd.sym} 580 -150 0 0 {name=l2 lab=GND}
C {vsource.sym} 210 -140 0 0 {name=V3 value=1.2}
C {lab_pin.sym} 210 -200 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {gnd.sym} 210 -80 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 580 -60 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 900 -100 0 1 {name=p8 sig_type=std_logic lab=vo}
C {simulator_commands_shown.sym} 80 -610 0 0 {
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
C {lab_pin.sym} 580 20 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {gnd.sym} 580 -220 0 0 {name=l4 lab=GND}
C {vsource.sym} 870 -70 0 0 {name=vout value=0.6}
C {gnd.sym} 870 -10 0 0 {name=l5 lab=GND}
C {devices/launcher.sym} 530 -330 0 0 {name=h3
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
