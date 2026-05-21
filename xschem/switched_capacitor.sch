v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -20 -370 90 -370 {lab=Vin}
N 450 -370 560 -370 {lab=sc_left}
N 450 -370 450 -260 {lab=sc_left}
N 250 -370 450 -370 {lab=sc_left}
N 810 -370 1040 -370 {lab=sc_right}
N 810 -370 810 -260 {lab=sc_right}
N 620 -370 810 -370 {lab=sc_right}
N 60 -410 90 -410 {lab=vdd}
N 60 -320 90 -320 {lab=gnd}
N 170 -480 170 -450 {lab=phi1n}
N 170 -290 170 -260 {lab=phi1}
N 320 -180 370 -180 {lab=phi2}
N 530 -180 590 -180 {lab=phi2n}
N 400 -100 400 -70 {lab=gnd}
N 490 -100 490 -70 {lab=vdd}
N 700 -180 730 -180 {lab=phi1}
N 890 -180 930 -180 {lab=phi1n}
N 760 -100 760 -70 {lab=gnd}
N 810 -100 810 -30 {lab=Vcm}
N 850 -100 850 -70 {lab=vdd}
N 1010 -420 1040 -420 {lab=gnd}
N 1010 -330 1040 -330 {lab=vdd}
N 1120 -490 1120 -450 {lab=phi2}
N 1120 -290 1120 -260 {lab=phi2n}
N 1290 -470 1290 -430 {lab=gnd}
N 450 -100 450 -70 {lab=Vfb}
N 1200 -370 1340 -370 {lab=vout}
C {T_gate.sym} 170 -370 0 0 {name=x1}
C {T_gate.sym} 450 -180 1 1 {name=x2}
C {T_gate.sym} 810 -180 1 1 {name=x3}
C {sg13g2_pr/cap_cmim.sym} 590 -370 3 0 {name=C1
model=cap_cmim
w=5.0e-6
l=5.0e-6
m=50
spiceprefix=X}
C {T_gate.sym} 1120 -370 2 1 {name=x4}
C {lab_pin.sym} -20 -370 0 0 {name=p4 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 60 -410 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 490 -70 0 1 {name=p9 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 850 -70 0 1 {name=p10 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 450 -70 0 1 {name=p11 sig_type=std_logic lab=Vfb}
C {lab_pin.sym} 810 -30 0 0 {name=p13 sig_type=std_logic lab=Vcm}
C {lab_pin.sym} 1010 -330 0 0 {name=p14 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 170 -260 0 0 {name=p6 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 170 -480 0 0 {name=p19 sig_type=std_logic lab=phi1n}
C {lab_pin.sym} 590 -180 0 1 {name=p15 sig_type=std_logic lab=phi2n}
C {lab_pin.sym} 320 -180 0 0 {name=p20 sig_type=std_logic lab=phi2}
C {lab_pin.sym} 700 -180 0 0 {name=p21 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 930 -180 0 1 {name=p22 sig_type=std_logic lab=phi1n}
C {lab_pin.sym} 1120 -490 0 0 {name=p23 sig_type=std_logic lab=phi2}
C {lab_pin.sym} 1120 -260 0 1 {name=p24 sig_type=std_logic lab=phi2n}
C {sg13g2_pr/cap_cmim.sym} 1290 -400 2 0 {name=C4
model=cap_cmim
w=5.0e-6
l=5.0e-6
m=100
spiceprefix=X}
C {lab_pin.sym} 510 -370 1 0 {name=p25 sig_type=std_logic lab=sc_left}
C {lab_pin.sym} 1340 -370 3 0 {name=p32 sig_type=std_logic lab=vout}
C {lab_pin.sym} 680 -370 1 0 {name=p31 sig_type=std_logic lab=sc_right}
C {lab_pin.sym} 60 -320 0 0 {name=p1 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 400 -70 0 0 {name=p2 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 760 -70 0 0 {name=p3 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 1010 -420 0 0 {name=p7 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 1290 -470 0 0 {name=p8 sig_type=std_logic lab=gnd}
C {ipin.sym} -130 -590 0 0 {name=p12 lab=Vin}
C {ipin.sym} -130 -550 0 0 {name=p16 lab=phi1}
C {ipin.sym} -130 -510 0 0 {name=p17 lab=phi1n}
C {ipin.sym} -130 -470 0 0 {name=p18 lab=Vfb}
C {ipin.sym} -130 -430 0 0 {name=p26 lab=phi2}
C {ipin.sym} -130 -390 0 0 {name=p27 lab=phi2n}
C {ipin.sym} -130 -350 0 0 {name=p28 lab=Vcm}
C {opin.sym} -170 -300 0 0 {name=p29 lab=vout}
C {iopin.sym} -160 -250 0 0 {name=p30 lab=vdd}
C {iopin.sym} -160 -210 0 0 {name=p33 lab=gnd}
