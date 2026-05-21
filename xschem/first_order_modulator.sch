v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 330 -130 480 -130 {lab=#net1}
N 680 -150 770 -150 {lab=#net2}
N 920 -150 980 -150 {lab=Vout}
N 30 210 340 210 {lab=#net3}
N 30 -60 30 210 {lab=#net3}
N 500 210 920 210 {lab=Vout}
N 920 -150 920 210 {lab=Vout}
N 910 -150 920 -150 {lab=Vout}
N 250 -280 250 -240 {lab=VDD}
N 540 -280 810 -280 {lab=VDD}
N 810 -280 810 -200 {lab=VDD}
N 540 -280 540 -210 {lab=VDD}
N 250 -280 540 -280 {lab=VDD}
N -130 -180 30 -180 {lab=Vin}
N -130 -140 30 -140 {lab=VBN}
N -130 -120 30 -120 {lab=VBP}
N -130 -100 30 -100 {lab=Vcm}
N 180 -20 180 -0 {lab=VSS}
N 540 -0 810 -0 {lab=VSS}
N 810 -100 810 -0 {lab=VSS}
N 540 -90 540 -0 {lab=VSS}
N 180 0 540 -0 {lab=VSS}
N 420 100 420 150 {lab=VDD}
N 390 100 390 150 {lab=Vref_pos}
N 390 270 390 320 {lab=Vref_neg}
N 420 270 420 320 {lab=VSS}
N 140 -280 140 -240 {lab=phi1}
N 80 -280 140 -280 {lab=phi1}
N 160 -320 160 -240 {lab=phi1n}
N 80 -320 160 -320 {lab=phi1n}
N 180 -360 180 -240 {lab=phi2}
N 80 -360 180 -360 {lab=phi2}
N 200 -400 200 -240 {lab=phi2n}
N 80 -400 200 -400 {lab=phi2n}
N 450 -170 480 -170 {lab=Vcm}
C {SC_integrator.sym} 180 -130 0 0 {name=x1}
C {comparator.sym} 340 30 0 0 {name=x2}
C {buffer.sym} 710 10 0 0 {name=x3}
C {1_bit_DAC.sym} 160 450 0 0 {name=x4}
C {lab_pin.sym} -130 -100 0 0 {name=p1 sig_type=std_logic lab=Vcm}
C {lab_pin.sym} -130 -120 0 0 {name=p2 sig_type=std_logic lab=VBP}
C {lab_pin.sym} -130 -140 0 0 {name=p3 sig_type=std_logic lab=VBN}
C {lab_pin.sym} -130 -180 0 0 {name=p4 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 450 -170 0 0 {name=p5 sig_type=std_logic lab=Vcm}
C {lab_pin.sym} 980 -150 0 1 {name=p6 sig_type=std_logic lab=Vout}
C {lab_pin.sym} 390 100 0 0 {name=p7 sig_type=std_logic lab=Vref_pos}
C {lab_pin.sym} 420 100 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 420 320 0 1 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 390 320 0 0 {name=p10 sig_type=std_logic lab=Vref_neg}
C {lab_pin.sym} 80 -280 0 0 {name=p11 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 80 -320 0 0 {name=p12 sig_type=std_logic lab=phi1n}
C {lab_pin.sym} 80 -360 0 0 {name=p13 sig_type=std_logic lab=phi2}
C {lab_pin.sym} 80 -400 0 0 {name=p14 sig_type=std_logic lab=phi2n}
C {lab_pin.sym} 810 -280 0 1 {name=p15 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 810 0 0 1 {name=p16 sig_type=std_logic lab=VSS}
C {ipin.sym} -420 -400 0 0 {name=p17 lab=Vin}
C {ipin.sym} -420 -360 0 0 {name=p18 lab=VBN}
C {ipin.sym} -420 -320 0 0 {name=p19 lab=VBP}
C {ipin.sym} -420 -280 0 0 {name=p20 lab=Vcm}
C {ipin.sym} -420 -240 0 0 {name=p21 lab=Vref_pos}
C {ipin.sym} -420 -200 0 0 {name=p22 lab=Vref_neg}
C {ipin.sym} -420 -160 0 0 {name=p23 lab=phi1}
C {ipin.sym} -420 -120 0 0 {name=p24 lab=phi1n}
C {ipin.sym} -420 -80 0 0 {name=p25 lab=phi2}
C {ipin.sym} -420 -40 0 0 {name=p26 lab=phi2n}
C {iopin.sym} -470 20 0 0 {name=p27 lab=VDD}
C {iopin.sym} -470 60 0 0 {name=p28 lab=VSS}
C {opin.sym} -460 110 0 0 {name=p29 lab=Vout}
