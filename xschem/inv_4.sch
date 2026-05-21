v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 140 -150 140 -130 {lab=Y}
N 140 -150 180 -150 {lab=Y}
N 140 -170 140 -150 {lab=Y}
N 60 -150 100 -150 {lab=A}
N 100 -150 100 -100 {lab=A}
N 140 -250 140 -230 {lab=VDD}
N 150 -250 150 -200 {lab=VDD}
N 150 -100 150 -50 {lab=VSS}
N 140 -70 140 -50 {lab=VSS}
N 140 -250 150 -250 {lab=VDD}
N 140 -200 150 -200 {lab=VDD}
N 100 -200 100 -150 {lab=A}
N 140 -100 150 -100 {lab=VSS}
N 140 -50 150 -50 {lab=VSS}
N 30 -250 140 -250 {lab=VDD}
N 30 -50 140 -50 {lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} 120 -100 0 0 {name=MN0
l=130.00n
w=2.96u
ng=4
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 120 -200 0 0 {name=MP0
l=130.00n
w=4.48u
ng=4
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {opin.sym} 180 -150 0 0 {name=p1 lab=Y}
C {ipin.sym} 60 -150 0 0 {name=p2 lab=A}
C {iopin.sym} 30 -250 0 1 {name=p3 lab=VDD}
C {iopin.sym} 30 -50 0 1 {name=p4 lab=VSS}
