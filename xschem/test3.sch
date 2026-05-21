v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 590 -490 590 -460 {lab=V_in}
N 590 -400 590 -370 {lab=GND}
N 850 -470 850 -440 {lab=V_DD}
N 850 -380 850 -350 {lab=GND}
N 940 -470 940 -440 {lab=V_SS}
N 940 -380 940 -350 {lab=GND}
N 850 -300 850 -270 {lab=V_BN}
N 850 -210 850 -180 {lab=GND}
N 940 -300 940 -270 {lab=V_BP}
N 940 -210 940 -180 {lab=GND}
N 1340 -640 1340 -590 {lab=V_SS}
N 1340 -880 1340 -800 {lab=V_DD}
N 1410 -880 1410 -800 {lab=V_BN}
N 1420 -640 1420 -590 {lab=V_BP}
N 1050 -700 1260 -700 {lab=V_in}
N 1510 -720 1600 -720 {lab=v_out}
N 1200 -750 1260 -750 {lab=v_out}
N 1200 -940 1200 -750 {lab=v_out}
N 1200 -940 1510 -940 {lab=v_out}
N 1510 -940 1510 -720 {lab=v_out}
N 1480 -720 1510 -720 {lab=v_out}
N 1510 -660 1510 -640 {lab=GND}
C {devices/code_shown.sym} 140 -180 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/launcher.sym} 500 -300 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {lab_pin.sym} 590 -490 0 0 {name=p7 sig_type=std_logic lab=V_in}
C {gnd.sym} 590 -370 0 0 {name=l1 lab=GND}
C {vsource.sym} 850 -410 0 0 {name=VDD value=1.15 savecurrent=false}
C {lab_pin.sym} 850 -470 0 0 {name=p8 sig_type=std_logic lab=V_DD}
C {gnd.sym} 850 -350 0 0 {name=l2 lab=GND}
C {vsource.sym} 940 -410 0 0 {name=V_SS value=0 savecurrent=false}
C {lab_pin.sym} 940 -470 0 0 {name=p9 sig_type=std_logic lab=V_SS}
C {gnd.sym} 940 -350 0 0 {name=l3 lab=GND}
C {vsource.sym} 850 -240 0 0 {name=Vin1 value=0.3 savecurrent=false}
C {lab_pin.sym} 850 -300 0 0 {name=p10 sig_type=std_logic lab=V_BN}
C {gnd.sym} 850 -180 0 0 {name=l4 lab=GND}
C {vsource.sym} 940 -240 0 0 {name=Vin2 value=0.2 savecurrent=false}
C {lab_pin.sym} 940 -300 0 0 {name=p11 sig_type=std_logic lab=V_BP}
C {gnd.sym} 940 -180 0 0 {name=l5 lab=GND}
C {Pseudo_compensated_self_cascode_OTA.sym} 1060 -540 0 0 {name=x1}
C {lab_pin.sym} 1050 -700 0 0 {name=p1 sig_type=std_logic lab=V_in}
C {lab_pin.sym} 1340 -880 0 0 {name=p2 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} 1340 -590 0 0 {name=p3 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} 1420 -590 0 0 {name=p4 sig_type=std_logic lab=V_BP}
C {lab_pin.sym} 1410 -880 0 0 {name=p5 sig_type=std_logic lab=V_BN}
C {capa-2.sym} 1510 -690 0 0 {name=C1
m=1
value=2p
footprint=1206
device=polarized_capacitor}
C {gnd.sym} 1510 -640 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 1600 -720 0 1 {name=p6 sig_type=std_logic lab=v_out}
C {vsource.sym} 590 -430 0 0 {name=Vin3 value="PULSE(0.5 0.7 1u 1n 1n 10u 20u)" savecurrent=false}
C {devices/code_shown.sym} 180 -990 0 0 {name=NGSPICE1 only_toplevel=true 
value="
.temp 27
.option method=gear

.control

tran 1n 20u

plot v(v_in) v(vout)
let vin_limit = 0.56*1.15
meas tran tstart WHEN v(v_in)=vin_limit RISE=1

let vlimit = vin_limit*0.99

meas tran tcross WHEN v(v_out)=vlimit RISE=1

let tsettle = tcross - tstart

print tsettle

.endc
"}
