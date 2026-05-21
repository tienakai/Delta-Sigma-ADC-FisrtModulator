v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 560 -940 560 -910 {lab=V_in}
N 560 -850 560 -820 {lab=GND}
N 820 -920 820 -890 {lab=V_DD}
N 820 -830 820 -800 {lab=GND}
N 910 -920 910 -890 {lab=V_SS}
N 910 -830 910 -800 {lab=GND}
N 820 -750 820 -720 {lab=V_BN}
N 820 -660 820 -630 {lab=GND}
N 910 -750 910 -720 {lab=V_BP}
N 910 -660 910 -630 {lab=GND}
N 1310 -1090 1310 -1040 {lab=V_SS}
N 1310 -1330 1310 -1250 {lab=V_DD}
N 1380 -1330 1380 -1250 {lab=V_BN}
N 1390 -1090 1390 -1040 {lab=V_BP}
N 1020 -1150 1230 -1150 {lab=V_in}
N 1170 -1200 1230 -1200 {lab=V_cm}
N 1450 -1170 1570 -1170 {lab=vout}
N 1480 -1110 1480 -1090 {lab=GND}
N 600 -1210 600 -1180 {lab=V_cm}
N 600 -1120 600 -1090 {lab=GND}
C {devices/launcher.sym} 480 -750 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {lab_pin.sym} 560 -940 0 0 {name=p7 sig_type=std_logic lab=V_in}
C {gnd.sym} 560 -820 0 0 {name=l1 lab=GND}
C {vsource.sym} 820 -860 0 0 {name=VDD value=1.2 savecurrent=false}
C {lab_pin.sym} 820 -920 0 0 {name=p8 sig_type=std_logic lab=V_DD}
C {gnd.sym} 820 -800 0 0 {name=l2 lab=GND}
C {vsource.sym} 910 -860 0 0 {name=V_SS value=0 savecurrent=false}
C {lab_pin.sym} 910 -920 0 0 {name=p9 sig_type=std_logic lab=V_SS}
C {gnd.sym} 910 -800 0 0 {name=l3 lab=GND}
C {vsource.sym} 820 -690 0 0 {name=Vin1 value=0.3 savecurrent=false}
C {lab_pin.sym} 820 -750 0 0 {name=p10 sig_type=std_logic lab=V_BN}
C {gnd.sym} 820 -630 0 0 {name=l4 lab=GND}
C {vsource.sym} 910 -690 0 0 {name=Vin2 value=0.2 savecurrent=false}
C {lab_pin.sym} 910 -750 0 0 {name=p11 sig_type=std_logic lab=V_BP}
C {gnd.sym} 910 -630 0 0 {name=l5 lab=GND}
C {devices/code_shown.sym} -60 -1470 0 0 {name=NGSPICE1 only_toplevel=true 
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
C {Pseudo_compensated_self_cascode_OTA.sym} 1030 -990 0 0 {name=x1}
C {lab_pin.sym} 1020 -1150 0 0 {name=p1 sig_type=std_logic lab=V_in}
C {lab_pin.sym} 1310 -1330 0 0 {name=p2 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} 1310 -1040 0 0 {name=p3 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} 1390 -1040 0 0 {name=p4 sig_type=std_logic lab=V_BP}
C {lab_pin.sym} 1380 -1330 0 0 {name=p5 sig_type=std_logic lab=V_BN}
C {capa-2.sym} 1480 -1140 0 0 {name=C1
m=1
value=2p
footprint=1206
device=polarized_capacitor}
C {gnd.sym} 1480 -1090 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 1570 -1170 0 1 {name=p6 sig_type=std_logic lab=vout}
C {vsource.sym} 560 -880 0 0 {name=Vin3 value="PULSE(0.5 0.7 1u 1n 1n 10u 20u)" savecurrent=false}
C {simulator_commands_shown.sym} 50 -700 0 0 {
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
C {lab_pin.sym} 1170 -1200 0 0 {name=p12 sig_type=std_logic lab=V_cm}
C {gnd.sym} 600 -1090 0 0 {name=l6 lab=GND}
C {vsource.sym} 600 -1150 0 0 {name=Vin4 value="DC 0.6" savecurrent=false}
C {lab_pin.sym} 600 -1210 0 0 {name=p13 sig_type=std_logic lab=V_cm}
