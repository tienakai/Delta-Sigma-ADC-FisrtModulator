v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 170 -130 170 -110 {lab=Y}
N 170 -130 210 -130 {lab=Y}
N 170 -150 170 -130 {lab=Y}
N 90 -130 130 -130 {lab=A}
N 130 -130 130 -80 {lab=A}
N 170 -230 170 -210 {lab=VDD}
N 180 -230 180 -180 {lab=VDD}
N 180 -80 180 -30 {lab=VSS}
N 170 -50 170 -30 {lab=VSS}
N 170 -230 180 -230 {lab=VDD}
N 170 -180 180 -180 {lab=VDD}
N 130 -180 130 -130 {lab=A}
N 170 -80 180 -80 {lab=VSS}
N 170 -30 180 -30 {lab=VSS}
N 60 -230 170 -230 {lab=VDD}
N 60 -30 170 -30 {lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} 150 -80 0 0 {name=MN0
l=130.00n
w=300.00n
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 150 -180 0 0 {name=MP0
l=130.00n
w=1.2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {opin.sym} 210 -130 0 0 {name=p1 lab=Y}
C {ipin.sym} 90 -130 0 0 {name=p2 lab=A}
C {iopin.sym} 60 -230 0 1 {name=p3 lab=VDD}
C {iopin.sym} 60 -30 0 1 {name=p4 lab=VSS}
