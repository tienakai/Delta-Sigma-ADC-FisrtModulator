v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1090 -810 1090 -750 {lab=V_DD}
N 1160 -810 1160 -750 {lab=V_BN}
N 1170 -590 1170 -530 {lab=V_BP}
N 1090 -590 1090 -530 {lab=V_SS}
N 1230 -670 1520 -670 {lab=v_out}
N 1350 -610 1350 -580 {lab=V_SS}
N 1090 -430 1090 -400 {lab=V_DD}
N 1090 -340 1090 -310 {lab=GND}
N 1180 -430 1180 -400 {lab=V_SS}
N 1180 -340 1180 -310 {lab=GND}
N 1090 -260 1090 -230 {lab=V_BN}
N 1090 -170 1090 -140 {lab=GND}
N 1180 -260 1180 -230 {lab=V_BP}
N 1180 -170 1180 -140 {lab=GND}
N 780 -540 780 -500 {lab=V_SS}
N 710 -700 1010 -700 {lab=#net1}
N 780 -650 780 -600 {lab=#net2}
N 780 -650 1010 -650 {lab=#net2}
N 710 -640 710 -600 {lab=V_SS}
C {devices/code_shown.sym} -40 -980 0 0 {name=NGSPICE only_toplevel=true 
value=".control

ac dec 100 1 1G

* Differential gain
let Ad_dB = vdb(v_out)

plot Ad_dB

* DC gain
meas ac Ad_max MAX Ad_dB

* UGF
meas ac UGF when Ad_dB=0

print Ad_max
print UGF

.endc
"}
C {devices/launcher.sym} 430 -180 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {Pseudo_compensated_self_cascode_OTA.sym} 810 -490 0 0 {name=x1}
C {lab_pin.sym} 1520 -670 0 1 {name=p2 sig_type=std_logic lab=v_out}
C {lab_pin.sym} 1090 -810 0 0 {name=p3 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} 1160 -810 0 1 {name=p4 sig_type=std_logic lab=V_BN}
C {lab_pin.sym} 1090 -530 0 0 {name=p5 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} 1170 -530 0 1 {name=p6 sig_type=std_logic lab=V_BP}
C {vsource.sym} 710 -670 0 0 {name=Vn value="dc 0.6 ac -0.5" savecurrent=false}
C {vsource.sym} 1090 -370 0 0 {name=VDD value=1.2 savecurrent=false}
C {lab_pin.sym} 1090 -430 0 0 {name=p8 sig_type=std_logic lab=V_DD}
C {gnd.sym} 1090 -310 0 0 {name=l2 lab=GND}
C {vsource.sym} 1180 -370 0 0 {name=V_SS value=0 savecurrent=false}
C {lab_pin.sym} 1180 -430 0 0 {name=p9 sig_type=std_logic lab=V_SS}
C {gnd.sym} 1180 -310 0 0 {name=l3 lab=GND}
C {vsource.sym} 1090 -200 0 0 {name=Vin1 value=0.3 savecurrent=false}
C {lab_pin.sym} 1090 -260 0 0 {name=p10 sig_type=std_logic lab=V_BN}
C {gnd.sym} 1090 -140 0 0 {name=l4 lab=GND}
C {vsource.sym} 1180 -200 0 0 {name=Vin2 value=0.2 savecurrent=false}
C {lab_pin.sym} 1180 -260 0 0 {name=p11 sig_type=std_logic lab=V_BP}
C {gnd.sym} 1180 -140 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 1350 -580 0 0 {name=p12 sig_type=std_logic lab=V_SS}
C {vsource.sym} 780 -570 0 0 {name=Vp value="dc 0.6 ac 0.5" savecurrent=false}
C {lab_pin.sym} 780 -500 0 0 {name=p1 sig_type=std_logic lab=V_SS}
C {sg13g2_pr/cap_cmim.sym} 1350 -640 0 0 {name=C2
model=cap_cmim
w=5.0e-6
l=5.0e-6
m=53
spiceprefix=X}
C {simulator_commands_shown.sym} -10 -280 0 0 {
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
C {lab_pin.sym} 710 -600 0 0 {name=p7 sig_type=std_logic lab=V_SS}
