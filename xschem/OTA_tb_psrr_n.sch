v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 730 -540 730 -480 {lab=V_DD}
N 800 -540 800 -480 {lab=V_BN}
N 810 -320 810 -260 {lab=V_BP}
N 730 -320 730 -260 {lab=V_SS}
N 870 -400 1160 -400 {lab=v_out}
N 990 -340 990 -310 {lab=V_SS}
N 730 -160 730 -130 {lab=V_DD}
N 730 -70 730 -40 {lab=GND}
N 820 -160 820 -130 {lab=V_SS}
N 820 -70 820 -40 {lab=GND}
N 730 10 730 40 {lab=V_BN}
N 730 100 730 130 {lab=GND}
N 820 10 820 40 {lab=V_BP}
N 820 100 820 130 {lab=GND}
N 420 -270 420 -230 {lab=V_SS}
N 350 -430 650 -430 {lab=#net1}
N 420 -380 420 -330 {lab=#net2}
N 420 -380 650 -380 {lab=#net2}
N 350 -370 350 -330 {lab=V_SS}
C {devices/code_shown.sym} -400 -710 0 0 {name=NGSPICE only_toplevel=true 
value=".control
ac dec 100 1 1G
let PSRRn_gain = vdb(v_out)
plot PSRRn_gain
meas ac AVSS FIND PSRRn_gain AT=1
print AVSS
.endc
"}
C {devices/launcher.sym} 70 90 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {Pseudo_compensated_self_cascode_OTA.sym} 450 -220 0 0 {name=x1}
C {lab_pin.sym} 1160 -400 0 1 {name=p2 sig_type=std_logic lab=v_out}
C {lab_pin.sym} 730 -540 0 0 {name=p3 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} 800 -540 0 1 {name=p4 sig_type=std_logic lab=V_BN}
C {lab_pin.sym} 730 -260 0 0 {name=p5 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} 810 -260 0 1 {name=p6 sig_type=std_logic lab=V_BP}
C {vsource.sym} 350 -400 0 0 {name=Vin value="dc 0.6 ac 0" savecurrent=false}
C {vsource.sym} 730 -100 0 0 {name=VDD value="dc 1.2" savecurrent=false}
C {lab_pin.sym} 730 -160 0 0 {name=p8 sig_type=std_logic lab=V_DD}
C {gnd.sym} 730 -40 0 0 {name=l2 lab=GND}
C {vsource.sym} 820 -100 0 0 {name=V_SS value="dc 0 ac 1m" savecurrent=false}
C {lab_pin.sym} 820 -160 0 0 {name=p9 sig_type=std_logic lab=V_SS}
C {gnd.sym} 820 -40 0 0 {name=l3 lab=GND}
C {vsource.sym} 730 70 0 0 {name=Vin1 value=0.3 savecurrent=false}
C {lab_pin.sym} 730 10 0 0 {name=p10 sig_type=std_logic lab=V_BN}
C {gnd.sym} 730 130 0 0 {name=l4 lab=GND}
C {vsource.sym} 820 70 0 0 {name=Vin2 value=0.2 savecurrent=false}
C {lab_pin.sym} 820 10 0 0 {name=p11 sig_type=std_logic lab=V_BP}
C {gnd.sym} 820 130 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 990 -310 0 0 {name=p12 sig_type=std_logic lab=V_SS}
C {vsource.sym} 420 -300 0 0 {name=Vin3 value="dc 0.6 ac 0" savecurrent=false}
C {lab_pin.sym} 420 -230 0 0 {name=p1 sig_type=std_logic lab=V_SS}
C {sg13g2_pr/cap_cmim.sym} 990 -370 0 0 {name=C2
model=cap_cmim
w=5.0e-6
l=5.0e-6
m=53
spiceprefix=X}
C {simulator_commands_shown.sym} -370 -10 0 0 {
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
C {lab_pin.sym} 350 -330 0 0 {name=p7 sig_type=std_logic lab=V_SS}
