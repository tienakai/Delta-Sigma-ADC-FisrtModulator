v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 910 -1090 910 -1060 {lab=vout}
N 870 -1090 870 -1030 {lab=vin}
N 820 -1090 870 -1090 {lab=vin}
N 870 -1140 870 -1090 {lab=vin}
N 910 -1090 1000 -1090 {lab=vout}
N 910 -1110 910 -1090 {lab=vout}
N 910 -1030 960 -1030 {lab=vss}
N 910 -1000 910 -950 {lab=#net1}
N 910 -1200 910 -1170 {lab=vdd}
N 910 -1140 970 -1140 {lab=vb}
C {sg13g2_pr/sg13_lv_nmos.sym} 890 -1140 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 890 -1030 0 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} 820 -1090 0 0 {name=p1 lab=vin}
C {opin.sym} 1000 -1090 0 0 {name=p2 lab=vout}
C {iopin.sym} 910 -1200 0 0 {name=p4 lab=vdd}
C {ipin.sym} 970 -1140 0 1 {name=p5 lab=vb}
C {iopin.sym} 960 -1030 0 0 {name=p6 lab=vss}
C {opin.sym} 910 -950 0 0 {name=p3 lab=v1}
