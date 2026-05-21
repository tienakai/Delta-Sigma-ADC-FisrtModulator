v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 20 -140 20 -120 {lab=Y}
N 20 -140 60 -140 {lab=Y}
N 20 -160 20 -140 {lab=Y}
N -60 -140 -20 -140 {lab=A}
N -20 -140 -20 -90 {lab=A}
N 20 -240 20 -220 {lab=VDD}
N 30 -240 30 -190 {lab=VDD}
N 30 -90 30 -40 {lab=VSS}
N 20 -60 20 -40 {lab=VSS}
N 20 -240 30 -240 {lab=VDD}
N 20 -190 30 -190 {lab=VDD}
N -20 -190 -20 -140 {lab=A}
N 20 -90 30 -90 {lab=VSS}
N 20 -40 30 -40 {lab=VSS}
N -90 -240 20 -240 {lab=VDD}
N -90 -40 20 -40 {lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} 0 -90 0 0 {name=MN0
l=130.00n
w=5.92u
ng=8
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 0 -190 0 0 {name=MP0
l=130.00n
w=8.96u
ng=8
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {opin.sym} 60 -140 0 0 {name=p1 lab=Y}
C {ipin.sym} -60 -140 0 0 {name=p2 lab=A}
C {iopin.sym} -90 -240 0 1 {name=p3 lab=VDD}
C {iopin.sym} -90 -40 0 1 {name=p4 lab=VSS}
