v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 450 -120 520 -120 {lab=#net1}
N -190 -120 -110 -120 {lab=Vin}
N 680 -10 680 40 {lab=VBP}
N 600 -10 600 40 {lab=gnd}
N 600 -220 600 -170 {lab=vdd}
N 670 -220 670 -170 {lab=VBN}
N 790 -310 790 -90 {lab=sc_int_out}
N 740 -90 790 -90 {lab=sc_int_out}
N 790 -30 790 10 {lab=gnd}
N 450 -310 600 -310 {lab=#net1}
N 660 -310 790 -310 {lab=sc_int_out}
N 790 -90 980 -90 {lab=sc_int_out}
N 520 -70 520 150 {lab=#net2}
N 450 -310 450 -120 {lab=#net1}
N 190 -120 450 -120 {lab=#net1}
N -190 -150 -110 -150 {lab=Vfb}
N -20 -260 -20 -210 {lab=phi1}
N 40 -260 40 -210 {lab=vdd}
N 100 -260 100 -210 {lab=phi1n}
N -20 -30 -20 20 {lab=phi2}
N 40 -30 40 20 {lab=gnd}
N 100 -30 100 20 {lab=phi2n}
N -110 150 520 150 {lab=#net2}
N -110 -90 -110 150 {lab=#net2}
C {switched_capacitor.sym} 40 -120 0 0 {name=x1}
C {lab_pin.sym} 980 -90 0 1 {name=p16 sig_type=std_logic lab=sc_int_out}
C {Pseudo_compensated_self_cascode_OTA.sym} 320 90 0 0 {name=x5}
C {lab_pin.sym} 600 -220 0 0 {name=p26 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 680 40 0 0 {name=p27 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 670 -220 0 0 {name=p30 sig_type=std_logic lab=VBN}
C {sg13g2_pr/cap_cmim.sym} 630 -310 3 0 {name=C2
model=cap_cmim
w=5.0e-6
l=5.0e-6
m=25
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 790 -60 0 0 {name=C1
model=cap_cmim
w=5.0e-6
l=5.0e-6
m=53
spiceprefix=X}
C {lab_pin.sym} -190 -120 0 0 {name=p4 sig_type=std_logic lab=Vin}
C {lab_pin.sym} -190 -150 0 0 {name=p1 sig_type=std_logic lab=Vfb}
C {lab_pin.sym} -20 -260 0 0 {name=p2 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 40 -260 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 100 -260 0 0 {name=p5 sig_type=std_logic lab=phi1n}
C {lab_pin.sym} -20 20 0 0 {name=p6 sig_type=std_logic lab=phi2}
C {lab_pin.sym} 40 20 0 0 {name=p7 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 100 20 0 0 {name=p8 sig_type=std_logic lab=phi2n}
C {lab_pin.sym} 600 40 0 0 {name=p9 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 790 10 0 0 {name=p10 sig_type=std_logic lab=gnd}
C {ipin.sym} -440 -370 0 0 {name=p11 lab=Vin}
C {ipin.sym} -440 -340 0 0 {name=p12 lab=Vfb}
C {ipin.sym} -440 -310 0 0 {name=p13 lab=phi1}
C {ipin.sym} -440 -280 0 0 {name=p14 lab=phi1n}
C {ipin.sym} -440 -250 0 0 {name=p15 lab=phi2}
C {ipin.sym} -440 -220 0 0 {name=p17 lab=phi2n}
C {ipin.sym} -440 -190 0 0 {name=p18 lab=VBN}
C {ipin.sym} -440 -160 0 0 {name=p19 lab=VBP}
C {iopin.sym} -460 -120 0 0 {name=p20 lab=vdd}
C {iopin.sym} -460 -80 0 0 {name=p21 lab=gnd}
C {opin.sym} -450 -30 0 0 {name=p22 lab=sc_int_out}
C {ipin.sym} -110 150 0 0 {name=p23 lab=Vcm}
