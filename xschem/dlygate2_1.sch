v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -60 -120 -60 -100 {lab=#net1}
N -140 -120 -100 -120 {lab=A}
N -100 -120 -100 -70 {lab=A}
N -60 -220 -60 -200 {lab=VDD}
N -50 -220 -50 -170 {lab=VDD}
N -50 -70 -50 -20 {lab=VSS}
N -60 -40 -60 -20 {lab=VSS}
N -60 -220 -50 -220 {lab=VDD}
N -60 -170 -50 -170 {lab=VDD}
N -100 -170 -100 -120 {lab=A}
N -60 -70 -50 -70 {lab=VSS}
N -60 -20 -50 -20 {lab=VSS}
N -170 -220 -60 -220 {lab=VDD}
N -170 -20 -60 -20 {lab=VSS}
N 130 -120 130 -100 {lab=#net2}
N 130 -220 130 -200 {lab=VDD}
N 140 -220 140 -170 {lab=VDD}
N 140 -70 140 -20 {lab=VSS}
N 130 -40 130 -20 {lab=VSS}
N 130 -220 140 -220 {lab=VDD}
N 130 -170 140 -170 {lab=VDD}
N 90 -120 90 -70 {lab=#net1}
N 130 -70 140 -70 {lab=VSS}
N 130 -20 140 -20 {lab=VSS}
N 340 -120 340 -100 {lab=#net3}
N 340 -220 340 -200 {lab=VDD}
N 350 -220 350 -170 {lab=VDD}
N 350 -70 350 -20 {lab=VSS}
N 340 -40 340 -20 {lab=VSS}
N 340 -220 350 -220 {lab=VDD}
N 340 -170 350 -170 {lab=VDD}
N 300 -120 300 -70 {lab=#net2}
N 340 -70 350 -70 {lab=VSS}
N 340 -20 350 -20 {lab=VSS}
N 560 -120 560 -100 {lab=Y}
N 560 -120 600 -120 {lab=Y}
N 560 -140 560 -120 {lab=Y}
N 560 -220 560 -200 {lab=VDD}
N 570 -220 570 -170 {lab=VDD}
N 570 -70 570 -20 {lab=VSS}
N 560 -40 560 -20 {lab=VSS}
N 560 -220 570 -220 {lab=VDD}
N 560 -170 570 -170 {lab=VDD}
N 520 -120 520 -70 {lab=#net3}
N 560 -70 570 -70 {lab=VSS}
N 560 -20 570 -20 {lab=VSS}
N -50 -220 130 -220 {lab=VDD}
N 140 -220 340 -220 {lab=VDD}
N -60 -120 90 -120 {lab=#net1}
N -60 -140 -60 -120 {lab=#net1}
N 90 -170 90 -120 {lab=#net1}
N 130 -120 300 -120 {lab=#net2}
N 130 -140 130 -120 {lab=#net2}
N 300 -170 300 -120 {lab=#net2}
N -50 -20 130 -20 {lab=VSS}
N 140 -20 340 -20 {lab=VSS}
N 350 -20 560 -20 {lab=VSS}
N 340 -120 520 -120 {lab=#net3}
N 340 -140 340 -120 {lab=#net3}
N 520 -170 520 -120 {lab=#net3}
N 350 -220 560 -220 {lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} -80 -70 0 0 {name=MN0
l=130.00n
w=420.00n
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -80 -170 0 0 {name=MP0
l=130.00n
w=420.00n
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {opin.sym} 600 -120 0 0 {name=p1 lab=Y}
C {ipin.sym} -140 -120 0 0 {name=p2 lab=A}
C {iopin.sym} -170 -220 0 1 {name=p3 lab=VDD}
C {iopin.sym} -170 -20 0 1 {name=p4 lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} 110 -70 0 0 {name=MN1
l=180.00n
w=420.00n
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 110 -170 0 0 {name=MP1
l=250.00n
w=1.00u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 320 -70 0 0 {name=MN2
l=180.00n
w=420.00n
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 320 -170 0 0 {name=MP2
l=250.00n
w=1.00u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 540 -70 0 0 {name=MN3
l=130.00n
w=740.00n
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 540 -170 0 0 {name=MP3
l=130.00n
w=1.12u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
