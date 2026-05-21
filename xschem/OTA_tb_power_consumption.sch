v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -110 -170 -110 -140 {lab=V_in}
N -110 -80 -110 -50 {lab=GND}
N 150 -150 150 -120 {lab=V_DD}
N 150 -60 150 -30 {lab=GND}
N 240 -150 240 -120 {lab=V_SS}
N 240 -60 240 -30 {lab=GND}
N 150 20 150 50 {lab=V_BN}
N 150 110 150 140 {lab=GND}
N 240 20 240 50 {lab=V_BP}
N 240 110 240 140 {lab=GND}
N 640 -320 640 -270 {lab=V_SS}
N 640 -560 640 -480 {lab=V_DD}
N 710 -560 710 -480 {lab=V_BN}
N 720 -320 720 -270 {lab=V_BP}
N 350 -380 560 -380 {lab=V_in}
N 500 -430 560 -430 {lab=V_cm}
N 780 -400 900 -400 {lab=vout}
N 810 -340 810 -320 {lab=GND}
N -70 -440 -70 -410 {lab=V_cm}
N -70 -350 -70 -320 {lab=GND}
C {devices/launcher.sym} -190 20 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {lab_pin.sym} -110 -170 0 0 {name=p7 sig_type=std_logic lab=V_in}
C {gnd.sym} -110 -50 0 0 {name=l1 lab=GND}
C {vsource.sym} 150 -90 0 0 {name=VDD value=1.2 savecurrent=false}
C {lab_pin.sym} 150 -150 0 0 {name=p8 sig_type=std_logic lab=V_DD}
C {gnd.sym} 150 -30 0 0 {name=l2 lab=GND}
C {vsource.sym} 240 -90 0 0 {name=V_SS value=0 savecurrent=false}
C {lab_pin.sym} 240 -150 0 0 {name=p9 sig_type=std_logic lab=V_SS}
C {gnd.sym} 240 -30 0 0 {name=l3 lab=GND}
C {vsource.sym} 150 80 0 0 {name=Vin1 value=0.3 savecurrent=false}
C {lab_pin.sym} 150 20 0 0 {name=p10 sig_type=std_logic lab=V_BN}
C {gnd.sym} 150 140 0 0 {name=l4 lab=GND}
C {vsource.sym} 240 80 0 0 {name=Vin2 value=0.2 savecurrent=false}
C {lab_pin.sym} 240 20 0 0 {name=p11 sig_type=std_logic lab=V_BP}
C {gnd.sym} 240 140 0 0 {name=l5 lab=GND}
C {devices/code_shown.sym} -730 -700 0 0 {name=NGSPICE1 only_toplevel=true 
value=".control

tran 1n 20u

* ===== Total current =====
let i_total = -vdd#branch

plot i_total

meas tran I_total AVG i_total from=5e-6 to=20e-6

* ===== Power =====
let p_total = 1.2*i_total

plot p_total

meas tran P_total AVG p_total from=5e-6 to=20e-6

print I_total
print P_total
.endc
"}
C {Pseudo_compensated_self_cascode_OTA.sym} 360 -220 0 0 {name=x1}
C {lab_pin.sym} 350 -380 0 0 {name=p1 sig_type=std_logic lab=V_in}
C {lab_pin.sym} 640 -560 0 0 {name=p2 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} 640 -270 0 0 {name=p3 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} 720 -270 0 0 {name=p4 sig_type=std_logic lab=V_BP}
C {lab_pin.sym} 710 -560 0 0 {name=p5 sig_type=std_logic lab=V_BN}
C {capa-2.sym} 810 -370 0 0 {name=C1
m=1
value=2p
footprint=1206
device=polarized_capacitor}
C {gnd.sym} 810 -320 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 900 -400 0 1 {name=p6 sig_type=std_logic lab=vout}
C {vsource.sym} -110 -110 0 0 {name=Vin3 value="PULSE(0.5 0.7 1u 1n 1n 10u 20u)" savecurrent=false}
C {simulator_commands_shown.sym} -620 70 0 0 {
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
C {lab_pin.sym} 500 -430 0 0 {name=p12 sig_type=std_logic lab=V_cm}
C {gnd.sym} -70 -320 0 0 {name=l6 lab=GND}
C {vsource.sym} -70 -380 0 0 {name=Vin4 value="DC 0.6" savecurrent=false}
C {lab_pin.sym} -70 -440 0 0 {name=p13 sig_type=std_logic lab=V_cm}
