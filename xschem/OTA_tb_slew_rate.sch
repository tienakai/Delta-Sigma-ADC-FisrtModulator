v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -140 -310 -140 -280 {lab=V_in}
N -140 -220 -140 -190 {lab=GND}
N 120 -290 120 -260 {lab=V_DD}
N 120 -200 120 -170 {lab=GND}
N 210 -290 210 -260 {lab=V_SS}
N 210 -200 210 -170 {lab=GND}
N 120 -120 120 -90 {lab=V_BN}
N 120 -30 120 0 {lab=GND}
N 210 -120 210 -90 {lab=V_BP}
N 210 -30 210 0 {lab=GND}
N 610 -460 610 -410 {lab=V_SS}
N 610 -700 610 -620 {lab=V_DD}
N 680 -700 680 -620 {lab=V_BN}
N 690 -460 690 -410 {lab=V_BP}
N 320 -520 530 -520 {lab=V_in}
N 780 -540 870 -540 {lab=vout}
N 470 -570 530 -570 {lab=vout}
N 470 -760 470 -570 {lab=vout}
N 470 -760 780 -760 {lab=vout}
N 780 -760 780 -540 {lab=vout}
N 750 -540 780 -540 {lab=vout}
N 780 -480 780 -460 {lab=GND}
C {devices/launcher.sym} -220 -120 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {lab_pin.sym} -140 -310 0 0 {name=p7 sig_type=std_logic lab=V_in}
C {gnd.sym} -140 -190 0 0 {name=l1 lab=GND}
C {vsource.sym} 120 -230 0 0 {name=VDD value=1.2 savecurrent=false}
C {lab_pin.sym} 120 -290 0 0 {name=p8 sig_type=std_logic lab=V_DD}
C {gnd.sym} 120 -170 0 0 {name=l2 lab=GND}
C {vsource.sym} 210 -230 0 0 {name=V_SS value=0 savecurrent=false}
C {lab_pin.sym} 210 -290 0 0 {name=p9 sig_type=std_logic lab=V_SS}
C {gnd.sym} 210 -170 0 0 {name=l3 lab=GND}
C {vsource.sym} 120 -60 0 0 {name=Vin1 value=0.3 savecurrent=false}
C {lab_pin.sym} 120 -120 0 0 {name=p10 sig_type=std_logic lab=V_BN}
C {gnd.sym} 120 0 0 0 {name=l4 lab=GND}
C {vsource.sym} 210 -60 0 0 {name=Vin2 value=0.2 savecurrent=false}
C {lab_pin.sym} 210 -120 0 0 {name=p11 sig_type=std_logic lab=V_BP}
C {gnd.sym} 210 0 0 0 {name=l5 lab=GND}
C {Pseudo_compensated_self_cascode_OTA.sym} 330 -360 0 0 {name=x1}
C {lab_pin.sym} 320 -520 0 0 {name=p1 sig_type=std_logic lab=V_in}
C {lab_pin.sym} 610 -700 0 0 {name=p2 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} 610 -410 0 0 {name=p3 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} 690 -410 0 0 {name=p4 sig_type=std_logic lab=V_BP}
C {lab_pin.sym} 680 -700 0 0 {name=p5 sig_type=std_logic lab=V_BN}
C {capa-2.sym} 780 -510 0 0 {name=C1
m=1
value=2p
footprint=1206
device=polarized_capacitor}
C {gnd.sym} 780 -460 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 870 -540 0 1 {name=p6 sig_type=std_logic lab=vout}
C {vsource.sym} -140 -250 0 0 {name=Vin3 value="PULSE(0.5 0.7 1u 1n 1n 10u 20u)" savecurrent=false}
C {simulator_commands_shown.sym} -650 -70 0 0 {
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
C {devices/code_shown.sym} -770 -730 0 0 {name=NGSPICE1 only_toplevel=true 
value=".control

tran 0.1n 5u

plot v(vout)

* ===== Slew Rate =====
let sr = deriv(v(vout))

plot sr

meas tran SR_MAX MAX sr from=1u to=2u

let SR_VUS = SR_MAX/1e6

print SR_MAX
print SR_VUS

.endc
"}
