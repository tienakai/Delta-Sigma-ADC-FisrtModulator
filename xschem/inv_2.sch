v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 130 -120 130 -100 {lab=Y}
N 130 -120 170 -120 {lab=Y}
N 130 -140 130 -120 {lab=Y}
N 50 -120 90 -120 {lab=A}
N 90 -120 90 -70 {lab=A}
N 130 -220 130 -200 {lab=VDD}
N 140 -220 140 -170 {lab=VDD}
N 140 -70 140 -20 {lab=VSS}
N 130 -40 130 -20 {lab=VSS}
N 130 -220 140 -220 {lab=VDD}
N 130 -170 140 -170 {lab=VDD}
N 90 -170 90 -120 {lab=A}
N 130 -70 140 -70 {lab=VSS}
N 130 -20 140 -20 {lab=VSS}
N 20 -220 130 -220 {lab=VDD}
N 20 -20 130 -20 {lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} 110 -70 0 0 {name=MN0
l=130.00n
w=1.48u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 110 -170 0 0 {name=MP0
l=130.00n
w=2.24u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {opin.sym} 170 -120 0 0 {name=p1 lab=Y}
C {ipin.sym} 50 -120 0 0 {name=p2 lab=A}
C {iopin.sym} 20 -220 0 1 {name=p3 lab=VDD}
C {iopin.sym} 20 -20 0 1 {name=p4 lab=VSS}
