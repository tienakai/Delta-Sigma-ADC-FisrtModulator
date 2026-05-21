v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 770 -610 770 -550 {lab=V_DD}
N 840 -610 840 -550 {lab=V_BN}
N 850 -390 850 -330 {lab=V_BP}
N 770 -390 770 -330 {lab=V_SS}
N 910 -470 1200 -470 {lab=v_out}
N 1030 -410 1030 -380 {lab=V_SS}
N 770 -230 770 -200 {lab=V_DD}
N 770 -140 770 -110 {lab=GND}
N 860 -230 860 -200 {lab=V_SS}
N 860 -140 860 -110 {lab=GND}
N 770 -60 770 -30 {lab=V_BN}
N 770 30 770 60 {lab=GND}
N 860 -60 860 -30 {lab=V_BP}
N 860 30 860 60 {lab=GND}
N 460 -340 460 -300 {lab=V_SS}
N 390 -500 690 -500 {lab=#net1}
N 460 -450 460 -400 {lab=#net2}
N 460 -450 690 -450 {lab=#net2}
N 390 -440 390 -400 {lab=V_SS}
C {devices/code_shown.sym} -360 -780 0 0 {name=NGSPICE only_toplevel=true 
value=".control

ac dec 100 1 1G

* Gain từ VDD -> output
let PSRRp_gain = vdb(v_out)

plot PSRRp_gain

* DC supply gain
meas ac AVDD FIND PSRRp_gain AT=1
print AVDD
let vd = vdb(v_dd)
plot vd
.endc
"}
C {devices/launcher.sym} 110 20 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {Pseudo_compensated_self_cascode_OTA.sym} 490 -290 0 0 {name=x1}
C {lab_pin.sym} 1200 -470 0 1 {name=p2 sig_type=std_logic lab=v_out}
C {lab_pin.sym} 770 -610 0 0 {name=p3 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} 840 -610 0 1 {name=p4 sig_type=std_logic lab=V_BN}
C {lab_pin.sym} 770 -330 0 0 {name=p5 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} 850 -330 0 1 {name=p6 sig_type=std_logic lab=V_BP}
C {vsource.sym} 390 -470 0 0 {name=Vin value="dc 0.6 ac 0" savecurrent=false}
C {vsource.sym} 770 -170 0 0 {name=VDD value="dc 1.2 ac 1m" savecurrent=false}
C {lab_pin.sym} 770 -230 0 0 {name=p8 sig_type=std_logic lab=V_DD}
C {gnd.sym} 770 -110 0 0 {name=l2 lab=GND}
C {vsource.sym} 860 -170 0 0 {name=V_SS value=0 savecurrent=false}
C {lab_pin.sym} 860 -230 0 0 {name=p9 sig_type=std_logic lab=V_SS}
C {gnd.sym} 860 -110 0 0 {name=l3 lab=GND}
C {vsource.sym} 770 0 0 0 {name=Vin1 value=0.3 savecurrent=false}
C {lab_pin.sym} 770 -60 0 0 {name=p10 sig_type=std_logic lab=V_BN}
C {gnd.sym} 770 60 0 0 {name=l4 lab=GND}
C {vsource.sym} 860 0 0 0 {name=Vin2 value=0.2 savecurrent=false}
C {lab_pin.sym} 860 -60 0 0 {name=p11 sig_type=std_logic lab=V_BP}
C {gnd.sym} 860 60 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 1030 -380 0 0 {name=p12 sig_type=std_logic lab=V_SS}
C {vsource.sym} 460 -370 0 0 {name=Vin3 value="dc 0.6 ac 0" savecurrent=false}
C {lab_pin.sym} 460 -300 0 0 {name=p1 sig_type=std_logic lab=V_SS}
C {sg13g2_pr/cap_cmim.sym} 1030 -440 0 0 {name=C2
model=cap_cmim
w=5.0e-6
l=5.0e-6
m=53
spiceprefix=X}
C {simulator_commands_shown.sym} -330 -80 0 0 {
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
C {lab_pin.sym} 390 -400 0 0 {name=p7 sig_type=std_logic lab=V_SS}
