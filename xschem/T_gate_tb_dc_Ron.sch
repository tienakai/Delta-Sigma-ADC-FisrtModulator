v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 700 -100 800 -100 {lab=GND}
N 700 -10 800 -10 {lab=vdd}
N 880 30 880 70 {lab=GND}
N 700 70 880 70 {lab=GND}
N 1000 -50 1020 -50 {lab=vo}
N 880 -170 880 -130 {lab=vdd}
N 700 -170 880 -170 {lab=vdd}
N 430 -150 430 -120 {lab=Vin_on}
N 430 -60 430 -30 {lab=GND}
N 330 -150 330 -120 {lab=vdd}
N 330 -60 330 -30 {lab=GND}
N 580 -50 800 -50 {lab=Vin_on}
N 580 -50 580 -10 {lab=Vin_on}
N 550 -50 580 -50 {lab=Vin_on}
N 580 50 580 130 {lab=vo}
N 580 130 1000 130 {lab=vo}
N 1000 -50 1000 130 {lab=vo}
N 960 -50 1000 -50 {lab=vo}
C {/home/designer/shared/IHP-AnalogAcademy/modules/module_3_8_bit_SAR_ADC/part_2_digital_comps/T_gate/schematic/T_gate.sym} 880 -50 2 1 {name=x2}
C {devices/code_shown.sym} -350 -580 0 0 {name=NGSPICE
only_toplevel=true
value="
.param temp=27
.options savecurrents
.control
save all

* Operating Point Analysis
op
remzerovec
write transmission_gate_tb_dc_Ron.raw
set appendwrite

* DC Sweep Analysis
dc vin 0 1.2 0.01
write transmission_gate_tb_dc_Ron.raw

* On-Resistance

let r_on = (v(vo)-v(vin_on))/I(vds_x1)
plot r_on xlabel 'Vin in V' ylabel 'Ron in Ohm'

*quit
.endc" }
C {vsource.sym} 430 -90 0 0 {name=Vin value=0}
C {gnd.sym} 430 -30 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 430 -150 0 0 {name=p2 sig_type=std_logic lab=Vin_on}
C {lab_pin.sym} 550 -50 0 0 {name=p1 sig_type=std_logic lab=Vin_on}
C {gnd.sym} 700 -100 0 0 {name=l2 lab=GND}
C {vsource.sym} 330 -90 0 0 {name=V3 value=1.2}
C {lab_pin.sym} 330 -150 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {gnd.sym} 330 -30 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 700 -10 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1020 -50 0 1 {name=p8 sig_type=std_logic lab=vo}
C {simulator_commands_shown.sym} 200 -560 0 0 {
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
C {lab_pin.sym} 700 -170 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {vsource.sym} 580 20 0 0 {name=vds_x1 value=1mV}
C {gnd.sym} 700 70 0 0 {name=l4 lab=GND}
C {devices/launcher.sym} 580 -380 0 0 {name=h3
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
