v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 110 -110 150 -110 {lab=#net1}
N 60 -190 60 -140 {lab=vdd}
N 60 -190 180 -190 {lab=vdd}
N 180 -190 180 -140 {lab=vdd}
N 60 -80 60 -40 {lab=gnd}
N 60 -40 180 -40 {lab=gnd}
N 180 -80 180 -40 {lab=gnd}
N -50 -110 30 -110 {lab=vin}
N 230 -110 280 -110 {lab=vout}
C {lab_pin.sym} 60 -190 0 0 {name=p38 sig_type=std_logic lab=vdd}
C {inv_4.sym} 80 30 0 0 {name=x10}
C {inv_4.sym} 200 30 0 0 {name=x8}
C {lab_pin.sym} 60 -40 0 0 {name=p1 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -50 -110 0 0 {name=p2 sig_type=std_logic lab=vin}
C {lab_pin.sym} 280 -110 0 1 {name=p3 sig_type=std_logic lab=vout}
C {ipin.sym} -240 -190 0 0 {name=p4 lab=vin}
C {iopin.sym} -270 -150 0 0 {name=p5 lab=vdd}
C {iopin.sym} -270 -120 0 0 {name=p6 lab=gnd}
C {opin.sym} -270 -80 0 0 {name=p7 lab=vout}
