v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1060 -630 1060 -570 {lab=V_DD}
N 1060 -450 1060 -390 {lab=V_SS}
N 810 -530 1000 -530 {lab=V_inn}
N 1320 -450 1320 -420 {lab=V_SS}
N 430 -420 430 -390 {lab=V_in}
N 430 -330 430 -300 {lab=GND}
N 690 -400 690 -370 {lab=V_DD}
N 690 -310 690 -280 {lab=GND}
N 780 -400 780 -370 {lab=V_SS}
N 780 -310 780 -280 {lab=GND}
N 1200 -510 1390 -510 {lab=vout}
N 930 -480 1000 -480 {lab=V_in}
N 1000 -490 1000 -480 {lab=V_in}
N 510 -630 510 -600 {lab=V_inn}
N 510 -540 510 -510 {lab=GND}
C {devices/code_shown.sym} -20 -110 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} -20 -760 0 0 {name=NGSPICE only_toplevel=true 
value=".control
tran 0.1n 20u
plot v(v_in) v(vout)
* Input crosses reference
meas tran t_in WHEN v(v_in)=0.6 RISE=1
* Output reaches 50% VDD
meas tran t_out WHEN v(vout)=0.6 RISE=1
* Propagation delay
let tpd = t_out - t_in
print tpd
.endc
"}
C {devices/launcher.sym} 340 -230 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {lab_pin.sym} 930 -480 0 0 {name=p1 sig_type=std_logic lab=V_in}
C {lab_pin.sym} 1390 -510 0 1 {name=p2 sig_type=std_logic lab=vout}
C {lab_pin.sym} 1060 -630 0 0 {name=p3 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} 1060 -390 0 0 {name=p5 sig_type=std_logic lab=V_SS}
C {capa-2.sym} 1320 -480 0 0 {name=C1
m=1
value=1p
footprint=1206
device=polarized_capacitor}
C {vsource.sym} 430 -360 0 0 {name=Vin value="PULSE(0.5 0.7 1u 1n 1n 10u 20u)" savecurrent=false}
C {lab_pin.sym} 430 -420 0 0 {name=p7 sig_type=std_logic lab=V_in}
C {gnd.sym} 430 -300 0 0 {name=l1 lab=GND}
C {vsource.sym} 690 -340 0 0 {name=VDD value=1.2 savecurrent=false}
C {lab_pin.sym} 690 -400 0 0 {name=p8 sig_type=std_logic lab=V_DD}
C {gnd.sym} 690 -280 0 0 {name=l2 lab=GND}
C {vsource.sym} 780 -340 0 0 {name=V_SS value=0 savecurrent=false}
C {lab_pin.sym} 780 -400 0 0 {name=p9 sig_type=std_logic lab=V_SS}
C {gnd.sym} 780 -280 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 1320 -420 0 0 {name=p12 sig_type=std_logic lab=V_SS}
C {comparator.sym} 860 -330 0 0 {name=x1}
C {vsource.sym} 510 -570 0 0 {name=Vin1 value=0.6 savecurrent=false}
C {lab_pin.sym} 510 -630 0 0 {name=p4 sig_type=std_logic lab=V_inn}
C {gnd.sym} 510 -510 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 810 -530 0 0 {name=p6 sig_type=std_logic lab=V_inn}
