v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 170 -140 170 -120 {lab=Y}
N 170 -140 210 -140 {lab=Y}
N 170 -160 170 -140 {lab=Y}
N 90 -140 130 -140 {lab=A}
N 130 -140 130 -90 {lab=A}
N 170 -240 170 -220 {lab=VDD}
N 180 -240 180 -190 {lab=VDD}
N 180 -90 180 -40 {lab=VSS}
N 170 -60 170 -40 {lab=VSS}
N 170 -240 180 -240 {lab=VDD}
N 170 -190 180 -190 {lab=VDD}
N 130 -190 130 -140 {lab=A}
N 170 -90 180 -90 {lab=VSS}
N 170 -40 180 -40 {lab=VSS}
N 60 -240 170 -240 {lab=VDD}
N 60 -40 170 -40 {lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} 150 -90 0 0 {name=MN0
l=130.00n
w=11.84u
ng=16
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 150 -190 0 0 {name=MP0
l=130.00n
w=17.92u
ng=16
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {opin.sym} 210 -140 0 0 {name=p1 lab=Y}
C {ipin.sym} 90 -140 0 0 {name=p2 lab=A}
C {iopin.sym} 60 -240 0 1 {name=p3 lab=VDD}
C {iopin.sym} 60 -40 0 1 {name=p4 lab=VSS}
