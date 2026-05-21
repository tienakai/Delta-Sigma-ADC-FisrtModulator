v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 180 -320 180 -300 {lab=#net1}
N 100 -320 140 -320 {lab=A}
N 140 -320 140 -270 {lab=A}
N 180 -420 180 -400 {lab=VDD}
N 190 -420 190 -370 {lab=VDD}
N 190 -270 190 -220 {lab=VSS}
N 180 -240 180 -220 {lab=VSS}
N 180 -420 190 -420 {lab=VDD}
N 180 -370 190 -370 {lab=VDD}
N 140 -370 140 -320 {lab=A}
N 180 -270 190 -270 {lab=VSS}
N 180 -220 190 -220 {lab=VSS}
N 70 -420 180 -420 {lab=VDD}
N 70 -220 180 -220 {lab=VSS}
N 370 -320 370 -300 {lab=#net2}
N 370 -420 370 -400 {lab=VDD}
N 380 -420 380 -370 {lab=VDD}
N 380 -270 380 -220 {lab=VSS}
N 370 -240 370 -220 {lab=VSS}
N 370 -420 380 -420 {lab=VDD}
N 370 -370 380 -370 {lab=VDD}
N 330 -320 330 -270 {lab=#net1}
N 370 -270 380 -270 {lab=VSS}
N 370 -220 380 -220 {lab=VSS}
N 580 -320 580 -300 {lab=#net3}
N 580 -420 580 -400 {lab=VDD}
N 590 -420 590 -370 {lab=VDD}
N 590 -270 590 -220 {lab=VSS}
N 580 -240 580 -220 {lab=VSS}
N 580 -420 590 -420 {lab=VDD}
N 580 -370 590 -370 {lab=VDD}
N 540 -320 540 -270 {lab=#net2}
N 580 -270 590 -270 {lab=VSS}
N 580 -220 590 -220 {lab=VSS}
N 800 -320 800 -300 {lab=Y}
N 800 -320 840 -320 {lab=Y}
N 800 -340 800 -320 {lab=Y}
N 800 -420 800 -400 {lab=VDD}
N 810 -420 810 -370 {lab=VDD}
N 810 -270 810 -220 {lab=VSS}
N 800 -240 800 -220 {lab=VSS}
N 800 -420 810 -420 {lab=VDD}
N 800 -370 810 -370 {lab=VDD}
N 760 -320 760 -270 {lab=#net3}
N 800 -270 810 -270 {lab=VSS}
N 800 -220 810 -220 {lab=VSS}
N 190 -420 370 -420 {lab=VDD}
N 380 -420 580 -420 {lab=VDD}
N 180 -320 330 -320 {lab=#net1}
N 180 -340 180 -320 {lab=#net1}
N 330 -370 330 -320 {lab=#net1}
N 370 -320 540 -320 {lab=#net2}
N 370 -340 370 -320 {lab=#net2}
N 540 -370 540 -320 {lab=#net2}
N 190 -220 370 -220 {lab=VSS}
N 380 -220 580 -220 {lab=VSS}
N 590 -220 800 -220 {lab=VSS}
N 580 -320 760 -320 {lab=#net3}
N 580 -340 580 -320 {lab=#net3}
N 760 -370 760 -320 {lab=#net3}
N 590 -420 800 -420 {lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} 160 -270 0 0 {name=MN0
l=130.00n
w=420.00n
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 160 -370 0 0 {name=MP0
l=130.00n
w=420.00n
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {opin.sym} 840 -320 0 0 {name=p1 lab=Y}
C {ipin.sym} 100 -320 0 0 {name=p2 lab=A}
C {iopin.sym} 70 -420 0 1 {name=p3 lab=VDD}
C {iopin.sym} 70 -220 0 1 {name=p4 lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} 350 -270 0 0 {name=MN1
l=180.00n
w=500.00n
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 350 -370 0 0 {name=MP1
l=500.00n
w=1.00u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 560 -270 0 0 {name=MN2
l=180.00n
w=500.00n
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 560 -370 0 0 {name=MP2
l=500.00n
w=1.00u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 780 -270 0 0 {name=MN3
l=130.00n
w=740.00n
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 780 -370 0 0 {name=MP3
l=130.00n
w=1.12u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
