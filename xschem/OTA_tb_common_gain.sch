v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 510 -680 510 -620 {lab=V_DD}
N 580 -680 580 -620 {lab=V_BN}
N 590 -460 590 -400 {lab=V_BP}
N 510 -460 510 -400 {lab=V_SS}
N 650 -540 940 -540 {lab=v_out}
N 770 -480 770 -450 {lab=V_SS}
N 510 -300 510 -270 {lab=V_DD}
N 510 -210 510 -180 {lab=GND}
N 600 -300 600 -270 {lab=V_SS}
N 600 -210 600 -180 {lab=GND}
N 510 -130 510 -100 {lab=V_BN}
N 510 -40 510 -10 {lab=GND}
N 600 -130 600 -100 {lab=V_BP}
N 600 -40 600 -10 {lab=GND}
N 200 -410 200 -370 {lab=V_SS}
N 130 -570 430 -570 {lab=#net1}
N 200 -520 200 -470 {lab=#net2}
N 200 -520 430 -520 {lab=#net2}
N 130 -510 130 -470 {lab=V_SS}
C {devices/code_shown.sym} -620 -850 0 0 {name=NGSPICE only_toplevel=true 
value=".control

ac dec 100 1 1G

* Common-mode gain
let Acm_dB = vdb(v_out)
plot Acm_dB
* DC common-mode gain
meas ac Acm_max MAX Acm_dB
print Acm_max
.endc
"}
C {devices/launcher.sym} -150 -50 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {Pseudo_compensated_self_cascode_OTA.sym} 230 -360 0 0 {name=x1}
C {lab_pin.sym} 940 -540 0 1 {name=p2 sig_type=std_logic lab=v_out}
C {lab_pin.sym} 510 -680 0 0 {name=p3 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} 580 -680 0 1 {name=p4 sig_type=std_logic lab=V_BN}
C {lab_pin.sym} 510 -400 0 0 {name=p5 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} 590 -400 0 1 {name=p6 sig_type=std_logic lab=V_BP}
C {vsource.sym} 130 -540 0 0 {name=Vin value="dc 0.6 ac 1" savecurrent=false}
C {vsource.sym} 510 -240 0 0 {name=VDD value=1.2 savecurrent=false}
C {lab_pin.sym} 510 -300 0 0 {name=p8 sig_type=std_logic lab=V_DD}
C {gnd.sym} 510 -180 0 0 {name=l2 lab=GND}
C {vsource.sym} 600 -240 0 0 {name=V_SS value=0 savecurrent=false}
C {lab_pin.sym} 600 -300 0 0 {name=p9 sig_type=std_logic lab=V_SS}
C {gnd.sym} 600 -180 0 0 {name=l3 lab=GND}
C {vsource.sym} 510 -70 0 0 {name=Vin1 value=0.3 savecurrent=false}
C {lab_pin.sym} 510 -130 0 0 {name=p10 sig_type=std_logic lab=V_BN}
C {gnd.sym} 510 -10 0 0 {name=l4 lab=GND}
C {vsource.sym} 600 -70 0 0 {name=Vin2 value=0.2 savecurrent=false}
C {lab_pin.sym} 600 -130 0 0 {name=p11 sig_type=std_logic lab=V_BP}
C {gnd.sym} 600 -10 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 770 -450 0 0 {name=p12 sig_type=std_logic lab=V_SS}
C {vsource.sym} 200 -440 0 0 {name=Vin3 value="dc 0.6 ac 1" savecurrent=false}
C {lab_pin.sym} 200 -370 0 0 {name=p1 sig_type=std_logic lab=V_SS}
C {sg13g2_pr/cap_cmim.sym} 770 -510 0 0 {name=C2
model=cap_cmim
w=5.0e-6
l=5.0e-6
m=53
spiceprefix=X}
C {simulator_commands_shown.sym} -590 -150 0 0 {
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
C {lab_pin.sym} 130 -470 0 0 {name=p7 sig_type=std_logic lab=V_SS}
