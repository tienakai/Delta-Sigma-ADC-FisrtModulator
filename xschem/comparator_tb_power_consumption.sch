v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 890 -410 890 -350 {lab=V_DD}
N 890 -230 890 -170 {lab=V_SS}
N 640 -310 830 -310 {lab=V_inn}
N 1150 -230 1150 -200 {lab=V_SS}
N 260 -200 260 -170 {lab=V_in}
N 260 -110 260 -80 {lab=GND}
N 520 -180 520 -150 {lab=V_DD}
N 520 -90 520 -60 {lab=GND}
N 610 -180 610 -150 {lab=V_SS}
N 610 -90 610 -60 {lab=GND}
N 1030 -290 1220 -290 {lab=vout}
N 760 -260 830 -260 {lab=V_in}
N 830 -270 830 -260 {lab=V_in}
N 340 -410 340 -380 {lab=V_inn}
N 340 -320 340 -290 {lab=GND}
C {devices/code_shown.sym} -190 110 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/launcher.sym} 170 -10 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {lab_pin.sym} 760 -260 0 0 {name=p1 sig_type=std_logic lab=V_in}
C {lab_pin.sym} 1220 -290 0 1 {name=p2 sig_type=std_logic lab=vout}
C {lab_pin.sym} 890 -410 0 0 {name=p3 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} 890 -170 0 0 {name=p5 sig_type=std_logic lab=V_SS}
C {capa-2.sym} 1150 -260 0 0 {name=C1
m=1
value=1p
footprint=1206
device=polarized_capacitor}
C {vsource.sym} 260 -140 0 0 {name=Vin value="PULSE(0.5 0.7 1u 1n 1n 10u 20u)" savecurrent=false}
C {lab_pin.sym} 260 -200 0 0 {name=p7 sig_type=std_logic lab=V_in}
C {gnd.sym} 260 -80 0 0 {name=l1 lab=GND}
C {vsource.sym} 520 -120 0 0 {name=VDD value=1.2 savecurrent=false}
C {lab_pin.sym} 520 -180 0 0 {name=p8 sig_type=std_logic lab=V_DD}
C {gnd.sym} 520 -60 0 0 {name=l2 lab=GND}
C {vsource.sym} 610 -120 0 0 {name=V_SS value=0 savecurrent=false}
C {lab_pin.sym} 610 -180 0 0 {name=p9 sig_type=std_logic lab=V_SS}
C {gnd.sym} 610 -60 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 1150 -200 0 0 {name=p12 sig_type=std_logic lab=V_SS}
C {comparator.sym} 690 -110 0 0 {name=x1}
C {vsource.sym} 340 -350 0 0 {name=Vin1 value=0.6 savecurrent=false}
C {lab_pin.sym} 340 -410 0 0 {name=p4 sig_type=std_logic lab=V_inn}
C {gnd.sym} 340 -290 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 640 -310 0 0 {name=p6 sig_type=std_logic lab=V_inn}
C {devices/code_shown.sym} -400 -630 0 0 {name=NGSPICE1 only_toplevel=true 
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
