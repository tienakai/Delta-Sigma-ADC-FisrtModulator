v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 190 -160 190 -140 {lab=#net1}
N 110 -160 150 -160 {lab=A}
N 150 -160 150 -110 {lab=A}
N 190 -260 190 -240 {lab=VDD}
N 200 -260 200 -210 {lab=VDD}
N 200 -110 200 -60 {lab=VSS}
N 190 -80 190 -60 {lab=VSS}
N 190 -260 200 -260 {lab=VDD}
N 190 -210 200 -210 {lab=VDD}
N 150 -210 150 -160 {lab=A}
N 190 -110 200 -110 {lab=VSS}
N 190 -60 200 -60 {lab=VSS}
N 80 -260 190 -260 {lab=VDD}
N 80 -60 190 -60 {lab=VSS}
N 380 -160 380 -140 {lab=#net2}
N 380 -260 380 -240 {lab=VDD}
N 390 -260 390 -210 {lab=VDD}
N 390 -110 390 -60 {lab=VSS}
N 380 -80 380 -60 {lab=VSS}
N 380 -260 390 -260 {lab=VDD}
N 380 -210 390 -210 {lab=VDD}
N 340 -160 340 -110 {lab=#net1}
N 380 -110 390 -110 {lab=VSS}
N 380 -60 390 -60 {lab=VSS}
N 590 -160 590 -140 {lab=#net3}
N 590 -260 590 -240 {lab=VDD}
N 600 -260 600 -210 {lab=VDD}
N 600 -110 600 -60 {lab=VSS}
N 590 -80 590 -60 {lab=VSS}
N 590 -260 600 -260 {lab=VDD}
N 590 -210 600 -210 {lab=VDD}
N 550 -160 550 -110 {lab=#net2}
N 590 -110 600 -110 {lab=VSS}
N 590 -60 600 -60 {lab=VSS}
N 810 -160 810 -140 {lab=Y}
N 810 -160 850 -160 {lab=Y}
N 810 -180 810 -160 {lab=Y}
N 810 -260 810 -240 {lab=VDD}
N 820 -260 820 -210 {lab=VDD}
N 820 -110 820 -60 {lab=VSS}
N 810 -80 810 -60 {lab=VSS}
N 810 -260 820 -260 {lab=VDD}
N 810 -210 820 -210 {lab=VDD}
N 770 -160 770 -110 {lab=#net3}
N 810 -110 820 -110 {lab=VSS}
N 810 -60 820 -60 {lab=VSS}
N 200 -260 380 -260 {lab=VDD}
N 390 -260 590 -260 {lab=VDD}
N 190 -160 340 -160 {lab=#net1}
N 190 -180 190 -160 {lab=#net1}
N 340 -210 340 -160 {lab=#net1}
N 380 -160 550 -160 {lab=#net2}
N 380 -180 380 -160 {lab=#net2}
N 550 -210 550 -160 {lab=#net2}
N 200 -60 380 -60 {lab=VSS}
N 390 -60 590 -60 {lab=VSS}
N 600 -60 810 -60 {lab=VSS}
N 590 -160 770 -160 {lab=#net3}
N 590 -180 590 -160 {lab=#net3}
N 770 -210 770 -160 {lab=#net3}
N 600 -260 810 -260 {lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} 170 -110 0 0 {name=MN0
l=130.00n
w=420.00n
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 170 -210 0 0 {name=MP0
l=130.00n
w=420.00n
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {opin.sym} 850 -160 0 0 {name=p1 lab=Y}
C {ipin.sym} 110 -160 0 0 {name=p2 lab=A}
C {iopin.sym} 80 -260 0 1 {name=p3 lab=VDD}
C {iopin.sym} 80 -60 0 1 {name=p4 lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} 360 -110 0 0 {name=MN1
l=130.00n
w=420.00n
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 360 -210 0 0 {name=MP1
l=130.00n
w=1.00u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 570 -110 0 0 {name=MN2
l=130.00n
w=420.00n
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 570 -210 0 0 {name=MP2
l=130.00n
w=1.00u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 790 -110 0 0 {name=MN3
l=130.00n
w=740.00n
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 790 -210 0 0 {name=MP3
l=130.00n
w=1.12u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
